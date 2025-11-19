@interface HSServiceDirectory
- (BOOL)_addClient:(FileDescriptor *)a3;
- (BOOL)_removeClient:(shared_ptr<Client>)a3;
- (BOOL)addClient:(FileDescriptor *)a3;
- (BOOL)addService:(id)a3;
- (BOOL)removeService:(id)a3;
- (HSServiceDirectory)init;
- (HSServiceDirectory)initWithReceiveRight:(ReceiveRight *)a3 authorizer:(id)a4;
- (SendRight)_handleNewClient:(__SecTask *)a3;
- (id).cxx_construct;
- (void)_handleDataFromClient:(shared_ptr<Client>)a3;
- (void)_handleMessage:(void *)a3 fromClient:(shared_ptr<Client>)a4;
- (void)setRemoteAccessSocket:(FileDescriptor *)a3;
@end

@implementation HSServiceDirectory

- (HSServiceDirectory)initWithReceiveRight:(ReceiveRight *)a3 authorizer:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3->var1 - 1 >= 0xFFFFFFFE)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"HSServiceDirectory.mm" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"receiveRight"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  v21 = +[NSAssertionHandler currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"HSServiceDirectory.mm" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"authorizer"}];

LABEL_3:
  v25.receiver = self;
  v25.super_class = HSServiceDirectory;
  v9 = [(HSServiceDirectory *)&v25 init];
  if (v9)
  {
    v10 = dispatch_queue_create("HSServiceDirectory queue", 0);
    v11 = *(v9 + 1);
    *(v9 + 1) = v10;

    v12 = objc_retainBlock(v8);
    v13 = *(v9 + 2);
    *(v9 + 2) = v12;

    objc_initWeak(&location, v9);
    v14 = [HSMachPortListener alloc];
    v15 = *(v9 + 1);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __54__HSServiceDirectory_initWithReceiveRight_authorizer___block_invoke;
    v22[3] = &unk_10A708;
    objc_copyWeak(&v23, &location);
    v16 = [(HSMachPortListener *)v14 initWithReceiveRight:a3 queue:v15 clientHandler:v22];
    v17 = *(v9 + 3);
    *(v9 + 3) = v16;

    v18 = v9;
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __54__HSServiceDirectory_initWithReceiveRight_authorizer___block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _handleNewClient:a2];
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = &off_109360;
  }
}

- (HSServiceDirectory)init
{
  v7.receiver = self;
  v7.super_class = HSServiceDirectory;
  v2 = [(HSServiceDirectory *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("HSServiceDirectory queue", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)addService:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HSServiceDirectory.mm" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"service"}];
  }

  std::mutex::lock((self + 32));
  v10 = [v5 serviceName];
  objc_initWeak(&v11, v5);
  std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},objc_object  {objcproto22HSServiceDirectoryable}*>>(self + 96, &v10);
  v7 = v6;
  objc_destroyWeak(&v11);

  std::mutex::unlock((self + 32));
  return v7 & 1;
}

- (BOOL)removeService:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HSServiceDirectory.mm" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"service"}];
  }

  std::mutex::lock((self + 32));
  v9 = [v5 serviceName];
  v6 = std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::find<NSString * {__strong}>(self + 96, &v9);

  if ((self + 104) == v6)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v10);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectory removeService:];
    }
  }

  else
  {
    objc_storeWeak((v6 + 40), 0);
  }

  std::mutex::unlock((self + 32));

  return (self + 104) != v6;
}

- (BOOL)addClient:(FileDescriptor *)a3
{
  std::mutex::lock((self + 32));
  LOBYTE(a3) = [(HSServiceDirectory *)self _addClient:a3];
  std::mutex::unlock((self + 32));
  return a3;
}

- (void)setRemoteAccessSocket:(FileDescriptor *)a3
{
  std::mutex::lock((self + 32));
  [*(self + 18) close];
  v5 = *(self + 18);
  *(self + 18) = 0;

  if ((a3->_fd & 0x80000000) == 0)
  {
    objc_initWeak(&location, self);
    v6 = [HSSocketListener alloc];
    v7 = *(self + 1);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __44__HSServiceDirectory_setRemoteAccessSocket___block_invoke;
    v10[3] = &unk_10A318;
    objc_copyWeak(&v11, &location);
    v8 = [(HSSocketListener *)v6 initWithSocket:a3 queue:v7 clientHandler:v10];
    v9 = *(self + 18);
    *(self + 18) = v8;

    if (!*(self + 18))
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v13);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSServiceDirectory setRemoteAccessSocket:];
      }
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  std::mutex::unlock((self + 32));
}

void __44__HSServiceDirectory_setRemoteAccessSocket___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addClient:a2];
}

