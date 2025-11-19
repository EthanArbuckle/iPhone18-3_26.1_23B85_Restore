uint64_t ApplePDPHelperInterface::callback(ApplePDPHelperInterface *this, void *a2, int a3, uint64_t a4, void *a5)
{
  result = *(this + 11);
  if (result)
  {
    if (a3 == -469794559)
    {
      return (*(*result + 24))(result, a4);
    }

    else if (a3 == -469794560)
    {
      return (*(*result + 16))(result, a4);
    }
  }

  return result;
}

uint64_t ApplePDPHelperInterface::callStructMethod(ApplePDPHelperInterface *this, uint32_t a2, const char *a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  std::mutex::lock((this + 8));
  v14 = *(this + 20);
  if (v14)
  {
    if (a7)
    {
      outputStructCnt = *a7;
      v15 = IOConnectCallStructMethod(v14, a2, a4, a5, a6, &outputStructCnt);
      *a7 = outputStructCnt;
    }

    else
    {
      v15 = IOConnectCallStructMethod(v14, a2, a4, a5, a6, 0);
    }

    if (!v15)
    {
      v16 = 1;
      goto LABEL_10;
    }

    syslog(3, "ApplePDPHelper: Performing '%s' failed: 0x%x\n", a3, v15);
  }

  else
  {
    syslog(3, "ApplePDPHelper: service is not open\n");
  }

  v16 = 0;
LABEL_10:
  std::mutex::unlock((this + 8));
  return v16;
}

void AppleCellularDataPlaneHelperInterface::AppleCellularDataPlaneHelperInterface(AppleCellularDataPlaneHelperInterface *this)
{
  ApplePDPHelperInterface::ApplePDPHelperInterface(this);
  *v2 = &unk_2852CAFF8;
  *(v2 + 152) = 1018212795;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0;
  *(v2 + 200) = 850045863;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 280) = v2 + 288;
  *(v2 + 288) = 0;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 296) = 0;
  *(v2 + 304) = v2 + 312;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 328) = v2 + 336;
  *(v2 + 72) = 4;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("ApplePDPHelperDataPlane", v3);
  *(this + 17) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CD3C00](exception, "Unable to allocate DispatchQueue");
    goto LABEL_6;
  }

  SystemConfigStore = AppleCellularDataPlaneHelperInterface::createSystemConfigStore(this, v4);
  *(this + 18) = SystemConfigStore;
  if (!SystemConfigStore)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CD3C00](exception, "Unable to allocate SystemConfigStore");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_240EFDCCC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);
  std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(v1 + 328, *(v1 + 42));
  std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(v1 + 304, *(v1 + 39));
  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(v1 + 280, *(v1 + 36));
  std::mutex::~mutex(v3);
  std::condition_variable::~condition_variable(v2);
  ApplePDPHelperInterface::~ApplePDPHelperInterface(v1);
  _Unwind_Resume(a1);
}

const __SCDynamicStore *AppleCellularDataPlaneHelperInterface::createSystemConfigStore(AppleCellularDataPlaneHelperInterface *this, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  context.version = 0;
  context.info = this + 152;
  memset(&context.retain, 0, 24);
  v3 = SCDynamicStoreCreate(0, @"ApplePDPHelperDataPlane", handleInterfaceChange, &context);
  if (v3)
  {
    NetworkInterface = getNetworkInterfaceKey(void)::key;
    if (!getNetworkInterfaceKey(void)::key)
    {
      NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, *MEMORY[0x277CE1648]);
      getNetworkInterfaceKey(void)::key = NetworkInterface;
    }

    *values = NetworkInterface;
    v5 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    SCDynamicStoreSetNotificationKeys(v3, v5, 0);
    SCDynamicStoreSetDispatchQueue(v3, a2);
    CFRelease(v5);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = SCError();
    v7 = SCErrorString(v6);
    *values = 136315394;
    *&values[4] = "createSystemConfigStore";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: SCDOpen failed: %s", values, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

void AppleCellularDataPlaneHelperInterface::~AppleCellularDataPlaneHelperInterface(AppleCellularDataPlaneHelperInterface *this)
{
  *this = &unk_2852CAFF8;
  CFRelease(*(this + 18));
  dispatch_release(*(this + 17));
  std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(this + 328, *(this + 42));
  std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(this + 304, *(this + 39));
  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(this + 280, *(this + 36));
  std::mutex::~mutex((this + 200));
  std::condition_variable::~condition_variable((this + 152));

  ApplePDPHelperInterface::~ApplePDPHelperInterface(this);
}

{
  AppleCellularDataPlaneHelperInterface::~AppleCellularDataPlaneHelperInterface(this);

  JUMPOUT(0x245CD3CC0);
}

uint64_t AppleCellularDataPlaneHelperInterface::connect(AppleCellularDataPlaneHelperInterface *this, unsigned int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = a2;
  v3 = *(this + 36);
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = (this + 288);
  do
  {
    v5 = v3[16];
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[4 * v7];
  }

  while (v3);
  if (v4 == (this + 288) || v4[16] > a2)
  {
LABEL_21:
    *buf = &v23;
    v15 = (std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, &v23) + 5);
    IOACIPCBBNetCfgClass::setLogLevel(v15);
    cf = IOServiceMatching("AppleCellularDataPlane");
    v16 = (*(*v15 + 16))(v15);
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v17)
      {
        *buf = 136315394;
        *&buf[4] = "connect";
        v25 = 1024;
        v26 = v23;
        _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: started IOACIPCNetCfgClass (context = %u)\n", buf, 0x12u);
      }

      IOACIPCBBNetCfgClass::registerFilterRuleCallBack();
      v18 = (*(*v15 + 32))(v15);
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!v18)
      {
        if (v19)
        {
          *buf = 136315394;
          *&buf[4] = "connect";
          v25 = 1024;
          v26 = v23;
          _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: opened IOACIPCNetCfgClass (context = %u)\n", buf, 0x12u);
        }

        v9 = 1;
        goto LABEL_31;
      }

      if (v19)
      {
        *buf = 136315394;
        *&buf[4] = "connect";
        v25 = 1024;
        v26 = v23;
        _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: failed to open IOACIPCNetCfgClass (context = %u)\n", buf, 0x12u);
      }
    }

    else if (v17)
    {
      *buf = 136315394;
      *&buf[4] = "connect";
      v25 = 1024;
      v26 = v23;
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: failed to start IOACIPCNetCfgClass (context = %u)\n", buf, 0x12u);
    }

    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__erase_unique<unsigned short>(this + 280, &v23);
    v9 = 0;
LABEL_31:
    CFRelease(cf);
    goto LABEL_32;
  }

  *buf = &v23;
  v8 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, &v23);
  if (((*(v8[5] + 40))() & 1) == 0)
  {
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__erase_unique<unsigned short>(this + 280, &v23);
    v10 = *(this + 41);
    if (v10 != (this + 336))
    {
      v11 = v23;
      do
      {
        if (*(v10 + 16) == v11)
        {
          v12 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(this + 41, v10);
          operator delete(v10);
        }

        else
        {
          v13 = *(v10 + 1);
          if (v13)
          {
            do
            {
              v12 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v12 = *(v10 + 2);
              v14 = *v12 == v10;
              v10 = v12;
            }

            while (!v14);
          }
        }

        v10 = v12;
      }

      while (v12 != (this + 336));
    }

    goto LABEL_21;
  }

  v9 = 1;
LABEL_32:
  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_240EFE3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ACDPHelperSentry<AppleCellularDataPlaneHelperInterface::connect(unsigned short)::$_1>::~ACDPHelperSentry(va);
  _Unwind_Resume(a1);
}

