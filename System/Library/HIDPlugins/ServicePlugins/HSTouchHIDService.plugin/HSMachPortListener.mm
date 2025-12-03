@interface HSMachPortListener
+ (SendRight)getSendRightFromServer:(const SendRight *)server;
- (HSMachPortListener)initWithReceiveRight:(ReceiveRight *)right queue:(id)queue clientHandler:(id)handler;
- (id).cxx_construct;
- (void)_handleClient;
- (void)close;
- (void)dealloc;
@end

@implementation HSMachPortListener

+ (SendRight)getSendRightFromServer:(const SendRight *)server
{
  v5 = v3;
  if (server->_mp - 1 >= 0xFFFFFFFE)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HSMachPortListener.mm" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"serverSendRight"}];
  }

  HSUtil::ReceiveRight::ReceiveRight(v23);
  if ((v24 - 1) >= 0xFFFFFFFE)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSMachPortListener.mm", v25);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      +[HSMachPortListener getSendRightFromServer:];
    }

    goto LABEL_9;
  }

  *&msg.msgh_bits = 5139;
  msg.msgh_remote_port = HSUtil::PortRight::port(server);
  msg.msgh_id = 0;
  *&msg.msgh_local_port = HSUtil::PortRight::port(v23);
  if (!mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0))
  {
    previous = 0;
    v8 = mach_task_self_;
    v9 = HSUtil::PortRight::port(v23);
    v10 = HSUtil::PortRight::port(v23);
    if (mach_port_request_notification(v8, v9, 70, 0, v10, 0x15u, &previous))
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSMachPortListener.mm", v25);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        +[HSMachPortListener getSendRightFromServer:];
      }

      goto LABEL_9;
    }

    v20 = previous;
    v19 = &off_109360;
    if (previous - 1 <= 0xFFFFFFFD)
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSMachPortListener.mm", v25);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        +[HSMachPortListener getSendRightFromServer:];
      }

LABEL_20:
      *(v5 + 8) = 0;
      *v5 = &off_109360;
LABEL_21:
      HSUtil::SendRight::~SendRight(&v19);
      goto LABEL_10;
    }

    v11 = HSUtil::PortRight::port(v23);
    if (mach_msg(&v18, 2, 0, 0x58u, v11, 0, 0))
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSMachPortListener.mm", v25);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        +[HSMachPortListener getSendRightFromServer:];
      }

      goto LABEL_20;
    }

    v17 = 0;
    v16 = &off_109360;
    v12 = v18.msgh_bits & 0x1F;
    if ((v12 - 17) >= 2)
    {
      if (v12 == 16)
      {
        msgh_remote_port = v18.msgh_remote_port;
        *v25 = &off_10A820;
        HSUtil::ReceiveRight::~ReceiveRight(v25);
      }
    }

    else
    {
      msgh_remote_port = v18.msgh_remote_port;
      *v25 = &off_109360;
      HSUtil::SendRight::reset(&v16);
      v17 = msgh_remote_port;
      msgh_remote_port = 0;
      HSUtil::SendRight::~SendRight(v25);
    }

    if (v18.msgh_id)
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSMachPortListener.mm", v25);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        +[HSMachPortListener getSendRightFromServer:];
      }
    }

    else
    {
      if (v17 - 1 < 0xFFFFFFFE)
      {
        *(v5 + 8) = 0;
        *v5 = &off_109360;
        HSUtil::SendRight::reset(v5);
        *(v5 + 8) = v17;
        v17 = 0;
LABEL_34:
        HSUtil::SendRight::~SendRight(&v16);
        goto LABEL_21;
      }

      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSMachPortListener.mm", v25);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        +[HSMachPortListener getSendRightFromServer:];
      }
    }

    *(v5 + 8) = 0;
    *v5 = &off_109360;
    goto LABEL_34;
  }

  basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSMachPortListener.mm", v25);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    +[HSMachPortListener getSendRightFromServer:];
  }

LABEL_9:
  *(v5 + 8) = 0;
  *v5 = &off_109360;
LABEL_10:
  HSUtil::ReceiveRight::~ReceiveRight(v23);
  result._mp = v7;
  result._vptr$PortRight = v6;
  return result;
}

- (HSMachPortListener)initWithReceiveRight:(ReceiveRight *)right queue:(id)queue clientHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (right->var1 - 1 < 0xFFFFFFFE)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HSMachPortListener.mm" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HSMachPortListener.mm" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"receiveRight"}];

  if (!queueCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  v19 = +[NSAssertionHandler currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"HSMachPortListener.mm" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"clientHandler"}];

LABEL_4:
  v20.receiver = self;
  v20.super_class = HSMachPortListener;
  v12 = [(HSMachPortListener *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 1, queue);
    v14 = objc_retainBlock(handlerCopy);
    v15 = *(v13 + 2);
    *(v13 + 2) = v14;

    std::mutex::lock((v13 + 24));
    std::allocate_shared[abi:ne200100]<HSUtil::ReceiveRight,std::allocator<HSUtil::ReceiveRight>,HSUtil::ReceiveRight,0>();
  }

  return 0;
}

void __63__HSMachPortListener_initWithReceiveRight_queue_clientHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClient];
}

void __63__HSMachPortListener_initWithReceiveRight_queue_clientHandler___block_invoke_36(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 56);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

- (void)dealloc
{
  [(HSMachPortListener *)self close];
  v3.receiver = self;
  v3.super_class = HSMachPortListener;
  [(HSMachPortListener *)&v3 dealloc];
}

- (void)close
{
  std::mutex::lock((self + 24));
  if (*(self + 11))
  {
    dispatch_source_cancel(*(self + 13));
    v3 = *(self + 13);
    *(self + 13) = 0;

    v4 = *(self + 12);
    *(self + 11) = 0;
    *(self + 12) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::mutex::unlock((self + 24));
}

- (void)_handleClient
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (id).cxx_construct
{
  *(self + 3) = 850045863;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  return self;
}

+ (void)getSendRightFromServer:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

+ (void)getSendRightFromServer:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

+ (void)getSendRightFromServer:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

+ (void)getSendRightFromServer:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

+ (void)getSendRightFromServer:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

+ (void)getSendRightFromServer:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

+ (void)getSendRightFromServer:.cold.7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)initWithReceiveRight:queue:clientHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end