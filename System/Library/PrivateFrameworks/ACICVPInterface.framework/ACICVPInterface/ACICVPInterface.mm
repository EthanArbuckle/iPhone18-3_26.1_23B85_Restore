uint64_t cvp::CVPInterface::loadFirmware(cvp::CVPInterface *this, const char *__filename)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = fopen(__filename, "rb");
  if (v2)
  {
    v3 = v2;
    fseeko(v2, 0, 2);
    ftello(v3);
    fseeko(v3, 0, 0);
    operator new[]();
  }

  cvp::CVPInterface::loadFirmware();
  v4 = *MEMORY[0x277D85DE8];
  return 3758097124;
}

uint64_t ACIUKextConnection::call(mach_port_t *this, uint32_t a2, unint64_t *a3, uint32_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = _aciLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *this;
    v12 = 136315650;
    v13 = "IOReturn ACIUKextConnection::call(uint32_t, uint64_t *, uint32_t)";
    v14 = 1024;
    v15 = 60;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_23C3E4000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d _ioConnection: %x", &v12, 0x18u);
  }

  result = IOConnectCallScalarMethod(*this, a2, a3, a4, 0, 0);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cvp::CVPInterface::isFirmwareLoaded(mach_port_t **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 1;
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "BOOL cvp::CVPInterface::isFirmwareLoaded()";
    _os_log_impl(&dword_23C3E4000, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v3 = ACIUKextConnection::call(this[1], 2u, &v9, &v8);
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "BOOL cvp::CVPInterface::isFirmwareLoaded()";
    v12 = 2048;
    v13 = v9;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_23C3E4000, v4, OS_LOG_TYPE_DEFAULT, "%s output: %lld, ret: %x", buf, 0x1Cu);
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v9 == 0;
  }

  result = !v5;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ACIUKextConnection::call(mach_port_t *this, uint32_t a2, unint64_t *a3, unsigned int *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = _aciLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *this;
    v12 = 136315650;
    v13 = "IOReturn ACIUKextConnection::call(uint32_t, uint64_t *, uint32_t *)";
    v14 = 1024;
    v15 = 70;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_23C3E4000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d _ioConnection: %x", &v12, 0x18u);
  }

  result = IOConnectCallScalarMethod(*this, a2, 0, 0, a3, a4);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cvp::CVPInterface::forgetFirmware(cvp::CVPInterface *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "IOReturn cvp::CVPInterface::forgetFirmware()";
    _os_log_impl(&dword_23C3E4000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v3 = IOConnectCallStructMethod(**(this + 1), 1u, 0, 0, 0, 0);
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "IOReturn cvp::CVPInterface::forgetFirmware()";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_23C3E4000, v4, OS_LOG_TYPE_DEFAULT, "%s ret: %x", &v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t cvp::CVPInterface::powerOn(cvp::CVPInterface *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "IOReturn cvp::CVPInterface::powerOn()";
    _os_log_impl(&dword_23C3E4000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v3 = IOConnectCallStructMethod(**(this + 1), 3u, 0, 0, 0, 0);
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "IOReturn cvp::CVPInterface::powerOn()";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_23C3E4000, v4, OS_LOG_TYPE_DEFAULT, "%s ret: %x", &v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t cvp::CVPInterface::powerOff(cvp::CVPInterface *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "IOReturn cvp::CVPInterface::powerOff()";
    _os_log_impl(&dword_23C3E4000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v3 = IOConnectCallStructMethod(**(this + 1), 4u, 0, 0, 0, 0);
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "IOReturn cvp::CVPInterface::powerOff()";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_23C3E4000, v4, OS_LOG_TYPE_DEFAULT, "%s ret: %x", &v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL cvp::CVPInterface::isPowered(mach_port_t **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 1;
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "BOOL cvp::CVPInterface::isPowered()";
    _os_log_impl(&dword_23C3E4000, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v3 = ACIUKextConnection::call(this[1], 5u, &v9, &v8);
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "BOOL cvp::CVPInterface::isPowered()";
    v12 = 2048;
    v13 = v9;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_23C3E4000, v4, OS_LOG_TYPE_DEFAULT, "%s output: %lld, ret: %x", buf, 0x1Cu);
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v9 == 0;
  }

  result = !v5;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cvp::CVPInterface::sendCommand(uint64_t a1, int *a2, unint64_t a3)
{
  v3 = a3;
  v17[2] = *MEMORY[0x277D85DE8];
  v17[0] = a2;
  v17[1] = a3;
  if (*a1 == 1)
  {
    v6 = _aciLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "IOReturn cvp::CVPInterface::sendCommand(isp::sCIspCommandHeader *, size_t)";
      v13 = 1040;
      v14 = v3;
      v15 = 2096;
      v16 = a2;
      _os_log_impl(&dword_23C3E4000, v6, OS_LOG_TYPE_DEFAULT, "%s in: %.*P", &v11, 0x1Cu);
    }
  }

  v7 = ACIUKextConnection::call(*(a1 + 8), 6u, v17, 2u);
  if (*a1 == 1)
  {
    v8 = _aciLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "IOReturn cvp::CVPInterface::sendCommand(isp::sCIspCommandHeader *, size_t)";
      v13 = 1040;
      v14 = v3;
      v15 = 2096;
      v16 = a2;
      _os_log_impl(&dword_23C3E4000, v8, OS_LOG_TYPE_DEFAULT, "%s out %.*P", &v11, 0x1Cu);
    }
  }

  if (v7)
  {
    cvp::CVPInterface::sendCommand(a2);
  }

  if (a2[3])
  {
    cvp::CVPInterface::sendCommand(a2, a2 + 3, &v11);
    v7 = v11;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t cvp::CVPInterface::sendBuffers(cvp::CVPInterface *this, unsigned __int8 *inputStruct, size_t inputStructCnt, mach_port_t wake_port)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v9 = 0u;
  v10 = 0u;
  *reference = 0u;
  v8 = 0u;
  result = IOConnectCallAsyncMethod(*v4, 7u, wake_port, reference, 8u, 0, 0, inputStruct, inputStructCnt, 0, 0, 0, 0);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cvp::CVPInterface::sendStart(cvp::CVPInterface *this)
{
  v2[0] = 0;
  v2[1] = 0;
  return cvp::CVPInterface::sendCommand(this, v2, 0x10uLL);
}

uint64_t cvp::CVPInterface::sendStop(cvp::CVPInterface *this)
{
  v2[0] = 0x100000000;
  v2[1] = 0;
  return cvp::CVPInterface::sendCommand(this, v2, 0x10uLL);
}

uint64_t cvp::CVPInterface::sendSuspend(cvp::CVPInterface *this)
{
  v2[0] = 0x300000000;
  v2[1] = 0;
  return cvp::CVPInterface::sendCommand(this, v2, 0x10uLL);
}

uint64_t cvp::CVPInterface::sendBuildInfo(uint64_t a1, uint64_t a2)
{
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 4) = 2;
  return cvp::CVPInterface::sendCommand(a1, a2, 0xB0uLL);
}

uint64_t cvp::CVPInterface::sendConfigGet(uint64_t a1, void *a2)
{
  bzero(a2, 0x338uLL);
  *(a2 + 1) = 4;

  return cvp::CVPInterface::sendCommand(a1, a2, 0x338uLL);
}

uint64_t cvp::CVPInterface::sendI2CRead(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 4) = 5;
  *(a7 + 16) = a2;
  *(a7 + 20) = a3;
  *(a7 + 24) = a4;
  *(a7 + 28) = a5;
  *(a7 + 32) = 0;
  *(a7 + 36) = a6;
  return cvp::CVPInterface::sendCommand(a1, a7, 0x28uLL);
}

uint64_t cvp::CVPInterface::sendI2CWrite(cvp::CVPInterface *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v8[0] = 0x600000000;
  v8[1] = 0;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  return cvp::CVPInterface::sendCommand(this, v8, 0x28uLL);
}

uint64_t cvp::CVPInterface::sendChStart(cvp::CVPInterface *this, unsigned int a2)
{
  v3[0] = 0x271000000000;
  v3[1] = a2;
  return cvp::CVPInterface::sendCommand(this, v3, 0x10uLL);
}

uint64_t cvp::CVPInterface::sendChStop(cvp::CVPInterface *this, unsigned int a2)
{
  v3[0] = 0x271100000000;
  v3[1] = a2;
  return cvp::CVPInterface::sendCommand(this, v3, 0x10uLL);
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdBuildInfo(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"name"];
  v6 = v5;
  v7 = 3758097090;
  if (!v5 || ([v5 getCString:a3 + 16 maxLength:32 encoding:4] & 1) != 0)
  {
    v8 = [v4 objectForKeyedSubscript:@"linkDate"];
    v9 = v8;
    if (!v8 || ([v8 getCString:a3 + 48 maxLength:32 encoding:4] & 1) != 0)
    {
      v10 = [v4 objectForKeyedSubscript:@"release"];
      v11 = v10;
      if (!v10 || ([v10 getCString:a3 + 80 maxLength:32 encoding:4] & 1) != 0)
      {
        v12 = [v4 objectForKeyedSubscript:@"toolchainName"];
        v13 = v12;
        if (!v12 || ([v12 getCString:a3 + 112 maxLength:32 encoding:4] & 1) != 0)
        {
          v14 = [v4 objectForKeyedSubscript:@"toolchainVersion"];
          v15 = v14;
          if (!v14 || ([v14 getCString:a3 + 144 maxLength:32 encoding:4] & 1) != 0)
          {
            v7 = 0;
          }
        }
      }
    }
  }

  return v7;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdBuildInfo(uint64_t a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"name";
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2 + 16];
  v12[0] = v3;
  v11[1] = @"linkDate";
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2 + 48];
  v12[1] = v4;
  v11[2] = @"release";
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2 + 80];
  v12[2] = v5;
  v11[3] = @"toolchainName";
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2 + 112];
  v12[3] = v6;
  v11[4] = @"toolchainVersion";
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2 + 144];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdBuildInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdBuildInfo = cvp::CVPInterface::CreateDictFrom_sCIspCmdBuildInfo(v5, a2);
    [i addObject:DictFrom_sCIspCmdBuildInfo];

    a2 += 176;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_ModuleInfo(uint64_t a1, void *a2, _WORD *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"available"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedShortValue];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = [v4 objectForKeyedSubscript:@"year"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedShortValue];
  }

  else
  {
    v10 = 0;
  }

  a3[1] = v10;
  v11 = [v4 objectForKeyedSubscript:@"work_week"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedShortValue];
  }

  else
  {
    v13 = 0;
  }

  a3[2] = v13;
  v14 = [v4 objectForKeyedSubscript:@"day_of_week"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 unsignedShortValue];
  }

  else
  {
    v16 = 0;
  }

  a3[3] = v16;
  v17 = [v4 objectForKeyedSubscript:@"integrator"];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 unsignedShortValue];
  }

  else
  {
    v19 = 0;
  }

  a3[4] = v19;
  v20 = [v4 objectForKeyedSubscript:@"lens_id"];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 unsignedShortValue];
  }

  else
  {
    v22 = 0;
  }

  a3[5] = v22;
  v23 = [v4 objectForKeyedSubscript:@"serial"];
  if ([v23 length] > 0x20)
  {
    v24 = 3758097090;
  }

  else
  {
    [v23 getBytes:a3 + 6 length:{objc_msgSend(v23, "length")}];
    v24 = 0;
  }

  return v24;
}

uint64_t cvp::CVPInterface::CreateDictFrom_ModuleInfo(uint64_t a1, unsigned __int16 *a2)
{
  v14[7] = *MEMORY[0x277D85DE8];
  v13[0] = @"available";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*a2];
  v14[0] = v3;
  v13[1] = @"year";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2[1]];
  v14[1] = v4;
  v13[2] = @"work_week";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2[2]];
  v14[2] = v5;
  v13[3] = @"day_of_week";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2[3]];
  v14[3] = v6;
  v13[4] = @"integrator";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2[4]];
  v14[4] = v7;
  v13[5] = @"lens_id";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2[5]];
  v14[5] = v8;
  v13[6] = @"serial";
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + 6 length:32];
  v14[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void *cvp::CVPInterface::CreateArrayFrom_ModuleInfo(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_ModuleInfo = cvp::CVPInterface::CreateDictFrom_ModuleInfo(v5, a2);
    [i addObject:DictFrom_ModuleInfo];

    a2 += 22;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_SensorInfo(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"available"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = [v4 objectForKeyedSubscript:@"id"];
  v25 = v8;
  if (v8)
  {
    LODWORD(v8) = [v8 unsignedIntValue];
  }

  *(a3 + 4) = v8;
  v9 = [v4 objectForKeyedSubscript:@"num_test_patterns"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 unsignedIntValue];
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 8) = v11;
  v12 = [v4 objectForKeyedSubscript:@"nvm_size"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 unsignedIntValue];
  }

  else
  {
    v14 = 0;
  }

  *(a3 + 12) = v14;
  v15 = [v4 objectForKeyedSubscript:@"first_pix"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 intValue];
  }

  else
  {
    v17 = 0;
  }

  *(a3 + 16) = v17;
  v18 = [v4 objectForKeyedSubscript:@"serial"];
  v19 = 3758097090;
  if ([v18 length] <= 8)
  {
    [v18 getBytes:a3 + 20 length:{objc_msgSend(v18, "length")}];
    v20 = [v4 objectForKeyedSubscript:@"camera_build"];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 unsignedShortValue];
    }

    else
    {
      v22 = 0;
    }

    *(a3 + 28) = v22;
    v23 = [v4 objectForKeyedSubscript:@"snum"];
    if ([v23 length] <= 0x14)
    {
      [v23 getBytes:a3 + 30 length:{objc_msgSend(v23, "length")}];
      v19 = 0;
    }
  }

  return v19;
}