void ___ZN37AppleCellularDataPlaneHelperInterface7connectEt_block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = a2[4];
    v8 = a2[5];
    v9 = *(a1 + 40);
    *buf = 136316418;
    *&buf[4] = "connect_block_invoke";
    LOWORD(v26) = 1024;
    *(&v26 + 2) = v5;
    HIWORD(v26) = 1024;
    LODWORD(v27) = v6;
    WORD2(v27) = 1024;
    *(&v27 + 6) = v7;
    WORD5(v27) = 1024;
    HIDWORD(v27) = v8;
    v28 = 1024;
    v29 = v9;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: [EVENT] new Filter Rule: rule: %u, rule-id: %u, interface-id: %u, queueset-id: %u, context: %u)\n", buf, 0x2Au);
  }

  v10 = a2[1] << 16;
  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v10 == 0x10000)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    *&buf[4] = "connect_block_invoke";
    v12 = MEMORY[0x277D86220];
    v13 = "::%s: [EVENT] Filter Rule State: added\n";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    *&buf[4] = "connect_block_invoke";
    v12 = MEMORY[0x277D86220];
    v13 = "::%s: [EVENT] Filter Rule State: removed\n";
  }

  _os_log_impl(&dword_240EFD000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
LABEL_9:
  std::mutex::lock((v4 + 8));
  if (*(v4 + 360))
  {
    v14 = (a2 + 2);
    v15 = *(v4 + 336);
    if (v15)
    {
      v16 = *v14;
      v17 = v4 + 336;
      do
      {
        v18 = *(v15 + 28);
        v19 = v18 >= v16;
        v20 = v18 < v16;
        if (v19)
        {
          v17 = v15;
        }

        v15 = *(v15 + 8 * v20);
      }

      while (v15);
      if (v17 != v4 + 336 && v16 >= *(v17 + 28))
      {
        __assert_rtn("connect_block_invoke", "AppleCellularDataPlaneHelper.cpp", 262, "!pendingFilterRuleRequests_.contains(acdpFilterRuleInfo->ruleID)");
      }
    }

    v21 = *(a1 + 40);
    *buf = a2 + 2;
    *(std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 328, v14) + 16) = v21;
    *buf = *a2;
    *&buf[8] = a2[4];
    v26 = a2[5];
    v27 = (a2 + 6);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "connect_block_invoke";
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: [EVENT] Invoking client callback\n", &v23, 0xCu);
    }

    (*(v4 + 360))(buf, *(v4 + 368));
  }

  std::mutex::unlock((v4 + 8));
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t AppleCellularDataPlaneHelperInterface::ipcConfigSet(uint64_t a1, int *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 16);
    v6 = a2[5];
    v7 = a2[6];
    v8 = a2[7];
    v11 = 136316674;
    v12 = "ipcConfigSet";
    v13 = 1024;
    v14 = v3;
    v15 = 2080;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    v23 = 1024;
    v24 = v8;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: context = %u, config = %s, active = %u, TrafficTypeMask = %x, DataPathType = %x, MaxQueueSets = %d\n", &v11, 0x34u);
  }

  result = ApplePDPHelperInterface::ipcConfigSet();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AppleCellularDataPlaneHelperInterface::ipcInterfaceConfig(uint64_t a1, unsigned __int16 *a2, unsigned int *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    v8 = *(a2 + 24);
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = *(a2 + 4);
    *buf = 136316674;
    *&buf[4] = "ipcInterfaceConfig";
    v43 = 1024;
    v44 = v9;
    v45 = 1024;
    v46 = v6;
    v47 = 2080;
    v48 = v7;
    v49 = 1024;
    v50 = v8;
    v51 = 1024;
    v52 = v10;
    v53 = 2048;
    v54 = v11;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: interface = %u, context = %u, config = %s, active = %u, bearerId = 0x%x, qset-id = %llu \n", buf, 0x38u);
  }

  std::mutex::lock((a1 + 8));
  if ((*a2 - 1) < 2)
  {
    if (!*(a2 + 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "ipcInterfaceConfig";
        v13 = MEMORY[0x277D86220];
        v14 = "::%s: ERROR: config set not assigned\n";
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    v12 = (a2 + 8);
    if (*(a2 + 4) >= 0x20u)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "ipcInterfaceConfig";
        v13 = MEMORY[0x277D86220];
        v14 = "::%s: ERROR: interface index out of range\n";
LABEL_12:
        _os_log_impl(&dword_240EFD000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    snprintf(__str, 9uLL, "pdp_ip%u", *(a2 + 4));
    v18 = a1 + 312;
    v19 = *(a1 + 312);
    if (*(a2 + 24) == 1)
    {
      if (!v19)
      {
        goto LABEL_24;
      }

      v20 = *v12;
      v21 = a1 + 312;
      do
      {
        v22 = *(v19 + 32);
        v23 = v22 >= v20;
        v24 = v22 < v20;
        if (v23)
        {
          v21 = v19;
        }

        v19 = *(v19 + 8 * v24);
      }

      while (v19);
      if (v21 == v18 || v20 < *(v21 + 32))
      {
LABEL_24:
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 0x40000000;
        v39[2] = ___ZN37AppleCellularDataPlaneHelperInterface18ipcInterfaceConfigERK38AppleIPAppenderIPCInterfaceInputParamsR39AppleIPAppenderIPCInterfaceOutputParams_block_invoke;
        v39[3] = &__block_descriptor_tmp_9;
        v39[4] = a1;
        v39[5] = a2;
        if (AppleCellularDataPlaneHelperInterface::waitForDevicePresence(a1, __str, 0x4E20u, 0, v39))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v25 = *v12;
            *buf = 136315394;
            *&buf[4] = "ipcInterfaceConfig";
            v43 = 1024;
            v44 = v25;
            _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Forcefully removing Network Interface %u\n", buf, 0x12u);
          }

          if (AppleCellularDataPlaneHelperInterface::connect(a1, *a2))
          {
            LOWORD(v40) = *a2;
            *buf = &v40;
            v26 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(a1 + 280, &v40);
            v27 = *v12;
            (*(v26[5] + 64))();
            std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__erase_unique<unsigned int>(a1 + 304, a2 + 4);
            goto LABEL_13;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          *buf = 136315138;
          *&buf[4] = "ipcInterfaceConfig";
          v13 = MEMORY[0x277D86220];
          v14 = "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed\n";
          goto LABEL_12;
        }

        v20 = *v12;
      }

      v32 = *(a2 + 5);
      if (v32 != -1)
      {
        if (!AppleCellularDataPlaneHelperInterface::addBearer(a1, v20, v32))
        {
          goto LABEL_13;
        }

        v20 = *(a2 + 4);
        v32 = *(a2 + 5);
      }
    }

    else
    {
      if (v19)
      {
        v28 = *v12;
        v29 = a1 + 312;
        do
        {
          v30 = *(v19 + 32);
          v23 = v30 >= v28;
          v31 = v30 < v28;
          if (v23)
          {
            v29 = v19;
          }

          v19 = *(v19 + 8 * v31);
        }

        while (v19);
        if (v29 != v18 && v28 >= *(v29 + 32))
        {
          v33 = *(a2 + 5);
          if (v33 == -1)
          {
            v34 = 1;
            v35 = -1;
          }

          else
          {
            *buf = a2 + 8;
            v34 = v33 == *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, a2 + 4) + 18);
            v28 = *(a2 + 4);
            v35 = *(a2 + 5);
          }

          AppleCellularDataPlaneHelperInterface::removeBearer(a1, v28, v35);
          if (v34)
          {
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 0x40000000;
            v38[2] = ___ZN37AppleCellularDataPlaneHelperInterface18ipcInterfaceConfigERK38AppleIPAppenderIPCInterfaceInputParamsR39AppleIPAppenderIPCInterfaceOutputParams_block_invoke_10;
            v38[3] = &__block_descriptor_tmp_11;
            v38[4] = a1;
            v38[5] = a2;
            AppleCellularDataPlaneHelperInterface::waitForDevicePresence(a1, __str, 0x4E20u, 1, v38);
            if (std::map<unsigned int,ACDPNetIFConfig>::contains[abi:ne200100](a1 + 304, a2 + 4))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v36 = *v12;
                v40 = v12;
                v37 = *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, v12) + 40);
                *buf = 136315650;
                *&buf[4] = "ipcInterfaceConfig";
                v43 = 1024;
                v44 = v36;
                v45 = 1024;
                v46 = v37;
                _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Enforcing Configuration Removal (interface = %u, rss = %u)\n", buf, 0x18u);
              }

              std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__erase_unique<unsigned int>(a1 + 304, v12);
            }
          }

          AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID(a1, 0xFFFFFFFF, -1, a3);
          goto LABEL_39;
        }
      }

      v20 = -1;
      v32 = -1;
    }

    AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID(a1, v20, v32, a3);
LABEL_39:
    v15 = 1;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "ipcInterfaceConfig";
    v13 = MEMORY[0x277D86220];
    v14 = "::%s: ERROR: wrong ICP Context\n";
    goto LABEL_12;
  }

LABEL_13:
  v15 = 0;
LABEL_14:
  std::mutex::unlock((a1 + 8));
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL std::map<unsigned int,ACDPNetIFConfig>::contains[abi:ne200100](uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 32))
  {
LABEL_9:
    v6 = v2;
  }

  return v6 != v2;
}

uint64_t AppleCellularDataPlaneHelperInterface::waitForDevicePresence(uint64_t a1, const char *a2, unsigned int a3, int a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "waitForDevicePresence";
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: invalid interface name", buf, 0xCu);
    }

    v13 = 1;
    goto LABEL_41;
  }

  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    *buf = 136315650;
    v25 = "waitForDevicePresence";
    v26 = 2080;
    v27 = a2;
    v28 = 1024;
    v29 = a3;
    v11 = MEMORY[0x277D86220];
    v12 = "::%s: Waiting for interface absence (%s, timeout = %ums)";
  }

  else
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    *buf = 136315650;
    v25 = "waitForDevicePresence";
    v26 = 2080;
    v27 = a2;
    v28 = 1024;
    v29 = a3;
    v11 = MEMORY[0x277D86220];
    v12 = "::%s: Waiting for interface presence (%s, timeout = %ums)";
  }

  _os_log_impl(&dword_240EFD000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x1Cu);
