@interface ASDTIOA2Control
+ (id)controlWithDictionary:(id)a3 owningDevice:(id)a4;
@end

@implementation ASDTIOA2Control

+ (id)controlWithDictionary:(id)a3 owningDevice:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if (v7)
  {
    CFRetain(v7);
    cf = v8;
    v9 = CFGetTypeID(v8);
    if (v9 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    cf = 0;
  }

  v11 = [v8 objectForKeyedSubscript:@"control ID"];
  v12 = [v11 unsignedIntValue];

  ControlInfo_Class = ASDT::IOA2UserClient::GetControlInfo_Class(&cf, v13);
  ControlInfo_BaseClass = ASDT::IOA2UserClient::GetControlInfo_BaseClass(&cf, v15);
  ControlInfo_Scope = ASDT::IOA2UserClient::GetControlInfo_Scope(&cf, v17);
  ControlInfo_Element = ASDT::IOA2UserClient::GetControlInfo_Element(&cf, v19);
  Only = ASDT::IOA2UserClient::GetControlInfo_IsReadOnly(&cf, v21);
  if (ControlInfo_BaseClass <= 1936483187)
  {
    if (ControlInfo_BaseClass == 1651273579)
    {
      v25 = [[ASDTIOA2BlockControl alloc] initWithIOA2Device:v6 userClientID:v12 isSettable:Only ^ 1u forElement:ControlInfo_Element inScope:ControlInfo_Scope objectClassID:ControlInfo_Class];
      goto LABEL_39;
    }

    if (ControlInfo_BaseClass != 1818588780)
    {
      goto LABEL_20;
    }

    v24 = off_278CE8970;
LABEL_18:
    v25 = [objc_alloc(*v24) initWithIOA2Device:v6 userClientID:v12 isSettable:Only ^ 1u forElement:ControlInfo_Element inScope:ControlInfo_Scope objectClassID:ControlInfo_Class dictionary:v8];
    goto LABEL_39;
  }

  switch(ControlInfo_BaseClass)
  {
    case 1936483188:
      v24 = off_278CE8990;
      goto LABEL_18;
    case 1936483442:
      v24 = off_278CE89A0;
      goto LABEL_18;
    case 1953458028:
      if (ControlInfo_Class > 1885888877)
      {
        if (ControlInfo_Class == 1885888878)
        {
          v23 = off_278CE8980;
          goto LABEL_38;
        }

        if (ControlInfo_Class == 1885893481)
        {
          v23 = off_278CE8988;
          goto LABEL_38;
        }
      }

      else
      {
        if (ControlInfo_Class == 1784767339)
        {
          v23 = off_278CE8968;
          goto LABEL_38;
        }

        if (ControlInfo_Class == 1836414053)
        {
          v23 = off_278CE8978;
LABEL_38:
          v25 = [objc_alloc(*v23) initWithIOA2Device:v6 userClientID:v12 isSettable:Only ^ 1u element:ControlInfo_Element scope:ControlInfo_Scope dictionary:v8];
          goto LABEL_39;
        }
      }

      v25 = [[ASDTIOA2BooleanControl alloc] initWithIOA2Device:v6 userClientID:v12 isSettable:Only ^ 1u element:ControlInfo_Element scope:ControlInfo_Scope objectClassID:ControlInfo_Class dictionary:v8];
LABEL_39:
      v31 = v25;
      goto LABEL_40;
  }

LABEL_20:
  v26 = ASDTIOA2LogType();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = HIBYTE(ControlInfo_BaseClass);
    if ((ControlInfo_BaseClass - 0x20000000) >> 24 >= 0x5F)
    {
      v27 = 32;
    }

    v28 = BYTE2(ControlInfo_BaseClass);
    if (BYTE2(ControlInfo_BaseClass) - 32 >= 0x5F)
    {
      v28 = 32;
    }

    v29 = BYTE1(ControlInfo_BaseClass);
    if (BYTE1(ControlInfo_BaseClass) - 32 >= 0x5F)
    {
      v29 = 32;
    }

    *buf = 67110144;
    v36 = ControlInfo_BaseClass;
    v37 = 1024;
    v38 = v27;
    v39 = 1024;
    v40 = v28;
    v41 = 1024;
    v42 = v29;
    if (ControlInfo_BaseClass - 32 >= 0x5F)
    {
      v30 = 32;
    }

    else
    {
      v30 = ControlInfo_BaseClass;
    }

    v43 = 1024;
    v44 = v30;
    _os_log_impl(&dword_2416BA000, v26, OS_LOG_TYPE_DEFAULT, "Warning: Control base class %x ('%c%c%c%c') not supported", buf, 0x20u);
  }

  v31 = 0;
LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

@end