uint64_t cvp::CVPInterface::CreateDictFrom_SensorInfo(uint64_t a1, unsigned int *a2)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v14[0] = @"available";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a2];
  v15[0] = v3;
  v14[1] = @"id";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[1]];
  v15[1] = v4;
  v14[2] = @"num_test_patterns";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[2]];
  v15[2] = v5;
  v14[3] = @"nvm_size";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[3]];
  v15[3] = v6;
  v14[4] = @"first_pix";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[4]];
  v15[4] = v7;
  v14[5] = @"serial";
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + 5 length:8];
  v15[5] = v8;
  v14[6] = @"camera_build";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 14)];
  v15[6] = v9;
  v14[7] = @"snum";
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + 30 length:20];
  v15[7] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:8];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void *cvp::CVPInterface::CreateArrayFrom_SensorInfo(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_SensorInfo = cvp::CVPInterface::CreateDictFrom_SensorInfo(v5, a2);
    [i addObject:DictFrom_SensorInfo];

    a2 += 13;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_ChannelInfo(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"module_info"];
  v6 = v5;
  if (!v5 || (v7 = cvp::CVPInterface::Dict2Struct_ModuleInfo(v5, v5, a3), !v7))
  {
    v8 = [v4 objectForKeyedSubscript:@"sensor_info"];
    v9 = v8;
    if (!v8 || (v7 = cvp::CVPInterface::Dict2Struct_SensorInfo(v8, v8, a3 + 44), !v7))
    {
      v10 = [v4 objectForKeyedSubscript:@"num_configs"];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 unsignedIntValue];
      }

      else
      {
        v12 = 0;
      }

      *(a3 + 96) = v12;

      v7 = 0;
    }
  }

  return v7;
}