LABEL_11:
  v23.__m_ = (a1 + 200);
  v23.__owns_ = 1;
  std::mutex::lock((a1 + 200));
  if (AppleCellularDataPlaneHelperInterface::checkForDevicePresence(a1, a2, a4 == 0) || *(a1 + 276) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "waitForDevicePresence";
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Structor called in wrong state", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (!(*(a5 + 16))(a5))
  {
LABEL_39:
    v13 = 1;
LABEL_40:
    std::mutex::unlock(v23.__m_);
    goto LABEL_41;
  }

  *(a1 + 264) = a2;
  *(a1 + 272) = a4;
  v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a3;
  do
  {
    if (*(a1 + 276))
    {
      goto LABEL_34;
    }

    if (v14.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v15.__d_.__rep_ = v14.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v15.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v16.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v16.__d_.__rep_)
      {
        v17 = 0;
        goto LABEL_30;
      }

      if (v16.__d_.__rep_ < 1)
      {
        if (v16.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v17 = 0x8000000000000000;
          goto LABEL_30;
        }
      }

      else if (v16.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_28;
      }

      v17 = 1000 * v16.__d_.__rep_;
LABEL_28:
      if (v17 > (v15.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v18.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_31:
        std::condition_variable::__do_timed_wait((a1 + 152), &v23, v18);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_30:
      v18.__d_.__rep_ = v17 + v15.__d_.__rep_;
      goto LABEL_31;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v14.__d_.__rep_);
  if (*(a1 + 276))
  {
LABEL_34:
    if (a4)
    {
      if (a4 == 1 && (*(a1 + 277) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v25 = "waitForDevicePresence";
          v26 = 2080;
          v27 = a2;
          v19 = MEMORY[0x277D86220];
          v20 = "::%s: Interface successfully removed (%s)";
          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }

    else if (*(a1 + 277) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v25 = "waitForDevicePresence";
        v26 = 2080;
        v27 = a2;
        v19 = MEMORY[0x277D86220];
        v20 = "::%s: Interface successfully attached (%s)";
LABEL_48:
        _os_log_impl(&dword_240EFD000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
      }

LABEL_49:
      v13 = 0;
      goto LABEL_51;
    }

    v13 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "waitForDevicePresence";
      v26 = 2080;
      v27 = a2;
      v28 = 1024;
      v29 = a3;
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Timeout Waiting for interface (%s, timeout = %ums)", buf, 0x1Cu);
    }

    v13 = 2;
  }

LABEL_51:
  *(a1 + 264) = 0;
  *(a1 + 276) = 0;
  if (v23.__owns_)
  {
    goto LABEL_40;
  }

LABEL_41:
  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL ___ZN37AppleCellularDataPlaneHelperInterface18ipcInterfaceConfigERK38AppleIPAppenderIPCInterfaceInputParamsR39AppleIPAppenderIPCInterfaceOutputParams_block_invoke(AppleCellularDataPlaneHelperInterface *a1)
{
  v3 = *(a1 + 4);
  v2 = *(a1 + 5);
  v4 = *(v2 + 4);
  v5 = *v2;
  HasRSS = AppleCellularDataPlaneHelperInterface::ipcConfigSetHasRSS(a1, *(v2 + 1));
  v7 = HasRSS;
  HasPrioUL = AppleCellularDataPlaneHelperInterface::ipcConfigSetHasPrioUL(HasRSS, *(*(a1 + 5) + 8));

  return AppleCellularDataPlaneHelperInterface::addInterface(v3, v4, v5, v7, HasPrioUL);
}

BOOL AppleCellularDataPlaneHelperInterface::addInterface(AppleCellularDataPlaneHelperInterface *this, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v76 = *MEMORY[0x277D85DE8];
  v61 = a2;
  v60 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "addInterface";
    v67 = 1024;
    v68 = a2;
    v69 = 1024;
    v70 = a3;
    v71 = 1024;
    v72 = a4;
    v73 = 1024;
    v74 = a5;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Adding Network Interface %u (context %u, rss = %u, prioUL = %u)\n", buf, 0x24u);
  }

  if ((AppleCellularDataPlaneHelperInterface::connect(this, a3) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "addInterface";
      v20 = MEMORY[0x277D86220];
      v21 = "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed or Device in Reset\n";
      v22 = 12;
LABEL_24:
      _os_log_impl(&dword_240EFD000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
    }

LABEL_25:
    v19 = 0;
    goto LABEL_57;
  }

  v10 = *(this + 39);
  v11 = v61;
  if (v10)
  {
    v12 = (this + 312);
    do
    {
      v13 = v10[8];
      v14 = v13 >= v61;
      v15 = v13 < v61;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *&v10[2 * v15];
    }

    while (v10);
    if (v12 != (this + 312) && v61 >= v12[8])
    {
      *buf = &v61;
      if (*(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v61) + 21) == a3)
      {
        *buf = &v61;
        if (*(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v61) + 40) == a4)
        {
          *buf = &v61;
          if (*(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v61) + 41) == a5)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "addInterface";
              v67 = 1024;
              v68 = v61;
              _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Compatible Network Interface %u is already configured by ACDP-Helper.\n", buf, 0x12u);
            }

            v19 = 1;
            goto LABEL_57;
          }
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "addInterface";
        v67 = 1024;
        v68 = v61;
        v20 = MEMORY[0x277D86220];
        v21 = "::%s: ERROR: Incompatible Network Interface %u is already configured by ACDP-Helper.\n";
        v22 = 18;
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  bzero(buf, 0x1DEuLL);
  bzero(&v52, 0x1CuLL);
  v52 = v11;
  v53 = a5;
  v54 = a4;
  if (a5)
  {
    v16 = 1024;
  }

  else
  {
    v16 = 256;
  }

  v58 = v16;
  if (a4)
  {
    v57 = 0x2000;
    v59 = 0x2000;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v63 = 136315906;
    *&v63[4] = "addInterface";
    *&v63[12] = 1024;
    *&v63[14] = v55;
    *&v63[18] = 1024;
    *&v63[20] = v56;
    LOWORD(v64) = 1024;
    *(&v64 + 2) = v16;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: rxPacingTimerUS = %u, rxPacketPacingThresold = %u TRSize = %u)\n", v63, 0x1Eu);
  }

  *v63 = &v60;
  v17 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, &v60);
  v18 = (*(v17[5] + 56))();
  v19 = v18 == 0;
  if (v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v63 = 136315138;
      *&v63[4] = "addInterface";
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ERROR: failed to add network interface\n", v63, 0xCu);
    }

    goto LABEL_57;
  }

  v23 = 0;
  v24 = 0;
  v25 = MEMORY[0x277D86220];
  while (1)
  {
    v26 = *(&v73 + v23);
    if (v26 == 2)
    {
      v32 = v50 + 12 * v24 + 4;
      *v32 = 0xFF00000003;
      v33 = *&v75[v23];
      *(v32 + 2) = v33;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 136315394;
        *&v63[4] = "addInterface";
        *&v63[12] = 1024;
        *&v63[14] = v33;
        _os_log_impl(&dword_240EFD000, v25, OS_LOG_TYPE_DEFAULT, "::%s: DL Pipe configured (id = %u)\n", v63, 0x12u);
      }

      v29 = (v24 + 1);
      if (v29 > 0xF)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v26 != 1)
    {
      v29 = v24;
      goto LABEL_42;
    }

    v27 = v50 + 12 * v24 + 4;
    *v27 = 0;
    v28 = *&v75[v23];
    *(v27 + 2) = v28;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v63 = 136315394;
      *&v63[4] = "addInterface";
      *&v63[12] = 1024;
      *&v63[14] = v28;
      _os_log_impl(&dword_240EFD000, v25, OS_LOG_TYPE_DEFAULT, "::%s: UL.Default Pipe configured (id = %u)\n", v63, 0x12u);
    }

    v29 = (v24 + 1);
    if (v29 > 0xF)
    {
      goto LABEL_43;
    }

    v30 = *&v75[v23 + 2];
    if (v30 != 0xFFFF)
    {
      v31 = v50 + 12 * v29 + 4;
      *v31 = 0x100000000;
      *(v31 + 2) = v30;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 136315394;
        *&v63[4] = "addInterface";
        *&v63[12] = 1024;
        *&v63[14] = v30;
        _os_log_impl(&dword_240EFD000, v25, OS_LOG_TYPE_DEFAULT, "::%s: UL.Prio Pipe configured (id = %u)\n", v63, 0x12u);
      }

      v29 = (v24 + 2);
      if (v29 > 0xF)
      {
        break;
      }
    }

LABEL_42:
    v23 += 28;
    v24 = v29;
    if (v23 == 448)
    {
      goto LABEL_43;
    }
  }

  LODWORD(v29) = 16;
LABEL_43:
  LODWORD(v50[0]) = v29;
  *&v65[148] = v50[9];
  *&v65[164] = v50[10];
  *&v65[180] = v50[11];
  *&v65[84] = v50[5];
  *&v65[100] = v50[6];
  *&v65[116] = v50[7];
  *&v65[132] = v50[8];
  *&v65[20] = v50[1];
  *&v65[36] = v50[2];
  *&v65[52] = v50[3];
  *&v65[68] = v50[4];
  v63[0] = a4;
  v63[1] = a5;
  *&v63[2] = v60;
  v64 = 0;
  *&v63[16] = 0;
  *&v63[8] = &v63[16];
  *v65 = -1;
  *&v65[196] = v51;
  *&v65[4] = v50[0];
  v62 = &v61;
  v34 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v61);
  *(v34 + 10) = *v63;
  v35 = v34 + 7;
  std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy((v34 + 6), v34[7]);
  v36 = *&v63[16];
  v34[6] = *&v63[8];
  v34[7] = v36;
  v37 = v64;
  v34[8] = v64;
  if (v37)
  {
    v36[2] = v35;
    *&v63[8] = &v63[16];
    *&v63[16] = 0;
    v64 = 0;
    v36 = 0;
  }

  else
  {
    v34[6] = v35;
  }

  v38 = *&v65[192];
  v40 = *&v65[160];
  v39 = *&v65[176];
  v41 = *&v65[128];
  *(v34 + 27) = *&v65[144];
  *(v34 + 29) = v40;
  *(v34 + 31) = v39;
  v43 = *&v65[96];
  v42 = *&v65[112];
  v44 = *&v65[64];
  *(v34 + 19) = *&v65[80];
  *(v34 + 21) = v43;
  *(v34 + 23) = v42;
  *(v34 + 25) = v41;
  v46 = *&v65[32];
  v45 = *&v65[48];
  v47 = *v65;
  *(v34 + 11) = *&v65[16];
  *(v34 + 13) = v46;
  v34[33] = v38;
  *(v34 + 15) = v45;
  *(v34 + 17) = v44;
  *(v34 + 9) = v47;
  std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(&v63[8], v36);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v63 = 136315394;
    *&v63[4] = "addInterface";
    *&v63[12] = 1024;
    *&v63[14] = v61;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Network Interface %u added.\n", v63, 0x12u);
  }

  v19 = 1;
