@interface ASDTIOA2BlockControl
- (ASDTIOA2Device)ioa2Device;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int)a6 andData:(const void *)a7 forClient:(int)a8;
- (BOOL)synchronizeWithRegistryDictionary:(id)a3;
- (NSArray)propertySelectorInfo;
- (id).cxx_construct;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5;
- (void)dealloc;
@end

@implementation ASDTIOA2BlockControl

- (void)dealloc
{
  [(ASDControl *)self asdtRemoveControlProperties];
  v3.receiver = self;
  v3.super_class = ASDTIOA2BlockControl;
  [(ASDTIOA2BlockControl *)&v3 dealloc];
}

- (NSArray)propertySelectorInfo
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"selector";
  v9[1] = @"dataType";
  v10[0] = &unk_285357840;
  v10[1] = &unk_285357858;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v11[0] = v2;
  v7[0] = @"selector";
  v7[1] = @"dataType";
  v8[0] = &unk_285357870;
  v8[1] = &unk_285357888;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASDTIOA2BlockControl *)self ioa2Device];
  v6 = [v5 ioa2UserClient];

  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v4;
  v8 = v7;
  if (!v7)
  {
    cf = 0;

LABEL_8:
    v11 = ASDTIOA2LogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEFAULT, "%@: Couldn't synchronize with registry", buf, 0xCu);
    }

    LOBYTE(v6) = 0;
    goto LABEL_15;
  }

  CFRetain(v7);
  cf = v8;
  v9 = CFGetTypeID(v8);
  if (v9 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CED520](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!cf)
  {
    goto LABEL_8;
  }

  std::mutex::lock((self + 200));
  ASDT::IOA2UserClient::MapBlockControlBuffer(v6, &cf, buf);
  ASDT::IOMemoryMap::operator=();
  MEMORY[0x245CED200](buf);
  if (*(self + 23))
  {
    v10 = [v8 objectForKeyedSubscript:@"property selectors"];
    LOBYTE(v6) = [(ASDControl *)self asdtAddControlProperties:v10];
  }

  else
  {
    v10 = ASDTIOA2LogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [(ASDTIOA2BlockControl *)v15 synchronizeWithRegistryDictionary:buf, v10];
    }

    LOBYTE(v6) = 0;
  }

  std::mutex::unlock((self + 200));
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1651272546 || a3->mSelector == 1651272548)
  {
    return 1;
  }

  v8 = v3;
  v9 = v4;
  v7.receiver = self;
  v7.super_class = ASDTIOA2BlockControl;
  return [(ASDTIOA2BlockControl *)&v7 hasProperty:?];
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1651272546)
  {

    return [(ASDTIOA2BlockControl *)self settable];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDTIOA2BlockControl;
    return [(ASDTIOA2BlockControl *)&v6 isPropertySettable:?];
  }
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1651272548)
  {
    return 8;
  }

  if (a3->mSelector == 1651272546)
  {
    std::mutex::lock((self + 200));
    v6 = *(self + 48);
    std::mutex::unlock((self + 200));
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ASDTIOA2BlockControl;
    return [ASDTIOA2BlockControl dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
  }

  return v6;
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8
{
  LOBYTE(v8) = 0;
  if (a6 && a3 && a7)
  {
    if (a3->mSelector == 1651272548)
    {
      v14 = [(ASDTIOA2BlockControl *)self ioa2Device];
      v15 = [v14 ioa2UserClient];

      if (!v15)
      {
        LOBYTE(v8) = 0;
        return v8;
      }

      std::mutex::lock((self + 200));
      LOBYTE(v8) = *a6 > 7;
      if (*a6 >= 8)
      {
        *a6 = 8;
        ASDT::IOA2UserClient::CopyControlDictionaryByID(v15, [(ASDTIOA2BlockControl *)self userClientID], &v21);
        ASDT::IOA2UserClient::CopyBlockControlInfo_Descriptor(&v21, &v20);
        v16 = v21;
        *a7 = v20;
        if (v16)
        {
          CFRelease(v16);
        }
      }

      v17 = (self + 200);
      goto LABEL_20;
    }

    if (a3->mSelector == 1651272546)
    {
      v12 = [(ASDTIOA2BlockControl *)self ioa2Device];
      v8 = [v12 ioa2UserClient];

      if (v8)
      {
        std::mutex::lock((self + 200));
        if (!*(self + 23))
        {
          goto LABEL_18;
        }

        v13 = *(self + 48);
        if (v13 >= *a6)
        {
          v13 = *a6;
        }

        *a6 = v13;
        if (ASDT::IOA2UserClient::MoveBlockControlData(v8, [(ASDTIOA2BlockControl *)self userClientID], 0, *a6))
        {
          memcpy(a7, *(self + 23), *a6);
          LOBYTE(v8) = 1;
        }

        else
        {
LABEL_18:
          LOBYTE(v8) = 0;
        }

        v17 = (self + 200);
LABEL_20:
        std::mutex::unlock(v17);
      }
    }

    else
    {
      v19.receiver = self;
      v19.super_class = ASDTIOA2BlockControl;
      LOBYTE(v8) = [ASDTIOA2BlockControl getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
    }
  }

  return v8;
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int)a6 andData:(const void *)a7 forClient:(int)a8
{
  LOBYTE(v8) = 0;
  if (a3 && a7)
  {
    LODWORD(v10) = a6;
    if (a3->mSelector == 1651272546)
    {
      v12 = [(ASDTIOA2BlockControl *)self ioa2Device];
      v8 = [v12 ioa2UserClient];

      if (v8)
      {
        std::mutex::lock((self + 200));
        v13 = *(self + 23);
        if (v13)
        {
          v14 = *(self + 48);
          if (v14 >= v10)
          {
            v10 = v10;
          }

          else
          {
            v10 = v14;
          }

          memcpy(v13, a7, v10);
          LOBYTE(v8) = ASDT::IOA2UserClient::MoveBlockControlData(v8, [(ASDTIOA2BlockControl *)self userClientID], 1u, v10);
        }

        else
        {
          LOBYTE(v8) = 0;
        }

        std::mutex::unlock((self + 200));
      }
    }

    else
    {
      v16.receiver = self;
      v16.super_class = ASDTIOA2BlockControl;
      LOBYTE(v8) = [ASDTIOA2BlockControl setProperty:sel_setProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
    }
  }

  return v8;
}

- (ASDTIOA2Device)ioa2Device
{
  WeakRetained = objc_loadWeakRetained(self + 35);

  return WeakRetained;
}

- (id).cxx_construct
{
  v3 = self + 80;
  *(self + 10) = MEMORY[0x277CEFBA8] + 16;
  ASDT::IOConnect::IOConnect((self + 88));
  *(v3 + 13) = 0;
  *(v3 + 28) = 0;
  *(self + 25) = 850045863;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 32) = 0;
  return self;
}

- (void)synchronizeWithRegistryDictionary:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@: Failed to map block memory.", buf, 0xCu);
}

@end