uint64_t cvp::CVPInterface::CreateDictFrom_ChannelInfo(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"module_info";
  DictFrom_ModuleInfo = cvp::CVPInterface::CreateDictFrom_ModuleInfo(a1, a2);
  v10[0] = DictFrom_ModuleInfo;
  v9[1] = @"sensor_info";
  DictFrom_SensorInfo = cvp::CVPInterface::CreateDictFrom_SensorInfo(DictFrom_ModuleInfo, (a2 + 44));
  v10[1] = DictFrom_SensorInfo;
  v9[2] = @"num_configs";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 96)];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *cvp::CVPInterface::CreateArrayFrom_ChannelInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_ChannelInfo = cvp::CVPInterface::CreateDictFrom_ChannelInfo(v5, a2);
    [i addObject:DictFrom_ChannelInfo];

    a2 += 100;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdConfigGet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"num_channels"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 16) = v7;
  v8 = [v4 objectForKeyedSubscript:@"channel_info"];
  if (v8 && *(a3 + 16))
  {
    v9 = 0;
    v10 = a3 + 20;
    while (1)
    {
      v11 = [v8 objectAtIndexedSubscript:v9];
      v12 = cvp::CVPInterface::Dict2Struct_ChannelInfo(v11, v11, v10);

      if (v12)
      {
        break;
      }

      ++v9;
      v10 += 100;
      if (v9 >= *(a3 + 16))
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = [v4 objectForKeyedSubscript:@"timestamp_frequency"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 unsignedIntValue];
    }

    else
    {
      v15 = 0;
    }

    *(a3 + 820) = v15;

    v12 = 0;
  }

  return v12;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdConfigGet(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"num_channels";
  v3 = (a2 + 16);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v11[0] = v4;
  v10[1] = @"channel_info";
  ArrayFrom_ChannelInfo = cvp::CVPInterface::CreateArrayFrom_ChannelInfo(v4, a2 + 20, *v3);
  v11[1] = ArrayFrom_ChannelInfo;
  v10[2] = @"timestamp_frequency";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 820)];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdConfigGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    v7 = cvp::CVPInterface::CreateDictFrom_sCIspCmdConfigGet(v5, a2);
    [i addObject:v7];

    a2 += 824;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_SensorConfig(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"raw_width"];
  v50 = v5;
  if (v5)
  {
    v6 = [v5 unsignedShortValue];
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  v7 = [v4 objectForKeyedSubscript:@"raw_height"];
  v49 = v7;
  if (v7)
  {
    v8 = [v7 unsignedShortValue];
  }

  else
  {
    v8 = 0;
  }

  *(a3 + 2) = v8;
  v9 = [v4 objectForKeyedSubscript:@"readout_width"];
  v48 = v9;
  if (v9)
  {
    v10 = [v9 unsignedShortValue];
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 4) = v10;
  v11 = [v4 objectForKeyedSubscript:@"readout_height"];
  v47 = v11;
  if (v11)
  {
    v12 = [v11 unsignedShortValue];
  }

  else
  {
    v12 = 0;
  }

  *(a3 + 6) = v12;
  v13 = [v4 objectForKeyedSubscript:@"binning_horizontal"];
  v46 = v13;
  if (v13)
  {
    v14 = [v13 intValue];
  }

  else
  {
    v14 = 0;
  }

  *(a3 + 8) = v14;
  v15 = [v4 objectForKeyedSubscript:@"binning_vertical"];
  v45 = v15;
  if (v15)
  {
    v16 = [v15 intValue];
  }

  else
  {
    v16 = 0;
  }

  *(a3 + 12) = v16;
  v17 = [v4 objectForKeyedSubscript:@"max_frame_rate"];
  v44 = v17;
  if (v17)
  {
    v18 = [v17 unsignedIntValue];
  }

  else
  {
    v18 = 0;
  }

  *(a3 + 16) = v18;
  v19 = [v4 objectForKeyedSubscript:@"min_frame_rate"];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 unsignedIntValue];
  }

  else
  {
    v21 = 0;
  }

  *(a3 + 20) = v21;
  v22 = [v4 objectForKeyedSubscript:@"output_format"];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 intValue];
  }

  else
  {
    v24 = 0;
  }

  *(a3 + 24) = v24;
  v25 = [v4 objectForKeyedSubscript:@"pixel_clock"];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 unsignedIntValue];
  }

  else
  {
    v27 = 0;
  }

  *(a3 + 28) = v27;
  v28 = [v4 objectForKeyedSubscript:@"supported_binning_modes"];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 unsignedIntValue];
  }

  else
  {
    v30 = 0;
  }

  *(a3 + 32) = v30;
  v31 = [v4 objectForKeyedSubscript:@"max_integration_time"];
  v32 = v31;
  if (v31)
  {
    v33 = [v31 unsignedIntValue];
  }

  else
  {
    v33 = 0;
  }

  *(a3 + 36) = v33;
  v34 = [v4 objectForKeyedSubscript:@"min_integration_time"];
  v35 = v34;
  if (v34)
  {
    v36 = [v34 unsignedIntValue];
  }

  else
  {
    v36 = 0;
  }

  *(a3 + 40) = v36;
  v37 = [v4 objectForKeyedSubscript:@"max_gain"];
  v38 = v37;
  if (v37)
  {
    v39 = [v37 unsignedShortValue];
  }

  else
  {
    v39 = 0;
  }

  *(a3 + 44) = v39;
  v40 = [v4 objectForKeyedSubscript:@"black_level"];
  v41 = v40;
  if (v40)
  {
    v42 = [v40 shortValue];
  }

  else
  {
    v42 = 0;
  }

  *(a3 + 46) = v42;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_SensorConfig(uint64_t a1, unsigned __int16 *a2)
{
  v22[15] = *MEMORY[0x277D85DE8];
  v21[0] = @"raw_width";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*a2];
  v22[0] = v20;
  v21[1] = @"raw_height";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2[1]];
  v22[1] = v19;
  v21[2] = @"readout_width";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2[2]];
  v22[2] = v18;
  v21[3] = @"readout_height";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2[3]];
  v22[3] = v17;
  v21[4] = @"binning_horizontal";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 2)];
  v22[4] = v16;
  v21[5] = @"binning_vertical";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 3)];
  v22[5] = v15;
  v21[6] = @"max_frame_rate";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 4)];
  v22[6] = v3;
  v21[7] = @"min_frame_rate";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 5)];
  v22[7] = v4;
  v21[8] = @"output_format";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 6)];
  v22[8] = v5;
  v21[9] = @"pixel_clock";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 7)];
  v22[9] = v6;
  v21[10] = @"supported_binning_modes";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 8)];
  v22[10] = v7;
  v21[11] = @"max_integration_time";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 9)];
  v22[11] = v8;
  v21[12] = @"min_integration_time";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 10)];
  v22[12] = v9;
  v21[13] = @"max_gain";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2[22]];
  v22[13] = v10;
  v21[14] = @"black_level";
  v11 = [MEMORY[0x277CCABB0] numberWithShort:a2[23]];
  v22[14] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:15];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void *cvp::CVPInterface::CreateArrayFrom_SensorConfig(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_SensorConfig = cvp::CVPInterface::CreateDictFrom_SensorConfig(v5, a2);
    [i addObject:DictFrom_SensorConfig];

    a2 += 24;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdCameraConfigsGet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"num_configs"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 16) = v7;
  v8 = [v4 objectForKeyedSubscript:@"configs"];
  if (v8 && *(a3 + 16))
  {
    v9 = 0;
    v10 = a3 + 20;
    do
    {
      v11 = [v8 objectAtIndexedSubscript:v9];
      cvp::CVPInterface::Dict2Struct_SensorConfig(v11, v11, v10);

      ++v9;
      v10 += 48;
    }

    while (v9 < *(a3 + 16));
  }

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdCameraConfigsGet(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"num_configs";
  v3 = (a2 + 16);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v9[1] = @"configs";
  v10[0] = v4;
  ArrayFrom_SensorConfig = cvp::CVPInterface::CreateArrayFrom_SensorConfig(v4, (a2 + 20), *v3);
  v10[1] = ArrayFrom_SensorConfig;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdCameraConfigsGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    v7 = cvp::CVPInterface::CreateDictFrom_sCIspCmdCameraConfigsGet(v5, a2);
    [i addObject:v7];

    a2 += 404;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdCameraConfigSelect(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"index"];
  v5 = v4;
  if (v4)
  {
    LODWORD(v4) = [v4 unsignedIntValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdCameraConfigSelect(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"index";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdCameraConfigSelect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdCameraConfigSelect = cvp::CVPInterface::CreateDictFrom_sCIspCmdCameraConfigSelect(v5, a2);
    [i addObject:DictFrom_sCIspCmdCameraConfigSelect];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_RasterBufferConfig(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"width"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = [v4 objectForKeyedSubscript:@"height"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  a3[1] = v10;
  v11 = [v4 objectForKeyedSubscript:@"format"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedIntValue];
  }

  else
  {
    v13 = 0;
  }

  a3[2] = v13;
  v14 = [v4 objectForKeyedSubscript:@"stride"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 unsignedIntValue];
  }

  else
  {
    v16 = 0;
  }

  a3[3] = v16;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_RasterBufferConfig(uint64_t a1, unsigned int *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"width";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a2];
  v11[0] = v3;
  v10[1] = @"height";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[1]];
  v11[1] = v4;
  v10[2] = @"format";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[2]];
  v11[2] = v5;
  v10[3] = @"stride";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[3]];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void *cvp::CVPInterface::CreateArrayFrom_RasterBufferConfig(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_RasterBufferConfig = cvp::CVPInterface::CreateDictFrom_RasterBufferConfig(v5, a2);
    [i addObject:DictFrom_RasterBufferConfig];

    a2 += 4;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_MetadataBufferConfig(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 objectForKeyedSubscript:@"size"];
  v5 = v4;
  if (v4)
  {
    v4 = [v4 unsignedLongValue];
  }

  *a3 = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_MetadataBufferConfig(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"size";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*a2];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_MetadataBufferConfig(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_MetadataBufferConfig = cvp::CVPInterface::CreateDictFrom_MetadataBufferConfig(v5, a2);
    [i addObject:DictFrom_MetadataBufferConfig];

    ++a2;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_BufferPoolInfo(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"output"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = [v4 objectForKeyedSubscript:@"buffer_type"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 intValue];
  }

  else
  {
    v10 = 0;
  }

  a3[1] = v10;
  v11 = [v4 objectForKeyedSubscript:@"raster_buffer_config"];
  v12 = v11;
  if (v11)
  {
    cvp::CVPInterface::Dict2Struct_RasterBufferConfig(v11, v11, a3 + 2);
  }

  v13 = [v4 objectForKeyedSubscript:@"metadata_buffer_config"];
  v14 = v13;
  if (v13)
  {
    cvp::CVPInterface::Dict2Struct_MetadataBufferConfig(v13, v13, a3 + 1);
  }

  v15 = [v4 objectForKeyedSubscript:@"alignment"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 unsignedIntValue];
  }

  else
  {
    v17 = 0;
  }

  a3[6] = v17;
  v18 = [v4 objectForKeyedSubscript:@"min_buffer_count"];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 unsignedIntValue];
  }

  else
  {
    v20 = 0;
  }

  a3[7] = v20;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_BufferPoolInfo(uint64_t a1, unsigned int *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"output";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a2];
  v13[0] = v3;
  v12[1] = @"buffer_type";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[1]];
  v13[1] = v4;
  v12[2] = @"raster_buffer_config";
  DictFrom_RasterBufferConfig = cvp::CVPInterface::CreateDictFrom_RasterBufferConfig(v4, a2 + 2);
  v13[2] = DictFrom_RasterBufferConfig;
  v12[3] = @"metadata_buffer_config";
  DictFrom_MetadataBufferConfig = cvp::CVPInterface::CreateDictFrom_MetadataBufferConfig(DictFrom_RasterBufferConfig, a2 + 1);
  v13[3] = DictFrom_MetadataBufferConfig;
  v12[4] = @"alignment";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[6]];
  v13[4] = v7;
  v12[5] = @"min_buffer_count";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[7]];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *cvp::CVPInterface::CreateArrayFrom_BufferPoolInfo(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_BufferPoolInfo = cvp::CVPInterface::CreateDictFrom_BufferPoolInfo(v5, a2);
    [i addObject:DictFrom_BufferPoolInfo];

    a2 += 8;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdBufferPoolInfoGet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"pool_info"];
  if (v4)
  {
    v5 = 0;
    v6 = (a3 + 16);
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v5];
      cvp::CVPInterface::Dict2Struct_BufferPoolInfo(v7, v7, v6);

      ++v5;
      v6 += 8;
    }

    while (v5 != 3);
  }

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdBufferPoolInfoGet(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"pool_info";
  ArrayFrom_BufferPoolInfo = cvp::CVPInterface::CreateArrayFrom_BufferPoolInfo(a1, (a2 + 16), 3);
  v7[0] = ArrayFrom_BufferPoolInfo;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdBufferPoolInfoGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    v7 = cvp::CVPInterface::CreateDictFrom_sCIspCmdBufferPoolInfoGet(v5, a2);
    [i addObject:v7];

    a2 += 112;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_AllocatedBufferPoolInfo(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"output"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = [v4 objectForKeyedSubscript:@"id"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  a3[1] = v10;
  v11 = [v4 objectForKeyedSubscript:@"num_buffers"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedIntValue];
  }

  else
  {
    v13 = 0;
  }

  a3[2] = v13;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_AllocatedBufferPoolInfo(uint64_t a1, unsigned int *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"output";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a2];
  v10[0] = v3;
  v9[1] = @"id";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[1]];
  v10[1] = v4;
  v9[2] = @"num_buffers";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[2]];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *cvp::CVPInterface::CreateArrayFrom_AllocatedBufferPoolInfo(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_AllocatedBufferPoolInfo = cvp::CVPInterface::CreateDictFrom_AllocatedBufferPoolInfo(v5, a2);
    [i addObject:DictFrom_AllocatedBufferPoolInfo];

    a2 += 3;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdBufferPoolInfoSet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"count"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 16) = v7;
  v8 = [v4 objectForKeyedSubscript:@"pool_info"];
  if (v8 && *(a3 + 16))
  {
    v9 = 0;
    v10 = (a3 + 20);
    do
    {
      v11 = [v8 objectAtIndexedSubscript:v9];
      cvp::CVPInterface::Dict2Struct_AllocatedBufferPoolInfo(v11, v11, v10);

      ++v9;
      v10 += 3;
    }

    while (v9 < *(a3 + 16));
  }

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdBufferPoolInfoSet(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"count";
  v3 = (a2 + 16);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v9[1] = @"pool_info";
  v10[0] = v4;
  ArrayFrom_AllocatedBufferPoolInfo = cvp::CVPInterface::CreateArrayFrom_AllocatedBufferPoolInfo(v4, (a2 + 20), *v3);
  v10[1] = ArrayFrom_AllocatedBufferPoolInfo;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdBufferPoolInfoSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdBufferPoolInfoSet = cvp::CVPInterface::CreateDictFrom_sCIspCmdBufferPoolInfoSet(v5, a2);
    [i addObject:DictFrom_sCIspCmdBufferPoolInfoSet];

    a2 += 56;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdRpcEnable(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"enable"];
  v5 = v4;
  if (v4)
  {
    LOBYTE(v4) = [v4 BOOLValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdRpcEnable(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"enable";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdRpcEnable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdRpcEnable = cvp::CVPInterface::CreateDictFrom_sCIspCmdRpcEnable(v5, a2);
    [i addObject:DictFrom_sCIspCmdRpcEnable];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdAEFpsSetting(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"maxFps"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = [v4 objectForKeyedSubscript:@"minFps"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  a3[1] = v10;
  v11 = [v4 objectForKeyedSubscript:@"maxExpTimeInMicroseconds"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedIntValue];
  }

  else
  {
    v13 = 0;
  }

  a3[2] = v13;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdAEFpsSetting(uint64_t a1, unsigned int *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"maxFps";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a2];
  v10[0] = v3;
  v9[1] = @"minFps";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[1]];
  v10[1] = v4;
  v9[2] = @"maxExpTimeInMicroseconds";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[2]];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdAEFpsSetting(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdAEFpsSetting = cvp::CVPInterface::CreateDictFrom_sCIspCmdAEFpsSetting(v5, a2);
    [i addObject:DictFrom_sCIspCmdAEFpsSetting];

    a2 += 3;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChAEFpsSetting(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"chIdx"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = [v4 objectForKeyedSubscript:@"setting"];
  v9 = v8;
  if (v8)
  {
    cvp::CVPInterface::Dict2Struct_sCIspCmdAEFpsSetting(v8, v8, a3 + 1);
  }

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEFpsSetting(uint64_t a1, unsigned int *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"chIdx";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a2];
  v8[1] = @"setting";
  v9[0] = v3;
  DictFrom_sCIspCmdAEFpsSetting = cvp::CVPInterface::CreateDictFrom_sCIspCmdAEFpsSetting(v3, a2 + 1);
  v9[1] = DictFrom_sCIspCmdAEFpsSetting;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAEFpsSetting(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdChAEFpsSetting = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEFpsSetting(v5, a2);
    [i addObject:DictFrom_sCIspCmdChAEFpsSetting];

    a2 += 4;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChAEFpsUpdate(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"numOfCh"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 16) = v7;
  v8 = [v4 objectForKeyedSubscript:@"chCtrl"];
  if (v8 && *(a3 + 16))
  {
    v9 = 0;
    v10 = (a3 + 20);
    do
    {
      v11 = [v8 objectAtIndexedSubscript:v9];
      cvp::CVPInterface::Dict2Struct_sCIspCmdChAEFpsSetting(v11, v11, v10);

      ++v9;
      v10 += 4;
    }

    while (v9 < *(a3 + 16));
  }

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEFpsUpdate(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"numOfCh";
  v3 = (a2 + 16);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v9[1] = @"chCtrl";
  v10[0] = v4;
  ArrayFrom_sCIspCmdChAEFpsSetting = cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAEFpsSetting(v4, (a2 + 20), *v3);
  v10[1] = ArrayFrom_sCIspCmdChAEFpsSetting;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAEFpsUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdChAEFpsUpdate = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEFpsUpdate(v5, a2);
    [i addObject:DictFrom_sCIspCmdChAEFpsUpdate];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChAEManualControl(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"exposoureTimeUs"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 16) = v7;
  v8 = [v4 objectForKeyedSubscript:@"sensorAnalogGain"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedShortValue];
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 20) = v10;
  v11 = [v4 objectForKeyedSubscript:@"ispDigitalGain"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedShortValue];
  }

  else
  {
    v13 = 0;
  }

  *(a3 + 22) = v13;
  v14 = [v4 objectForKeyedSubscript:@"sensorDigitalGain"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 unsignedShortValue];
  }

  else
  {
    v16 = 0;
  }

  *(a3 + 24) = v16;
  v17 = [v4 objectForKeyedSubscript:@"tag"];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 unsignedIntValue];
  }

  else
  {
    v19 = 0;
  }

  *(a3 + 28) = v19;
  v20 = [v4 objectForKeyedSubscript:@"frameRate"];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 unsignedIntValue];
  }

  else
  {
    v22 = 0;
  }

  *(a3 + 32) = v22;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEManualControl(uint64_t a1, uint64_t a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"exposoureTimeUs";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v13[0] = v3;
  v12[1] = @"sensorAnalogGain";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 20)];
  v13[1] = v4;
  v12[2] = @"ispDigitalGain";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 22)];
  v13[2] = v5;
  v12[3] = @"sensorDigitalGain";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 24)];
  v13[3] = v6;
  v12[4] = @"tag";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 28)];
  v13[4] = v7;
  v12[5] = @"frameRate";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 32)];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAEManualControl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdChAEManualControl = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEManualControl(v5, a2);
    [i addObject:DictFrom_sCIspCmdChAEManualControl];

    a2 += 36;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChAETargetSet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"target"];
  v5 = v4;
  if (v4)
  {
    LODWORD(v4) = [v4 unsignedIntValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChAETargetSet(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"target";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAETargetSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdChAETargetSet = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAETargetSet(v5, a2);
    [i addObject:DictFrom_sCIspCmdChAETargetSet];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChAETargetGet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"target"];
  v5 = v4;
  if (v4)
  {
    LODWORD(v4) = [v4 unsignedIntValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChAETargetGet(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"target";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAETargetGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    v7 = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAETargetGet(v5, a2);
    [i addObject:v7];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChAEEnable(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"enable"];
  v5 = v4;
  if (v4)
  {
    LOBYTE(v4) = [v4 BOOLValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEEnable(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"enable";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAEEnable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdChAEEnable = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEEnable(v5, a2);
    [i addObject:DictFrom_sCIspCmdChAEEnable];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChAEStatusGet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"aeStatus"];
  v5 = v4;
  if (v4)
  {
    LODWORD(v4) = [v4 intValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEStatusGet(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"aeStatus";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAEStatusGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    v7 = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEStatusGet(v5, a2);
    [i addObject:v7];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChAWBEnable(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"enable"];
  v5 = v4;
  if (v4)
  {
    LOBYTE(v4) = [v4 BOOLValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChAWBEnable(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"enable";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAWBEnable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdChAWBEnable = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAWBEnable(v5, a2);
    [i addObject:DictFrom_sCIspCmdChAWBEnable];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChAWBStatusGet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"stable"];
  v5 = v4;
  if (v4)
  {
    LOBYTE(v4) = [v4 BOOLValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChAWBStatusGet(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"stable";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChAWBStatusGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    v7 = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAWBStatusGet(v5, a2);
    [i addObject:v7];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChSensorTemperatureGet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"temperature"];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
  }

  else
  {
    v6 = 0;
  }

  *(a3 + 16) = v6;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChSensorTemperatureGet(double a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"temperature";
  LODWORD(a1) = *(a3 + 16);
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChSensorTemperatureGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    v8 = cvp::CVPInterface::CreateDictFrom_sCIspCmdChSensorTemperatureGet(v6, v5, a2);
    [i addObject:v8];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdI2CRead(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"bus"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  a3[4] = v7;
  v8 = [v4 objectForKeyedSubscript:@"address"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  a3[5] = v10;
  v11 = [v4 objectForKeyedSubscript:@"subaddress"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedIntValue];
  }

  else
  {
    v13 = 0;
  }

  a3[6] = v13;
  v14 = [v4 objectForKeyedSubscript:@"subaddressLen"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 unsignedIntValue];
  }

  else
  {
    v16 = 0;
  }

  a3[7] = v16;
  v17 = [v4 objectForKeyedSubscript:@"data"];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 unsignedIntValue];
  }

  else
  {
    v19 = 0;
  }

  a3[8] = v19;
  v20 = [v4 objectForKeyedSubscript:@"dataLen"];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 unsignedIntValue];
  }

  else
  {
    v22 = 0;
  }

  a3[9] = v22;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdI2CRead(uint64_t a1, unsigned int *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"bus";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[4]];
  v13[0] = v3;
  v12[1] = @"address";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[5]];
  v13[1] = v4;
  v12[2] = @"subaddress";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[6]];
  v13[2] = v5;
  v12[3] = @"subaddressLen";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[7]];
  v13[3] = v6;
  v12[4] = @"data";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[8]];
  v13[4] = v7;
  v12[5] = @"dataLen";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[9]];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdI2CRead(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdI2CRead(v5, a2);
    [i addObject:DictFrom_sCIspCmdI2CRead];

    a2 += 10;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdI2CWrite(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"bus"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  a3[4] = v7;
  v8 = [v4 objectForKeyedSubscript:@"address"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  a3[5] = v10;
  v11 = [v4 objectForKeyedSubscript:@"subaddress"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedIntValue];
  }

  else
  {
    v13 = 0;
  }

  a3[6] = v13;
  v14 = [v4 objectForKeyedSubscript:@"subaddressLen"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 unsignedIntValue];
  }

  else
  {
    v16 = 0;
  }

  a3[7] = v16;
  v17 = [v4 objectForKeyedSubscript:@"data"];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 unsignedIntValue];
  }

  else
  {
    v19 = 0;
  }

  a3[8] = v19;
  v20 = [v4 objectForKeyedSubscript:@"dataLen"];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 unsignedIntValue];
  }

  else
  {
    v22 = 0;
  }

  a3[9] = v22;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdI2CWrite(uint64_t a1, unsigned int *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"bus";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[4]];
  v13[0] = v3;
  v12[1] = @"address";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[5]];
  v13[1] = v4;
  v12[2] = @"subaddress";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[6]];
  v13[2] = v5;
  v12[3] = @"subaddressLen";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[7]];
  v13[3] = v6;
  v12[4] = @"data";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[8]];
  v13[4] = v7;
  v12[5] = @"dataLen";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[9]];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdI2CWrite(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdI2CWrite = cvp::CVPInterface::CreateDictFrom_sCIspCmdI2CWrite(v5, a2);
    [i addObject:DictFrom_sCIspCmdI2CWrite];

    a2 += 10;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChDPCEnable(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"enabled"];
  v5 = v4;
  if (v4)
  {
    LOBYTE(v4) = [v4 BOOLValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChDPCEnable(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"enabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChDPCEnable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdChDPCEnable = cvp::CVPInterface::CreateDictFrom_sCIspCmdChDPCEnable(v5, a2);
    [i addObject:DictFrom_sCIspCmdChDPCEnable];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdChSensorNVMGet(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"offset"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 16) = v7;
  v8 = [v4 objectForKeyedSubscript:@"size"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 20) = v10;
  v11 = [v4 objectForKeyedSubscript:@"nvmData"];
  if ([v11 length])
  {
    v12 = 3758097090;
  }

  else
  {
    [v11 getBytes:a3 + 24 length:{objc_msgSend(v11, "length")}];
    v12 = 0;
  }

  return v12;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdChSensorNVMGet(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"offset";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v10[0] = v3;
  v9[1] = @"size";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 20)];
  v10[1] = v4;
  v9[2] = @"nvmData";
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + 24 length:0];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdChSensorNVMGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdChSensorNVMGet = cvp::CVPInterface::CreateDictFrom_sCIspCmdChSensorNVMGet(v5, a2);
    [i addObject:DictFrom_sCIspCmdChSensorNVMGet];

    a2 += 24;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdOutputEnable(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"enable"];
  v5 = v4;
  if (v4)
  {
    LOBYTE(v4) = [v4 BOOLValue];
  }

  *(a3 + 16) = v4;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdOutputEnable(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"enable";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a2 + 16)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdOutputEnable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdOutputEnable = cvp::CVPInterface::CreateDictFrom_sCIspCmdOutputEnable(v5, a2);
    [i addObject:DictFrom_sCIspCmdOutputEnable];

    a2 += 20;
  }

  return i;
}

