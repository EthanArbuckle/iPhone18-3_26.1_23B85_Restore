@interface NSXPCConnection
+ (NSXPCConnection)currentConnection;
+ (void)_currentBoost;
+ (void)_handoffCurrentReplyToQueue:(id)a3 block:(id)a4;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (Class)_remoteObjectInterfaceClass;
- (NSString)_serviceInfoForDecoder;
- (NSString)serviceName;
- (NSXPCConnection)init;
- (NSXPCConnection)initWithListenerEndpoint:(NSXPCListenerEndpoint *)endpoint;
- (NSXPCConnection)initWithMachServiceName:(NSString *)name options:(NSXPCConnectionOptions)options;
- (NSXPCConnection)initWithServiceName:(id)a3 options:(unint64_t)a4;
- (NSXPCListenerEndpoint)endpoint;
- (au_asid_t)auditSessionIdentifier;
- (gid_t)effectiveGroupIdentifier;
- (id)_additionalInvalidationHandler;
- (id)_errorDescription;
- (id)_initWithCustomTransport:(id)a3;
- (id)_initWithRemoteConnection:(id)a3 name:(id)a4;
- (id)_initWithRemoteService:(id)a3 name:(id)a4 options:(unint64_t)a5 mode:(unint64_t)a6;
- (id)_unboostingRemoteObjectProxy;
- (id)_xpcConnection;
- (id)description;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(void *)handler;
- (id)remoteObjectProxyWithTimeout:(double)a3 errorHandler:(id)a4;
- (id)remoteObjectProxyWithUserInfo:(id)a3 errorHandler:(id)a4;
- (id)replacementObjectForEncoder:(id)a3 object:(id)a4;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(void *)handler;
- (id)userInfo;
- (id)valueForEntitlement:(id)a3;
- (pid_t)processIdentifier;
- (uid_t)effectiveUserIdentifier;
- (uint64_t)_initWithPeerConnection:(void *)a1 name:(_xpc_connection_s *)a2 options:(__CFString *)a3;
- (uint64_t)_initWithRemotePeerConnection:(void *)a1 name:(uint64_t)a2 options:(__CFString *)a3;
- (uint64_t)_removeImportedProxy:(uint64_t)result;
- (uint64_t)_sendProgressMessage:(uint64_t)a3 forSequence:;
- (void)_cancelProgress:(unint64_t)a3;
- (void)_decodeAndInvokeMessageWithEvent:(id)a3 reply:(id)a4 flags:(unint64_t)a5;
- (void)_decodeAndInvokeReplyBlockWithEvent:(id)a3 sequence:(unint64_t)a4 replyInfo:(id)a5;
- (void)_decodeProgressMessageWithData:(id)a3 flags:(unint64_t)a4;
- (void)_killConnection:(int)a3;
- (void)_pauseProgress:(unint64_t)a3;
- (void)_resumeProgress:(unint64_t)a3;
- (void)_sendDesistForProxy:(id)a3;
- (void)_sendInvocation:(id)a3 orArguments:(id *)a4 count:(unint64_t)a5 methodSignature:(id)a6 selector:(SEL)a7 withProxy:(id)a8;
- (void)_sendSelector:(SEL)a3 withProxy:(id)a4;
- (void)_sendSelector:(SEL)a3 withProxy:(id)a4 arg1:(id)a5;
- (void)_sendSelector:(SEL)a3 withProxy:(id)a4 arg1:(id)a5 arg2:(id)a6;
- (void)_sendSelector:(SEL)a3 withProxy:(id)a4 arg1:(id)a5 arg2:(id)a6 arg3:(id)a7;
- (void)_sendSelector:(SEL)a3 withProxy:(id)a4 arg1:(id)a5 arg2:(id)a6 arg3:(id)a7 arg4:(id)a8;
- (void)_setBootstrapObject:(id)a3 forKey:(id)a4;
- (void)_setLanguages:(id)a3;
- (void)_setQueue:(id)a3;
- (void)_setTargetUserIdentifier:(unsigned int)a3;
- (void)_setUUID:(id)a3;
- (void)activate;
- (void)dealloc;
- (void)interruptionHandler;
- (void)invalidate;
- (void)invalidationHandler;
- (void)resume;
- (void)scheduleSendBarrierBlock:(void *)block;
- (void)setDelegate:(id)a3;
- (void)setInterruptionHandler:(void *)interruptionHandler;
- (void)setInvalidationHandler:(void *)invalidationHandler;
- (void)setOptions:(unint64_t)a3;
- (void)setUserInfo:(id)a3;
- (void)set_additionalInvalidationHandler:(id)a3;
- (void)suspend;
@end

@implementation NSXPCConnection

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = atomic_load(&self->_state2);
  if ((v3 & 0x40) != 0)
  {
    result = self->_transport;
    if (result)
    {
      return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
    }

    else
    {
      *retstr->var0 = 0u;
      *&retstr->var0[4] = 0u;
    }
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
    return xpc_connection_get_audit_token();
  }

  return result;
}

- (Class)_remoteObjectInterfaceClass
{
  remoteObjectInterface = self->_remoteObjectInterface;
  if (remoteObjectInterface)
  {
    return [(NSXPCInterface *)remoteObjectInterface _customSubclass];
  }

  else
  {
    return objc_opt_class();
  }
}

+ (NSXPCConnection)currentConnection
{
  v2 = _CFGetTSD();

  return v2;
}

- (pid_t)processIdentifier
{
  v2 = atomic_load(&self->_state2);
  if ((v2 & 0x40) != 0)
  {
    return [(_NSXPCTransport *)self->_transport processIdentifier];
  }

  else
  {
    return xpc_connection_get_pid(self->_connection.xpc);
  }
}

- (id)userInfo
{
  v2 = self->_otherInfo;

  return v2;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {

    self->_interruptionHandler = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {

    self->_invalidationHandler = 0;
  }

  bootstrap = self->_bootstrap;
  if (bootstrap)
  {
    xpc_release(bootstrap);
  }

  userQueue = self->_userQueue;
  if (userQueue)
  {
    dispatch_release(userQueue);
  }

  xpc = self->_connection.xpc;
  if (xpc)
  {
    xpc_release(xpc);
  }

  v8.receiver = self;
  v8.super_class = NSXPCConnection;
  [(NSXPCConnection *)&v8 dealloc];
}

- (void)invalidationHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [self->_invalidationHandler copy];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_additionalInvalidationHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [objc_getAssociatedObject(self "additionalInvalidationHandler")];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_xpcConnection
{
  v2 = atomic_load(&self->_state2);
  if ((v2 & 0x40) != 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Custom transports do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v4);
  }

  return self->_connection.xpc;
}

- (void)resume
{
  if ((atomic_fetch_or(&self->_state, 4u) & 4) == 0)
  {
    CFRetain(self);
  }

  [(_NSXPCConnectionImportInfo *)self->_importInfo _clearEntitlementCache];
  v3 = atomic_load(&self->_state2);
  if ((v3 & 0x40) != 0)
  {
    transport = self->_transport;

    [(_NSXPCTransport *)transport resume];
  }

  else
  {
    xpc = self->_connection.xpc;

    xpc_connection_resume(xpc);
  }
}

- (NSXPCConnection)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSXPCConnection;
  v2 = [(NSXPCConnection *)&v4 init];
  if (v2)
  {
    v2->_exportInfo = objc_opt_new();
    v2->_importInfo = objc_opt_new();
    v2->_repliesExpected = objc_opt_new();
    v2->_repliesRequested = objc_opt_new();
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_eCache = objc_opt_new();
    v2->_dCache = objc_opt_new();
    v2->_importInfo->_generationCount = 1;
  }

  return v2;
}

- (id)remoteObjectProxy
{
  v2 = [objc_alloc(-[NSXPCConnection _remoteObjectInterfaceClass](self "_remoteObjectInterfaceClass"))];

  return v2;
}

- (NSString)serviceName
{
  v2 = self->_serviceName;

  return v2;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSXPCConnection;
  return [NSString stringWithFormat:@"%@ %@", [(NSXPCConnection *)&v3 description], [(NSXPCConnection *)self _errorDescription]];
}

- (void)invalidate
{
  atomic_fetch_or(&self->_state2, 8u);
  v2 = atomic_load(&self->_state2);
  if ((v2 & 0x40) != 0)
  {
    transport = self->_transport;

    [(_NSXPCTransport *)transport cancel];
  }

  else
  {
    xpc = self->_connection.xpc;
    if (xpc)
    {

      xpc_connection_cancel(xpc);
    }
  }
}

- (id)_errorDescription
{
  v3 = atomic_load(&self->_state2);
  if ((v3 & 0x40) != 0)
  {
    pid = [(_NSXPCTransport *)self->_transport processIdentifier];
  }

  else
  {
    pid = xpc_connection_get_pid(self->_connection.xpc);
  }

  v5 = atomic_load(&self->_state2);
  if ((v5 & 0x10) != 0)
  {
    if (pid)
    {
      v7 = [NSString stringWithFormat:@" from pid %d", pid];
    }

    else
    {
      v7 = &stru_1EEEFDF90;
    }

    serviceName = self->_serviceName;
    if (serviceName && [(NSString *)serviceName length])
    {
      v11 = @"custom";
      if ((v3 & 0x40) == 0)
      {
        v11 = @"mach";
      }

      return [NSString stringWithFormat:@"connection%@ on %@ service named %@", v7, v11, self->_serviceName];
    }

    else
    {
      return [NSString stringWithFormat:@"connection%@ on anonymousListener or serviceListener", v7, v12, v13];
    }
  }

  else
  {
    if (pid)
    {
      v6 = [NSString stringWithFormat:@" with pid %d", pid];
    }

    else
    {
      v6 = &stru_1EEEFDF90;
    }

    v8 = atomic_load(&self->_state2);
    if ((v8 & 0x20) != 0)
    {
      return [NSString stringWithFormat:@"connection to service%@ created from an endpoint", v6, v12, v13];
    }

    else
    {
      return [NSString stringWithFormat:@"connection to service%@ named %@", v6, self->_serviceName, v13];
    }
  }
}