LABEL_57:
  v48 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t AppleCellularDataPlaneHelperInterface::ipcConfigSetHasRSS(AppleCellularDataPlaneHelperInterface *this, char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ipcConfigSetHasRSS";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: config = %s\n", buf, 0x16u);
  }

  if (!a2)
  {
    v11 = 0;
    goto LABEL_38;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "__Internet__");
  std::string::basic_string[abi:ne200100]<0>(__p, "__Internet2__");
  v3 = v18;
  std::string::basic_string[abi:ne200100]<0>(v18, a2);
  v4 = v19;
  v5 = v18[0];
  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = v18[1];
  }

  if ((v19 & 0x80u) != 0)
  {
    v3 = v18[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v7 = v23;
  }

  else
  {
    v7 = *&buf[8];
  }

  if ((v23 & 0x80u) == 0)
  {
    v8 = buf;
  }

  else
  {
    v8 = *buf;
  }

  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v3, v8, v9);
  if (v7 != v6 || v10)
  {
    v12 = v21;
    if ((v21 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v12 = __p[1];
      v13 = __p[0];
    }

    if (v12 >= v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = v12;
    }

    v15 = v12 == v6;
    v11 = !memcmp(v3, v13, v14) && v15;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v11 = 1;
  if (v4 < 0)
  {
LABEL_33:
    operator delete(v5);
  }

LABEL_34:
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
  }

LABEL_38:
  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_240EFFDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AppleCellularDataPlaneHelperInterface::ipcConfigSetHasPrioUL(AppleCellularDataPlaneHelperInterface *this, char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ipcConfigSetHasPrioUL";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: config = %s\n", buf, 0x16u);
  }

  if (!a2)
  {
    v11 = 0;
    goto LABEL_38;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "__Internet__");
  std::string::basic_string[abi:ne200100]<0>(__p, "__Internet2__");
  v3 = v18;
  std::string::basic_string[abi:ne200100]<0>(v18, a2);
  v4 = v19;
  v5 = v18[0];
  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = v18[1];
  }

  if ((v19 & 0x80u) != 0)
  {
    v3 = v18[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v7 = v23;
  }

  else
  {
    v7 = *&buf[8];
  }

  if ((v23 & 0x80u) == 0)
  {
    v8 = buf;
  }

  else
  {
    v8 = *buf;
  }

  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v3, v8, v9);
  if (v7 != v6 || v10)
  {
    v12 = v21;
    if ((v21 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v12 = __p[1];
      v13 = __p[0];
    }

    if (v12 >= v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = v12;
    }

    v15 = v12 == v6;
    v11 = !memcmp(v3, v13, v14) && v15;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v11 = 1;
  if (v4 < 0)
  {
LABEL_33:
    operator delete(v5);
  }

LABEL_34:
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
  }

LABEL_38:
  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_240EFFFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AppleCellularDataPlaneHelperInterface::addBearer(AppleCellularDataPlaneHelperInterface *this, unsigned int a2, unsigned int a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v49 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "addBearer";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Adding Bearer %u to Network Interface %u.\n", buf, 0x18u);
  }

  v6 = *(this + 39);
  if (v6)
  {
    v7 = (this + 312);
    do
    {
      v8 = v6[8];
      v9 = v8 >= v49;
      v10 = v8 < v49;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * v10];
    }

    while (v6);
    if (v7 != (this + 312) && v49 >= v7[8])
    {
      *buf = &v49;
      v13 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v49);
      v16 = v13[7];
      v14 = v13 + 7;
      v15 = v16;
      if (v16)
      {
        v17 = v14;
        do
        {
          v18 = *(v15 + 32);
          v9 = v18 >= v48;
          v19 = v18 < v48;
          if (v9)
          {
            v17 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v17 != v14 && v48 >= *(v17 + 8))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "addBearer";
            *&buf[12] = 1024;
            *&buf[14] = v48;
            _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Bearer %u is already configured. Returning Success.\n", buf, 0x12u);
          }

          goto LABEL_50;
        }
      }

      v45 = 0;
      v46 = 0;
      v47 = 0;
      __p = 0;
      v43 = 0;
      v44 = 0;
      v41 = 0;
      *buf = &v49;
      v20 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v49)[8];
      v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v21)
        {
          *buf = 136315650;
          *&buf[4] = "addBearer";
          *&buf[12] = 1024;
          *&buf[14] = v48;
          *&buf[18] = 1024;
          *&buf[20] = v49;
          _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ERROR: Failed to add Bearer %u on Interface %u. Out of radio resources. Redirecting to Default Bearer\n", buf, 0x18u);
        }

        *buf = &v49;
        LODWORD(v50) = *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v49) + 18);
        if (v50 == -1)
        {
          __assert_rtn("addBearer", "AppleCellularDataPlaneHelper.cpp", 745, "defaultBearerID != kACDPHelperNoBearer");
        }

        *buf = &v49;
        v22 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v49);
        *buf = &v50;
        v23 = std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v22 + 6), &v50);
        *buf = &v49;
        v24 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v49);
        *buf = &v48;
        v25 = std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v24 + 6), &v48);
        std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>,0ul,1ul,2ul>(v25 + 5, (v23 + 5));
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        *buf = 136315650;
        *&buf[4] = "addBearer";
        *&buf[12] = 1024;
        *&buf[14] = v48;
        *&buf[18] = 1024;
        *&buf[20] = v50;
        v26 = MEMORY[0x277D86220];
        v27 = "::%s: Bearer %u redirected to %u\n";
        v28 = 24;
      }

      else
      {
        if (v21)
        {
          *buf = 136315394;
          *&buf[4] = "addBearer";
          *&buf[12] = 1024;
          *&buf[14] = v48;
          _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Bearer %u becomes Default Bearer\n", buf, 0x12u);
        }

        *buf = &v49;
        if (*(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v49) + 18) != -1)
        {
          __assert_rtn("addBearer", "AppleCellularDataPlaneHelper.cpp", 714, "config_[interface].defaultBearer == kACDPHelperNoBearer");
        }

        *buf = &v49;
        v29 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v49);
        v30 = v29;
        if (*(v29 + 19))
        {
          v31 = 0;
          v32 = (v29 + 10);
          do
          {
            v34 = *v32;
            v32 += 3;
            v33 = v34;
            if (v34 == 3)
            {
              *buf = v31;
              std::vector<unsigned short>::push_back[abi:ne200100](&v45, buf);
            }

            else if (!v33)
            {
              *buf = v31;
              std::vector<unsigned short>::push_back[abi:ne200100](&__p, buf);
            }

            ++v31;
          }

          while (v31 < *(v30 + 19));
        }

        v35 = v48;
        *buf = &v49;
        *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v49) + 18) = v35;
        _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorItNS_9allocatorItEEEES6_tEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_tEJEJEJRS6_S9_RtEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(buf, &v45, &__p, &v41);
        v50 = &v49;
        v36 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v49);
        v50 = &v48;
        v37 = std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v36 + 6), &v48);
        v38 = v37[5];
        if (v38)
        {
          v37[6] = v38;
          operator delete(v38);
          v37[5] = 0;
          v37[6] = 0;
          v37[7] = 0;
        }

        v39 = v37[8];
        *(v37 + 5) = *buf;
        v37[7] = *&buf[16];
        memset(buf, 0, sizeof(buf));
        if (v39)
        {
          v37[9] = v39;
          operator delete(v39);
          v37[8] = 0;
          v37[9] = 0;
          v37[10] = 0;
          v39 = *buf;
        }

        *(v37 + 4) = v52;
        v37[10] = v53;
        v53 = 0;
        v52 = 0uLL;
        *(v37 + 44) = v54;
        if (v39)
        {
          *&buf[8] = v39;
          operator delete(v39);
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        *buf = 136315394;
        *&buf[4] = "addBearer";
        *&buf[12] = 1024;
        *&buf[14] = v48;
        v26 = MEMORY[0x277D86220];
        v27 = "::%s: Bearer %u added\n";
        v28 = 18;
      }

      _os_log_impl(&dword_240EFD000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
LABEL_46:
      if (__p)
      {
        v43 = __p;
        operator delete(__p);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

LABEL_50:
      result = 1;
      goto LABEL_51;
    }
  }

  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v11)
  {
    *buf = 136315394;
    *&buf[4] = "addBearer";
    *&buf[12] = 1024;
    *&buf[14] = v49;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Error: Network Interface %u not configured by ACDP-Helper.\n", buf, 0x12u);
    result = 0;
  }