uint64_t cvp::CVPInterface::Dict2Struct_sCIspCmdOutputConfigSet(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"width"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  a3[4] = v7;
  v8 = [v4 objectForKeyedSubscript:@"height"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  a3[5] = v10;
  v11 = [v4 objectForKeyedSubscript:@"format"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 intValue];
  }

  else
  {
    v13 = 0;
  }

  a3[6] = v13;

  return 0;
}

uint64_t cvp::CVPInterface::CreateDictFrom_sCIspCmdOutputConfigSet(uint64_t a1, unsigned int *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"width";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[4]];
  v10[0] = v3;
  v9[1] = @"height";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[5]];
  v10[1] = v4;
  v9[2] = @"format";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[6]];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *cvp::CVPInterface::CreateArrayFrom_sCIspCmdOutputConfigSet(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = objc_opt_new();
  for (i = v5; a3; --a3)
  {
    DictFrom_sCIspCmdOutputConfigSet = cvp::CVPInterface::CreateDictFrom_sCIspCmdOutputConfigSet(v5, a2);
    [i addObject:DictFrom_sCIspCmdOutputConfigSet];

    a2 += 7;
  }

  return i;
}

uint64_t cvp::CVPInterface::sendCommandDict(cvp::CVPInterface *this, const __CFDictionary *a2, const __CFDictionary **a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:@"id"];
  v7 = v6;
  if (!v6)
  {
    v10 = _aciLogGeneral();
    v12 = 3758097090;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v38[0]) = 0;
      _os_log_impl(&dword_23C3E4000, v10, OS_LOG_TYPE_ERROR, "[ACIVERIFY]command id required", v38, 2u);
    }

    goto LABEL_96;
  }

  v8 = [v6 intValue];
  v9 = [(__CFDictionary *)v5 objectForKeyedSubscript:@"channel_mask"];
  v10 = v9;
  if (v9)
  {
    v9 = [v9 unsignedIntValue];
    v11 = v9;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v11 = 0;
  if (a3)
  {
LABEL_4:
    *a3 = MEMORY[0x277CBEC10];
  }

LABEL_5:
  v12 = 3758097090;
  if (v8 <= 10003)
  {
    if (v8 > 4)
    {
      if (v8 <= 9999)
      {
        if (v8 == 5)
        {
          *&v39 = 0;
          memset(v38, 0, sizeof(v38));
          DWORD1(v38[0]) = 5;
          DWORD2(v38[0]) = v11;
          cvp::CVPInterface::Dict2Struct_sCIspCmdI2CRead(v9, v5, v38);
          v32 = cvp::CVPInterface::sendCommand(this, v38, 0x28uLL);
          v12 = v32;
          if (!v32)
          {
            if (a3)
            {
              DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdI2CRead(v32, v38);
              goto LABEL_95;
            }

            goto LABEL_96;
          }
        }

        else
        {
          if (v8 != 6)
          {
            goto LABEL_96;
          }

          *&v39 = 0;
          memset(v38, 0, sizeof(v38));
          DWORD1(v38[0]) = 6;
          DWORD2(v38[0]) = v11;
          cvp::CVPInterface::Dict2Struct_sCIspCmdI2CWrite(v9, v5, v38);
          v21 = cvp::CVPInterface::sendCommand(this, v38, 0x28uLL);
          v12 = v21;
          if (!v21)
          {
            if (a3)
            {
              DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdI2CWrite(v21, v38);
              goto LABEL_95;
            }

            goto LABEL_96;
          }
        }
      }

      else
      {
        switch(v8)
        {
          case 10000:
            *&v38[0] = 0x271000000000;
            *(&v38[0] + 1) = v11;
            v12 = cvp::CVPInterface::sendCommand(this, v38, 0x10uLL);
            if (!v12)
            {
              goto LABEL_96;
            }

            break;
          case 10001:
            *&v38[0] = 0x271100000000;
            *(&v38[0] + 1) = v11;
            v12 = cvp::CVPInterface::sendCommand(this, v38, 0x10uLL);
            if (!v12)
            {
              goto LABEL_96;
            }

            break;
          case 10003:
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            memset(v38, 0, sizeof(v38));
            DWORD1(v38[0]) = 10003;
            DWORD2(v38[0]) = v11;
            cvp::CVPInterface::Dict2Struct_sCIspCmdBufferPoolInfoGet(v9, v5, v38);
            v18 = cvp::CVPInterface::sendCommand(this, v38, 0x70uLL);
            v12 = v18;
            if (!v18)
            {
              if (a3)
              {
                DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdBufferPoolInfoGet(v18, v38);
                goto LABEL_95;
              }

              goto LABEL_96;
            }

            break;
          default:
            goto LABEL_96;
        }
      }

      goto LABEL_91;
    }

    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_96;
        }

        *&v38[0] = 0x100000000;
        *(&v38[0] + 1) = v11;
        v12 = cvp::CVPInterface::sendCommand(this, v38, 0x10uLL);
        if (!v12)
        {
          goto LABEL_96;
        }
      }

      else
      {
        *&v38[0] = 0;
        *(&v38[0] + 1) = v11;
        v12 = cvp::CVPInterface::sendCommand(this, v38, 0x10uLL);
        if (!v12)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_91;
    }

    if (v8 == 2)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      memset(v38, 0, sizeof(v38));
      DWORD1(v38[0]) = 2;
      DWORD2(v38[0]) = v11;
      v12 = cvp::CVPInterface::Dict2Struct_sCIspCmdBuildInfo(v9, v5, v38);
      if (v12)
      {
        v35 = _aciLogGeneral();
        cvp::CVPInterface::sendCommandDict(v35);
        goto LABEL_96;
      }

      v24 = cvp::CVPInterface::sendCommand(this, v38, 0xB0uLL);
      v12 = v24;
      if (v24)
      {
        goto LABEL_91;
      }

      if (!a3)
      {
        goto LABEL_99;
      }

      DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdBuildInfo(v24, v38);
    }

    else
    {
      if (v8 == 3)
      {
        *&v38[0] = 0x300000000;
        *(&v38[0] + 1) = v11;
        v12 = cvp::CVPInterface::sendCommand(this, v38, 0x10uLL);
        if (!v12)
        {
          goto LABEL_96;
        }

        goto LABEL_91;
      }

      bzero(v38, 0x338uLL);
      DWORD1(v38[0]) = 4;
      DWORD2(v38[0]) = v11;
      v12 = cvp::CVPInterface::Dict2Struct_sCIspCmdConfigGet(v15, v5, v38);
      if (v12)
      {
        v37 = _aciLogGeneral();
        cvp::CVPInterface::sendCommandDict(v37);
        goto LABEL_96;
      }

      v16 = cvp::CVPInterface::sendCommand(this, v38, 0x338uLL);
      v12 = v16;
      if (v16)
      {
        goto LABEL_91;
      }

      if (!a3)
      {
        goto LABEL_99;
      }

      DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdConfigGet(v16, v38);
    }

LABEL_76:
    v12 = 0;
    goto LABEL_95;
  }

  if (v8 > 20002)
  {
    if (v8 <= 39999)
    {
      switch(v8)
      {
        case 20003:
          *&v38[0] = 0x4E2300000000;
          LODWORD(v38[1]) = 0;
          *(&v38[0] + 1) = v11;
          cvp::CVPInterface::Dict2Struct_sCIspCmdChAETargetGet(v9, v5, v38);
          v25 = cvp::CVPInterface::sendCommand(this, v38, 0x14uLL);
          v12 = v25;
          if (!v25)
          {
            if (a3)
            {
              DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAETargetGet(v25, v38);
              goto LABEL_95;
            }

            goto LABEL_96;
          }

          break;
        case 20004:
          *&v38[0] = 0x4E2400000000;
          *(&v38[0] + 1) = v11;
          LOBYTE(v38[1]) = 0;
          cvp::CVPInterface::Dict2Struct_sCIspCmdChAEEnable(v9, v5, v38);
          v28 = cvp::CVPInterface::sendCommand(this, v38, 0x14uLL);
          v12 = v28;
          if (!v28)
          {
            if (a3)
            {
              DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEEnable(v28, v38);
              goto LABEL_95;
            }

            goto LABEL_96;
          }

          break;
        case 20005:
          *&v38[0] = 0x4E2500000000;
          LODWORD(v38[1]) = 0;
          *(&v38[0] + 1) = v11;
          cvp::CVPInterface::Dict2Struct_sCIspCmdChAEStatusGet(v9, v5, v38);
          v13 = cvp::CVPInterface::sendCommand(this, v38, 0x14uLL);
          v12 = v13;
          if (!v13)
          {
            if (a3)
            {
              DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEStatusGet(v13, v38);
LABEL_95:
              *a3 = DictFrom_sCIspCmdI2CRead;
              goto LABEL_96;
            }

            goto LABEL_96;
          }

          break;
        default:
          goto LABEL_96;
      }

LABEL_91:
      v31 = _aciLogGeneral();
      cvp::CVPInterface::sendCommandDict(v31);
      goto LABEL_96;
    }

    if (v8 != 40000)
    {
      if (v8 == 40001)
      {
        *&v38[0] = 0x9C4100000000;
        DWORD2(v38[0]) = v11;
        *(v38 + 12) = 0;
        cvp::CVPInterface::Dict2Struct_sCIspCmdChSensorTemperatureGet(v9, v5, v38);
        v29 = cvp::CVPInterface::sendCommand(this, v38, 0x14uLL);
        v12 = v29;
        if (!v29)
        {
          if (a3)
          {
            DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdChSensorTemperatureGet(v30, v29, v38);
            goto LABEL_95;
          }

          goto LABEL_96;
        }
      }

      else
      {
        if (v8 != 50000)
        {
          goto LABEL_96;
        }

        *&v38[0] = 0xC35000000000;
        *(&v38[0] + 1) = v11;
        LOBYTE(v38[1]) = 0;
        cvp::CVPInterface::Dict2Struct_sCIspCmdChDPCEnable(v9, v5, v38);
        v19 = cvp::CVPInterface::sendCommand(this, v38, 0x14uLL);
        v12 = v19;
        if (!v19)
        {
          if (a3)
          {
            DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdChDPCEnable(v19, v38);
            goto LABEL_95;
          }

          goto LABEL_96;
        }
      }

      goto LABEL_91;
    }

    *&v38[0] = 0x9C4000000000;
    *(&v38[0] + 1) = v11;
    *&v38[1] = 0;
    v12 = cvp::CVPInterface::Dict2Struct_sCIspCmdChSensorNVMGet(v9, v5, v38);
    if (v12)
    {
      v36 = _aciLogGeneral();
      cvp::CVPInterface::sendCommandDict(v36);
      goto LABEL_96;
    }

    v26 = cvp::CVPInterface::sendCommand(this, v38, 0x18uLL);
    v12 = v26;
    if (v26)
    {
      goto LABEL_91;
    }

    if (a3)
    {
      DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdChSensorNVMGet(v26, v38);
      goto LABEL_76;
    }

LABEL_99:
    v12 = 0;
    goto LABEL_96;
  }

  if (v8 <= 10005)
  {
    if (v8 == 10004)
    {
      *&v40 = 0;
      v39 = 0u;
      memset(v38, 0, sizeof(v38));
      DWORD1(v38[0]) = 10004;
      DWORD2(v38[0]) = v11;
      cvp::CVPInterface::Dict2Struct_sCIspCmdBufferPoolInfoSet(v9, v5, v38);
      v27 = cvp::CVPInterface::sendCommand(this, v38, 0x38uLL);
      v12 = v27;
      if (!v27)
      {
        if (a3)
        {
          DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdBufferPoolInfoSet(v27, v38);
          goto LABEL_95;
        }

        goto LABEL_96;
      }
    }

    else
    {
      *&v38[0] = 0x271500000000;
      DWORD2(v38[0]) = v11;
      *(v38 + 12) = 0uLL;
      cvp::CVPInterface::Dict2Struct_sCIspCmdOutputConfigSet(v9, v5, v38);
      v20 = cvp::CVPInterface::sendCommand(this, v38, 0x1CuLL);
      v12 = v20;
      if (!v20)
      {
        if (a3)
        {
          DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdOutputConfigSet(v20, v38);
          goto LABEL_95;
        }

        goto LABEL_96;
      }
    }

    goto LABEL_91;
  }

  if (v8 == 10006)
  {
    *&v38[0] = 0x271600000000;
    *(&v38[0] + 1) = v11;
    LOBYTE(v38[1]) = 0;
    cvp::CVPInterface::Dict2Struct_sCIspCmdOutputEnable(v9, v5, v38);
    v22 = cvp::CVPInterface::sendCommand(this, v38, 0x14uLL);
    v12 = v22;
    if (!v22)
    {
      if (a3)
      {
        DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdOutputEnable(v22, v38);
        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_91;
  }

  if (v8 == 20000)
  {
    *&v38[0] = 0x4E2000000000;
    LODWORD(v38[1]) = 0;
    *(&v38[0] + 1) = v11;
    cvp::CVPInterface::Dict2Struct_sCIspCmdChAEFpsUpdate(v9, v5, v38);
    v23 = cvp::CVPInterface::sendCommand(this, v38, 0x14uLL);
    v12 = v23;
    if (!v23)
    {
      if (a3)
      {
        DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAEFpsUpdate(v23, v38);
        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_91;
  }

  if (v8 != 20002)
  {
    goto LABEL_96;
  }

  *&v38[0] = 0x4E2200000000;
  LODWORD(v38[1]) = 0;
  *(&v38[0] + 1) = v11;
  cvp::CVPInterface::Dict2Struct_sCIspCmdChAETargetSet(v9, v5, v38);
  v17 = cvp::CVPInterface::sendCommand(this, v38, 0x14uLL);
  v12 = v17;
  if (v17)
  {
    goto LABEL_91;
  }

  if (a3)
  {
    DictFrom_sCIspCmdI2CRead = cvp::CVPInterface::CreateDictFrom_sCIspCmdChAETargetSet(v17, v38);
    goto LABEL_95;
  }

LABEL_96:

  v33 = *MEMORY[0x277D85DE8];
  return v12;
}

void cvp::CVPInterface::~CVPInterface(cvp::CVPInterface *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    ACIUKextConnection::~ACIUKextConnection(v1);
    MEMORY[0x23EECFB00]();
  }
}

uint64_t cvp::CVPInterface::test(cvp::CVPInterface *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = xmmword_23C3F1E70;
  v7[1] = unk_23C3F1E80;
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v7, @"a"}];
  v5[1] = @"b";
  v6[0] = v1;
  v6[1] = @"bbb";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  CFShow(v2);
  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

void ACIUKextConnection::ACIUKextConnection(ACIUKextConnection *this, const char *name)
{
  *this = 0;
  v3 = IOServiceMatching(name);
  if (v3)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v3);
    if (MatchingService)
    {
      v5 = MatchingService;
      if (IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, this))
      {
        ACIUKextConnection::ACIUKextConnection();
      }

      IOObjectRelease(v5);
    }
  }
}