- (BOOL)_addClient:(FileDescriptor *)a3
{
  *v4 = &off_1093A0;
  v5 = &off_1093D0;
  LODWORD(v6) = a3->_fd;
  a3->_fd = -1;
  v7 = 0;
  v8 = &off_108FA0;
  v9 = &off_108FF8;
  v10 = &off_109018;
  v11 = &off_109030;
  v12 = off_109048;
  v13 = HSUtil::Buffer::_EmptyData;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::allocate_shared[abi:ne200100]<Client,std::allocator<Client>,Client,0>();
}

void __33__HSServiceDirectory__addClient___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 40);
      if (v5)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v7 = v5;
        v8 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        [WeakRetained _handleDataFromClient:&v7];
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

- (BOOL)_removeClient:(shared_ptr<Client>)a3
{
  var0 = a3.var0;
  *v8 = HSUtil::FileDescriptor::fd(*a3.var0);
  v5 = std::__tree<std::__value_type<int,std::shared_ptr<Client>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<Client>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<Client>>>>::__erase_unique<int>(self + 120, v8);
  if (v5 == 1)
  {
    dispatch_source_cancel(*(*var0 + 24));
    v6 = *(*var0 + 24);
    *(*var0 + 24) = 0;
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v8);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectory _removeClient:];
    }
  }

  return v5 == 1;
}

- (SendRight)_handleNewClient:(__SecTask *)a3
{
  v5 = v3;
  v6 = (*(*(self + 2) + 16))();
  if ((v6 & 1) == 0)
  {
LABEL_5:
    *(v5 + 8) = 0;
    *v5 = &off_109360;
    goto LABEL_13;
  }

  if (socketpair(1, 1, 0, v13))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v12);
    v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [HSServiceDirectory _handleNewClient:];
    }

    goto LABEL_5;
  }

  v10[0] = &off_1093A0;
  v10[1] = &off_1093D0;
  v11 = v13[0];
  v8[0] = &off_1093A0;
  v8[1] = &off_1093D0;
  v9 = v13[1];
  HSUtil::FileDescriptor::fd(v8);
  if (fileport_makeport())
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v12);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectory _handleNewClient:];
    }

    *(v5 + 8) = 0;
    *v5 = &off_109360;
  }

  else
  {
    std::mutex::lock((self + 32));
    [(HSServiceDirectory *)self _addClient:v10];
    *(v5 + 8) = 0;
    *v5 = &off_109360;
    std::mutex::unlock((self + 32));
  }

  HSUtil::FileDescriptor::~FileDescriptor(v8);
  HSUtil::FileDescriptor::~FileDescriptor(v10);
LABEL_13:
  result._mp = v7;
  result._vptr$PortRight = v6;
  return result;
}

- (void)_handleDataFromClient:(shared_ptr<Client>)a3
{
  var0 = a3.var0;
  std::mutex::lock((self + 32));
  v5 = *var0;
  v6 = *var0 + 32;
  v7 = *(*var0 + 72);
  if (v7)
  {
    v8 = v5[10];
    if (v8 > 3)
    {
      goto LABEL_11;
    }

    v9 = 4 - v8;
  }

  else
  {
    v8 = 0;
    v9 = 4;
  }

  v10 = (*(v5[4] + 32))(*var0 + 32, v8, *var0, 0, v9);
  if (v10)
  {
    if (v10 != 35)
    {
      v12 = v10;
      exception = __cxa_allocate_exception(0x20uLL);
      v14 = &std::system_error::~system_error;
      v15 = std::system_category();
      std::system_error::system_error(exception, v12, v15, "buf.readFrom() failed");
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v14 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "client disconnected");
LABEL_33:
    __cxa_throw(exception, v16, v14);
  }

  v7 = v5[9];
  if (v7 && v5[10] >= 4uLL)
  {
LABEL_11:
    v17 = *v7;
    if (v17 >= 0x10000)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "msgLen too long");
    }

    v18 = (*(v5[4] + 32))(v6);
    if (v18)
    {
      if (v18 == 35)
      {
        goto LABEL_29;
      }

      v20 = v18;
      v21 = __cxa_allocate_exception(0x20uLL);
      v22 = &std::system_error::~system_error;
      v23 = std::system_category();
      std::system_error::system_error(v21, v20, v23, "buf.readFrom() failed");
    }

    else
    {
      if (v19)
      {
        if (v19 > v17)
        {
          __assert_rtn("[HSServiceDirectory _handleDataFromClient:]", "HSServiceDirectory.mm", 259, "rr.len <= msgLen");
        }

        if (v5[9] && v5[10] >= v17 + 4)
        {
          HSUtil::Buffer::slice<HSUtil::Buffer::RefType>(v6, 4uLL, v30);
          HSUtil::DecoderBuf::DecoderBuf(v31, v30);
          HSUtil::Buffer::~Buffer(v30);
          if (v5[9])
          {
            v5[10] = 0;
          }

          v25 = *(var0 + 1);
          v28 = *var0;
          v29 = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          [(HSServiceDirectory *)self _handleMessage:v31 fromClient:&v28];
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          HSUtil::Buffer::~Buffer(&v34);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          v26 = v32;
          v32 = 0;
          if (v26)
          {
            std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v26);
            operator delete();
          }
        }

        goto LABEL_29;
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      v22 = &std::runtime_error::~runtime_error;
      std::runtime_error::runtime_error(v21, "client disconnected");
    }

    __cxa_throw(v21, v24, v22);
  }

