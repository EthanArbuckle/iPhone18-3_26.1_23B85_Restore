@interface APCCodecFactory
+ (float)evaluateCarrierWithConfig:(id)config carrier:(id)carrier embeddingResult:(id *)result;
+ (id)createBestConfigForCapability:(id)capability;
+ (unique_ptr<APCDecoderBase,)createDecoderWithConfig:(id)config apcConfig:(void *)apcConfig error:(id *)error;
+ (unique_ptr<APCEncoderBase,)createEncoderWithConfig:(id)config apcConfig:(void *)apcConfig payloadData:(id)data;
@end

@implementation APCCodecFactory

+ (unique_ptr<APCDecoderBase,)createDecoderWithConfig:(id)config apcConfig:(void *)apcConfig error:(id *)error
{
  v6 = v5;
  v10 = *MEMORY[0x277D85DE8];
  configCopy = config;
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

+ (unique_ptr<APCEncoderBase,)createEncoderWithConfig:(id)config apcConfig:(void *)apcConfig payloadData:(id)data
{
  v7 = v5;
  v13 = *MEMORY[0x277D85DE8];
  configCopy = config;
  dataCopy = data;
  *v7 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = configCopy;
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

+ (float)evaluateCarrierWithConfig:(id)config carrier:(id)carrier embeddingResult:(id *)result
{
  v11 = *MEMORY[0x277D85DE8];
  configCopy = config;
  carrierCopy = carrier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = configCopy;
    operator new();
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1.0;
}

+ (id)createBestConfigForCapability:(id)capability
{
  v12 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = APCLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_24158E000, v4, OS_LOG_TYPE_INFO, "Find an EchoCodec Capabiltity data", &v10, 2u);
    }

    v5 = [[EchoCodecConfiguration alloc] initWithCapabilityData:capabilityCopy];
    v6 = APCLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      algorithmVersionNumber = [(EchoCodecConfiguration *)v5 algorithmVersionNumber];
      v10 = 134217984;
      v11 = (algorithmVersionNumber / 100.0);
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