void ACIUKextConnection::~ACIUKextConnection(io_connect_t *this)
{
  v1 = *this;
  if (v1)
  {
    if (IOServiceClose(v1))
    {
      __assert_rtn("~ACIUKextConnection", "ACIUKextConnection.h", 33, "kernResult == kIOReturnSuccess");
    }
  }
}

BOOL OUTLINED_FUNCTION_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t aci::cvp::CFObject<aci::cvp::Device>::create<>()
{
  if (aci::cvp::CFObject<aci::cvp::Device>::alloc(24))
  {
    operator new();
  }

  return 0;
}

void aci::cvp::CFObject<aci::cvp::Device>::stuff<>()
{
  operator new();
}

{
  OUTLINED_FUNCTION_0_0(&aci::cvp::CFObject<aci::cvp::Device>::getTypeID(void)::once);
}

uint64_t ACICVPDeviceDestroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    aci::cvp::Device::~Device(v1);
    MEMORY[0x23EECFB00]();
  }

  return 0;
}

uint64_t ACICVPDeviceGetTypeID()
{
  if (aci::cvp::CFObject<aci::cvp::Device>::getTypeID(void)::once != -1)
  {
    aci::cvp::CFObject<aci::cvp::Device>::stuff<>();
  }

  return aci::cvp::CFObject<aci::cvp::Device>::_typeId;
}

uint64_t aci::cvp::CFObject<aci::cvp::Device>::alloc(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (aci::cvp::CFObject<aci::cvp::Device>::getTypeID(void)::once != -1)
  {
    aci::cvp::CFObject<aci::cvp::Device>::stuff<>();
  }

  v3 = aci::cvp::CFObject<aci::cvp::Device>::_typeId;

  return MEMORY[0x282110370](v2, v3, a1 - 16, 0);
}

uint64_t aci::cvp::CFObject<aci::cvp::Device>::getTypeID(void)::{lambda(void *)#1}::__invoke()
{
  aci::cvp::CFObject<aci::cvp::Device>::createTypeID();
  v0 = aci::cvp::CFObject<aci::cvp::Device>::_typeId;

  return MEMORY[0x282110368](v0, "ACICVPDevice");
}

uint64_t aci::cvp::CFObject<aci::cvp::Device>::createTypeID()
{
  {
    aci::cvp::CFObject<aci::cvp::Device>::createTypeID();
  }

  result = _CFRuntimeRegisterClass();
  aci::cvp::CFObject<aci::cvp::Device>::_typeId = result;
  return result;
}

uint64_t aci::cvp::CVPixelBufferFactory::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::cvp::CVPixelBufferFactory::classTypeInfo(void)::ti)
  {
    return MEMORY[0x282137690]();
  }

  return result;
}

uint64_t aci::cvp::CVPixelBufferWrapper::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::cvp::CVPixelBufferWrapper::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass();
  }

  return result;
}

unsigned int *aci::cvp::CVPixelBufferFactory::CVPixelBufferFactory(unsigned int *a1, const char *a2, int a3, int a4, int a5, int a6, int a7, unsigned int a8, int a9)
{
  v17 = aci::Factory::Factory(a1);
  *v17 = &unk_284F023A8;
  *(v17 + 112) = 0;
  v18 = (v17 + 112);
  if (a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = 128;
  }

  *(v17 + 120) = a9;
  *(v17 + 124) = v19;
  if (a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = 128;
  }

  *(v17 + 128) = v20;
  *(v17 + 132) = a5;
  *(v17 + 136) = a7;
  *(v17 + 140) = a6;
  cf = 0;
  v21 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    cf = Mutable;
  }

  valuePtr = 1792;
  v35 = CFNumberCreate(v21, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(cf, *MEMORY[0x277CD2970], v35);
  v34 = 0;
  v23 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v23)
  {
    v34 = v23;
  }

  valuePtr = a1[31];
  v33 = CFNumberCreate(v21, kCFNumberSInt64Type, &valuePtr);
  valuePtr = a1[32];
  value = CFNumberCreate(v21, kCFNumberSInt64Type, &valuePtr);
  valuePtr = a1[33];
  v31 = CFNumberCreate(v21, kCFNumberSInt64Type, &valuePtr);
  valuePtr = a1[35];
  v30 = CFNumberCreate(v21, kCFNumberSInt64Type, &valuePtr);
  valuePtr = a1[34];
  v29 = CFNumberCreate(v21, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(v34, *MEMORY[0x277CC4EC8], v33);
  CFDictionaryAddValue(v34, *MEMORY[0x277CC4DD8], value);
  CFDictionaryAddValue(v34, *MEMORY[0x277CC4E30], v31);
  CFDictionaryAddValue(v34, *MEMORY[0x277CC4D60], v29);
  CFDictionaryAddValue(v34, *MEMORY[0x277CC4DE8], cf);
  v28 = 0;
  v24 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v24)
  {
    v28 = v24;
  }

  v27 = CFStringCreateWithCString(v21, a2, 0x8000100u);
  CFDictionaryAddValue(v28, *MEMORY[0x277CC4E58], v27);
  valuePtr = a8;
  v26 = CFNumberCreate(v21, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(v28, *MEMORY[0x277CC4E50], v26);
  if (CVPixelBufferPoolCreate(v21, v28, v34, v18))
  {
    _aciLogGeneral();
    objc_claimAutoreleasedReturnValue();
    aci::cvp::CVPixelBufferFactory::CVPixelBufferFactory();
  }

  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v26);
  aci::REFSP<__CFString const*,&__CFString const* aci::cvp::CFREFSPRetain<__CFString const*>,&void aci::cvp::CFREFSPRelease<__CFString const*>>::~REFSP(&v27);
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(&v28);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v29);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v30);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v31);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&value);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v33);
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(&v34);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v35);
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(&cf);
  return a1;
}

{
  return aci::cvp::CVPixelBufferFactory::CVPixelBufferFactory(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_23C3ECB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, const void *a17, const void *a18, const void *a19)
{
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a9);
  aci::REFSP<__CFString const*,&__CFString const* aci::cvp::CFREFSPRetain<__CFString const*>,&void aci::cvp::CFREFSPRelease<__CFString const*>>::~REFSP(&a10);
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(&a11);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a12);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a13);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a14);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a15);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a16);
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(&a17);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a18);
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(&a19);
  aci::REFSP<__CVPixelBufferPool *,&(CVPixelBufferPoolRetain),&(CVPixelBufferPoolRelease)>::~REFSP(v20);
  aci::Factory::~Factory(v19);
  _Unwind_Resume(a1);
}

uint64_t aci::cvp::CVPixelBufferFactory::allocData(CVPixelBufferPoolRef *this)
{
  pixelBufferOut = 0;
  if (!CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], this[14], &pixelBufferOut))
  {
    aci::ACIObjectSP<aci::cvp::CVPixelBufferWrapper,__CVBuffer *>();
  }

  aci::cvp::CVPixelBufferFactory::allocData(this);
  return 0;
}

void sub_23C3ECC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9)
{
  MEMORY[0x23EECFB00](v9, 0x10A1C4096B73BC4);
  aci::SP<aci::cvp::CVPixelBufferWrapper,&(void ACISPRetain<aci::cvp::CVPixelBufferWrapper>(aci::cvp::CVPixelBufferWrapper &)),&(void ACISPRelease<aci::cvp::CVPixelBufferWrapper>(aci::cvp::CVPixelBufferWrapper &))>::~SP(&a9);
  _Unwind_Resume(a1);
}

uint64_t aci::cvp::CVPixelBufferFactory::getDataByID(aci::cvp::CVPixelBufferFactory *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  std::mutex::lock((this + 24));
  v2 = *(this + 11);
  aci::Array::enumerateObjectsUsingBlock();
  v3 = v6[3];
  std::mutex::unlock((this + 24));
  _Block_object_dispose(&v5, 8);
  return v3;
}

void sub_23C3ECE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::mutex::unlock((v7 + 24));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

