@interface BSMIGServer
- (BSMIGServer)init;
- (BSMIGServer)initWithPortName:(id)a3 subsystem:(mig_subsystem *)a4 separateThread:(BOOL)a5;
- (NSString)threadName;
- (int)threadPriority;
- (uint64_t)_start;
- (void)setThreadPriority:(int)a3;
@end

@implementation BSMIGServer

- (BSMIGServer)initWithPortName:(id)a3 subsystem:(mig_subsystem *)a4 separateThread:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v15.receiver = self;
  v15.super_class = BSMIGServer;
  v9 = [(BSMIGServer *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    portName = v9->_portName;
    v9->_portName = v10;

    v9->_subsystem = a4;
    if (v5)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__BSMIGServer_initWithPortName_subsystem_separateThread___block_invoke;
      v13[3] = &unk_1E72CBBA8;
      v14 = v9;
      BSPthreadCreate(v13);
    }

    else
    {
      v9->_thread = pthread_self();
      [(BSMIGServer *)v9 _start];
    }
  }

  return v9;
}

void __57__BSMIGServer_initWithPortName_subsystem_separateThread___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(*(a1 + 32) + 24) = a2;
    v2 = *(a1 + 32);

    [(BSMIGServer *)v2 _start];
  }

  else
  {
    v3 = BSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[BSMIGServer initWithPortName:subsystem:separateThread:]_block_invoke";
      _os_log_error_impl(&dword_18FEF6000, v3, OS_LOG_TYPE_ERROR, "%s ERROR: unable to create new pthread", &v4, 0xCu);
    }
  }
}

- (uint64_t)_start
{
  v29 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    BSPthreadSetName(*(v1 + 24), v2);

    v3 = *(v1 + 8);
    name = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    memset(context, 0, sizeof(context));
    [v3 getCString:context maxLength:128 encoding:1];
    v4 = bootstrap_check_in2();
    v5 = MEMORY[0x1E69E9A60];
    if (v4)
    {
      inserted = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
      if (inserted || (inserted = mach_port_insert_right(*v5, name, name, 0x14u)) != 0 || (inserted = bootstrap_register2(), mach_port_deallocate(*v5, name), inserted))
      {
        mach_port_mod_refs(*v5, name, 1u, -1);
        v17 = 0;
        v11 = mach_error_string(inserted);
        asprintf(&v17, "Couldn't register %s with the bootstrap server. Error: %s (%d).\nThis generally means that another instance of this process was already running or is hung in the debugger.", context, v11, inserted);
        v12 = BSLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "[BSMIGServer _createPortNamed:]";
          v21 = 2082;
          v22 = v17;
          _os_log_error_impl(&dword_18FEF6000, v12, OS_LOG_TYPE_ERROR, "%s %{public}s", buf, 0x16u);
        }

        abort();
      }
    }

    v7 = name;

    *(v1 + 16) = v7;
    *buf = 16;
    MEMORY[0x193AE5610](*v5, v7, 1, buf, 1);
    v8 = BSCreateMIGServerSourceWithContext(*(v1 + 32), *(v1 + 16), 0, 0);
    Current = CFRunLoopGetCurrent();
    v10 = *MEMORY[0x1E695E8D0];
    CFRunLoopAddSource(Current, v8, *MEMORY[0x1E695E8D0]);
    CFRelease(v8);
    result = pthread_main_np();
    if (!result)
    {
      if (!_CFRunLoopSetPerCalloutAutoreleasepoolEnabled())
      {
        v13 = CFRunLoopGetCurrent();
        v14 = *(v1 + 40);
        if (!v14)
        {
          Mutable = CFArrayCreateMutable(0, 0, 0);
          *context = 0;
          *&context[8] = Mutable;
          *&context[16] = MEMORY[0x1E695D7C8];
          *&context[24] = MEMORY[0x1E695D7C0];
          *&context[32] = MEMORY[0x1E695D768];
          *(v1 + 40) = CFRunLoopObserverCreate(0, 1uLL, 1u, -2147483647, _wrapRunLoopWithAutoreleasePoolHandler, context);
          *(v1 + 48) = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0x7FFFFFFFLL, _wrapRunLoopWithAutoreleasePoolHandler, context);
          CFRunLoopAddObserver(v13, *(v1 + 40), v10);
          CFRunLoopAddObserver(v13, *(v1 + 48), v10);
          CFRelease(Mutable);
          v14 = *(v1 + 40);
        }

        v16 = *MEMORY[0x1E695E8E0];
        if (!CFRunLoopContainsObserver(v13, v14, *MEMORY[0x1E695E8E0]))
        {
          CFRunLoopAddObserver(v13, *(v1 + 40), v16);
          CFRunLoopAddObserver(v13, *(v1 + 48), v16);
        }
      }

      while (1)
      {
        CFRunLoopRun();
      }
    }
  }

  return result;
}

- (BSMIGServer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSMIGServer.m" lineNumber:83 description:@"wrong initializer"];

  return 0;
}

- (int)threadPriority
{
  thread = self->_thread;
  v5 = 0;
  v4 = 0;
  pthread_getschedparam(thread, &v4, &v5);
  return v5.sched_priority;
}

- (void)setThreadPriority:(int)a3
{
  if (!pthread_main_np())
  {
    thread = self->_thread;

    BSPthreadSetFixedPriority(thread, a3);
  }
}

- (NSString)threadName
{
  v2 = BSPthreadGetName(self->_thread);
  v3 = [v2 copy];

  return v3;
}

@end