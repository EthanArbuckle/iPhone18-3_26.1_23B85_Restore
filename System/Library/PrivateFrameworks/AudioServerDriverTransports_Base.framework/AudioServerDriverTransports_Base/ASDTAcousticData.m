@interface ASDTAcousticData
@end

@implementation ASDTAcousticData

+ (void)createWithSysCfgData:(unsigned int)a1 andType:(NSObject *)a2 .cold.1(unsigned int a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HIBYTE(a1);
  if ((a1 - 0x20000000) >> 24 >= 0x5F)
  {
    v2 = 32;
  }

  v3 = BYTE2(a1);
  if (BYTE2(a1) - 32 >= 0x5F)
  {
    v3 = 32;
  }

  v4 = BYTE1(a1);
  if (BYTE1(a1) - 32 >= 0x5F)
  {
    v4 = 32;
  }

  v7[0] = 67109888;
  v7[1] = v2;
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v4;
  if (a1 - 32 >= 0x5F)
  {
    v5 = 32;
  }

  else
  {
    v5 = a1;
  }

  v12 = 1024;
  v13 = v5;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "ASDTAcousticData: Unsupported acoustic data type: '%c%c%c%c'", v7, 0x1Au);
  v6 = *MEMORY[0x277D85DE8];
}

@end