aci::Data *aci::_ACIDynamicCast<aci::Data,aci::Object>(aci::Data *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Data::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

uint64_t (***aci::_ACIDynamicCast<aci::cvp::CVPixelBufferWrapper,aci::Object>(uint64_t (***result)(void, uint64_t *)))(void, uint64_t *)
{
  if (result)
  {
    return (**result)(result, &aci::cvp::CVPixelBufferWrapper::classTypeInfo(void)::ti);
  }

  return result;
}

uint64_t aci::cvp::CVPixelBufferFactory::acquireBuffers(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  if (*a4 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a4;
  }

  if (v6)
  {
    v10 = a2 + 16;
    do
    {
      v11 = (*(*a1 + 56))(a1);
      if (!v11)
      {
        break;
      }

      v12 = aci::_ACIDynamicCast<aci::cvp::CVPixelBufferWrapper,aci::Object>(*(v11 + 16));
      if (v12)
      {
        IOSurface = CVPixelBufferGetIOSurface(v12[2]);
        ID = IOSurfaceGetID(IOSurface);
        *(v10 - 16) = a5;
        *(v10 - 8) = a6;
        *v10 = ID;
        *(v10 + 4) = vextq_s8(*(a1 + 120), *(a1 + 120), 4uLL);
      }

      v10 += 56;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t aci::cvp::Interface::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::cvp::Interface::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass();
  }

  return result;
}

uint64_t aci::cvp::Output::castToClass(uint64_t a1, uint64_t a2)
{
  if (a2 != &aci::cvp::Output::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(a1, a2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass(uint64_t a1, uint64_t a2)
{
  if (a2 != &aci::cvp::Output::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::cvp::Output::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::cvp::Output::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(result, a2);
  }

  return result;
}

uint64_t aci::cvp::Output::Output(uint64_t a1, int a2, __int128 *a3, aci::Object *a4)
{
  v8 = aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::MetaType(a1);
  *v8 = &unk_284F02430;
  v8[2] = &unk_284F02488;
  v8[17] = 0;
  v8[31] = 0;
  v8[29] = 0;
  v8[18] = 0;
  *(v8 + 40) = a2;
  *(v8 + 24) = *a3;
  v9 = *a3;
  *(v8 + 116) = a3[1];
  *(v8 + 100) = v9;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::setPtr(v8 + 17, a4);
  *(a1 + 288) = 1;
  *(a1 + 152) = 0;
  v10 = *(a1 + 104);
  if (v10 == 1)
  {
    v11 = *(a1 + 108);
  }

  else
  {
    if (v10)
    {
      goto LABEL_6;
    }

    v11 = (*(a1 + 120) * *(a1 + 112));
  }

  *(a1 + 152) = v11;
LABEL_6:
  Current = CFRunLoopGetCurrent();
  *(a1 + 256) = Current;
  if (!Current)
  {
    v20 = _aciLogGeneral();
    aci::cvp::Output::Output(v20);
    return a1;
  }

  if (IOCreateReceivePort(0x39u, (a1 + 272)))
  {
    _aciLogGeneral();
    objc_claimAutoreleasedReturnValue();
    aci::cvp::Output::Output();
    return a1;
  }

  context.version = 1;
  context.info = a1;
  memset(&context.retain, 0, 24);
  v13 = *MEMORY[0x277CBECE8];
  v14 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], *(a1 + 272), MEMORY[0x277CD27F0], &context, 0);
  *(a1 + 280) = v14;
  if (!v14)
  {
    v21 = _aciLogGeneral();
    aci::cvp::Output::Output(v21, &v24);
LABEL_24:
    v18 = v24;
    goto LABEL_18;
  }

  RunLoopSource = CFMachPortCreateRunLoopSource(v13, v14, 0);
  *(a1 + 264) = RunLoopSource;
  if (!RunLoopSource)
  {
    v22 = _aciLogGeneral();
    aci::cvp::Output::Output(v22, &v24);
    goto LABEL_24;
  }

  CFRunLoopAddSource(*(a1 + 256), RunLoopSource, *MEMORY[0x277CBF058]);
  *(a1 + 164) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 180) = 0u;
  snprintf((a1 + 164), 0x40uLL, "c%d_%s", *(a1 + 160), aci::cvp::Output::kOutputNames[*(a1 + 96)]);
  v16 = *(a1 + 104);
  if (v16 != 1)
  {
    if (v16 || *(a1 + 108) || *(a1 + 112))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!*(a1 + 108))
  {
LABEL_16:
    *(a1 + 288) = 0;
  }

LABEL_17:
  v17 = dispatch_queue_create("CallbackQuque", 0);
  v18 = *(a1 + 248);
  *(a1 + 248) = v17;
LABEL_18:

  return a1;
}

void sub_23C3ED2A4(_Unwind_Exception *a1)
{
  aci::SP<aci::cvp::CVPixelBufferFactory,&(void ACISPRetain<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &)),&(void ACISPRelease<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &))>::~SP((v1 + 144));
  aci::SP<aci::cvp::Interface,&(void ACISPRetain<aci::cvp::Interface>(aci::cvp::Interface &)),&(void ACISPRelease<aci::cvp::Interface>(aci::cvp::Interface &))>::~SP(v2);
  *(v1 + 16) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((v1 + 32));
  _Unwind_Resume(a1);
}

void *aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::MetaType(void *a1)
{
  v2 = aci::Object::Object();
  *(v2 + 16) = MEMORY[0x277CE4778] + 16;
  MEMORY[0x23EECFA90](v2 + 32);
  *a1 = &unk_284F02640;
  a1[2] = &unk_284F02688;
  return a1;
}

uint64_t ___ZN3aci3cvp6Output8activateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  if (v2 == 1)
  {
    v8 = *(v1 + 108);
    v9 = *(v1 + 124);
    v10 = *(v1 + 96);
    v11 = (*(v1 + 128) + 8);
    aci::ACIObjectSP<aci::cvp::CVPixelBufferFactory,char *,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,isp::IspOutput>();
  }

  if (!v2)
  {
    v3 = *(v1 + 112);
    v4 = *(v1 + 120);
    v5 = *(v1 + 124);
    v6 = *(v1 + 96);
    v7 = (*(v1 + 128) + 8);
    aci::ACIObjectSP<aci::cvp::CVPixelBufferFactory,char *,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,isp::IspOutput>();
  }

  if (*(v1 + 144))
  {
    return 0;
  }

  ___ZN3aci3cvp6Output8activateEv_block_invoke_cold_1();
  return 4294967275;
}

void sub_23C3ED4D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::cvp::CVPixelBufferFactory,&(void ACISPRetain<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &)),&(void ACISPRelease<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &))>::~SP(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3aci3cvp6Output10deactivateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 144);
  if (v2)
  {
    aci::Object::release(v2);
    *(v1 + 144) = 0;
  }

  return 0;
}

void aci::cvp::Output::FrameDone(aci::cvp::CVPixelBufferFactory **this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    aci::cvp::Output::FrameDone();
  }

  else if (this)
  {

    aci::cvp::Output::handleFrameDone(this, a3, a4);
  }

  else
  {
    aci::cvp::Output::FrameDone();
  }
}

void aci::cvp::Output::handleFrameDone(aci::cvp::CVPixelBufferFactory **this, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  DataByID = aci::cvp::CVPixelBufferFactory::getDataByID(this[18]);
  v7 = this[31];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN3aci3cvp6Output15handleFrameDoneEyy_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = this;
  block[5] = DataByID;
  dispatch_async(v7, block);
  v8 = _aciLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v13 = "void aci::cvp::Output::handleFrameDone(uint64_t, uint64_t)";
    v14 = 1024;
    v15 = 270;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&dword_23C3E4000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d poolId: %llx, surfId: %llx", buf, 0x26u);
  }

  v10 = 1;
  aci::cvp::CVPixelBufferFactory::acquireBuffers(this[18], buf, 0x40u, &v10, aci::cvp::Output::FrameDone, this);
  if ((*(*this[17] + 64))(this[17], buf, 56, *(this + 68)))
  {
    aci::cvp::Output::handleFrameDone();
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN3aci3cvp6Output15handleFrameDoneEyy_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = aci::_ACIDynamicCast<aci::cvp::CVPixelBufferWrapper,aci::Object>(*(*(a1 + 40) + 16));
  if (v3)
  {
    v4 = *(v2 + 232);
    if (v4)
    {
      v4(*(v2 + 240), v3[2], 0);
    }
  }

  v5 = *(a1 + 40);

  return MEMORY[0x282137500](v5);
}

uint64_t aci::cvp::Output::getBufferPoolInfo(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 96);
  *a2 = v2;
  a2[1] = v2;
  a2[2] = *(a1 + 128);
  return 0;
}

uint64_t aci::cvp::Output::sendInitialBuffers(aci::cvp::Output *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *(this + 32);
  v2 = v5;
  aci::cvp::CVPixelBufferFactory::acquireBuffers(*(this + 18), v6, 0x40u, &v5, aci::cvp::Output::FrameDone, this);
  result = (*(**(this + 17) + 64))(*(this + 17), v6, 56 * v2, *(this + 68));
  if (result)
  {
    aci::cvp::Output::handleFrameDone();
    result = 0xFFFFFFFFLL;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

__CFDictionary *aci::cvp::Output::getConfiguration(aci::cvp::Output *this)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v15 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  valuePtr = *(this + 31);
  v14 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(v15, @"alignment", v14);
  v13 = CFStringCreateWithCString(v2, this + 164, 0x8000100u);
  CFDictionaryAddValue(v15, @"key", v13);
  valuePtr = *(this + 40);
  v12 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(v15, @"channelId", v12);
  valuePtr = *(this + 24);
  v11 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(v15, @"outputId", v11);
  v4 = *(this + 26);
  if (v4 == 1)
  {
    valuePtr = *(this + 108);
    v10 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
    CFDictionaryAddValue(v15, @"size", v10);
    goto LABEL_7;
  }

  if (!v4)
  {
    valuePtr = *(this + 27);
    v10 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
    CFDictionaryAddValue(v15, @"width", v10);
    valuePtr = *(this + 28);
    v9 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
    CFDictionaryAddValue(v15, @"height", v9);
    valuePtr = *(this + 29);
    v8 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
    CFDictionaryAddValue(v15, @"pixelFormat", v8);
    valuePtr = *(this + 30);
    v7 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
    CFDictionaryAddValue(v15, @"stride", v7);
    aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v7);
    aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v8);
    aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v9);
LABEL_7:
    aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v10);
  }

  v5 = v15;
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v11);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v12);
  aci::REFSP<__CFString const*,&__CFString const* aci::cvp::CFREFSPRetain<__CFString const*>,&void aci::cvp::CFREFSPRelease<__CFString const*>>::~REFSP(&v13);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v14);
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(&v15);
  return v5;
}

void sub_23C3EDD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15)
{
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a9);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a10);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a11);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a12);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a13);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&a14);
  aci::REFSP<__CFString const*,&__CFString const* aci::cvp::CFREFSPRetain<__CFString const*>,&void aci::cvp::CFREFSPRelease<__CFString const*>>::~REFSP(&a15);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP((v15 - 40));
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP((v15 - 32));
  _Unwind_Resume(a1);
}

uint64_t aci::cvp::Channel::castToClass(uint64_t a1, uint64_t a2)
{
  if (a2 != &aci::cvp::Channel::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(a1, a2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::cvp::Channel,aci::Object,aci::Controller>::castToClass(uint64_t a1, uint64_t a2)
{
  if (a2 != &aci::cvp::Channel::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::cvp::Channel::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::cvp::Channel::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(result, a2);
  }

  return result;
}

uint64_t aci::cvp::Channel::Channel(uint64_t a1, int a2, __int128 *a3, aci::Object *a4)
{
  v8 = aci::MetaType<aci::cvp::Channel,aci::Object,aci::Controller>::MetaType(a1);
  *v8 = &unk_284F024D8;
  v8[2] = &unk_284F02550;
  v8[12] = 0;
  v8[13] = 0;
  *(v8 + 28) = a2;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::setPtr(v8 + 13, a4);
  v9 = *a3;
  v10 = a3[1];
  *(a1 + 148) = a3[2];
  *(a1 + 132) = v10;
  *(a1 + 116) = v9;
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];
  *(a1 + 212) = *(a3 + 24);
  *(a1 + 196) = v13;
  *(a1 + 180) = v12;
  *(a1 + 164) = v11;
  if (!*(a1 + 96))
  {
    aci::ACIObjectSP<aci::Array>();
  }

  v14 = 1 << *(a1 + 112);
  v17[1] = 10003;
  v17[2] = v14;
  if (!(*(**(a1 + 104) + 56))(*(a1 + 104), v17, 112))
  {
    *(a1 + 216) = 0;
    operator new();
  }

  v16 = _aciLogGeneral();
  aci::cvp::Channel::Channel(v16);
  return a1;
}

void sub_23C3EE014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9)
{
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(&a9);
  aci::SP<aci::cvp::Interface,&(void ACISPRetain<aci::cvp::Interface>(aci::cvp::Interface &)),&(void ACISPRelease<aci::cvp::Interface>(aci::cvp::Interface &))>::~SP(v11);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v10);
  *(v9 + 16) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((v9 + 32));
  _Unwind_Resume(a1);
}

void *aci::MetaType<aci::cvp::Channel,aci::Object,aci::Controller>::MetaType(void *a1)
{
  v2 = aci::Object::Object();
  *(v2 + 16) = MEMORY[0x277CE4778] + 16;
  MEMORY[0x23EECFA90](v2 + 32);
  *a1 = &unk_284F026D8;
  a1[2] = &unk_284F02720;
  return a1;
}

uint64_t ___ZN3aci3cvp7Channel8activateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = *(v1 + 96);
  aci::Array::enumerateObjectsUsingBlock();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

void sub_23C3EE2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t (***aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(uint64_t (***result)(void, uint64_t *)))(void, uint64_t *)
{
  if (result)
  {
    return (**result)(result, &aci::cvp::Output::classTypeInfo(void)::ti);
  }

  return result;
}

uint64_t ___ZN3aci3cvp7Channel10deactivateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = *(v1 + 96);
  aci::Array::enumerateObjectsUsingBlock();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

void sub_23C3EE4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3aci3cvp7Channel7prepareEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x6812000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = "";
  v2 = 1 << *(v1 + 112);
  v15 = 10004;
  v16 = v2;
  v3 = aci::Array::count(*(v1 + 96));
  *(v10 + 16) = v3;
  v4 = *(v1 + 96);
  aci::Array::enumerateObjectsUsingBlock();
  v5 = *(v18 + 6);
  if (!v5)
  {
    if ((*(**(v1 + 104) + 56))(*(v1 + 104), v10 + 6, 56))
    {
      v8 = _aciLogGeneral();
      ___ZN3aci3cvp7Channel7prepareEv_block_invoke_cold_1(v8);
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = *(v1 + 96);
      aci::Array::enumerateObjectsUsingBlock();
      v5 = *(v18 + 6);
    }
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v17, 8);
  return v5;
}

void sub_23C3EE778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  return result;
}