- (void)interruptionHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [self->_interruptionHandler copy];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)activate
{
  if ((atomic_fetch_or(&self->_state, 4u) & 4) == 0)
  {
    CFRetain(self);
  }

  [(_NSXPCConnectionImportInfo *)self->_importInfo _clearEntitlementCache];
  v3 = atomic_load(&self->_state2);
  if ((v3 & 0x40) != 0)
  {
    transport = self->_transport;

    [(_NSXPCTransport *)transport activate];
  }

  else
  {
    xpc = self->_connection.xpc;
    if (xpc)
    {

      xpc_connection_activate(xpc);
    }
  }
}

- (uid_t)effectiveUserIdentifier
{
  v2 = atomic_load(&self->_state2);
  if ((v2 & 0x40) != 0)
  {
    return [(_NSXPCTransport *)self->_transport effectiveUserIdentifier];
  }

  else
  {
    return xpc_connection_get_euid(self->_connection.xpc);
  }
}

+ (void)_currentBoost
{
  objc_opt_self();
  result = _CFGetTSD();
  if (result)
  {
    v1 = [[_NSXPCBoost alloc] _initWithEvent:?];

    return v1;
  }

  return result;
}

- (au_asid_t)auditSessionIdentifier
{
  v2 = atomic_load(&self->_state2);
  if ((v2 & 0x40) != 0)
  {
    return [(_NSXPCTransport *)self->_transport auditSessionIdentifier];
  }

  else
  {
    return xpc_connection_get_asid(self->_connection.xpc);
  }
}

- (id)_unboostingRemoteObjectProxy
{
  v2 = [objc_alloc(-[NSXPCConnection _remoteObjectInterfaceClass](self "_remoteObjectInterfaceClass"))];

  return v2;
}

- (gid_t)effectiveGroupIdentifier
{
  v2 = atomic_load(&self->_state2);
  if ((v2 & 0x40) != 0)
  {
    return [(_NSXPCTransport *)self->_transport effectiveGroupIdentifier];
  }

  else
  {
    return xpc_connection_get_egid(self->_connection.xpc);
  }
}

- (void)suspend
{
  v2 = atomic_load(&self->_state2);
  if ((v2 & 0x40) != 0)
  {
    transport = self->_transport;

    [(_NSXPCTransport *)transport suspend];
  }

  else
  {
    xpc = self->_connection.xpc;

    xpc_connection_suspend(xpc);
  }
}

- (NSXPCListenerEndpoint)endpoint
{
  v2 = self->_endpoint;

  return v2;
}

- (void)_decodeAndInvokeReplyBlockWithEvent:(id)a3 sequence:(unint64_t)a4 replyInfo:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = [NSXPCDecoder alloc];
    v10 = [(NSXPCDecoder *)v8 initWithInterface:objc_getProperty(a5, v9, 40, 1)];
    [(NSXPCDecoder *)v10 _setConnection:self];
    if (self->_otherInfo)
    {
      [(NSXPCCoder *)v10 setUserInfo:?];
    }

    if (*(a5 + 4))
    {
      v11 = *(a5 + 4);
    }

    else
    {
      v11 = 0;
    }

    v14 = [(NSXPCDecoder *)v10 _decodeReplyFromXPCObject:a3 forSelector:v11];
    if (!v14)
    {
      v24 = [NSString stringWithFormat:@"NSXPCConnection %p: Decode of incoming invocation failed (no result)", self];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0]);
    }

    [v14 setTarget:{objc_getProperty(a5, v13, 8, 1)}];
    _CFGetTSD();
    _CFSetTSD();
    v15 = atomic_load(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v16 = [NSString alloc];
      if (*(a5 + 4))
      {
        v17 = *(a5 + 4);
      }

      else
      {
        v17 = 0;
      }

      v18 = [(NSString *)v16 initWithUTF8String:sel_getName(v17)];
      if (objc_getProperty(a5, v19, 48, 1))
      {
        v27[0] = @"_NSXPCConnectionInvocationReplyToSelectorKey";
        v27[1] = @"_NSXPCConnectionInvocationReplyUserInfoKey";
        v28[0] = v18;
        v28[1] = objc_getProperty(a5, v20, 48, 1);
        v21 = v27;
        v22 = v28;
        v23 = 2;
      }

      else
      {
        v25 = @"_NSXPCConnectionInvocationReplyToSelectorKey";
        v26 = v18;
        v21 = &v25;
        v22 = &v26;
        v23 = 1;
      }

      [v14 setUserInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, v21, v23)}];
      [v15 connection:self handleInvocation:v14 isReply:1];
    }

    else
    {
      __NSXPCCONNECTION_IS_CALLING_OUT_TO_REPLY_BLOCK__(v14);
    }

    [(_NSXPCConnectionExpectedReplyInfo *)a5 cleanup];
    _CFSetTSD();
  }

  else
  {
    v12 = _NSXPCLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_fault_impl(&dword_18075C000, v12, OS_LOG_TYPE_FAULT, "%{public}@: Warning: Received reply to unknown message. Dropping incoming message and invalidating connection.", buf, 0xCu);
    }

    [(NSXPCConnection *)self invalidate];
  }
}

- (NSString)_serviceInfoForDecoder
{
  if (result)
  {
    return [NSString stringWithFormat:@"NSXPCInterface: %@\n%@", [(objc_class *)result[12].super.isa debugDescription], [(NSString *)result debugDescription]];
  }

  return result;
}

- (void)_decodeAndInvokeMessageWithEvent:(id)a3 reply:(id)a4 flags:(unint64_t)a5
{
  v5 = a5;
  v74[5] = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(a3, "proxynum");
  if (!uint64 || (v11 = [(_NSXPCConnectionExportedObjectTable *)self->_exportInfo exportedObjectForProxyNumber:?], v12 = [(_NSXPCConnectionExportedObjectTable *)self->_exportInfo interfaceForProxyNumber:?], !v11))
  {
    v16 = _NSXPCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      v68 = 2048;
      v69 = uint64;
      _os_log_fault_impl(&dword_18075C000, v16, OS_LOG_TYPE_FAULT, "%{public}@: received an undecodable message for proxy %lld (no exported object to receive message). Dropping message.", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v13 = v12;
  if (!v12)
  {
    v17 = _NSXPCLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_fault_impl(&dword_18075C000, v17, OS_LOG_TYPE_FAULT, "%{public}@: received an undecodable message (no protocol set to define allowed messages on exported object). Dropping message.", buf, 0xCu);
    }

LABEL_10:
    [(NSXPCConnection *)self invalidate];
    return;
  }

  v14 = atomic_load(&self->_delegate);
  v54 = v14;
  v55 = objc_opt_respondsToSelector();
  v65 = 0;
  v66 = 0;
  memset(v74, 0, 32);
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v15 = [[NSXPCDecoder alloc] initWithInterface:v13];
  [(NSXPCDecoder *)v15 _setConnection:self];
  if (self->_otherInfo)
  {
    [(NSXPCCoder *)v15 setUserInfo:?];
  }

  v56 = [(NSXPCDecoder *)v15 _decodeMessageFromXPCObject:a3 allowingSimpleMessageSend:(v55 & 1) == 0 outInvocation:&v62 outArguments:v74 outArgumentsMaxCount:4 outMethodSignature:&v61 outSelector:&v66]== 1;
  if (!v66)
  {
    v18 = _NSXPCLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_fault_impl(&dword_18075C000, v18, OS_LOG_TYPE_FAULT, "%{public}@: received an undecodable message (invocation with no selector)", buf, 0xCu);
    }

    v56 = 0;
    v62 = 0;
  }

  if (!v62 && !v56)
  {
    goto LABEL_95;
  }

  if ((v5 & 0x20) == 0)
  {
    if (![v62 _hasBlockArgument])
    {
      v52 = 0;
      v53 = 1;
      goto LABEL_36;
    }

    v19 = _NSXPCLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_fault_impl(&dword_18075C000, v19, OS_LOG_TYPE_FAULT, "%{public}@: received an undecodable message (remote asked for no reply, but we expected one). Dropping message.", buf, 0xCu);
    }

    goto LABEL_95;
  }

  v20 = xpc_dictionary_get_uint64(a3, "sequence");
  v51 = v20;
  if ((v5 & 0x40) != 0)
  {
    v21 = [[_NSProgressWithRemoteParent alloc] initWithParent:0 userInfo:0];
    [(NSProgress *)v21 setTotalUnitCount:1];
    [(NSProgress *)v21 set_adoptChildUserInfo:1];
    [(_NSProgressWithRemoteParent *)v21 setSequence:v20];
    [(_NSProgressWithRemoteParent *)v21 setParentConnection:self];
    v22 = (v5 & 0x80) == 0;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

  v53 = v22;
  v23 = [v61 numberOfArguments];
  v52 = v21;
  if (v23 == 2)
  {
    goto LABEL_36;
  }

  v24 = v74;
  v25 = 2;
  while (1)
  {
    v26 = [v61 _argInfo:v25];
    if (!v26)
    {
      v30 = _NSXPCLog();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_95;
      }

      *buf = 138543362;
      *&buf[4] = self;
      v31 = "%{public}@: received an undecodable message (invocation with bad argument info)";
LABEL_112:
      _os_log_fault_impl(&dword_18075C000, v30, OS_LOG_TYPE_FAULT, v31, buf, 0xCu);
      goto LABEL_95;
    }

    v27 = v26[17];
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    if (!*v26)
    {
      v30 = _NSXPCLog();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_95;
      }

      *buf = 138543362;
      *&buf[4] = self;
      v31 = "%{public}@: received an undecodable message (invocation with bad replaced by pointer argument)";
      goto LABEL_112;
    }

    v27 = *(*v26 + 34);
