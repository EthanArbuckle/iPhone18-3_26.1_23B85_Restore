@interface APCEncoderProcessor
- (APCEncoderProcessor)initWithAssetURL:(id)a3 codecConfig:(id)a4 payload:(id)a5 outputURL:(id)a6 error:(id *)a7;
- (BOOL)getEmbeddingInfo:(id *)a3;
- (float)evaluateAsset:(id)a3;
@end

@implementation APCEncoderProcessor

- (APCEncoderProcessor)initWithAssetURL:(id)a3 codecConfig:(id)a4 payload:(id)a5 outputURL:(id)a6 error:(id *)a7
{
  v51[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v41.receiver = self;
  v41.super_class = APCEncoderProcessor;
  v16 = [(APCEncoderProcessor *)&v41 init];
  if (v16)
  {
    if (!v12 || !v13 || !v14 || !v15)
    {
      v30 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA450];
      v51[0] = @"Invalid input arguments";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      *a7 = [v30 errorWithDomain:@"com.apple.audiopasscode" code:100 userInfo:v31];

LABEL_22:
      v35 = 0;
      goto LABEL_23;
    }

    +[AUPasscodeEncoder registerAU];
    v17 = [AUPasscodeEncoder alloc];
    +[AUPasscodeEncoder getAUDesc];
    v18 = [(AUPasscodeEncoder *)v17 initWithComponentDescription:buf options:0 error:a7];
    encoderAU = v16->_encoderAU;
    v16->_encoderAU = v18;

    if (!v16->_encoderAU)
    {
      v32 = APCLogObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v32, OS_LOG_TYPE_ERROR, "Failed to create the encoder AU", buf, 2u);
      }

      goto LABEL_22;
    }

    [v13 setPayloadLengthBytes:{objc_msgSend(v14, "length")}];
    v20 = [(AUPasscodeEncoder *)v16->_encoderAU inputBusses];
    v21 = [v20 objectAtIndexedSubscript:0];
    v22 = [v21 format];
    [v22 sampleRate];
    [v13 setSampleRate:v23];

    [(AUPasscodeEncoder *)v16->_encoderAU setPayload:v14];
    [(AUPasscodeEncoder *)v16->_encoderAU setCodecConfig:v13];
    v24 = APCLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v47 = *&v12;
      v48 = 2112;
      v49 = v15;
      _os_log_impl(&dword_24158E000, v24, OS_LOG_TYPE_INFO, "Asset URL: '%@'\nOutput File URL: '%@'", buf, 0x16u);
    }

    [(APCEncoderProcessor *)v16 evaluateAsset:v12];
    v26 = v25;
    if (v25 < 0.1)
    {
      v27 = APCLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v47 = v26;
        _os_log_impl(&dword_24158E000, v27, OS_LOG_TYPE_ERROR, "The success rate of the input file is too low: %f", buf, 0xCu);
      }

      v28 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v45 = @"The asset score is too low";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *a7 = [v28 errorWithDomain:@"com.apple.audiopasscode" code:102 userInfo:v29];

      goto LABEL_22;
    }

    v33 = [[AUAudioUnitOfflineProcessor alloc] initWithAudioUnit:v16->_encoderAU inputFileURL:v12 outputFileURL:v15 ioSampleRate:-1];
    processor = v16->_processor;
    v16->_processor = v33;

    [(AUPasscodeEncoder *)v16->_encoderAU setAssetLength:[(AUAudioUnitOfflineProcessor *)v16->_processor assetLength]];
    if (!v16->_processor)
    {
      v36 = APCLogObject();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v36, OS_LOG_TYPE_ERROR, "Failed to create the offline processor", buf, 2u);
      }

      v37 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43 = @"Failed to create the offline encoder processor";
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *a7 = [v37 errorWithDomain:@"com.apple.audiopasscode" code:101 userInfo:v38];

      goto LABEL_22;
    }
  }

  v35 = v16;
LABEL_23:

  v39 = *MEMORY[0x277D85DE8];
  return v35;
}

- (float)evaluateAsset:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0;
  v5 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:v4 error:&v30];
  v6 = v30;
  if (v6)
  {
    v7 = v6;
    v8 = APCLogObject();
    v9 = 0.0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "Failed to open input file URL: %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CB83C8]);
    v11 = [v5 processingFormat];
    v8 = [v10 initWithPCMFormat:v11 frameCapacity:objc_msgSend(v5, "length")];

    v29 = 0;
    [v5 readIntoBuffer:v8 error:&v29];
    v7 = v29;
    if (v7)
    {
      v12 = APCLogObject();
      v9 = 0.0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&dword_24158E000, v12, OS_LOG_TYPE_ERROR, "Failed to read the input file: %@", buf, 0xCu);
      }
    }

    else
    {
      v13 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
      v12 = [v13 copy];

      v14 = [v5 processingFormat];
      [v14 sampleRate];
      [v12 setSampleRate:(v15 + 0.5)];

      v28 = 0;
      [APCCodecFactory evaluateCarrierWithConfig:v12 carrier:v8 embeddingResult:&v28];
      v9 = v16;
      v17 = v28;
      if (v17)
      {
        [(AUPasscodeEncoder *)self->_encoderAU setPasscodeEmbedInfo:v17];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:108];
        v19 = [v17 objectForKey:v18];
        v27 = [v19 unsignedIntegerValue];

        v20 = [MEMORY[0x277CCABB0] numberWithInt:1000];
        v21 = [v17 objectForKey:v20];
        v22 = [v21 unsignedIntegerValue];

        v23 = [[APCPlayerEmbedInfo alloc] initWithPasscodeDurationNSec:((v22 + v27) / [v12 sampleRate]* 1000000000.0)];
        passcodeEmbedInfo = self->_passcodeEmbedInfo;
        self->_passcodeEmbedInfo = v23;
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)getEmbeddingInfo:(id *)a3
{
  passcodeEmbedInfo = self->_passcodeEmbedInfo;
  if (passcodeEmbedInfo)
  {
    passcodeEmbedInfo = passcodeEmbedInfo;
    *a3 = passcodeEmbedInfo;
  }

  return passcodeEmbedInfo != 0;
}

@end