uint64_t ___ZN3aci3cvp7Channel9unprepareEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = *(v1 + 96);
  aci::Array::enumerateObjectsUsingBlock();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

void sub_23C3EE950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3aci3cvp7Channel5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (cvp::CVPInterface::sendChStart(*(*(v1 + 104) + 16), 1 << *(v1 + 112)))
  {
    v5 = _aciLogGeneral();
    ___ZN3aci3cvp7Channel5startEv_block_invoke_cold_1(v5, (v1 + 112));
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = *(v1 + 96);
    aci::Array::enumerateObjectsUsingBlock();
    v3 = *(v7 + 6);
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_23C3EEB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3aci3cvp7Channel4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = *(v1 + 96);
  aci::Array::enumerateObjectsUsingBlock();
  v4 = *(v1 + 112);
  v3 = (v1 + 112);
  if (cvp::CVPInterface::sendChStop(*(*(v3 - 1) + 16), 1 << v4))
  {
    v7 = _aciLogGeneral();
    ___ZN3aci3cvp7Channel4stopEv_block_invoke_cold_1(v7, v3);
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_23C3EED0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFDictionary *aci::cvp::Channel::getConfiguration(aci::Array **this)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v15 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  valuePtr = aci::Array::count(this[12]);
  v14 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(v15, @"outputNumber", v14);
  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v9 = 0x3812000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__15;
  v12 = "";
  v13 = CFArrayCreateMutable(v2, 3, MEMORY[0x277CBF128]);
  v4 = this[12];
  aci::Array::enumerateObjectsUsingBlock();
  CFDictionaryAddValue(v15, @"outputs", p_valuePtr[6]);
  v5 = v15;
  _Block_object_dispose(&valuePtr, 8);
  aci::REFSP<__CFArray *,&__CFArray * aci::cvp::CFREFSPRetain<__CFArray *>,&void aci::cvp::CFREFSPRelease<__CFArray *>>::~REFSP(&v13);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v14);
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(&v15);
  return v5;
}

void sub_23C3EEF30(_Unwind_Exception *a1)
{
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP((v1 - 48));
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP((v1 - 40));
  _Unwind_Resume(a1);
}

uint64_t ___ZN3aci3cvp7Channel16getConfigurationEv_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *))
{
  v3 = aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(a2);
  if (v3)
  {
    Configuration = aci::cvp::Output::getConfiguration(v3);
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 48), Configuration);
    aci::REFSP<__CFDictionary const*,&__CFDictionary const* aci::cvp::CFREFSPRetain<__CFDictionary const*>,&void aci::cvp::CFREFSPRelease<__CFDictionary const*>>::~REFSP(&Configuration);
  }

  return 0;
}

void sub_23C3EEFE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::REFSP<__CFDictionary const*,&__CFDictionary const* aci::cvp::CFREFSPRetain<__CFDictionary const*>,&void aci::cvp::CFREFSPRelease<__CFDictionary const*>>::~REFSP(va);
  _Unwind_Resume(a1);
}

uint64_t aci::cvp::Channel::registerBufferCallback(aci::Array **this, BOOL (*a2)(void *, __CVBuffer *, unint64_t), uint64_t (**a3)(void, uint64_t *))
{
  v6 = aci::Array::objectAtIndex(this[12]);
  v7 = aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(v6);
  if (v7)
  {
    v8 = v7;
    result = 0;
    v8[29] = a2;
    v8[30] = a3;
  }

  else
  {
    aci::cvp::Channel::registerBufferCallback(this);
    return 4294967289;
  }

  return result;
}

void aci::cvp::Device::Device(aci::cvp::Device *this, const void *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  aci::ACIObjectSP<aci::cvp::Interface>();
}

void sub_23C3EF238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  aci::SP<aci::cvp::Interface,&(void ACISPRetain<aci::cvp::Interface>(aci::cvp::Interface &)),&(void ACISPRelease<aci::cvp::Interface>(aci::cvp::Interface &))>::~SP(v3);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v2);
  _Unwind_Resume(a1);
}

void aci::cvp::Device::~Device(aci::cvp::Device *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    aci::Object::release(v2);
    *v3 = 0;
  }

  aci::SP<aci::cvp::Interface,&(void ACISPRetain<aci::cvp::Interface>(aci::cvp::Interface &)),&(void ACISPRelease<aci::cvp::Interface>(aci::cvp::Interface &))>::~SP(v3);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 1);
}

uint64_t aci::cvp::Device::startChannel(aci::Array **this, unsigned int a2)
{
  if (aci::Array::count(this[1]) <= a2)
  {
    v5 = 3758097105;
    aci::cvp::Device::startChannel();
  }

  else
  {
    v3 = aci::Array::objectAtIndex(this[1]);
    v4 = aci::_ACIDynamicCast<aci::cvp::Channel,aci::Object>(v3);
    if (v4)
    {
      if (((*v4)[11])(v4))
      {
        return 3758097084;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v5 = 3758097105;
      aci::cvp::Device::startChannel();
    }
  }

  return v5;
}

uint64_t (***aci::_ACIDynamicCast<aci::cvp::Channel,aci::Object>(uint64_t (***result)(void, uint64_t *)))(void, uint64_t *)
{
  if (result)
  {
    return (**result)(result, &aci::cvp::Channel::classTypeInfo(void)::ti);
  }

  return result;
}

uint64_t aci::cvp::Device::stopChannel(aci::Array **this, unsigned int a2)
{
  if (aci::Array::count(this[1]) <= a2)
  {
    v5 = 3758097105;
    aci::cvp::Device::startChannel();
  }

  else
  {
    v3 = aci::Array::objectAtIndex(this[1]);
    v4 = aci::_ACIDynamicCast<aci::cvp::Channel,aci::Object>(v3);
    if (v4)
    {
      if (((*v4)[12])(v4))
      {
        return 3758097084;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v5 = 3758097105;
      aci::cvp::Device::startChannel();
    }
  }

  return v5;
}

uint64_t aci::cvp::Device::getConfiguration(aci::Array **this, const __CFDictionary **a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  valuePtr = aci::Array::count(this[1]);
  v15 = CFNumberCreate(v4, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(v16, @"channelNumber", v15);
  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v10 = 0x3812000000;
  v11 = __Block_byref_object_copy__14;
  v12 = __Block_byref_object_dispose__15;
  v13 = "";
  v14 = CFArrayCreateMutable(v4, 16, MEMORY[0x277CBF128]);
  v6 = this[1];
  aci::Array::enumerateObjectsUsingBlock();
  CFDictionaryAddValue(v16, @"channels", p_valuePtr[6]);
  *a2 = v16;
  _Block_object_dispose(&valuePtr, 8);
  aci::REFSP<__CFArray *,&__CFArray * aci::cvp::CFREFSPRetain<__CFArray *>,&void aci::cvp::CFREFSPRelease<__CFArray *>>::~REFSP(&v14);
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(&v15);
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(&v16);
  return 0;
}

void sub_23C3EF70C(_Unwind_Exception *a1)
{
  aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP((v1 - 48));
  aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP((v1 - 40));
  _Unwind_Resume(a1);
}

uint64_t ___ZN3aci3cvp6Device16getConfigurationEPPK14__CFDictionary_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *))
{
  v3 = aci::_ACIDynamicCast<aci::cvp::Channel,aci::Object>(a2);
  if (v3)
  {
    Configuration = aci::cvp::Channel::getConfiguration(v3);
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 48), Configuration);
    aci::REFSP<__CFDictionary const*,&__CFDictionary const* aci::cvp::CFREFSPRetain<__CFDictionary const*>,&void aci::cvp::CFREFSPRelease<__CFDictionary const*>>::~REFSP(&Configuration);
  }

  return 0;
}

void sub_23C3EF7AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::REFSP<__CFDictionary const*,&__CFDictionary const* aci::cvp::CFREFSPRetain<__CFDictionary const*>,&void aci::cvp::CFREFSPRelease<__CFDictionary const*>>::~REFSP(va);
  _Unwind_Resume(a1);
}

uint64_t aci::cvp::Device::copyProperty(aci::Array **this, CFStringRef theString1, const __CFDictionary **a3)
{
  if (CFStringCompare(theString1, @"deviceConfiguration", 0) == kCFCompareEqualTo)
  {
    aci::cvp::Device::getConfiguration(this, a3);
  }

  return 0;
}

uint64_t aci::cvp::Device::registerBufferCallback(aci::Array **this, BOOL (*a2)(void *, __CVBuffer *, unint64_t), uint64_t (**a3)(void, uint64_t *))
{
  v5 = aci::Array::objectAtIndex(this[1]);
  v6 = aci::_ACIDynamicCast<aci::cvp::Channel,aci::Object>(v5);
  if (v6)
  {

    return aci::cvp::Channel::registerBufferCallback(v6, a2, a3);
  }

  else
  {
    aci::cvp::Device::registerBufferCallback();
    return 4294967289;
  }
}

void aci::cvp::Interface::~Interface(aci::cvp::Interface *this)
{
  aci::cvp::Interface::~Interface(this);

  JUMPOUT(0x23EECFB00);
}

{
  *this = &unk_284F025A0;
  v1 = *(this + 2);
  if (v1)
  {
    cvp::CVPInterface::~CVPInterface(v1);
    MEMORY[0x23EECFB00]();
  }
}

void aci::cvp::CVPixelBufferWrapper::~CVPixelBufferWrapper(__CVBuffer **this)
{
  *this = &unk_284F025F8;
  aci::REFSP<__CVBuffer *,&(CVPixelBufferRetain),&(CVPixelBufferRelease)>::~REFSP(this + 2);
}

{
  *this = &unk_284F025F8;
  aci::REFSP<__CVBuffer *,&(CVPixelBufferRetain),&(CVPixelBufferRelease)>::~REFSP(this + 2);

  JUMPOUT(0x23EECFB00);
}

void aci::cvp::CVPixelBufferFactory::~CVPixelBufferFactory(aci::cvp::CVPixelBufferFactory *this)
{
  *this = &unk_284F023A8;
  v2 = (this + 88);
  aci::REFSP<__CVPixelBufferPool *,&(CVPixelBufferPoolRetain),&(CVPixelBufferPoolRelease)>::~REFSP(this + 14);
  *this = MEMORY[0x277CE47B0] + 16;
  aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v2);
  std::mutex::~mutex((this + 24));
}

{
  *this = &unk_284F023A8;
  v2 = (this + 88);
  aci::REFSP<__CVPixelBufferPool *,&(CVPixelBufferPoolRetain),&(CVPixelBufferPoolRelease)>::~REFSP(this + 14);
  *this = MEMORY[0x277CE47B0] + 16;
  aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v2);
  std::mutex::~mutex((this + 24));

  JUMPOUT(0x23EECFB00);
}

void aci::cvp::Output::~Output(aci::cvp::Output *this)
{
  *this = &unk_284F02430;
  *(this + 2) = &unk_284F02488;

  aci::SP<aci::cvp::CVPixelBufferFactory,&(void ACISPRetain<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &)),&(void ACISPRelease<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &))>::~SP(this + 18);
  aci::SP<aci::cvp::Interface,&(void ACISPRetain<aci::cvp::Interface>(aci::cvp::Interface &)),&(void ACISPRelease<aci::cvp::Interface>(aci::cvp::Interface &))>::~SP(this + 17);
  *(this + 2) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((this + 32));
}

{
  *this = &unk_284F02430;
  *(this + 2) = &unk_284F02488;

  aci::SP<aci::cvp::CVPixelBufferFactory,&(void ACISPRetain<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &)),&(void ACISPRelease<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &))>::~SP(this + 18);
  aci::SP<aci::cvp::Interface,&(void ACISPRetain<aci::cvp::Interface>(aci::cvp::Interface &)),&(void ACISPRelease<aci::cvp::Interface>(aci::cvp::Interface &))>::~SP(this + 17);
  *(this + 2) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((this + 32));

  JUMPOUT(0x23EECFB00);
}