LABEL_34:
    if (v27 < 0)
    {
      break;
    }

    ++v24;
    if (v23 == ++v25)
    {
      goto LABEL_36;
    }
  }

  string = xpc_dictionary_get_string(a3, "replysig");
  if (!string)
  {
    v38 = _NSXPCLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_fault_impl(&dword_18075C000, v38, OS_LOG_TYPE_FAULT, "%{public}@: received an undecodable message (invocation with no signature info)", buf, 0xCu);
    }

    goto LABEL_95;
  }

  v33 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:string];
  v50 = [v13 _methodSignatureForReplyBlockOfSelector:v66];
  if (!v33 || !v50 || ([v33 isEqual:v50] & 1) == 0 && (objc_msgSend(v50, "_isCompatibleWithMethodSignature:", v33) & 1) == 0)
  {
    v35 = _NSXPCLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      Name = sel_getName(v66);
      v45 = [v33 debugDescription];
      v46 = [v50 debugDescription];
      *buf = 138544130;
      *&buf[4] = self;
      v68 = 2082;
      v69 = Name;
      v70 = 2114;
      v71 = v45;
      v72 = 2114;
      v73 = v46;
      _os_log_fault_impl(&dword_18075C000, v35, OS_LOG_TYPE_FAULT, "%{public}@ received an undecodable message (incompatible reply block signature for %{public}s (wire: %{public}@ vs local: %{public}@)", buf, 0x2Au);
    }

LABEL_95:
    [(NSXPCConnection *)self invalidate];
    goto LABEL_92;
  }

  v34 = [v50 numberOfArguments] - 1;
  if (v34 > 3)
  {
    v49 = 0;
  }

  else
  {
    v49 = [v50 _isAllObjects];
  }

  [(_NSXPCConnectionRequestedReplies *)self->_repliesRequested beginTransactionForSequence:v51 selector:v66 reply:a4 withProgress:v52];
  v39 = v49 ^ 1;
  if (v34)
  {
    v40 = 1;
  }

  else
  {
    v40 = v49 ^ 1;
  }

  if ((v40 & 1) == 0)
  {
    v41 = v60;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke;
    v60[3] = &unk_1E69FA1D0;
    v60[5] = a4;
    v60[6] = v63;
    v60[7] = v51;
    v60[8] = v66;
    v60[9] = uint64;
    v60[4] = self;
    goto LABEL_117;
  }

  if (v34 != 1)
  {
    v39 = 1;
  }

  if ((v39 & 1) == 0)
  {
    v41 = v59;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_3;
    v59[3] = &unk_1E69FA1F8;
    v59[4] = self;
    v59[5] = v13;
    v59[8] = v51;
    v59[9] = v66;
    v59[10] = uint64;
    v59[6] = a4;
    v59[7] = v63;
    goto LABEL_117;
  }

  v42 = v49 ^ 1;
  if (v34 == 2)
  {
    v43 = v49 ^ 1;
  }

  else
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    v41 = v58;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_5;
    v58[3] = &unk_1E69FA248;
    v58[4] = self;
    v58[5] = v13;
    v58[8] = v51;
    v58[9] = v66;
    v58[10] = uint64;
    v58[6] = a4;
    v58[7] = v63;
    goto LABEL_117;
  }

  if (v34 != 3)
  {
    v42 = 1;
  }

  if (v42)
  {
    [v50 _cTypeString];
    v65 = __NSMakeSpecialForwardingCaptureBlock();
    v47 = v65;
  }

  else
  {
    v41 = v57;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_7;
    v57[3] = &unk_1E69FA298;
    v57[4] = self;
    v57[5] = v13;
    v57[8] = v51;
    v57[9] = v66;
    v57[10] = uint64;
    v57[6] = a4;
    v57[7] = v63;
LABEL_117:
    v65 = v41;
  }

  if (v62)
  {
    [v62 setArgument:&v65 atIndex:v25];
  }

  else if (v56)
  {

    *v24 = v65;
  }

LABEL_36:
  _CFGetTSD();
  _CFGetTSD();
  _CFGetTSD();
  _CFSetTSD();
  _CFSetTSD();
  if (a4)
  {
    xpc_retain(a4);
    _CFSetTSD();
  }

  if (v52)
  {
    v28 = v53 ^ 1;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    [(NSProgress *)v52 becomeCurrentWithPendingUnitCount:1];
  }

  *buf = 0;
  if (v62)
  {
    [v62 setTarget:v11];
    if (v55)
    {
      [v62 retainArguments];
      [v54 connection:self handleInvocation:v62 isReply:0];
    }

    else
    {
      __NSXPCCONNECTION_IS_CALLING_OUT_TO_REPLY_BLOCK__(v62);
    }
  }

  else
  {
    if (!v56)
    {
      v48 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Attempt to dispatch neither invocation nor simple message send.", _NSMethodExceptionProem(self, a2)), 0}];
      objc_exception_throw(v48);
    }

    v29 = [v61 numberOfArguments];
    if (v29 <= 3)
    {
      if (v29 != 2 && v29 != 3)
      {
        goto LABEL_71;
      }
    }

    else if (v29 != 4 && v29 != 5 && v29 != 6)
    {
      goto LABEL_71;
    }

    *buf = __NSXPCCONNECTION_IS_CALLING_OUT_TO_EXPORTED_OBJECT_S0__(v11, v66);
  }

LABEL_71:
  if (v52)
  {
    v36 = v53;
  }

  else
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    if (!v56)
    {
      [v62 getReturnValue:buf];
    }

    if (*buf && (objc_opt_isKindOfClass() & 1) != 0)
    {
      if (([*buf isCancellable] & 1) == 0)
      {
        [(_NSProgressWithRemoteParent *)v52 setCancellable:0];
      }

      if ([*buf isPausable])
      {
        [(_NSProgressWithRemoteParent *)v52 setPausable:1];
      }

      [(NSProgress *)v52 addChild:*buf withPendingUnitCount:1];
    }
  }

  if ((v28 & 1) == 0)
  {
    [(NSProgress *)v52 resignCurrent];
  }

  _CFSetTSD();
  if (a4)
  {
    xpc_release(a4);
  }

  if (v56)
  {
    for (i = 0; i != 4; ++i)
    {
    }
  }

  _CFSetTSD();
  _CFSetTSD();
LABEL_92:
  _Block_object_dispose(v63, 8);
}

void __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke(void *a1)
{
  v3[8] = *MEMORY[0x1E69E9840];
  if (!atomic_exchange((*(a1[6] + 8) + 24), 1u))
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_2;
    v3[3] = &unk_1E69F4640;
    v1 = a1[7];
    v2 = a1[9];
    v3[6] = a1[8];
    v3[7] = v2;
    [(_NSXPCConnectionRequestedReplies *)*(a1[4] + 64) endTransactionForSequence:v1 completionHandler:v3];
  }
}

void __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!atomic_exchange((*(*(a1 + 56) + 8) + 24), 1u))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_4;
    v6[3] = &unk_1E69F9670;
    v6[4] = v2;
    v6[5] = a2;
    v4 = *(a1 + 64);
    v5 = *(a1 + 80);
    v8 = *(a1 + 72);
    v9 = v5;
    v7 = *(a1 + 40);
    [(_NSXPCConnectionRequestedReplies *)v3 endTransactionForSequence:v4 completionHandler:v6];
  }
}

void __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_4(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = _replacedWithDistantObject(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 64), 0);
  _sendReplyArgumentsOnly(*(a1 + 32), "v@?@", v2, 1, *(a1 + 64), *(a1 + 72), *(a1 + 56));
}

void __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_5(void *a1, uint64_t a2, uint64_t a3)
{
  v8[11] = *MEMORY[0x1E69E9840];
  if (!atomic_exchange((*(a1[7] + 8) + 24), 1u))
  {
    v3 = a1[4];
    v4 = *(v3 + 64);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_6;
    v8[3] = &unk_1E69FA220;
    v8[4] = v3;
    v8[5] = a2;
    v5 = a1[6];
    v8[6] = a1[5];
    v8[7] = a3;
    v6 = a1[8];
    v7 = a1[10];
    v8[9] = a1[9];
    v8[10] = v7;
    v8[8] = v5;
    [(_NSXPCConnectionRequestedReplies *)v4 endTransactionForSequence:v6 completionHandler:v8];
  }
}

