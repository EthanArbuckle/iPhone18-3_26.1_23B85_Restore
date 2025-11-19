@interface APCCodecFactory
+ (float)evaluateCarrierWithConfig:(id)a3 carrier:(id)a4 embeddingResult:(id *)a5;
+ (id)createBestConfigForCapability:(id)a3;
+ (unique_ptr<APCDecoderBase,)createDecoderWithConfig:(id)a3 apcConfig:(void *)a4 error:(id *)a5;
+ (unique_ptr<APCEncoderBase,)createEncoderWithConfig:(id)a3 apcConfig:(void *)a4 payloadData:(id)a5;
@end

@implementation APCCodecFactory

+ (unique_ptr<APCDecoderBase,)createDecoderWithConfig:(id)a3 apcConfig:(void *)a4 error:(id *)a5
{
  v6 = v5;
  v10 = *MEMORY[0x277D85DE8];
  v7 = a3;
  *v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    operator new();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      operator new();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (unique_ptr<APCEncoderBase,)createEncoderWithConfig:(id)a3 apcConfig:(void *)a4 payloadData:(id)a5
{
  v7 = v5;
  v13 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  *v7 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    operator new();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      operator new();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (float)evaluateCarrierWithConfig:(id)a3 carrier:(id)a4 embeddingResult:(id *)a5
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    operator new();
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1.0;
}

+ (id)createBestConfigForCapability:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = APCLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_24158E000, v4, OS_LOG_TYPE_INFO, "Find an EchoCodec Capabiltity data", &v10, 2u);
    }

    v5 = [[EchoCodecConfiguration alloc] initWithCapabilityData:v3];
    v6 = APCLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(EchoCodecConfiguration *)v5 algorithmVersionNumber];
      v10 = 134217984;
      v11 = (v7 / 100.0);
      _os_log_impl(&dword_24158E000, v6, OS_LOG_TYPE_INFO, "EchoCodec algorithm version: %3.2f", &v10, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

@end