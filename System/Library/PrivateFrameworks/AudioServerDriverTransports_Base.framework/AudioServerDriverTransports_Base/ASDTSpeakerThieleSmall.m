@interface ASDTSpeakerThieleSmall
- (ASDTSpeakerThieleSmall)initWithSysCfgData:(id)a3;
@end

@implementation ASDTSpeakerThieleSmall

- (ASDTSpeakerThieleSmall)initWithSysCfgData:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ASDTSpeakerThieleSmall;
  v5 = [(ASDTAcousticData *)&v22 initWithSysCfgData:v4 andType:1399870547];
  if (v5)
  {
    v6 = v4;
    v7 = *[v4 bytes];
    if (v7 == 2)
    {
      v8 = v4;
      v9 = [v4 bytes];
      if (ASDT::Acoustic::Base::valid(v9, [v4 length], 0x16uLL, 2))
      {
        v10 = ASDT::Acoustic::Data<ASDT::Acoustic::SpeakerThieleSmallV2,(unsigned short)2>::entries(v9);
        if (v10)
        {
          v11 = v10;
          [(ASDTAcousticData *)v5 setEntries:v10];
          v12 = ASDTBaseLogType();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(ASDTAcousticData *)v5 name];
            v14 = [(ASDTAcousticData *)v5 entries];
            *buf = 138412546;
            v24 = v13;
            v25 = 2112;
            v26 = v14;
            _os_log_impl(&dword_241659000, v12, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
          }

          goto LABEL_8;
        }

        v16 = ASDTBaseLogType();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v19 = [(ASDTAcousticData *)v5 name];
          [(ASDTSpeakerThieleSmall *)v19 initWithSysCfgData:buf, v16];
        }
      }

      else
      {
        v16 = ASDTBaseLogType();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = [(ASDTAcousticData *)v5 name];
          [(ASDTSpeakerThieleSmall *)v18 initWithSysCfgData:buf, v16];
        }
      }
    }

    else
    {
      v16 = ASDTBaseLogType();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [(ASDTAcousticData *)v5 name];
        [(ASDTSpeakerThieleSmall *)v17 initWithSysCfgData:buf, v7, v16];
      }
    }

    v15 = 0;
    goto LABEL_16;
  }

LABEL_8:
  v15 = v5;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)initWithSysCfgData:(int)a3 .cold.1(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Unsupported data version: %hu", buf, 0x12u);
}

- (void)initWithSysCfgData:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Invalid data.", buf, 0xCu);
}

- (void)initWithSysCfgData:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Could not generate entries from data.", buf, 0xCu);
}

@end