void __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_6(uint64_t a1)
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = _replacedWithDistantObject(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 72), 0);
  v2[1] = _replacedWithDistantObject(*(a1 + 32), *(a1 + 56), *(a1 + 48), *(a1 + 72), 1);
  _sendReplyArgumentsOnly(*(a1 + 32), "v@?@@", v2, 2, *(a1 + 72), *(a1 + 80), *(a1 + 64));
}

void __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_7(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[12] = *MEMORY[0x1E69E9840];
  if (!atomic_exchange((*(a1[7] + 8) + 24), 1u))
  {
    v4 = a1[4];
    v5 = *(v4 + 64);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_8;
    v9[3] = &unk_1E69FA270;
    v9[4] = v4;
    v9[5] = a2;
    v6 = a1[6];
    v9[6] = a1[5];
    v9[7] = a3;
    v7 = a1[8];
    v8 = a1[10];
    v9[10] = a1[9];
    v9[11] = v8;
    v9[8] = a4;
    v9[9] = v6;
    [(_NSXPCConnectionRequestedReplies *)v5 endTransactionForSequence:v7 completionHandler:v9];
  }
}

void __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_8(uint64_t a1)
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = _replacedWithDistantObject(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80), 0);
  v2[1] = _replacedWithDistantObject(*(a1 + 32), *(a1 + 56), *(a1 + 48), *(a1 + 80), 1);
  v2[2] = _replacedWithDistantObject(*(a1 + 32), *(a1 + 64), *(a1 + 48), *(a1 + 80), 2);
  _sendReplyArgumentsOnly(*(a1 + 32), "v@?@@@", v2, 3, *(a1 + 80), *(a1 + 88), *(a1 + 72));
}

void __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!atomic_exchange((*(*(a1 + 64) + 8) + 24), 1u))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_10;
    v6[3] = &unk_1E69FA220;
    v6[4] = *(a1 + 40);
    v6[5] = a2;
    v6[6] = v2;
    v7 = *(a1 + 48);
    v4 = *(a1 + 72);
    v5 = *(a1 + 88);
    v8 = *(a1 + 80);
    v9 = v5;
    [(_NSXPCConnectionRequestedReplies *)v3 endTransactionForSequence:v4 completionHandler:v6];
  }
}

void __64__NSXPCConnection__decodeAndInvokeMessageWithEvent_reply_flags___block_invoke_10(uint64_t a1)
{
  v11[256] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) numberOfArguments] >= 2)
  {
    v2 = 1;
    do
    {
      if ((*([*(a1 + 32) _argInfo:v2] + 34) & 0x2000) != 0)
      {
        v11[0] = 0;
        [*(a1 + 40) getArgument:v11 atIndex:v2];
        v3 = _replacedWithDistantObject(*(a1 + 48), v11[0], *(a1 + 56), *(a1 + 72), v2 - 1);
        v10 = v3;
        if (v3)
        {
          [*(a1 + 40) _addAttachedObject:{v3, v10}];
          [*(a1 + 40) setArgument:&v10 atIndex:v2];
        }
      }

      ++v2;
    }

    while (v2 < [*(a1 + 32) numberOfArguments]);
  }

  v4 = [[NSXPCEncoder alloc] initWithStackSpace:v11 size:2048];
  [(NSXPCEncoder *)v4 _setConnection:*(a1 + 48)];
  [(NSXPCEncoder *)v4 setDelegate:*(a1 + 48)];
  if (*(*(a1 + 48) + 80))
  {
    [(NSXPCCoder *)v4 setUserInfo:?];
  }

  [(NSXPCEncoder *)v4 _encodeInvocation:*(a1 + 40) isReply:1 into:*(a1 + 64)];

  v7 = atomic_load((*(a1 + 48) + 36));
  v8 = *(a1 + 48);
  if ((v7 & 0x40) != 0)
  {
    [*(v8 + 152) sendMessage:{*(a1 + 64), v5, v6}];
  }

  else
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      xpc_connection_send_message(v9, *(a1 + 64));
    }
  }
}

+ (void)_handoffCurrentReplyToQueue:(id)a3 block:(id)a4
{
  if (!_CFGetTSD())
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: called when there is no reply context", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v6);
  }

  MEMORY[0x1EEE74CA0]();
}