LABEL_51:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F00730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID(uint64_t a1, unsigned int a2, int a3, unsigned int *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v48 = a2;
  *a4 = 0;
  if (a2 == -1)
  {
    goto LABEL_46;
  }

  v4 = a3;
  if (a3 == -1)
  {
    goto LABEL_46;
  }

  v6 = *(a1 + 312);
  if (!v6)
  {
    goto LABEL_46;
  }

  v8 = a1 + 312;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 == a1 + 312 || *(v8 + 32) > a2)
  {
LABEL_46:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "generateOutputParamsForBearerID";
      v12 = MEMORY[0x277D86220];
      v13 = "::%s: returning 0 pipes\n";
      v14 = 12;
LABEL_13:
      _os_log_impl(&dword_240EFD000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
    }
  }

  else
  {
    *buf = &v48;
    v17 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v48);
    v18 = v17[6];
    v46 = v17 + 7;
    if (v18 != v17 + 7)
    {
      v19 = a4 + 1;
      v47 = v4;
      do
      {
        if (*(v18 + 8) == v4)
        {
          v20 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "generateOutputParamsForBearerID";
            v50 = 1024;
            v51 = v47;
            v52 = 1024;
            LODWORD(v53) = v48;
            _os_log_impl(&dword_240EFD000, v20, OS_LOG_TYPE_DEFAULT, "::%s: BearerID %u found on Interface %u\n", buf, 0x18u);
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = (v18[6] - v18[5]) >> 1;
            *buf = 136315650;
            *&buf[4] = "generateOutputParamsForBearerID";
            v50 = 1024;
            v51 = v47;
            v52 = 2048;
            v53 = v21;
            _os_log_impl(&dword_240EFD000, v20, OS_LOG_TYPE_DEFAULT, "::%s: BearerID %u has %lu RX Pipes\n", buf, 0x1Cu);
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = (v18[9] - v18[8]) >> 1;
            *buf = 136315650;
            *&buf[4] = "generateOutputParamsForBearerID";
            v50 = 1024;
            v51 = v47;
            v52 = 2048;
            v53 = v22;
            _os_log_impl(&dword_240EFD000, v20, OS_LOG_TYPE_DEFAULT, "::%s: BearerID %u has %lu TX Pipes\n", buf, 0x1Cu);
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(v18 + 44);
            *buf = 136315650;
            *&buf[4] = "generateOutputParamsForBearerID";
            v50 = 1024;
            v51 = v47;
            v52 = 1024;
            LODWORD(v53) = v23;
            _os_log_impl(&dword_240EFD000, v20, OS_LOG_TYPE_DEFAULT, "::%s: BearerID %u is using QueueSet ID %u\n", buf, 0x18u);
          }

          v25 = v18[5];
          v24 = v18[6];
          while (v25 != v24)
          {
            v26 = *v25;
            *buf = &v48;
            v27 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v48);
            v26 *= 3;
            AppleCellularDataPlaneHelperInterface::printIPCPipeConfig(v27, v27 + v26 + 20);
            *buf = &v48;
            v28 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v48) + 4 * v26;
            v29 = *a4;
            v30 = *a4 + 1;
            *a4 = v30;
            v31 = &v19[3 * v29];
            v32 = *(v28 + 10);
            v31[2] = *(v28 + 22);
            *v31 = v32;
            if (v30 >= 0x11)
            {
              AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID();
            }

            ++v25;
          }

          v33 = v18[8];
          v34 = v18[9];
          while (v33 != v34)
          {
            v35 = *v33;
            *buf = &v48;
            v36 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v48);
            v35 *= 3;
            AppleCellularDataPlaneHelperInterface::printIPCPipeConfig(v36, v36 + v35 + 20);
            *buf = &v48;
            v37 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v48) + 4 * v35;
            v38 = *a4;
            v39 = *a4 + 1;
            *a4 = v39;
            v40 = &v19[3 * v38];
            v41 = *(v37 + 10);
            v40[2] = *(v37 + 22);
            *v40 = v41;
            if (v39 >= 0x11)
            {
              AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID();
            }

            ++v33;
          }
        }

        v42 = v18[1];
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = v18[2];
            v44 = *v43 == v18;
            v18 = v43;
          }

          while (!v44);
        }

        v18 = v43;
        v4 = v47;
      }

      while (v43 != v46);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v45 = *a4;
      *buf = 136315394;
      *&buf[4] = "generateOutputParamsForBearerID";
      v50 = 1024;
      v51 = v45;
      v12 = MEMORY[0x277D86220];
      v13 = "::%s: returning %u pipes\n";
      v14 = 18;
      goto LABEL_13;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AppleCellularDataPlaneHelperInterface::removeBearer(AppleCellularDataPlaneHelperInterface *this, unsigned int a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "removeBearer";
    v28 = 1024;
    v29 = a3;
    v30 = 1024;
    v31 = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Removing Bearer 0x%x from Network Interface %u.\n", buf, 0x18u);
  }

  v6 = *(this + 39);
  if (v6)
  {
    v7 = (this + 312);
    do
    {
      v8 = v6[8];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * v10];
    }

    while (v6);
    if (v7 != (this + 312) && v7[8] <= a2)
    {
      *buf = &v26;
      v13 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v26);
      v16 = v13[7];
      v14 = v13 + 7;
      v15 = v16;
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = v14;
      do
      {
        v18 = *(v15 + 32);
        v9 = v18 >= a3;
        v19 = v18 < a3;
        if (v9)
        {
          v17 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v17 != v14 && *(v17 + 8) <= a3)
      {
        *buf = &v26;
        v23 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v26);
        std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__erase_unique<unsigned int>((v23 + 6), &v25);
        v24 = v25;
        *buf = &v26;
        if (v24 == *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v26) + 18))
        {
          *buf = &v26;
          *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v26) + 18) = -1;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          *buf = 136315394;
          *&buf[4] = "removeBearer";
          v28 = 1024;
          v29 = v25;
          v20 = MEMORY[0x277D86220];
          v21 = "::%s: Default Bearer %u removed\n";
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          *buf = 136315394;
          *&buf[4] = "removeBearer";
          v28 = 1024;
          v29 = v25;
          v20 = MEMORY[0x277D86220];
          v21 = "::%s: Bearer %u removed\n";
        }
      }

      else
      {
LABEL_21:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_24:
          result = 1;
          goto LABEL_25;
        }

        *buf = 136315394;
        *&buf[4] = "removeBearer";
        v28 = 1024;
        v29 = a3;
        v20 = MEMORY[0x277D86220];
        v21 = "::%s: Bearer 0x%x is not configured. Returning Success.\n";
      }

      _os_log_impl(&dword_240EFD000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x12u);
      goto LABEL_24;
    }
  }

  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v11)
  {
    *buf = 136315394;
    *&buf[4] = "removeBearer";
    v28 = 1024;
    v29 = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Error: Network Interface %u not configured by ACDP-Helper.\n", buf, 0x12u);
    result = 0;
  }

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AppleCellularDataPlaneHelperInterface::removeInterface(AppleCellularDataPlaneHelperInterface *this, unsigned int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v3 = *(this + 39);
  if (v3)
  {
    v5 = (this + 312);
    do
    {
      v6 = v3[8];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *&v3[2 * v8];
    }

    while (v3);
    if (v5 != (this + 312) && v5[8] <= a2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v19;
        v12 = *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v19) + 40);
        *buf = 136315650;
        *&buf[4] = "removeInterface";
        v21 = 1024;
        v22 = a2;
        v23 = 1024;
        v24 = v12;
        _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Removing Network Interface %u (rss = %u)\n", buf, 0x18u);
      }

      *buf = &v19;
      v13 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v19);
      if (AppleCellularDataPlaneHelperInterface::connect(this, *(v13 + 21)))
      {
        *buf = &v19;
        *buf = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v19) + 42;
        v14 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, *buf);
        v15 = (*(v14[5] + 64))();
        v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!v15)
        {
          if (v16)
          {
            *buf = 136315394;
            *&buf[4] = "removeInterface";
            v21 = 1024;
            v22 = v19;
            _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Network Interface %u removed\n", buf, 0x12u);
          }

          v9 = 1;
          goto LABEL_23;
        }

        if (v16)
        {
          *buf = 136315138;
          *&buf[4] = "removeInterface";
          v17 = MEMORY[0x277D86220];
          v18 = "::%s: Failed to remove network interface. Device Reset needed.\n";
LABEL_21:
          _os_log_impl(&dword_240EFD000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "removeInterface";
        v17 = MEMORY[0x277D86220];
        v18 = "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed\n";
        goto LABEL_21;
      }

      v9 = 0;
LABEL_23:
      std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__erase_unique<unsigned int>(this + 304, &v19);
      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "removeInterface";
    v21 = 1024;
    v22 = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Network Interface %u not configured by ACDP-Helper. Returning Success.\n", buf, 0x12u);
  }

  v9 = 1;
LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void AppleCellularDataPlaneHelperInterface::printIPCPipeConfig(uint64_t a1, int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_20;
  }

  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v9 = 136315138;
      v10 = "printIPCPipeConfig";
      v4 = MEMORY[0x277D86220];
      v5 = "::%s: Type = kAppleIPAppenderIPCPipeType_DL_CR\n";
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "printIPCPipeConfig";
      v4 = MEMORY[0x277D86220];
      v5 = "::%s: Type = kAppleIPAppenderIPCPipeType_DL_TR\n";
      goto LABEL_15;
    }
  }

  else
  {
    if (v3)
    {
      if (v3 != 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v9 = 136315138;
      v10 = "printIPCPipeConfig";
      v4 = MEMORY[0x277D86220];
      v5 = "::%s: Type = kAppleIPAppenderIPCPipeType_UL_CR\n";
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "printIPCPipeConfig";
      v4 = MEMORY[0x277D86220];
      v5 = "::%s: Type = kAppleIPAppenderIPCPipeType_UL_TR\n";
LABEL_15:
      _os_log_impl(&dword_240EFD000, v4, OS_LOG_TYPE_DEFAULT, v5, &v9, 0xCu);
    }
  }

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = a2[1];
    v9 = 136315394;
    v10 = "printIPCPipeConfig";
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Priority = %u\n", &v9, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a2[2];
    v9 = 136315394;
    v10 = "printIPCPipeConfig";
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ID = %u\n", &v9, 0x12u);
  }

LABEL_20:
  v8 = *MEMORY[0x277D85DE8];
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t AppleCellularDataPlaneHelperInterface::blockPDPTraffic(AppleCellularDataPlaneHelperInterface *this, unsigned int a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *v22 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "blockPDPTraffic";
    v24 = 1024;
    v25 = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Blocking PDP Traffic on Network Interface %u.\n", buf, 0x12u);
  }

  std::mutex::lock((this + 8));
  v6 = *(this + 39);
  if (v6)
  {
    v7 = (this + 312);
    do
    {
      v8 = v6[8];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * v10];
    }

    while (v6);
    if (v7 != (this + 312) && v7[8] <= a2)
    {
      *buf = v22;
      v17 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, v22);
      if ((AppleCellularDataPlaneHelperInterface::connect(this, *(v17 + 21)) & 1) == 0)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136315138;
        *&buf[4] = "blockPDPTraffic";
        v11 = MEMORY[0x277D86220];
        v12 = "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed\n";
        v13 = 12;
        goto LABEL_13;
      }

      if (a3)
      {
        *buf = v22;
        *buf = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, v22) + 42;
        v18 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, *buf);
        IOACIPCBBNetCfgClass::stopNetIfTx((v18 + 5));
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "blockPDPTraffic";
          v24 = 1024;
          v25 = *v22;
          v19 = MEMORY[0x277D86220];
          v20 = "::%s: Network Interface %u blocked\n";