LABEL_29:
  std::mutex::unlock((self + 32));
}

- (void)_handleMessage:(void *)a3 fromClient:(shared_ptr<Client>)a4
{
  var0 = a4.var0;
  HSUtil::Decoder::decodeArray(a3, v48);
  if (*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "decoder.decodeArray() failed");
  }

  v7 = HSUtil::Decoder::decodeUInt(v48);
  if (v48[0])
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v37, "array.decodeUInt() failed");
    goto LABEL_43;
  }

  if (v7 != 1)
  {
    if (!v7)
    {
      v8 = objc_opt_new();
      HSUtil::EncoderBuf::EncoderBuf(&v52);
      if (!v52)
      {
        *&v51 = v57;
        DWORD2(v51) = 4;
        std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](v54, &v51);
        HSUtil::Encoder::_writeTokenValue32(&v52, 0xE8u, 0);
      }

      v9 = *(self + 12);
      v10 = (self + 104);
      if (v9 != (self + 104))
      {
        do
        {
          *&v51 = v9[4];
          objc_copyWeak(&v51 + 1, v9 + 5);
          WeakRetained = objc_loadWeakRetained(&v51 + 1);
          v12 = WeakRetained == 0;

          if (!v12)
          {
            v13 = objc_loadWeakRetained(&v51 + 1);
            v14 = [v13 serviceName];
            v15 = v8[1];
            v8[1] = v14;

            v16 = objc_loadWeakRetained(&v51 + 1);
            v17 = [v16 serviceDescription];
            v18 = v8[2];
            v8[2] = v17;

            v19 = objc_loadWeakRetained(&v51 + 1);
            v20 = [v19 serviceProtocol];
            v21 = v8[3];
            v8[3] = v20;

            v22 = objc_loadWeakRetained(&v51 + 1);
            v8[4] = [v22 serviceVersion];

            HSUtil::Encoder::encodeHSCodable(&v52, v8);
          }

          objc_destroyWeak(&v51 + 1);

          v23 = v9[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v9[2];
              v25 = *v24 == v9;
              v9 = v24;
            }

            while (!v25);
          }

          v9 = v24;
        }

        while (v24 != v10);
      }

      if (!v52)
      {
        HSUtil::Encoder::_encodeContainerStop(&v52);
      }

      sendMessage(*var0, &v52);
      HSUtil::Buffer::~Buffer(&v58);
      if (__p)
      {
        v56 = __p;
        operator delete(__p);
      }

      if (v54[0])
      {
        v54[1] = v54[0];
        operator delete(v54[0]);
      }

      std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](&v53);

      goto LABEL_35;
    }

    v37 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v37, "unknown command");
LABEL_43:
  }

  v52 = HSUtil::Decoder::decodeNSString(v48);
  if (v48[0])
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v38, "array.decodeNSString() failed");
  }

  v26 = HSUtil::Decoder::decodeNSDictionary(v48);
  if (v48[0])
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "array.decodeNSDictionary() failed");
  }

  v27 = *(var0 + 1);
  v46 = *var0;
  v47 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(HSServiceDirectory *)self _removeClient:&v46];
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v28 = std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto22HSServiceDirectoryable}* {__weak},HSUtil::ObjectLess<NSString>,true>,std::allocator<objc_object  {objcproto22HSServiceDirectoryable}* {__weak}>>::find<NSString * {__strong}>(self + 96, &v52);
  if ((self + 104) == v28)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "invalid service name");
  }

  v29 = objc_loadWeakRetained((v28 + 40));
  v30 = *(self + 1);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3321888768;
  v41[2] = __48__HSServiceDirectory__handleMessage_fromClient___block_invoke;
  v41[3] = &unk_10A768;
  v31 = v29;
  v33 = *var0;
  v32 = *(var0 + 1);
  v42 = v31;
  v44 = v33;
  v45 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = v26;
  v43 = v34;
  dispatch_async(v30, v41);

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

LABEL_35:
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  v35 = v49;
  v49 = 0;
  if (v35)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v35);
    operator delete();
  }
}

- (id).cxx_construct
{
  *(self + 4) = 850045863;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 13) = 0;
  *(self + 11) = 0;
  *(self + 12) = self + 104;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  *(self + 15) = self + 128;
  return self;
}

- (void)removeService:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)setRemoteAccessSocket:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_addClient:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_addClient:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_removeClient:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleNewClient:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleNewClient:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleDataFromClient:.cold.1()
{
  OUTLINED_FUNCTION_4_1(__stack_chk_guard);
  (*(v0 + 16))();
  OUTLINED_FUNCTION_4_2(&dword_0, &_os_log_default, v1, "Removing client: %s", v2, v3, v4, v5, 2u);
}

@end