- (uint64_t)_initWithPeerConnection:(void *)a1 name:(_xpc_connection_s *)a2 options:(__CFString *)a3
{
  handler[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v5 = [a1 init];
  if (v5)
  {
    *(v5 + 104) = [(__CFString *)a3 copy];
    pid = xpc_connection_get_pid(a2);
    v7 = @"anonymous";
    if (a3)
    {
      v7 = a3;
    }

    v8 = [NSString stringWithFormat:@"com.apple.NSXPCConnection.user.%@.%d", v7, pid];
    atomic_fetch_or((v5 + 36), 0x10u);
    v9 = [(NSString *)v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    *(v5 + 24) = dispatch_queue_create_with_target_V2(v9, v10, global_queue);
    v12 = xpc_retain(a2);
    *(v5 + 8) = v12;
    xpc_connection_set_target_queue(v12, *(v5 + 24));
    v13 = *(v5 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__NSXPCConnection__initWithPeerConnection_name_options___block_invoke;
    handler[3] = &unk_1E69F5440;
    handler[4] = v5;
    xpc_connection_set_event_handler(v13, handler);
  }

  return v5;
}

- (uint64_t)_initWithRemotePeerConnection:(void *)a1 name:(uint64_t)a2 options:(__CFString *)a3
{
  v17[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v5 = [a1 init];
  v6 = v5;
  if (v5)
  {
    atomic_fetch_or((v5 + 36), 0x40u);
    *(v5 + 104) = [(__CFString *)a3 copy];
    v7 = @"anonymous";
    if (a3)
    {
      v7 = a3;
    }

    v8 = [NSString stringWithFormat:@"com.apple.NSXPCConnection.user.%@.remote", v7];
    atomic_fetch_or((v6 + 36), 0x10u);
    v9 = [(NSString *)v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    *(v6 + 24) = dispatch_queue_create_with_target_V2(v9, v10, global_queue);
    v12 = [[_NSXPCRemoteTransport alloc] initWithConnection:a2];
    *(v6 + 152) = v12;
    [(_NSXPCRemoteTransport *)v12 setTargetQueue:*(v6 + 24)];
    v13 = *(v6 + 152);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__NSXPCConnection__initWithRemotePeerConnection_name_options___block_invoke;
    v17[3] = &unk_1E69F5440;
    v17[4] = v6;
    [v13 setErrorHandler:v17];
    v14 = *(v6 + 152);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__NSXPCConnection__initWithRemotePeerConnection_name_options___block_invoke_2;
    v16[3] = &unk_1E69FA2E8;
    v16[4] = v6;
    [v14 setMessageHandler:v16];
  }

  return v6;
}

- (id)_initWithRemoteService:(id)a3 name:(id)a4 options:(unint64_t)a5 mode:(unint64_t)a6
{
  v19[5] = *MEMORY[0x1E69E9840];
  v9 = [(NSXPCConnection *)self init:a3];
  v10 = v9;
  if (v9)
  {
    atomic_fetch_or(&v9->_state2, 0x40u);
    v11 = [+[NSString stringWithFormat:](NSString UTF8String:@"com.apple.NSXPCConnection.r-user.%@"];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    v10->_userQueue = dispatch_queue_create_with_target_V2(v11, v12, global_queue);
    v14 = [[_NSXPCRemoteTransport alloc] initWithRemoteService:a3 name:a4 queue:v10->_userQueue mode:a6];
    v10->_transport = v14;
    [(_NSXPCRemoteTransport *)v14 setTargetQueue:v10->_userQueue];
    transport = v10->_transport;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__NSXPCConnection__initWithRemoteService_name_options_mode___block_invoke;
    v19[3] = &unk_1E69F5440;
    v19[4] = v10;
    [(_NSXPCTransport *)transport setErrorHandler:v19];
    v16 = v10->_transport;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__NSXPCConnection__initWithRemoteService_name_options_mode___block_invoke_2;
    v18[3] = &unk_1E69FA2E8;
    v18[4] = v10;
    [(_NSXPCTransport *)v16 setMessageHandler:v18];
    [(NSString *)v10->_serviceName UTF8String];
  }

  return v10;
}

- (id)_initWithRemoteConnection:(id)a3 name:(id)a4
{
  v15[5] = *MEMORY[0x1E69E9840];
  v5 = [(NSXPCConnection *)self init:a3];
  v6 = v5;
  if (v5)
  {
    atomic_fetch_or(&v5->_state2, 0x40u);
    v7 = [+[NSString stringWithFormat:](NSString UTF8String:@"com.apple.NSXPCConnection.r-user.%@"];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    v6->_userQueue = dispatch_queue_create_with_target_V2(v7, v8, global_queue);
    v10 = [[_NSXPCRemoteTransport alloc] initWithConnection:a3];
    v6->_transport = v10;
    [(_NSXPCRemoteTransport *)v10 setTargetQueue:v6->_userQueue];
    transport = v6->_transport;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__NSXPCConnection__initWithRemoteConnection_name___block_invoke;
    v15[3] = &unk_1E69F5440;
    v15[4] = v6;
    [(_NSXPCTransport *)transport setErrorHandler:v15];
    v12 = v6->_transport;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__NSXPCConnection__initWithRemoteConnection_name___block_invoke_2;
    v14[3] = &unk_1E69FA2E8;
    v14[4] = v6;
    [(_NSXPCTransport *)v12 setMessageHandler:v14];
    [(NSString *)v6->_serviceName UTF8String];
  }

  return v6;
}

- (NSXPCConnection)initWithServiceName:(id)a3 options:(unint64_t)a4
{
  handler[5] = *MEMORY[0x1E69E9840];
  v6 = [(NSXPCConnection *)self init:a3];
  if (v6)
  {
    v7 = [+[NSFileManager defaultManager](NSFileManager fileSystemRepresentationWithPath:"fileSystemRepresentationWithPath:", a3];
    if (!v7)
    {

      v7 = 0;
    }

    v8 = [+[NSString stringWithFormat:](NSString UTF8String:@"com.apple.NSXPCConnection.user.%@"];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    v6->_userQueue = dispatch_queue_create_with_target_V2(v8, v9, global_queue);
    v6->_serviceName = [a3 copy];
    v11 = xpc_connection_create(v7, v6->_userQueue);
    v6->_connection.xpc = v11;
    if (!v11)
    {
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Unable to connect to the specified name (%@). No connection was created.", _NSMethodExceptionProem(v6, a2), v6->_serviceName), 0}];
      objc_exception_throw(v14);
    }

    xpc_connection_set_target_queue(v11, v6->_userQueue);
    xpc = v6->_connection.xpc;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __47__NSXPCConnection_initWithServiceName_options___block_invoke;
    handler[3] = &unk_1E69F5440;
    handler[4] = v6;
    xpc_connection_set_event_handler(xpc, handler);
    [(NSString *)v6->_serviceName UTF8String];
  }

  return v6;
}

- (NSXPCConnection)initWithMachServiceName:(NSString *)name options:(NSXPCConnectionOptions)options
{
  handler[5] = *MEMORY[0x1E69E9840];
  v7 = [(NSXPCConnection *)self init];
  if (v7)
  {
    v8 = [+[NSFileManager defaultManager](NSFileManager fileSystemRepresentationWithPath:"fileSystemRepresentationWithPath:", name];
    if (!v8)
    {

      v8 = 0;
    }

    v9 = [+[NSString stringWithFormat:](NSString UTF8String:@"com.apple.NSXPCConnection.m-user.%@"];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    v7->_userQueue = dispatch_queue_create_with_target_V2(v9, v10, global_queue);
    v7->_serviceName = [(NSString *)name copy];
    mach_service = xpc_connection_create_mach_service(v8, v7->_userQueue, (options >> 11) & 2);
    v7->_connection.xpc = mach_service;
    if (!mach_service)
    {
      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Unable to connect to the specified name (%@). No connection was created.", _NSMethodExceptionProem(v7, a2), v7->_serviceName), 0}];
      objc_exception_throw(v15);
    }

    xpc_connection_set_target_queue(mach_service, v7->_userQueue);
    xpc = v7->_connection.xpc;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __51__NSXPCConnection_initWithMachServiceName_options___block_invoke;
    handler[3] = &unk_1E69F5440;
    handler[4] = v7;
    xpc_connection_set_event_handler(xpc, handler);
    [(NSString *)v7->_serviceName UTF8String];
  }

  return v7;
}

- (NSXPCConnection)initWithListenerEndpoint:(NSXPCListenerEndpoint *)endpoint
{
  handler[5] = *MEMORY[0x1E69E9840];
  v5 = [(NSXPCConnection *)self init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    v5->_userQueue = dispatch_queue_create_with_target_V2("com.apple.NSXPCConnection.user.endpoint", v6, global_queue);
    atomic_fetch_or(&v5->_state2, 0x20u);
    if ([(NSXPCListenerEndpoint *)endpoint _endpoint])
    {
      v8 = xpc_connection_create_from_endpoint([(NSXPCListenerEndpoint *)endpoint _endpoint]);
      v5->_connection.xpc = v8;
      if (v8)
      {
        xpc_connection_set_target_queue(v8, v5->_userQueue);
        xpc = v5->_connection.xpc;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __44__NSXPCConnection_initWithListenerEndpoint___block_invoke;
        handler[3] = &unk_1E69F5440;
        handler[4] = v5;
        xpc_connection_set_event_handler(xpc, handler);
        v5->_endpoint = endpoint;
        return v5;
      }

      v11 = [NSString stringWithFormat:@"%@: Unable to connect to the specified endpoint. No connection was created.", _NSMethodExceptionProem(v5, a2)];
    }

    else
    {
      v11 = [NSString stringWithFormat:@"%@: Endpoint argument is NULL.", _NSMethodExceptionProem(v5, a2)];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0]);
  }

  return v5;
}

- (id)_initWithCustomTransport:(id)a3
{
  v12[5] = *MEMORY[0x1E69E9840];
  v4 = [(NSXPCConnection *)self init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    v4->_userQueue = dispatch_queue_create_with_target_V2("com.apple.NSXPCConnection.user.endpoint", v5, global_queue);
    atomic_fetch_or(&v4->_state2, 0x40u);
    v7 = a3;
    v4->_transport = v7;
    [(_NSXPCTransport *)v7 setTargetQueue:v4->_userQueue];
    transport = v4->_transport;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__NSXPCConnection__initWithCustomTransport___block_invoke;
    v12[3] = &unk_1E69F5440;
    v12[4] = v4;
    [(_NSXPCTransport *)transport setErrorHandler:v12];
    v9 = v4->_transport;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__NSXPCConnection__initWithCustomTransport___block_invoke_2;
    v11[3] = &unk_1E69FA2E8;
    v11[4] = v4;
    [(_NSXPCTransport *)v9 setMessageHandler:v11];
  }

  return v4;
}

- (void)scheduleSendBarrierBlock:(void *)block
{
  v3 = atomic_load(&self->_state2);
  if ((v3 & 0x40) != 0)
  {
    [(_NSXPCTransport *)self->_transport sendBarrierBlock:block];
  }

  else
  {
    xpc = self->_connection.xpc;
    if (xpc)
    {
      xpc_connection_send_barrier(xpc, block);
    }
  }
}

- (void)_sendDesistForProxy:(id)a3
{
  if (a3)
  {
    v4 = *(a3 + 5);
    if (v4 == 1)
    {
      return;
    }

    v5 = *(a3 + 6);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v5 == self->_importInfo->_generationCount)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "f", 0xDuLL);
    xpc_dictionary_set_uint64(v6, "proxynum", v4);
    v7 = atomic_load(&self->_state2);
    if ((v7 & 0x40) != 0)
    {
      [(_NSXPCTransport *)self->_transport sendNotification:v6];
    }

    else if (self->_connection.xpc)
    {
      xpc_connection_send_notification();
    }

    xpc_release(v6);
  }
}

- (void)_sendSelector:(SEL)a3 withProxy:(id)a4
{
  if (a4)
  {
    Property = objc_getProperty(a4, a2, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = [Property _methodSignatureForRemoteSelector:a3];

  [(NSXPCConnection *)self _sendInvocation:0 orArguments:0 count:0 methodSignature:v8 selector:a3 withProxy:a4];
}

- (void)_sendSelector:(SEL)a3 withProxy:(id)a4 arg1:(id)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (a4)
  {
    Property = objc_getProperty(a4, a2, 16, 1);
  }

  else
  {
    Property = 0;
  }

  -[NSXPCConnection _sendInvocation:orArguments:count:methodSignature:selector:withProxy:](self, "_sendInvocation:orArguments:count:methodSignature:selector:withProxy:", 0, &v9, 1, [Property _methodSignatureForRemoteSelector:{a3, v9, v10}], a3, a4);
}

- (void)_sendSelector:(SEL)a3 withProxy:(id)a4 arg1:(id)a5 arg2:(id)a6
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    Property = objc_getProperty(a4, a2, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v12[0] = a5;
  v12[1] = a6;
  -[NSXPCConnection _sendInvocation:orArguments:count:methodSignature:selector:withProxy:](self, "_sendInvocation:orArguments:count:methodSignature:selector:withProxy:", 0, v12, 2, [Property _methodSignatureForRemoteSelector:a3], a3, a4);
}

- (void)_sendSelector:(SEL)a3 withProxy:(id)a4 arg1:(id)a5 arg2:(id)a6 arg3:(id)a7
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    Property = objc_getProperty(a4, a2, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  -[NSXPCConnection _sendInvocation:orArguments:count:methodSignature:selector:withProxy:](self, "_sendInvocation:orArguments:count:methodSignature:selector:withProxy:", 0, v14, 3, [Property _methodSignatureForRemoteSelector:a3], a3, a4);
}

- (void)_sendSelector:(SEL)a3 withProxy:(id)a4 arg1:(id)a5 arg2:(id)a6 arg3:(id)a7 arg4:(id)a8
{
  v16[4] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    Property = objc_getProperty(a4, a2, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v16[0] = a5;
  v16[1] = a6;
  v16[2] = a7;
  v16[3] = a8;
  -[NSXPCConnection _sendInvocation:orArguments:count:methodSignature:selector:withProxy:](self, "_sendInvocation:orArguments:count:methodSignature:selector:withProxy:", 0, v16, 4, [Property _methodSignatureForRemoteSelector:a3], a3, a4);
}

- (void)_sendInvocation:(id)a3 orArguments:(id *)a4 count:(unint64_t)a5 methodSignature:(id)a6 selector:(SEL)a7 withProxy:(id)a8
{
  v105[256] = *MEMORY[0x1E69E9840];
  v15 = [a8 _userInfo];
  if (a8)
  {
    v16 = *(a8 + 8);
    Property = objc_getProperty(a8, v14, 32, 1);
    newValue = objc_getProperty(a8, v17, 16, 1);
  }

  else
  {
    Property = 0;
    newValue = 0;
    v16 = 0.0;
  }

  v18 = xpc_dictionary_create(0, 0, 0);
  v19 = [a6 numberOfArguments];
  if (!a3 && v19 - 2 != a5)
  {
    v67 = [NSString stringWithFormat:@"[NSXPCConnection sendInvocation]: Mismatch of count of expected arguments (%s) %lu vs %lu", sel_getName(a7), v19 - 2, a5];
LABEL_110:
    v68 = v67;
    v69 = MEMORY[0x1E695DF30];
    v70 = MEMORY[0x1E695D930];
    goto LABEL_121;
  }

  if (a8)
  {
    value = *(a8 + 5);
  }

  else
  {
    value = 0;
  }

  v80 = a5;
  v81 = a2;
  xdict = v18;
  v86 = self;
  if (v19 >= 3)
  {
    v20 = 0;
    v21 = 0;
    v82 = 0;
    v22 = 0;
    v23 = v19 - 2;
    v24 = 1;
    while (1)
    {
      v25 = [a6 _argInfo:v20 + 2];
      if (!v25)
      {
        break;
      }

      v26 = *(v25 + 34);
      if ((v26 & 0x80) != 0)
      {
        v25 = *v25;
        if (!v25)
        {
          break;
        }

        v26 = *(v25 + 34);
      }

      if ((v26 & 8) != 0)
      {
        Name = sel_getName(a7);
        v71 = @"[NSXPCConnection sendInvocation]: Arguments to messages sent to this proxy may not be 'byref'. (%s)";
        goto LABEL_119;
      }

      if ((v26 & 2) != 0)
      {
        Name = sel_getName(a7);
        v71 = @"[NSXPCConnection sendInvocation]: Arguments to messages sent to this proxy may not be 'out'. (%s)";
        goto LABEL_119;
      }

      if ((v26 & 0x1000) != 0)
      {
        v27 = *(v25 + 8);
        if (v27)
        {
          if ((*(v27 + 34) & 0x1000) != 0)
          {
            Name = sel_getName(a7);
            v71 = @"[NSXPCConnection sendInvocation]: Arguments to messages sent to this proxy may not be of type '**'. (%s)";
            goto LABEL_119;
          }
        }
      }

      if (v26 < 0)
      {
        if (v21)
        {
          Name = sel_getName(a7);
          v71 = @"[NSXPCConnection sendInvocation]: Only one reply block is allowed per message send. (%s)";
          goto LABEL_119;
        }

        if (a8 && (*(a8 + 56) & 2) != 0)
        {
          Name = sel_getName(a7);
          v71 = @"[NSXPCConnection sendInvocation]: A reply block was sent over a 'no importance' proxy. (%s)";
          goto LABEL_119;
        }

        v105[0] = 0;
        if (a3)
        {
          [a3 getArgument:v105 atIndex:v20 + 2];
          v28 = v105[0];
          if (!v105[0])
          {
            goto LABEL_117;
          }
        }

        else
        {
          v28 = a4[v20];
          v105[0] = v28;
          if (!v28)
          {
LABEL_117:
            Name = sel_getName(a7);
            v71 = @"[NSXPCConnection sendInvocation]: A NULL reply block was passed into a message meant to be sent over a connection. (%s)";
            goto LABEL_119;
          }
        }

        v29 = _Block_signature(v28);
        if (!v29)
        {
          Name = sel_getName(a7);
          v71 = @"[NSXPCConnection sendInvocation]: Block was not compiled using a compiler that inserts type information about arguments. (%s)";
          goto LABEL_119;
        }

        v30 = v29;
        v31 = [objc_msgSend(MEMORY[0x1E695DF68] signatureWithObjCTypes:{v29), "_argInfo:", -1}];
        if ((*(v31 + 34) & 0x80) != 0)
        {
          v31 = *v31;
        }

        if (*(v31 + 36) != 118)
        {
          Name = sel_getName(a7);
          v71 = @"[NSXPCConnection sendInvocation]: Return value of block argument must be 'void'. (%s)";
          goto LABEL_119;
        }

        v32 = [[_NSXPCConnectionExpectedReplyInfo alloc] initWithSelector:a7];
        v22 = v32;
        if (v32)
        {
          objc_setProperty_atomic(v32, v33, newValue, 40);
          v22[7] = value;
          if (v15)
          {
            objc_setProperty_atomic(v22, v34, v15, 48);
          }

          objc_setProperty_atomic_copy(v22, v34, v105[0], 8);
          objc_setProperty_atomic_copy(v22, v35, Property, 16);
          if (v16 != 0.0)
          {
            v82 = dispatch_semaphore_create(0);
            objc_setProperty_atomic(v22, v36, v82, 24);
          }
        }

        else if (v16 != 0.0)
        {
          v82 = dispatch_semaphore_create(0);
        }

        sel_getName(a7);
        v24 |= 0x20uLL;
        xpc_dictionary_set_string(xdict, "replysig", v30);
        v21 = 1;
      }

      else if ((v26 & 0x2000) != 0)
      {
        v105[0] = 0;
        if (a3)
        {
          [a3 getArgument:v105 atIndex:v20 + 2];
        }

        else
        {
          v105[0] = a4[v20];
        }

        v37 = [newValue _interfaceForArgument:v20 ofSelector:a7 reply:0];
        if (v105[0])
        {
          if (objc_opt_isKindOfClass())
          {
            if (!v37)
            {
              v72 = [NSString stringWithFormat:@"[NSXPCConnection sendInvocation]: A proxy object was passed as an argument to a message (argument %ld) but the interface does not specify a proxy object there. (%s)", v20, sel_getName(a7), v79];
              goto LABEL_120;
            }
          }

          else if (v105[0] && v37)
          {
            v38 = [_NSXPCDistantObject alloc];
            v39 = [(_NSXPCDistantObject *)v38 _initWithConnection:v86 exportedObject:v105[0] interface:v37];
            v104 = v39;
            if (a3)
            {
              [a3 setArgument:&v104 atIndex:v20 + 2];
              [a3 _addAttachedObject:v104];
            }

            else
            {
              a4[v20] = v39;
            }
          }
        }
      }

      if (v23 == ++v20)
      {
        goto LABEL_55;
      }
    }

    v67 = [NSString stringWithFormat:@"[NSXPCConnection sendInvocation]: No argument type for invocation argument (%s)", sel_getName(a7), v78, v79];
    goto LABEL_110;
  }

  v22 = 0;
  v82 = 0;
  v24 = 1;
LABEL_55:
  v40 = [a6 _argInfo:-1];
  v42 = v40;
  if ((*(v40 + 34) & 0x80) != 0)
  {
    v42 = *v40;
  }

  v43 = *(v42 + 36);
  if (v43 != 118)
  {
    if (v22)
    {
      v44 = [newValue _returnClassForSelector:a7];
      if (v44 == NSProgress)
      {
        goto LABEL_60;
      }

      v73 = v44;
      v74 = *(v42 + 36);
      v75 = sel_getName(a7);
      v72 = [NSString stringWithFormat:@"[NSXPCConnection sendInvocation]: Return type (%c) of method %s is an object (%s) but not 'NSProgress'", v74, v75, class_getName(v73)];
    }

    else
    {
      Name = sel_getName(a7);
      v71 = @"[NSXPCConnection sendInvocation]: Return type of methods sent over this proxy must be 'void' or 'NSProgress *' (%s)";
LABEL_119:
      v72 = [NSString stringWithFormat:v71, Name, v78, v79];
    }

LABEL_120:
    v68 = v72;
    v69 = MEMORY[0x1E695DF30];
    v70 = MEMORY[0x1E695D940];
LABEL_121:
    objc_exception_throw([v69 exceptionWithName:*v70 reason:v68 userInfo:0]);
  }

LABEL_60:
  if (value != 1)
  {
    v45 = a8 ? *(a8 + 6) : 0;
    if (v45 != v86->_importInfo->_generationCount)
    {
      if (v22 && objc_getProperty(v22, v41, 16, 1))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __88__NSXPCConnection__sendInvocation_orArguments_count_methodSignature_selector_withProxy___block_invoke;
        block[3] = &unk_1E69F2080;
        block[4] = v86;
        block[5] = v22;
        if (a8 && (*(a8 + 56) & 4) != 0)
        {
          __88__NSXPCConnection__sendInvocation_orArguments_count_methodSignature_selector_withProxy___block_invoke(block);
        }

        else
        {
          dispatch_async(v86->_userQueue, block);
        }
      }

      v65 = v22 != 0;
      v62 = v82;
      goto LABEL_104;
    }
  }

  v46 = objc_opt_new();
  v47 = [[NSXPCEncoder alloc] initWithStackSpace:v105 size:2048];
  [(NSXPCEncoder *)v47 _setConnection:v86];
  [(NSXPCEncoder *)v47 setDelegate:v86];
  if (v86->_otherInfo)
  {
    [(NSXPCCoder *)v47 setUserInfo:?];
  }

  if (a3)
  {
    [(NSXPCEncoder *)v47 _encodeInvocation:a3 isReply:0 into:xdict];
  }

  else
  {
    -[NSXPCEncoder _encodeInvocationObjectArgumentsOnly:count:typeString:selector:isReply:into:](v47, "_encodeInvocationObjectArgumentsOnly:count:typeString:selector:isReply:into:", a4, v80, [a6 _cTypeString], a7, 0, xdict);
  }

  xpc_dictionary_set_uint64(xdict, "proxynum", value);
  if (!v22)
  {
    xpc_dictionary_set_uint64(xdict, "f", v24);
    if (a8)
    {
      v52 = *(a8 + 7);
      v53 = atomic_load(&v86->_state2);
      if ((v52 & 2) != 0)
      {
        if ((v53 & 0x40) != 0)
        {
          [(_NSXPCTransport *)v86->_transport sendNotification:xdict, v50, v51];
        }

        else
        {
          xpc_connection_send_notification();
        }

        goto LABEL_131;
      }

      if ((v53 & 0x40) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v76 = atomic_load(&v86->_state2);
      if ((v76 & 0x40) == 0)
      {
LABEL_76:
        xpc_connection_send_message(v86->_connection.xpc, xdict);
LABEL_131:
        xpc_release(xdict);
        goto LABEL_132;
      }
    }

    [(_NSXPCTransport *)v86->_transport sendMessage:xdict, v50, v51];
    goto LABEL_131;
  }

  v105[0] = 0;
  if (v43 == 118)
  {
    v48 = +[NSProgress currentProgress];
    if (v48)
    {
      v49 = [[NSProgress alloc] initWithParent:v48 userInfo:0];
      v105[0] = v49;
      v24 |= 0x40uLL;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v105[0] = [NSProgress discreteProgressWithTotalUnitCount:1];
    [a3 setReturnValue:v105];
    v24 |= 0xC0uLL;
    v49 = v105[0];
  }

  v54 = [(_NSXPCConnectionExpectedReplies *)v86->_repliesExpected sequenceForProgress:v49];
  xpc_dictionary_set_uint64(xdict, "sequence", v54);
  xpc_dictionary_set_uint64(xdict, "f", v24);
  if (v105[0])
  {
    [v105[0] setTotalUnitCount:1];
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __88__NSXPCConnection__sendInvocation_orArguments_count_methodSignature_selector_withProxy___block_invoke_2;
    v102[3] = &unk_1E69F4618;
    v102[4] = v86;
    v102[5] = v54;
    [v105[0] setCancellationHandler:v102];
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __88__NSXPCConnection__sendInvocation_orArguments_count_methodSignature_selector_withProxy___block_invoke_3;
    v101[3] = &unk_1E69F4618;
    v101[4] = v86;
    v101[5] = v54;
    [v105[0] setPausingHandler:v101];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __88__NSXPCConnection__sendInvocation_orArguments_count_methodSignature_selector_withProxy___block_invoke_4;
    v100[3] = &unk_1E69F4618;
    v100[4] = v86;
    v100[5] = v54;
    [v105[0] setResumingHandler:v100];
  }

  v57 = [newValue _hasProxiesInReplyBlockArgumentsOfSelector:{a7, v55, v56}];
  v58 = v57;
  if (v57)
  {
    exportInfo = v86->_exportInfo;
    if (exportInfo)
    {
      dispatch_group_enter(exportInfo->_replyGroup);
    }
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  v91 = __88__NSXPCConnection__sendInvocation_orArguments_count_methodSignature_selector_withProxy___block_invoke_5;
  v92 = &unk_1E69FA310;
  v93 = v86;
  v94 = v22;
  v95 = v105[0];
  v96 = v54;
  v97 = value;
  v98 = v81;
  v99 = v58;
  if (a8)
  {
    v60 = *(a8 + 7);
    v61 = atomic_load(&v86->_state2);
    if ((v60 & 4) != 0)
    {
      v62 = v82;
      if ((v61 & 0x40) != 0)
      {
        v63 = [(_NSXPCTransport *)v86->_transport sendMessageWithReplySync:xdict];
      }

      else
      {
        v63 = __NSXPCCONNECTION_IS_WAITING_FOR_A_SYNCHRONOUS_REPLY__(v86->_connection.xpc, xdict);
      }

      v64 = v63;
      v91(handler, v63);
      xpc_release(v64);
      goto LABEL_100;
    }
  }

  else
  {
    v61 = atomic_load(&v86->_state2);
  }

  v62 = v82;
  if ((v61 & 0x40) != 0)
  {
    [(_NSXPCTransport *)v86->_transport sendMessageWithReply:xdict onQueue:v86->_userQueue replyHandler:handler];
  }

  else
  {
    xpc_connection_send_message_with_reply(v86->_connection.xpc, xdict, v86->_userQueue, handler);
  }

LABEL_100:
  v65 = 1;
LABEL_104:
  xpc_release(xdict);
  if (v65 && v62)
  {
    v66 = dispatch_time(0, (v16 * 1000000000.0));
    if (dispatch_semaphore_wait(v62, v66))
    {
      [(NSXPCConnection *)v86 invalidate];
      dispatch_semaphore_wait(v62, 0xFFFFFFFFFFFFFFFFLL);
    }

    dispatch_release(v62);
  }

LABEL_132:
}

void __88__NSXPCConnection__sendInvocation_orArguments_count_methodSignature_selector_withProxy___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"NSDebugDescription";
  v5[0] = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"The %@ was interrupted, but the message was sent over an additional proxy and therefore this proxy has become invalid.", [*(a1 + 32) _errorDescription]);
  +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4099, [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(Property);
  [(_NSXPCConnectionExpectedReplyInfo *)*(a1 + 40) cleanup];
}

void __88__NSXPCConnection__sendInvocation_orArguments_count_methodSignature_selector_withProxy___block_invoke_5(uint64_t a1, void *a2)
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    [(_NSXPCConnectionExpectedReplies *)*(*(a1 + 32) + 16) removeProgressSequence:?];
    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  }

  v4 = objc_autoreleasePoolPush();
  Class = object_getClass(a2);
  if (Class == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(v8 + 56);
      }

      else
      {
        v9 = 0;
      }

      v10 = *(a1 + 40);
      if (v10 && objc_getProperty(v10, v9, 16, 1))
      {
        if (*(a1 + 64) == 1)
        {
          v41 = @"NSDebugDescription";
          v42 = [*(a1 + 32) _errorDescription];
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          v12 = 4097;
        }

        else
        {
          v43 = @"NSDebugDescription";
          v44[0] = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"The %@ was interrupted, but the message was sent over an additional proxy and therefore this proxy has become invalid.", [*(a1 + 32) _errorDescription]);
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
          v12 = 4099;
        }

        goto LABEL_37;
      }

      goto LABEL_40;
    }

    if (a2 != MEMORY[0x1E69E9E20])
    {
      if (a2 != MEMORY[0x1E69E9E30])
      {
        if (a2 != MEMORY[0x1E69E9E38])
        {
          v6 = MEMORY[0x1865D3A50](a2);
          v7 = _NSXPCLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v32 = v6;
            _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "Unexpected XPC error type on reply: %s", buf, 0xCu);
          }

          free(v6);
        }

        goto LABEL_40;
      }

      v21 = *(a1 + 40);
      if (v21)
      {
        v22 = *(v21 + 56);
      }

      else
      {
        v22 = 0;
      }

      v23 = *(a1 + 40);
      if (v23 && objc_getProperty(v23, v22, 16, 1))
      {
        v33 = @"NSDebugDescription";
        v34 = @"The code signature requirement failed.";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v12 = 4102;
LABEL_37:
        [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v12 userInfo:v11];
        Property = *(a1 + 40);
        if (Property)
        {
          Property = objc_getProperty(Property, v27, 16, 1);
        }

        __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(Property);
      }

LABEL_40:
      [(_NSXPCConnectionExpectedReplyInfo *)*(a1 + 40) cleanup];
      goto LABEL_41;
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 56);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 40);
    if (!v15 || !objc_getProperty(v15, v14, 16, 1))
    {
      goto LABEL_40;
    }

    v16 = atomic_load((*(a1 + 32) + 36));
    if ((v16 & 8) != 0)
    {
      v39 = @"NSDebugDescription";
      v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"The %@ was invalidated from this process.", [*(a1 + 32) _errorDescription]);
      v24 = MEMORY[0x1E695DF20];
      v25 = &v40;
      v26 = &v39;
    }

    else
    {
      v17 = atomic_load((*(a1 + 32) + 36));
      if ((v17 & 0x40) == 0)
      {
        [*(a1 + 32) _xpcConnection];
        v18 = xpc_connection_copy_invalidation_reason();
        if (v18)
        {
          v19 = v18;
          v37 = @"NSDebugDescription";
          v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"The %@ was invalidated: %s.", [*(a1 + 32) _errorDescription], v18);
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          free(v19);
LABEL_36:
          v12 = 4099;
          v11 = v20;
          goto LABEL_37;
        }
      }

      v35 = @"NSDebugDescription";
      v36 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"The %@ was invalidated.", [*(a1 + 32) _errorDescription]);
      v24 = MEMORY[0x1E695DF20];
      v25 = &v36;
      v26 = &v35;
    }

    v20 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
    goto LABEL_36;
  }

  if (Class != MEMORY[0x1E69E9E80])
  {
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: encoded data has been corrupted, root object is not an XPC dictionary", _NSMethodExceptionProem(*(a1 + 32), *(a1 + 72))), 0}];
    objc_exception_throw(v30);
  }

  [*(a1 + 32) _decodeAndInvokeReplyBlockWithEvent:a2 sequence:*(a1 + 56) replyInfo:*(a1 + 40)];
LABEL_41:
  if (*(a1 + 80) == 1)
  {
    v29 = *(*(a1 + 32) + 56);
    if (v29)
    {
      dispatch_group_leave(*(v29 + 48));
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)setInterruptionHandler:(void *)interruptionHandler
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_interruptionHandler;
  if (v5 != interruptionHandler)
  {
    if (v5)
    {
    }

    if (interruptionHandler)
    {
      v6 = [interruptionHandler copy];
    }

    else
    {
      v6 = 0;
    }

    self->_interruptionHandler = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInvalidationHandler:(void *)invalidationHandler
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_invalidationHandler;
  if (v5 != invalidationHandler)
  {
    if (v5)
    {
    }

    if (invalidationHandler)
    {
      v6 = [invalidationHandler copy];
    }

    else
    {
      v6 = 0;
    }

    self->_invalidationHandler = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)set_additionalInvalidationHandler:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  objc_setAssociatedObject(self, "additionalInvalidationHandler", a3, 0x303);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setOptions:(unint64_t)a3
{
  v3 = a3;
  if ((a3 & 0x100) != 0)
  {
    v6 = atomic_load(&self->_state2);
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_9;
    }

    xpc_connection_set_legacy();
  }

  if ((v3 & 0x1000) == 0)
  {
    return;
  }

  v7 = atomic_load(&self->_state2);
  if ((v7 & 0x40) != 0)
  {
LABEL_9:
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Custom transports do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  xpc = self->_connection.xpc;

  MEMORY[0x1EEE74B08](xpc);
}

- (void)_setLanguages:(id)a3
{
  v4 = atomic_load(&self->_state2);
  if ((v4 & 0x40) != 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Custom transports do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v6);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_bootstrap)
  {
    if (a3)
    {
LABEL_4:
      _CFBundleSetupXPCBootstrapWithLanguages();
      goto LABEL_7;
    }
  }

  else
  {
    self->_bootstrap = xpc_dictionary_create(0, 0, 0);
    if (a3)
    {
      goto LABEL_4;
    }
  }

  _CFBundleSetupXPCBootstrap();
LABEL_7:
  xpc_connection_set_bootstrap();

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setBootstrapObject:(id)a3 forKey:(id)a4
{
  os_unfair_lock_lock(&self->_lock);
  bootstrap = self->_bootstrap;
  if (!bootstrap)
  {
    bootstrap = xpc_dictionary_create(0, 0, 0);
    self->_bootstrap = bootstrap;
  }

  xpc_dictionary_set_value(bootstrap, [a4 UTF8String], a3);
  xpc_connection_set_bootstrap();

  os_unfair_lock_unlock(&self->_lock);
}

- (id)valueForEntitlement:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  if (self)
  {
    [(NSXPCConnection *)self auditToken];
  }

  importInfo = self->_importInfo;
  v7[0] = v8;
  v7[1] = v9;
  return [(_NSXPCConnectionImportInfo *)importInfo _valueForEntitlement:a3 auditToken:v7];
}

- (void)setUserInfo:(id)a3
{
  otherInfo = self->_otherInfo;
  if (otherInfo != a3)
  {

    self->_otherInfo = a3;
  }
}

- (void)setDelegate:(id)a3
{
  atomic_store(a3, &self->_delegate);
  atomic_load(&self->_delegate);
  v4 = objc_opt_respondsToSelector();
  p_state2 = &self->_state2;
  if (v4)
  {
    atomic_fetch_or(p_state2, 2u);
  }

  else
  {
    atomic_fetch_and(p_state2, 0xFFFFFFFD);
  }
}

- (id)replacementObjectForEncoder:(id)a3 object:(id)a4
{
  if (!atomic_load(&self->_delegate))
  {
    return a4;
  }

  v5 = atomic_load(&self->_state2);
  if ((v5 & 2) == 0)
  {
    return a4;
  }

  v7 = atomic_load(&self->_delegate);
  return [v7 replacementObjectForXPCConnection:? encoder:? object:?];
}

- (void)_setQueue:(id)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: The queue parameter is NULL, which is invalid", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  userQueue = self->_userQueue;
  if (userQueue)
  {
    v6 = userQueue == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    dispatch_retain(a3);
    v7 = self->_userQueue;
    self->_userQueue = a3;
    v8 = atomic_load(&self->_state2);
    if ((v8 & 0x40) != 0)
    {
      [(_NSXPCTransport *)self->_transport setTargetQueue:a3];
    }

    else
    {
      xpc_connection_set_target_queue(self->_connection.xpc, a3);
    }

    dispatch_release(v7);
  }
}

- (id)remoteObjectProxyWithErrorHandler:(void *)handler
{
  v3 = [objc_alloc(-[NSXPCConnection _remoteObjectInterfaceClass](self "_remoteObjectInterfaceClass"))];

  return v3;
}

- (id)remoteObjectProxyWithUserInfo:(id)a3 errorHandler:(id)a4
{
  v5 = [objc_alloc(-[NSXPCConnection _remoteObjectInterfaceClass](self "_remoteObjectInterfaceClass"))];
  [v5 set_userInfo:a3];
  return v5;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(void *)handler
{
  v3 = [objc_alloc(-[NSXPCConnection _remoteObjectInterfaceClass](self "_remoteObjectInterfaceClass"))];

  return v3;
}

- (id)remoteObjectProxyWithTimeout:(double)a3 errorHandler:(id)a4
{
  result = [objc_alloc(-[NSXPCConnection _remoteObjectInterfaceClass](self "_remoteObjectInterfaceClass"))];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (uint64_t)_removeImportedProxy:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2 || *(a2 + 40) != 1)
    {
      result = [(_NSXPCConnectionImportInfo *)*(result + 72) removeProxy:a2];
      if (result)
      {

        return [v3 _sendDesistForProxy:a2];
      }
    }
  }

  return result;
}