LABEL_24:
          _os_log_impl(&dword_240EFD000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x12u);
        }
      }

      else
      {
        *buf = v22;
        *buf = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, v22) + 42;
        v21 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, *buf);
        IOACIPCBBNetCfgClass::startNetIfTx((v21 + 5));
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "blockPDPTraffic";
          v24 = 1024;
          v25 = *v22;
          v19 = MEMORY[0x277D86220];
          v20 = "::%s: Network Interface %u resumed\n";
          goto LABEL_24;
        }
      }

      v14 = 1;
      goto LABEL_15;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "blockPDPTraffic";
    v24 = 1024;
    v25 = a2;
    v11 = MEMORY[0x277D86220];
    v12 = "::%s: Error: Network Interface %u not configured by ACDP-Helper.\n";
    v13 = 18;
LABEL_13:
    _os_log_impl(&dword_240EFD000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
  }

LABEL_14:
  v14 = 0;
LABEL_15:
  std::mutex::unlock((this + 8));
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t AppleCellularDataPlaneHelperInterface::registerFilterRuleCallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 8));
  *(a1 + 360) = a2;
  *(a1 + 368) = a3;
  std::mutex::unlock((a1 + 8));
  return 1;
}

void AppleCellularDataPlaneHelperInterface::completeFilterRule(uint64_t a1, unsigned int a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "completeFilterRule";
    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Completing Filter Rule (rule-id: %u, result: %u)\n", buf, 0x18u);
  }

  std::mutex::lock((a1 + 8));
  v6 = *(a1 + 336);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = a1 + 336;
  do
  {
    v8 = *(v6 + 28);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 336 || *(v7 + 28) > a2)
  {
LABEL_22:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "completeFilterRule";
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ERROR: invalid Filter Rule (rule-id: %u)\n", buf, 0x12u);
    }
  }

  *buf = &v14;
  v13 = *(std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 328, &v14) + 16);
  std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__erase_unique<unsigned int>(a1 + 328, &v14);
  if (AppleCellularDataPlaneHelperInterface::connect(a1, v13))
  {
    *buf = &v13;
    v11 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1 + 280, &v13);
    if (a3 == 1)
    {
      IOACIPCBBNetCfgClass::completeFilterRule((v11 + 5));
    }

    else
    {
      IOACIPCBBNetCfgClass::cancelFilterRuleCompletion((v11 + 5));
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "completeFilterRule";
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed or Device in Reset\n", buf, 0xCu);
  }

  std::mutex::unlock((a1 + 8));
  v12 = *MEMORY[0x277D85DE8];
}

void handleInterfaceChange(const __SCDynamicStore *a1, const __CFArray *a2, char *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::mutex::lock((a3 + 48));
    *(a3 + 62) = 0;
    v5 = *(a3 + 14);
    if (!v5)
    {
      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "handleInterfaceChange";
      v13 = 2080;
      v14 = v5;
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: checking for %s", &v11, 0x16u);
      v5 = *(a3 + 14);
    }

    v6 = checkSCStoreForIfNet(a1, v5);
    a3[125] = v6;
    v7 = *(a3 + 30);
    v8 = v7 == 0 && v6;
    v9 = v7 != 1;
    if (v8 || !v9 && !v6)
    {
      a3[124] = 1;
      std::mutex::unlock((a3 + 48));
      std::condition_variable::notify_all(a3);
    }

    else
    {
LABEL_7:
      std::mutex::unlock((a3 + 48));
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

BOOL AppleCellularDataPlaneHelperInterface::checkForDevicePresence(SCDynamicStoreRef *this, const char *a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (a3)
    {
      if (result)
      {
        v10 = 136315394;
        v11 = "checkForDevicePresence";
        v12 = 2080;
        v13 = a2;
        v7 = MEMORY[0x277D86220];
        v8 = "::%s: Check for interface presence (%s)";
LABEL_9:
        _os_log_impl(&dword_240EFD000, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x16u);
      }
    }

    else if (result)
    {
      v10 = 136315394;
      v11 = "checkForDevicePresence";
      v12 = 2080;
      v13 = a2;
      v7 = MEMORY[0x277D86220];
      v8 = "::%s: Check for interface absence (%s)";
      goto LABEL_9;
    }

    if (checkSCStoreForIfNet(this[18], a2) != a3)
    {
      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "checkForDevicePresence";
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: condition already met", &v10, 0xCu);
    }

    result = 1;
    goto LABEL_15;
  }

  if (result)
  {
    v10 = 136315138;
    v11 = "checkForDevicePresence";
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: invalid interface name", &v10, 0xCu);
LABEL_11:
    result = 0;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL checkSCStoreForIfNet(SCDynamicStoreRef store, const char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  NetworkInterface = getNetworkInterfaceKey(void)::key;
  if (!getNetworkInterfaceKey(void)::key)
  {
    NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, *MEMORY[0x277CE1648]);
    getNetworkInterfaceKey(void)::key = NetworkInterface;
  }

  v5 = SCDynamicStoreCopyValue(store, NetworkInterface);
  p_theDict = &theDict;
  theDict = v5;
  TypeID = CFDictionaryGetTypeID();
  if (v5)
  {
    if (CFGetTypeID(v5) == TypeID)
    {
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CE1798]);
      v8 = CFArrayGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v8)
        {
          theString2 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x600u);
          if (theString2)
          {
            Count = CFArrayGetCount(Value);
            if (Count < 1)
            {
              v11 = 0;
LABEL_16:
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_21;
              }

              *buf = 136315394;
              v21 = "checkSCStoreForIfNet";
              v22 = 2080;
              v23 = a2;
              v15 = MEMORY[0x277D86220];
              v16 = "::%s: %s not found";
            }

            else
            {
              v10 = 0;
              v11 = 1;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Value, v10);
                if (CFStringCompare(ValueAtIndex, theString2, 0) == kCFCompareEqualTo)
                {
                  break;
                }

                v11 = ++v10 < Count;
                if (Count == v10)
                {
                  goto LABEL_16;
                }
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_21;
              }

              *buf = 136315394;
              v21 = "checkSCStoreForIfNet";
              v22 = 2080;
              v23 = a2;
              v15 = MEMORY[0x277D86220];
              v16 = "::%s: %s found";
            }

            _os_log_impl(&dword_240EFD000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
LABEL_21:
            CFRelease(theString2);
            goto LABEL_14;
          }
        }
      }
    }
  }

  v11 = 0;
LABEL_14:
  ACDPHelperSentry<checkSCStoreForIfNet(__SCDynamicStore const*,char const*)::$_0>::~ACDPHelperSentry(&p_theDict);
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_240F02360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CBC2C0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,0>(a2 + 4);

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>,0ul,1ul,2ul>(void *result, uint64_t a2)
{
  v3 = result;
  if (result != a2)
  {
    std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    result = std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v3 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 1);
  }

  *(v3 + 24) = *(a2 + 48);
  return result;
}

void *std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorItNS_9allocatorItEEEES6_tEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_tEJEJEJRS6_S9_RtEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, uint64_t *a3, _WORD *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1 + 24, *a3, a3[1], (a3[1] - *a3) >> 1);
  *(a1 + 48) = *a4;
  return a1;
}

void sub_240F027B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F02834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

const void ***ACDPHelperSentry<checkSCStoreForIfNet(__SCDynamicStore const*,char const*)::$_0>::~ACDPHelperSentry(const void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(a1, a2[1]);
    MEMORY[0x245CD3BE0](a2 + 5);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      MEMORY[0x245CD3BE0](v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__erase_unique<unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(a1, v4);
  MEMORY[0x245CD3BE0](v4 + 40);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(a1, a2);
  std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(a2 + 48, *(a2 + 56));
  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 8);
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == (a1 + 8) || v3 < *(v4 + 8))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(a1, v4);
  std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,0>(v4 + 4);
  operator delete(v4);
  return 1;
}

uint64_t std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void ApplePDPHelperInterface::ApplePDPHelperInterface(ApplePDPHelperInterface *this)
{
  *this = &unk_2852CB068;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = this + 104;
  *(this + 14) = this + 104;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

{
  *this = &unk_2852CB068;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = this + 104;
  *(this + 14) = this + 104;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

void ApplePDPHelperInterface::~ApplePDPHelperInterface(ApplePDPHelperInterface *this)
{
  *this = &unk_2852CB068;
  v2 = (this + 8);
  std::mutex::lock((this + 8));
  ApplePDPHelperInterface::cleanup_nl(this);
  std::mutex::unlock(v2);
  std::__list_imp<__CFRunLoop *>::clear(this + 13);
  std::mutex::~mutex(v2);
}

{
  ApplePDPHelperInterface::~ApplePDPHelperInterface(this);

  JUMPOUT(0x245CD3CC0);
}

uint64_t ApplePDPHelperInterface::cleanup_nl(ApplePDPHelperInterface *this)
{
  if (*(this + 15))
  {
    v2 = this + 104;
    v3 = *(this + 14);
    if (v3 != this + 104)
    {
      v4 = *MEMORY[0x277CBF048];
      do
      {
        v5 = *(v3 + 2);
        if (CFRunLoopContainsSource(v5, *(this + 12), v4))
        {
          CFRunLoopRemoveSource(v5, *(this + 12), v4);
        }

        CFRelease(v5);
        v3 = *(v3 + 1);
      }

      while (v3 != v2);
    }

    std::__list_imp<__CFRunLoop *>::clear(this + 13);
  }

  v6 = *(this + 16);
  if (v6)
  {
    IONotificationPortDestroy(v6);
    *(this + 16) = 0;
  }

  v7 = *(this + 20);
  if (v7)
  {
    IOServiceClose(v7);
    *(this + 20) = 0;
  }

  result = *(this + 19);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 19) = 0;
  }

  return result;
}

