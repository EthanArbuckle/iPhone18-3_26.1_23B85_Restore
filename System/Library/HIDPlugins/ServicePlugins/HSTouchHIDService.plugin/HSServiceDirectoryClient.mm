@interface HSServiceDirectoryClient
- (FileDescriptor)openService:(SEL)a3 config:(id)a4;
- (HSServiceDirectoryClient)initWithSendRight:(const SendRight *)a3;
- (HSServiceDirectoryClient)initWithSocket:(FileDescriptor *)a3;
- (id).cxx_construct;
- (id)services;
- (void)services;
@end

@implementation HSServiceDirectoryClient

- (HSServiceDirectoryClient)initWithSendRight:(const SendRight *)a3
{
  if (a3->_mp - 1 >= 0xFFFFFFFE)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HSServiceDirectory.mm" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"sendRight"}];
  }

  v13.receiver = self;
  v13.super_class = HSServiceDirectoryClient;
  v5 = [(HSServiceDirectoryClient *)&v13 init];
  if (v5)
  {
    [HSMachPortListener getSendRightFromServer:a3];
    if ((v12 - 1) >= 0xFFFFFFFE)
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v14);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSServiceDirectoryClient initWithSendRight:];
      }
    }

    else
    {
      HSUtil::PortRight::port(v11);
      v6 = fileport_makefd();
      if ((v6 & 0x80000000) == 0)
      {
        *v14 = &off_1093A0;
        v15 = &off_1093D0;
        v16 = v6;
        if ((v5->_socket._fd & 0x80000000) == 0)
        {
          close(v5->_socket._fd);
          v5->_socket._fd = -1;
          v6 = v16;
        }

        v5->_socket._fd = v6;
        v16 = -1;
        HSUtil::FileDescriptor::~FileDescriptor(v14);
        v7 = v5;
        goto LABEL_15;
      }

      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v14);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSServiceDirectoryClient initWithSendRight:];
      }
    }

    v7 = 0;
LABEL_15:
    HSUtil::SendRight::~SendRight(v11);
    goto LABEL_16;
  }

  v7 = 0;
LABEL_16:

  return v7;
}

- (HSServiceDirectoryClient)initWithSocket:(FileDescriptor *)a3
{
  if (a3->_fd < 0)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HSServiceDirectory.mm" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"socket"}];
  }

  v12.receiver = self;
  v12.super_class = HSServiceDirectoryClient;
  v5 = [(HSServiceDirectoryClient *)&v12 init];
  v6 = v5;
  if (v5)
  {
    fd = v5->_socket._fd;
    if ((fd & 0x80000000) == 0)
    {
      close(fd);
      v6->_socket._fd = -1;
    }

    v6->_socket._fd = a3->_fd;
    a3->_fd = -1;
    v8 = v6;
  }

  return v6;
}

- (id)services
{
  HSUtil::EncoderBuf::EncoderBuf(&v28[1]);
  if (v28[1] || (*&__src = v33, DWORD2(__src) = 4, std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](v30, &__src), HSUtil::Encoder::_writeTokenValue32(&v28[1], 0xE8u, 0), v28[1]) || (LOBYTE(__src) = 0, HSUtil::Encoder::_write(&v28[1], &v33, &__src, 1uLL), v28[1]) || (HSUtil::Encoder::_encodeContainerStop(&v28[1]), v28[1]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "encode message failed");
  }

  sendMessage(&self->_socket, &v28[1]);
  v28[0] = 0;
  if ((*self->_socket._vptr$Readable)(&self->_socket, 0, v28, 4) || v3 != 4)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "socket.read failed");
  }

  v16[0] = &off_108FA0;
  v16[1] = &off_108FF8;
  v17 = &off_109018;
  v18 = &off_109030;
  v19 = off_109048;
  v20 = HSUtil::Buffer::_EmptyData;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (HSUtil::Buffer::readFrom(v16, 0, &self->_socket, 0, v28[0]) || v4 != v28[0])
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "msg.readFrom failed");
  }

  HSUtil::DecoderBuf::DecoderBuf(&__src, v16);
  if (__src)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "failed to create DecoderBuf from message");
  }

  HSUtil::Buffer::~Buffer(v16);
  HSUtil::Decoder::decodeArray(&__src, v16);
  if (__src)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "failed to decode array");
  }

  v5 = objc_opt_new();
  while (1)
  {
    v6 = objc_opt_new();
    HSUtil::Decoder::decodeHSCodable(v16, v6);
    if (LODWORD(v16[0]))
    {
      break;
    }

    [v5 addObject:v6];
  }

  if (LODWORD(v16[0]) != 3)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "failed to decode HSServiceDirectoryService");
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v7 = v17;
  v17 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  HSUtil::Buffer::~Buffer(&v27);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v8 = v25;
  v25 = 0;
  if (v8)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v8);
    operator delete();
  }

  HSUtil::Buffer::~Buffer(&v34);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](&v29);

  return v5;
}

- (FileDescriptor)openService:(SEL)a3 config:(id)a4
{
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a3 object:self file:@"HSServiceDirectory.mm" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  HSUtil::EncoderBuf::EncoderBuf(&v15);
  if (!v15)
  {
    *&__src = v20;
    DWORD2(__src) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](v17, &__src);
    HSUtil::Encoder::_writeTokenValue32(&v15, 0xE8u, 0);
    if (!v15)
    {
      LOBYTE(__src) = 1;
      HSUtil::Encoder::_write(&v15, &v20, &__src, 1uLL);
    }
  }

  HSUtil::Encoder::encodeNSString(&v15, v9);
  HSUtil::Encoder::encodeNSDictionary(&v15, v10);
  if (v15 || (HSUtil::Encoder::_encodeContainerStop(&v15), v15))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "encode message failed");
  }

  sendMessage(&self->_socket, &v15);
  HSUtil::Buffer::~Buffer(&v21);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](&v16);
  retstr->_vptr$Readable = &off_1093A0;
  retstr->_vptr$Writable = &off_1093D0;
  retstr->_fd = self->_socket._fd;
  self->_socket._fd = -1;

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = &off_1093A0;
  *(self + 2) = &off_1093D0;
  *(self + 6) = -1;
  return self;
}

- (void)initWithSendRight:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)initWithSendRight:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)services
{
  OUTLINED_FUNCTION_4_1(__stack_chk_guard);
  (*(v0 + 16))();
  OUTLINED_FUNCTION_4_2(&dword_0, &_os_log_default, v1, "Failed to get services: %s", v2, v3, v4, v5, 2u);
}

- (void)openService:config:.cold.1()
{
  OUTLINED_FUNCTION_4_1(__stack_chk_guard);
  (*(v0 + 16))();
  OUTLINED_FUNCTION_4_2(&dword_0, &_os_log_default, v1, "Failed to open service: %s", v2, v3, v4, v5, 2u);
}

@end