- (void)_setUUID:(id)a3
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_state2);
  if ((v3 & 0x40) != 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Custom transports do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v4);
  }

  v5[0] = 0;
  v5[1] = 0;
  [a3 getUUIDBytes:v5];
  xpc_connection_set_instance();
}

- (void)_setTargetUserIdentifier:(unsigned int)a3
{
  v4 = atomic_load(&self->_state2);
  if ((v4 & 0x40) != 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Custom transports do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v6);
  }

  xpc = self->_connection.xpc;

  MEMORY[0x1EEE74B20](xpc, *&a3);
}

- (void)_killConnection:(int)a3
{
  v4 = atomic_load(&self->_state2);
  if ((v4 & 0x40) != 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Custom transports do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v6);
  }

  xpc = self->_connection.xpc;

  MEMORY[0x1EEE74A88](xpc, *&a3);
}

- (uint64_t)_sendProgressMessage:(uint64_t)a3 forSequence:
{
  if (result)
  {
    v5 = result;
    xpc_dictionary_set_uint64(xdict, "f", 0x15uLL);
    xpc_dictionary_set_uint64(xdict, "sequence", a3);
    v6 = atomic_load((v5 + 36));
    if ((v6 & 0x40) != 0)
    {
      v7 = *(v5 + 152);

      return [v7 sendNotification:xdict];
    }

    else
    {

      return xpc_connection_send_notification();
    }
  }

  return result;
}