uint64_t ApplePDPHelperInterface::init(ApplePDPHelperInterface *this)
{
  std::mutex::lock((this + 8));
  v2 = IOServiceMatching("AppleIPAppender");
  v3 = *MEMORY[0x277CD2898];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v2);
  *(this + 19) = MatchingService;
  if (MatchingService)
  {
    LODWORD(v5) = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, this + 20);
    if (v5 || (v5 = IONotificationPortCreate(v3), (*(this + 16) = v5) == 0))
    {
      syslog(3, "Could not open service (0x%x)\n", v5);
    }

    else
    {
      notification = 0;
      v8 = IOServiceAddInterestNotification(v5, *(this + 19), "IOGeneralInterest", ApplePDPHelperInterface::callback, this, &notification);
      *(this + 12) = IONotificationPortGetRunLoopSource(*(this + 16));
      if (!v8)
      {
        v6 = 1;
        goto LABEL_6;
      }
    }
  }

  else
  {
    syslog(3, "Could not find %s service\n", "AppleIPAppender");
  }

  ApplePDPHelperInterface::cleanup_nl(this);
  v6 = 0;
LABEL_6:
  std::mutex::unlock((this + 8));
  return v6;
}

uint64_t ApplePDPHelperInterface::getInstance(ApplePDPHelperInterface *this)
{
  if (ApplePDPHelperInterface::getInstance(void)::onceToken != -1)
  {
    ApplePDPHelperInterface::getInstance();
  }

  return ApplePDPHelperInterface::getInstance(void)::sInstance;
}

void ApplePDPHelperInterface::create(ApplePDPHelperInterface *this)
{
  if (ApplePDPHelperInterface::probeVariant(void)::sOnce != -1)
  {
    ApplePDPHelperInterface::create();
  }

  if (ApplePDPHelperInterface::probeVariant(void)::ret == 1)
  {
    operator new();
  }

  operator new();
}

uint64_t ApplePDPHelperInterface::callMethod(ApplePDPHelperInterface *this, uint32_t a2, const char *a3, unint64_t *a4, uint32_t a5, void *a6, size_t a7, unint64_t *a8, uint32_t *outputCnt, void *outputStruct, unint64_t *a11)
{
  std::mutex::lock((this + 8));
  v19 = *(this + 20);
  if (v19)
  {
    v20 = IOConnectCallMethod(v19, a2, a4, a5, a6, a7, a8, outputCnt, outputStruct, a11);
    if (!v20)
    {
      v21 = 1;
      goto LABEL_7;
    }

    syslog(3, "ApplePDPHelper: Performing '%s' failed: %d (0x%x)\n", a3, v20, v20);
  }

  else
  {
    syslog(3, "ApplePDPHelper: service is not open\n");
  }

  v21 = 0;
LABEL_7:
  std::mutex::unlock((this + 8));
  return v21;
}

uint64_t ApplePDPHelperInterface::callScalarMethod(ApplePDPHelperInterface *this, uint32_t a2, const char *a3, unint64_t *a4, uint32_t a5, unint64_t *a6, unsigned int *a7)
{
  std::mutex::lock((this + 8));
  v14 = *(this + 20);
  if (v14)
  {
    v15 = IOConnectCallScalarMethod(v14, a2, a4, a5, a6, a7);
    if (!v15)
    {
      v16 = 1;
      goto LABEL_7;
    }

    syslog(3, "ApplePDPHelper: Performing '%s' failed: 0x%x\n", a3, v15);
  }

  else
  {
    syslog(3, "ApplePDPHelper: service is not open\n");
  }

  v16 = 0;
LABEL_7:
  std::mutex::unlock((this + 8));
  return v16;
}