void aci::cvp::Channel::~Channel(aci::cvp::Channel *this)
{
  *this = &unk_284F024D8;
  *(this + 2) = &unk_284F02550;
  aci::SP<aci::cvp::Interface,&(void ACISPRetain<aci::cvp::Interface>(aci::cvp::Interface &)),&(void ACISPRelease<aci::cvp::Interface>(aci::cvp::Interface &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 12);
  *(this + 2) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((this + 32));
}

{
  *this = &unk_284F024D8;
  *(this + 2) = &unk_284F02550;
  aci::SP<aci::cvp::Interface,&(void ACISPRetain<aci::cvp::Interface>(aci::cvp::Interface &)),&(void ACISPRelease<aci::cvp::Interface>(aci::cvp::Interface &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 12);
  *(this + 2) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((this + 32));

  JUMPOUT(0x23EECFB00);
}

void aci::Factory::~Factory(aci::Object **this)
{
  *this = (MEMORY[0x277CE47B0] + 16);
  v2 = (this + 3);
  aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 11);
  std::mutex::~mutex(v2);
}

aci::Object **aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Data *aci::Data::Data(aci::Data *this, aci::Object *a2)
{
  v4 = aci::Object::Object();
  *v4 = MEMORY[0x277CE4788] + 16;
  v4[2] = a2;
  if (a2)
  {
    aci::Object::retain(a2);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

__CVBuffer **aci::REFSP<__CVBuffer *,&(CVPixelBufferRetain),&(CVPixelBufferRelease)>::~REFSP(__CVBuffer **a1)
{
  v2 = *a1;
  if (v2)
  {
    CVPixelBufferRelease(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::setPtr(aci::Object **a1, aci::Object *this)
{
  v3 = *a1;
  if (v3 != this)
  {
    if (v3)
    {
      aci::Object::release(v3);
    }

    *a1 = this;
    if (this)
    {
      aci::Object::retain(this);
    }
  }

  return a1;
}

__CVPixelBufferPool **aci::REFSP<__CVPixelBufferPool *,&(CVPixelBufferPoolRetain),&(CVPixelBufferPoolRelease)>::~REFSP(__CVPixelBufferPool **a1)
{
  v2 = *a1;
  if (v2)
  {
    CVPixelBufferPoolRelease(v2);
  }

  return a1;
}

const void **aci::REFSP<__CFDictionary *,&__CFDictionary * aci::cvp::CFREFSPRetain<__CFDictionary *>,&void aci::cvp::CFREFSPRelease<__CFDictionary *>>::~REFSP(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **aci::REFSP<__CFNumber const*,&__CFNumber const* aci::cvp::CFREFSPRetain<__CFNumber const*>,&void aci::cvp::CFREFSPRelease<__CFNumber const*>>::~REFSP(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **aci::REFSP<__CFString const*,&__CFString const* aci::cvp::CFREFSPRetain<__CFString const*>,&void aci::cvp::CFREFSPRelease<__CFString const*>>::~REFSP(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::cvp::CVPixelBufferWrapper,&(void ACISPRetain<aci::cvp::CVPixelBufferWrapper>(aci::cvp::CVPixelBufferWrapper &)),&(void ACISPRelease<aci::cvp::CVPixelBufferWrapper>(aci::cvp::CVPixelBufferWrapper &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(uint64_t a1, uint64_t a2)
{
  result = aci::Object::castToClass();
  if (!result)
  {

    return MEMORY[0x282137618](a1 + 16, a2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::cvp::Output::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(result, a2);
  }

  return result;
}

uint64_t aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::~MetaType(uint64_t a1)
{
  *(a1 + 16) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((a1 + 32));
  return a1;
}

void aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::~MetaType(uint64_t a1)
{
  *(a1 + 16) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((a1 + 32));

  JUMPOUT(0x23EECFB00);
}

aci::Object **aci::SP<aci::cvp::Interface,&(void ACISPRetain<aci::cvp::Interface>(aci::cvp::Interface &)),&(void ACISPRelease<aci::cvp::Interface>(aci::cvp::Interface &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::cvp::CVPixelBufferFactory,&(void ACISPRetain<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &)),&(void ACISPRelease<aci::cvp::CVPixelBufferFactory>(aci::cvp::CVPixelBufferFactory &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::MetaType<aci::cvp::Channel,aci::Object,aci::Controller>::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::cvp::Channel::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::cvp::Output,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(result, a2);
  }

  return result;
}

uint64_t aci::MetaType<aci::cvp::Channel,aci::Object,aci::Controller>::~MetaType(uint64_t a1)
{
  *(a1 + 16) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((a1 + 32));
  return a1;
}

void aci::MetaType<aci::cvp::Channel,aci::Object,aci::Controller>::~MetaType(uint64_t a1)
{
  *(a1 + 16) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((a1 + 32));

  JUMPOUT(0x23EECFB00);
}

const void **aci::REFSP<__CFArray *,&__CFArray * aci::cvp::CFREFSPRetain<__CFArray *>,&void aci::cvp::CFREFSPRelease<__CFArray *>>::~REFSP(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **aci::REFSP<__CFDictionary const*,&__CFDictionary const* aci::cvp::CFREFSPRetain<__CFDictionary const*>,&void aci::cvp::CFREFSPRelease<__CFDictionary const*>>::~REFSP(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::cvp::Channel,&(void ACISPRetain<aci::cvp::Channel>(aci::cvp::Channel &)),&(void ACISPRelease<aci::cvp::Channel>(aci::cvp::Channel &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t result)
{
  *(*(*(v1 + 32) + 8) + 24) = result;
  v2 = *(*(*(v1 + 32) + 8) + 24);
  return result;
}

BOOL OUTLINED_FUNCTION_7(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void cvp::CVPInterface::loadFirmware()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void cvp::CVPInterface::sendCommand(int *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v3))
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    OUTLINED_FUNCTION_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x2Au);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void cvp::CVPInterface::sendCommand(uint64_t a1, int *a2, int *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = _aciLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 4);
    v8 = *a2;
    v11[0] = 67109376;
    v11[1] = v7;
    v12 = 1024;
    v13 = v8;
    _os_log_impl(&dword_23C3E4000, v6, OS_LOG_TYPE_ERROR, "[ACIVERIFY]kACIKUserClientCommand_SendCommand 0x%x reply %d", v11, 0xEu);
  }

  if (*a2 == 2)
  {
    v9 = -536870165;
  }

  else
  {
    v9 = -536870212;
  }

  *a3 = v9;
  v10 = *MEMORY[0x277D85DE8];
}

void cvp::CVPInterface::sendCommandDict(NSObject *a1)
{
  if (OUTLINED_FUNCTION_1(a1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

{
  if (OUTLINED_FUNCTION_1(a1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

{
  if (OUTLINED_FUNCTION_1(a1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

{
  if (OUTLINED_FUNCTION_1(a1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void ACIUKextConnection::ACIUKextConnection()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  __assert_rtn("ACIUKextConnection", "ACIUKextConnection.h", 24, "false");
}

void aci::cvp::CFObject<aci::cvp::Device>::createTypeID()
{
  {
    aci::cvp::CFObject<aci::cvp::Device>::createTypeID(void)::runtimeClass = 0;
    unk_27E1F3F30 = "ACICVPDevice";
    qword_27E1F3F38 = 0;
    unk_27E1F3F40 = 0;
    qword_27E1F3F48 = aci::cvp::CFObject<aci::cvp::Device>::finalize;
    qword_27E1F3F50 = aci::cvp::CFObject<aci::cvp::Device>::equal;
    qword_27E1F3F58 = aci::cvp::CFObject<aci::cvp::Device>::hash;
    unk_27E1F3F60 = 0;
    qword_27E1F3F68 = aci::cvp::CFObject<aci::cvp::Device>::copyDebugDesc;
    unk_27E1F3F70 = 0;
    qword_27E1F3F78 = 0;
    unk_27E1F3F80 = 0;
  }
}

CVPixelBufferRef *___ZN3aci3cvp20CVPixelBufferFactory11getDataByIDEy_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4(a1, a2);
  aci::_ACIDynamicCast<aci::Data,aci::Object>(v3);
  OUTLINED_FUNCTION_2();
  *(v5 + 24) = v4;
  OUTLINED_FUNCTION_2();
  result = *(v6 + 24);
  if (result)
  {
    if (aci::Data::isFree(result))
    {
      return 0;
    }

    else
    {
      OUTLINED_FUNCTION_2();
      result = aci::_ACIDynamicCast<aci::cvp::CVPixelBufferWrapper,aci::Object>(*(*(v8 + 24) + 16));
      if (result)
      {
        IOSurface = CVPixelBufferGetIOSurface(result[2]);
        return (*(v2 + 40) == IOSurfaceGetID(IOSurface));
      }
    }
  }

  return result;
}

uint64_t (***___ZN3aci3cvp7Channel8activateEv_block_invoke_2(uint64_t a1, uint64_t a2))(void, uint64_t *)
{
  v2 = OUTLINED_FUNCTION_4(a1, a2);
  result = aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(v2);
  if (result)
  {
    v4 = ((*result)[7])(result);
    OUTLINED_FUNCTION_0_1(v4);
    return (v5 != 0);
  }

  return result;
}

uint64_t (***___ZN3aci3cvp7Channel10deactivateEv_block_invoke_2(uint64_t a1, uint64_t a2))(void, uint64_t *)
{
  v2 = OUTLINED_FUNCTION_4(a1, a2);
  result = aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(v2);
  if (result)
  {
    v4 = ((*result)[8])(result);
    OUTLINED_FUNCTION_0_1(v4);
    return (v5 != 0);
  }

  return result;
}

uint64_t ___ZN3aci3cvp7Channel7prepareEv_block_invoke_11(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = OUTLINED_FUNCTION_4(a1, a2);
  result = aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(v5);
  if (result)
  {
    v7 = result;
    v8 = OUTLINED_FUNCTION_6(result);
    v10 = (*(v9 + 32))(v8);
    OUTLINED_FUNCTION_0_1(v10);
    if (!v11)
    {
      v12 = (*(v3[5] + 8) + 12 * a3);
      v13 = *(v7 + 96);
      v12[17] = v13;
      v12[18] = v13;
      v12[19] = *(v7 + 128);
      OUTLINED_FUNCTION_2();
      *(v14 + 24) = 0;
      OUTLINED_FUNCTION_2();
      if (!*(v15 + 24))
      {
        return 0;
      }

      v16 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_1(v16))
      {
        OUTLINED_FUNCTION_0();
        _os_log_impl(v17, v18, v19, v20, v21, 2u);
      }
    }

    return 1;
  }

  return result;
}

uint64_t ___ZN3aci3cvp7Channel7prepareEv_block_invoke_12(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4(a1, a2);
  result = aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(v3);
  if (result)
  {
    v5 = result;
    v6 = OUTLINED_FUNCTION_6(result);
    v8 = (*(v7 + 32))(v6);
    OUTLINED_FUNCTION_0_1(v8);
    if (!v9)
    {
      v10 = aci::cvp::Output::sendInitialBuffers(v5);
      OUTLINED_FUNCTION_0_1(v10);
      if (!v11)
      {
        return 0;
      }

      v12 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_1(v12))
      {
        OUTLINED_FUNCTION_0();
        _os_log_impl(v13, v14, v15, v16, v17, 2u);
      }
    }

    return 1;
  }

  return result;
}

uint64_t (***___ZN3aci3cvp7Channel9unprepareEv_block_invoke_2(uint64_t a1, uint64_t a2))(void, uint64_t *)
{
  v2 = OUTLINED_FUNCTION_4(a1, a2);
  result = aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(v2);
  if (result)
  {
    v4 = OUTLINED_FUNCTION_6(result);
    v6 = (*(v5 + 40))(v4);
    OUTLINED_FUNCTION_0_1(v6);
    return (v7 != 0);
  }

  return result;
}

uint64_t (***___ZN3aci3cvp7Channel5startEv_block_invoke_13(uint64_t a1, uint64_t a2))(void, uint64_t *)
{
  v2 = OUTLINED_FUNCTION_4(a1, a2);
  result = aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(v2);
  if (result)
  {
    v4 = OUTLINED_FUNCTION_6(result);
    v6 = (*(v5 + 48))(v4);
    OUTLINED_FUNCTION_0_1(v6);
    return (v7 != 0);
  }

  return result;
}

uint64_t (***___ZN3aci3cvp7Channel4stopEv_block_invoke_2(uint64_t a1, uint64_t a2))(void, uint64_t *)
{
  v2 = OUTLINED_FUNCTION_4(a1, a2);
  result = aci::_ACIDynamicCast<aci::cvp::Output,aci::Object>(v2);
  if (result)
  {
    v4 = OUTLINED_FUNCTION_6(result);
    v6 = (*(v5 + 56))(v4);
    OUTLINED_FUNCTION_0_1(v6);
    return (v7 != 0);
  }

  return result;
}

void aci::cvp::CVPixelBufferFactory::CVPixelBufferFactory()
{
  OUTLINED_FUNCTION_8();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void aci::cvp::CVPixelBufferFactory::allocData(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v3))
  {
    v4 = *(a1 + 16);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v5, v6, v7, v8, v9, 0xEu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void aci::cvp::Output::Output()
{
  OUTLINED_FUNCTION_8();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void aci::cvp::Output::Output(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_9(&dword_23C3E4000, v4, v5, "[ACIVERIFY]Failed to create CFMachPortCreateRunLoopSource!", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_9(&dword_23C3E4000, v4, v5, "[ACIVERIFY]Failed to create CFMachPortCreateWithPort!", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

void aci::cvp::Output::Output(NSObject *a1)
{
  if (OUTLINED_FUNCTION_1(a1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void ___ZN3aci3cvp6Output8activateEv_block_invoke_cold_1()
{
  v1 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void aci::cvp::Output::FrameDone()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

{
  v1 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void aci::cvp::Output::handleFrameDone()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void aci::cvp::Channel::Channel(NSObject *a1)
{
  if (OUTLINED_FUNCTION_1(a1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void ___ZN3aci3cvp7Channel7prepareEv_block_invoke_cold_1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_1(a1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void ___ZN3aci3cvp7Channel5startEv_block_invoke_cold_1(NSObject *a1, int *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7(a1))
  {
    v11 = *a2;
    OUTLINED_FUNCTION_0();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ___ZN3aci3cvp7Channel4stopEv_block_invoke_cold_1(NSObject *a1, int *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7(a1))
  {
    v11 = *a2;
    OUTLINED_FUNCTION_0();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void aci::cvp::Channel::registerBufferCallback(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v3))
  {
    v4 = *(a1 + 112);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v5, v6, v7, v8, v9, 0xEu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void aci::cvp::Device::Device()
{
  OUTLINED_FUNCTION_8();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void aci::cvp::Device::Device(NSObject *a1)
{
  if (OUTLINED_FUNCTION_1(a1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void aci::cvp::Device::startChannel()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void aci::cvp::Device::registerBufferCallback()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}