- (void)_cancelProgress:(unint64_t)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "f", 0x10015uLL);
  xpc_dictionary_set_uint64(v5, "sequence", a3);
  v6 = atomic_load(&self->_state2);
  if ((v6 & 0x40) != 0)
  {
    [(_NSXPCTransport *)self->_transport sendNotification:v5];
  }

  else
  {
    xpc_connection_send_notification();
  }

  xpc_release(v5);
}

- (void)_pauseProgress:(unint64_t)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "f", 0x20015uLL);
  xpc_dictionary_set_uint64(v5, "sequence", a3);
  v6 = atomic_load(&self->_state2);
  if ((v6 & 0x40) != 0)
  {
    [(_NSXPCTransport *)self->_transport sendNotification:v5];
  }

  else
  {
    xpc_connection_send_notification();
  }

  xpc_release(v5);
}

- (void)_resumeProgress:(unint64_t)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "f", 0x40015uLL);
  xpc_dictionary_set_uint64(v5, "sequence", a3);
  v6 = atomic_load(&self->_state2);
  if ((v6 & 0x40) != 0)
  {
    [(_NSXPCTransport *)self->_transport sendNotification:v5];
  }

  else
  {
    xpc_connection_send_notification();
  }

  xpc_release(v5);
}

- (void)_decodeProgressMessageWithData:(id)a3 flags:(unint64_t)a4
{
  v4 = a4;
  uint64 = xpc_dictionary_get_uint64(a3, "sequence");
  if ((v4 & 0x10000) != 0)
  {
    v9 = [(_NSXPCConnectionRequestedReplies *)self->_repliesRequested progressForSequence:?];

    [v9 cancel];
  }

  else if ((v4 & 0x20000) != 0)
  {
    v10 = [(_NSXPCConnectionRequestedReplies *)self->_repliesRequested progressForSequence:?];

    [v10 pause];
  }

  else if ((v4 & 0x40000) != 0)
  {
    v11 = [(_NSXPCConnectionRequestedReplies *)self->_repliesRequested progressForSequence:?];

    [v11 resume];
  }

  else
  {
    v8 = [(_NSXPCConnectionExpectedReplies *)self->_repliesExpected progressForSequence:?];

    [NSProgress _receiveProgressMessage:v8 forSequence:a3];
  }
}

@end