BOOL ApplePDPHelperInterface::callAsyncScalarMethod(ApplePDPHelperInterface *this, uint32_t a2, const char *a3, uint64_t a4, unint64_t a5, unint64_t *a6, uint32_t a7, unint64_t *a8, uint32_t *outputCnt)
{
  v28 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 8));
  v17 = *(this + 20);
  if (!v17)
  {
    syslog(3, "ApplePDPHelper: service is not open\n");
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v18 = *(this + 16);
  if (!v18)
  {
    syslog(3, "ApplePDPHelper: IONotification port is NULL\n");
    goto LABEL_7;
  }

  reference[0] = 0;
  v26 = 0u;
  v27 = 0u;
  reference[1] = a4;
  v25 = a5;
  MachPort = IONotificationPortGetMachPort(v18);
  v20 = IOConnectCallAsyncScalarMethod(v17, a2, MachPort, reference, 3u, a6, a7, a8, outputCnt);
  v21 = v20 == 0;
  if (v20)
  {
    syslog(3, "ApplePDPHelper: Performing '%s' failed: 0x%x\n", a3, v20);
  }

LABEL_8:
  std::mutex::unlock((this + 8));
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t ApplePDPHelperInterface::enable(ApplePDPHelperInterface *this, unsigned int a2, BOOL *a3)
{
  v7 = 1;
  v5 = a2;
  v6 = 0;
  result = ApplePDPHelperInterface::callScalarMethod(this, 3u, "Enable QoS header prepend", &v5, 1u, &v6, &v7);
  if (a3)
  {
    if (result)
    {
      *a3 = v6 != 0;
    }
  }

  return result;
}

uint64_t ApplePDPHelperInterface::addFlow(ApplePDPHelperInterface *a1, int a2, int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return ApplePDPHelperInterface::callStructMethod(a1, 0, "Add Traffic class to flow Id mapping", v4, 8u, 0, 0);
}

uint64_t ApplePDPHelperInterface::getFlow(ApplePDPHelperInterface *a1, unsigned int a2, _DWORD *a3)
{
  v7 = 1;
  v5 = a2;
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  result = ApplePDPHelperInterface::callScalarMethod(a1, 2u, "Get flow Id mapping for traffic class", &v5, 1u, &v6, &v7);
  if (result)
  {
    *a3 = v6;
    return 1;
  }

  return result;
}

uint64_t ApplePDPHelperInterface::enableMetadataTrailer(ApplePDPHelperInterface *this, unsigned int a2, BOOL *a3)
{
  v7 = 1;
  v5 = a2;
  v6 = 0;
  result = ApplePDPHelperInterface::callScalarMethod(this, 0x11u, "Enable metadata trailer append", &v5, 1u, &v6, &v7);
  if (a3)
  {
    if (result)
    {
      *a3 = v6 != 0;
    }
  }

  return result;
}

uint64_t ApplePDPHelperInterface::setDormancyInterval(ApplePDPHelperInterface *this, int a2, int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return ApplePDPHelperInterface::callStructMethod(this, 4u, "Set dormancy", v4, 8u, 0, 0);
}

uint64_t ApplePDPHelperInterface::getDormancyTime(ApplePDPHelperInterface *this, unsigned int *a2)
{
  v5 = 1;
  v4 = 0;
  result = ApplePDPHelperInterface::callScalarMethod(this, 5u, "Get dormancy time", 0, 0, &v4, &v5);
  if (result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t ApplePDPHelperInterface::reportLinkThroughput(ApplePDPHelperInterface *a1, void *a2)
{
  if (a2)
  {
    return ApplePDPHelperInterface::callStructMethod(a1, 0xBu, "Report throughput for network interfaces", a2, 0x20u, 0, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t ApplePDPHelperInterface::copyWakeBuffer(ApplePDPHelperInterface *this, unsigned __int8 *a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  outputCnt = 1;
  v6 = a3;
  *a4 = a3;
  return ApplePDPHelperInterface::callMethod(this, 0xAu, "Copy wake buffer", &v6, 1u, 0, 0, a5, &outputCnt, a2, a4);
}

uint64_t ApplePDPHelperInterface::fillupPortLists(ApplePDPHelperInterface *this, unsigned __int16 *a2, unsigned int a3, const unsigned __int8 *a4, unint64_t a5, unsigned int *a6, __int16 a7)
{
  if (!a5)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = a4[v7];
    if (v9)
    {
      break;
    }

LABEL_11:
    v7 = ++v8;
    if (v8 >= a5)
    {
      return 1;
    }
  }

  v10 = 0;
  v11 = (a7 << 15) + 8 * v8;
  while (1)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = *a6;
    if (v12 >= a3)
    {
      break;
    }

    *a6 = v12 + 1;
    a2[v12] = v11;
LABEL_8:
    if (v9 >= 2)
    {
      v9 >>= 1;
      ++v11;
      if (v10++ < 7)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  syslog(3, "%s: the number of port lists (%u) is more than max number of port lists (%u)\n", "BOOL ApplePDPHelperInterface::fillupPortLists(uint16_t *, const unsigned int, const uint8_t *, const size_t, unsigned int *, const unsigned int)", v12, a3);
  return 0;
}

uint64_t ApplePDPHelperInterface::getOpenPortsExt(ApplePDPHelperInterface *this, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, unint64_t *a6)
{
  v6 = MEMORY[0x28223BE20](this, a2, a3, a4, a5, a6);
  v25[3] = *MEMORY[0x277D85DE8];
  if (v9 && (v12 = v11) != 0)
  {
    v13 = v10;
    *v11 = 0;
    if (v10 <= 0x10000)
    {
      v16 = v9;
      v17 = v6;
      v18 = 0;
      v25[0] = v7;
      v25[1] = v8;
      v23 = 4096;
      v22 = 0;
      *v11 = 0;
      v19 = 1;
      while (1)
      {
        v20 = v19;
        bzero(v24, 0x1000uLL);
        v25[2] = v18;
        v21 = ApplePDPHelperInterface::callMethod(v17, 0xCu, "Get open ports (Extension)", v25, 3u, 0, 0, 0, 0, v24, &v23);
        if ((v21 & 1) == 0)
        {
          break;
        }

        if ((ApplePDPHelperInterface::fillupPortLists(v21, v16, v13, v24, 0x1000uLL, &v22, v18) & 1) == 0)
        {
          goto LABEL_6;
        }

        v19 = 0;
        v18 = 1;
        if ((v20 & 1) == 0)
        {
          *v12 = 2 * v22;
          result = 1;
          goto LABEL_7;
        }
      }

      syslog(3, "%s: Failed on getting raw bit buffer.\n");
    }

    else
    {
      syslog(3, "%s: Max number of port lists (%u) cannot be exceeded more than %u\n");
    }
  }

  else
  {
    syslog(3, "%s: portLists/copiedBytes should not be NULL\n");
  }

LABEL_6:
  result = 0;
LABEL_7:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ApplePDPHelperInterface::blockPDPTraffic(ApplePDPHelperInterface *this, unsigned int a2, unsigned int a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = a2;
  v5[1] = a3;
  result = ApplePDPHelperInterface::callScalarMethod(this, 0x10u, "Block PDP traffic", v5, 2u, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ApplePDPHelperInterface::getKeepaliveOffloadFrames(ApplePDPHelperInterface *a1, unsigned int a2, void *a3, _DWORD *a4)
{
  v4 = 0;
  v10[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4)
    {
      v4 = *a4;
      if (v4)
      {
        v9 = 132 * v4;
        v10[0] = a2;
        *a4 = 0;
        v6 = ApplePDPHelperInterface::callMethod(a1, 0x12u, "Get Keepalive Offload Frames", v10, 1u, 0, 0, 0, 0, a3, &v9);
        v4 = 0;
        if (v6)
        {
          if (v9 % 0x84)
          {
            syslog(3, "%s: Returned size %zu is not a multiple of frame size %lu\n", "BOOL ApplePDPHelperInterface::getKeepaliveOffloadFrames(unsigned int, AppleIPAppenderKeepaliveOffloadFrame_t *, unsigned int *)", v9, 132);
            v4 = 0;
          }

          else
          {
            *a4 = v9 / 0x84;
            v4 = 1;
          }
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t ApplePDPHelperInterface::registerFilterRuleCallBack(ApplePDPHelperInterface *a1, const void *a2, const void *a3)
{
  v3 = a2;
  v9[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    syslog(6, "client callback: %p, context: %p\n", a2, a3);
    v9[0] = v3;
    v9[1] = a3;
    v8 = 0;
    v3 = ApplePDPHelperInterface::callAsyncScalarMethod(a1, 0x14u, "register filter rule callback", ApplePDPHelperInterface::filterRuleNotification, v3, v9, 2u, 0, &v8);
    if ((v3 & 1) == 0)
    {
      syslog(3, "Filter rule callback registration failed\n");
    }
  }

  else
  {
    syslog(3, "filter rule callback is NULL\n");
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

void ApplePDPHelperInterface::filterRuleNotification(ApplePDPHelperInterface *this, void *a2, const void *a3, void *a4, void *a5)
{
  if (a2)
  {
    syslog(3, "Error - FilterRule notification, result: 0x%08x\n", a3, a4, a5);
  }

  else
  {
    syslog(6, "refCon: %p, frInfo: %p, context: %p\n", this, a3, a4);
    if (this)
    {
      v8 = dispatch_queue_create("filter rule queue", 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN23ApplePDPHelperInterface22filterRuleNotificationEPviS0_S0__block_invoke;
      block[3] = &__block_descriptor_tmp_42;
      block[4] = this;
      block[5] = a3;
      block[6] = a4;
      dispatch_sync(v8, block);
      dispatch_release(v8);
    }

    else
    {
      syslog(3, "NULL client callback reference\n");
    }
  }
}

void ___ZN23ApplePDPHelperInterface22filterRuleNotificationEPviS0_S0__block_invoke(void *a1)
{
  if (a1[5])
  {
    v3 = a1[4];
    v4 = a1[6];
    v5 = a1[5];

    v3(v5, v4);
  }

  else
  {
    syslog(3, "NULL filter rule info\n", v1, v2);
  }
}

uint64_t ApplePDPHelperInterface::notifyDedicatedBearer(ApplePDPHelperInterface *a1, unsigned __int8 *a2, void *a3)
{
  if (!a2)
  {
    syslog(3, "NULL Input args\n");
    return 0;
  }

  if (!a3)
  {
    syslog(3, "NULL Output args\n");
    return 0;
  }

  if (*(a2 + 2) >= 0xFFu)
  {
    v6 = *(a2 + 2);
    syslog(3, "Invalid bearerID %u\n");
    return 0;
  }

  if (*(a2 + 3) >= 3)
  {
    v7 = *(a2 + 3);
    syslog(3, "Invalid service %u\n");
    return 0;
  }

  v8 = 16;
  v4 = ApplePDPHelperInterface::callStructMethod(a1, 0x13u, "Notify Dedicated bearer up or down", a2, 0x10u, a3, &v8);
  if ((v4 & 1) == 0)
  {
    syslog(3, "Notification of dedicated bearer to driver failed, enable %u, interfaceID: %u, bearerID: %u, service: %u\n", *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3));
  }

  return v4;
}

uint64_t ApplePDPHelperInterface::ipcInterfaceConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIdsInitialized & 1) == 0)
  {
    *&v3 = -1;
    *(&v3 + 1) = -1;
    xmmword_27E51D088 = v3;
    unk_27E51D098 = v3;
    ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIds = v3;
    unk_27E51D078 = v3;
    ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIdsInitialized = 1;
  }

  if (*(a2 + 24))
  {
    v4 = *(a2 + 16);
    if (*(a2 + 32))
    {
      v5 = 63;
      if (v4 <= 0xF)
      {
        if (*(&ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIds + v4) == *(a2 + 20))
        {
          v5 = 127;
        }

        else
        {
          v5 = 63;
        }
      }
    }

    else
    {
      if (v4 <= 0xF)
      {
        *(&ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIds + v4) = *(a2 + 20);
      }

      v5 = 255;
    }

    *a3 = 2;
    v7 = 3 * v4;
    *(a3 + 8) = v5;
    *(a3 + 12) = (2 * v7) | 1;
    *(a3 + 16) = 3;
    *(a3 + 20) = v5;
    *(a3 + 24) = 2 * v7 + 2;
  }

  else
  {
    v6 = *(a2 + 16);
    if (v6 <= 0xF)
    {
      *(&ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIds + v6) = -1;
    }

    *a3 = 0;
  }

  return 1;
}

void ApplePDPHelperInterface::registerHandlerInternal(ApplePDPHelperInterface *this, ApplePDPHelperInterface::Handler *a2)
{
  std::mutex::lock((this + 8));
  if (*(this + 19))
  {
    if (*(this + 11))
    {
      v5 = "fHandler == NULL";
      v6 = 754;
    }

    else
    {
      if (a2)
      {
        *(this + 11) = a2;
        Current = CFRunLoopGetCurrent();
        if (Current)
        {
          CFRetain(Current);
          operator new();
        }

        __assert_rtn("registerHandlerInternal", "ApplePDPHelper.cpp", 760, "rl");
      }

      v5 = "handler != NULL";
      v6 = 755;
    }
  }

  else
  {
    v5 = "fService != MACH_PORT_NULL";
    v6 = 753;
  }

  __assert_rtn("registerHandlerInternal", "ApplePDPHelper.cpp", v6, v5);
}

BOOL ApplePDPHelperInterface::isServicePresent(ApplePDPHelperInterface *this, const char *a2)
{
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching(this);
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v5 != 0;
}

uint64_t ApplePDPHelperInterface::probeVariant(ApplePDPHelperInterface *this)
{
  if (ApplePDPHelperInterface::probeVariant(void)::sOnce != -1)
  {
    ApplePDPHelperInterface::create();
  }

  return ApplePDPHelperInterface::probeVariant(void)::ret;
}

void ___ZN23ApplePDPHelperInterface12probeVariantEv_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v9[2] = xmmword_278CBC3A8;
  v9[3] = *&off_278CBC3B8;
  v9[4] = xmmword_278CBC3C8;
  v9[0] = xmmword_278CBC388;
  v9[1] = *&off_278CBC398;
  std::map<char const*,ApplePDPHelperInterface::variant>::map[abi:ne200100](&v7, v9, 5);
  v1 = v7;
  if (v7 == v8)
  {
LABEL_9:
    v5 = 1;
  }

  else
  {
    while (!ApplePDPHelperInterface::isServicePresent(v1[4], v0))
    {
      v2 = v1[1];
      if (v2)
      {
        do
        {
          v3 = v2;
          v2 = *v2;
        }

        while (v2);
      }

      else
      {
        do
        {
          v3 = v1[2];
          v4 = *v3 == v1;
          v1 = v3;
        }

        while (!v4);
      }

      v1 = v3;
      if (v3 == v8)
      {
        goto LABEL_9;
      }
    }

    v5 = *(v1 + 10);
  }

  ApplePDPHelperInterface::probeVariant(void)::ret = v5;
  std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(&v7, v8[0]);
  v6 = *MEMORY[0x277D85DE8];
}

void *std::__list_imp<__CFRunLoop *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void *std::map<char const*,ApplePDPHelperInterface::variant>::map[abi:ne200100](void *a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ApplePDPHelperInterface::variant>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,ApplePDPHelperInterface::variant> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ApplePDPHelperInterface::variant>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,ApplePDPHelperInterface::variant> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ApplePDPHelperInterface::variant>>>::__find_equal<char const*>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ApplePDPHelperInterface::variant>>>::__find_equal<char const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID()
{
  __assert_rtn("generateOutputParamsForBearerID", "AppleCellularDataPlaneHelper.cpp", 466, "outputParams.pipesNum <= kAppleIPAppenderMaxIPCPipesParamsNum");
}

{
  __assert_rtn("generateOutputParamsForBearerID", "AppleCellularDataPlaneHelper.cpp", 474, "outputParams.pipesNum <= kAppleIPAppenderMaxIPCPipesParamsNum");
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}