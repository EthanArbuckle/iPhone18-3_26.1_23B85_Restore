@interface APCPlayer
+ (id)carrierAssetIdentifiers;
+ (id)fileNameForCarrierAsset:(unint64_t)a3;
+ (id)urlForCarrierAsset:(unint64_t)a3;
+ (unint64_t)assetIDFromIdentifier:(id)a3;
- (APCPlayer)init;
- (APCPlayer)initWithCodecConfiguration:(id)a3;
- (APCPlayer)initWithListenerCapabilityData:(id)a3 payloadLength:(unint64_t)a4;
- (APCPlayerEmbedInfo)embeddingInfo;
- (BOOL)startSendAtTime:(unint64_t)a3 withBeginning:(id)a4;
- (float)preparePayload:(id)a3 usingCarrierAsset:(unint64_t)a4 error:(id *)a5;
- (float)preparePayload:(id)a3 usingCarrierAtURL:(id)a4 error:(id *)a5;
- (id)createCompatibleConfigForCapabilites:(id)a3;
- (void)setCallbackTimingMSec:(unint64_t)a3;
- (void)setDispatchQueue:(id)a3;
- (void)stopSendAfterMinimumLoops:(unint64_t)a3 withCompletion:(id)a4;
- (void)stopSendWithFadeOut:(float)a3 completion:(id)a4;
@end

@implementation APCPlayer

- (APCPlayer)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v4 = [(APCPlayer *)self initWithListenerCapabilityData:v3 payloadLength:0];

  return v4;
}

- (id)createCompatibleConfigForCapabilites:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [APCCodecFactory createBestConfigForCapability:*(*(&v12 + 1) + 8 * i)];
        if (v7)
        {
          v8 = v3;
          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = APCLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "Can't find a codec capability data", v11, 2u);
  }

  v7 = 0;
LABEL_13:

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (APCPlayer)initWithListenerCapabilityData:(id)a3 payloadLength:(unint64_t)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32.receiver = self;
  v32.super_class = APCPlayer;
  v7 = [(APCPlayer *)&v32 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v7->_isPlaying = 0;
  if (!v6 || ![v6 length])
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v15 fromData:v6 error:0];
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_20;
  }

  v17 = v16;
  v18 = [v17 objectForKey:@"version"];
  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  if (![v18 unsignedIntegerValue])
  {
    v20 = [v17 objectForKey:@"aupccapability"];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [(APCPlayer *)v8 createCompatibleConfigForCapabilites:v20];
        codecConfig = v8->_codecConfig;
        v8->_codecConfig = v21;

        v23 = v8->_codecConfig;
        if (v23)
        {
          [(AUPasscodeCodecConfiguration *)v23 setPayloadLengthBytes:a4];
          v24 = APCLogObject();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = v8->_codecConfig;
            *buf = 138412290;
            v34 = v25;
            _os_log_impl(&dword_24158E000, v24, OS_LOG_TYPE_INFO, "Created codec config from capabilities: %@", buf, 0xCu);
          }

          v26 = objc_alloc(MEMORY[0x277CBEA90]);
          v27 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8->_codecConfig requiringSecureCoding:0 error:0];
          v28 = [v26 initWithData:v27];
          configurationData = v8->_configurationData;
          v8->_configurationData = v28;

          goto LABEL_9;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_9:
  v8->_callbackTimingMSec = 300;

LABEL_10:
  v19 = v8;
LABEL_21:

  v30 = *MEMORY[0x277D85DE8];
  return v19;
}

- (APCPlayer)initWithCodecConfiguration:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17.receiver = self;
  v17.super_class = APCPlayer;
  v6 = [(APCPlayer *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPlaying = 0;
    objc_storeStrong(&v6->_codecConfig, a3);
    if (!v7->_codecConfig)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v8 = APCLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      codecConfig = v7->_codecConfig;
      *buf = 138412290;
      v19 = codecConfig;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_INFO, "Created codec config from configuration: %@", buf, 0xCu);
    }

    v10 = objc_alloc(MEMORY[0x277CBEA90]);
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7->_codecConfig requiringSecureCoding:0 error:0];
    v12 = [v10 initWithData:v11];
    configurationData = v7->_configurationData;
    v7->_configurationData = v12;
  }

  v14 = v7;
LABEL_8:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)setDispatchQueue:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_dispatchQueue, a3);
  playerEngine = self->_playerEngine;
  if (playerEngine)
  {
    [(APCPlayerEngine *)playerEngine setDispatchQueue:v6];
  }
}

- (void)setCallbackTimingMSec:(unint64_t)a3
{
  if (!self->_isPlaying)
  {
    self->_callbackTimingMSec = a3;
  }
}

+ (id)urlForCarrierAsset:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [APCPlayer fileNameForCarrierAsset:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:v3 withExtension:@"wav"];

    v6 = APCLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 absoluteString];
      v10 = 136315138;
      v11 = [v7 UTF8String];
      _os_log_impl(&dword_24158E000, v6, OS_LOG_TYPE_INFO, "Carrier Resource path: %s", &v10, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)fileNameForCarrierAsset:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return off_278CE1E88[a3 - 1];
  }
}

+ (id)carrierAssetIdentifiers
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"WOC";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v10[0] = v2;
  v9[1] = @"light";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v10[1] = v3;
  v9[2] = @"pingpong";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  v10[2] = v4;
  v9[3] = @"ring";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (unint64_t)assetIDFromIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[APCPlayer carrierAssetIdentifiers];
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (float)preparePayload:(id)a3 usingCarrierAsset:(unint64_t)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (!v8 || (v10 = [v8 length], v10 != -[AUPasscodeCodecConfiguration payloadLengthBytes](self->_codecConfig, "payloadLengthBytes")))
  {
    v17 = APCLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (v9)
      {
        v18 = [v9 length];
      }

      else
      {
        v18 = 0;
      }

      v19 = [(AUPasscodeCodecConfiguration *)self->_codecConfig payloadLengthBytes];
      v22 = 134218240;
      v23 = v18;
      v24 = 2048;
      v25 = v19;
      _os_log_impl(&dword_24158E000, v17, OS_LOG_TYPE_ERROR, "Payload passed to prepare contains %lu bytes, was told we'd send %ld bytes. These must match!", &v22, 0x16u);
    }

    goto LABEL_13;
  }

  v11 = [APCPlayer urlForCarrierAsset:a4];
  v12 = [APCPlayerEngine playerWithAssetURL:v11 codecConfig:self->_codecConfig payload:v9 error:a5];
  playerEngine = self->_playerEngine;
  self->_playerEngine = v12;

  if (self->_dispatchQueue)
  {
    [(APCPlayerEngine *)self->_playerEngine setDispatchQueue:?];
  }

  v14 = self->_playerEngine;
  if (!v14)
  {
LABEL_13:
    v16 = -1.0;
    goto LABEL_14;
  }

  [(APCPlayerEngine *)v14 evaluateAsset];
  v16 = v15;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (float)preparePayload:(id)a3 usingCarrierAtURL:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v8 || (v10 = [v8 length], v10 != -[AUPasscodeCodecConfiguration payloadLengthBytes](self->_codecConfig, "payloadLengthBytes")))
  {
    v16 = APCLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (v8)
      {
        v17 = [v8 length];
      }

      else
      {
        v17 = 0;
      }

      v18 = [(AUPasscodeCodecConfiguration *)self->_codecConfig payloadLengthBytes];
      v21 = 134218240;
      v22 = v17;
      v23 = 2048;
      v24 = v18;
      _os_log_impl(&dword_24158E000, v16, OS_LOG_TYPE_ERROR, "Payload passed to prepare contains %lu bytes, was told we'd send %ld bytes. These must match!", &v21, 0x16u);
    }

    goto LABEL_11;
  }

  v11 = [APCPlayerEngine playerWithAssetURL:v9 codecConfig:self->_codecConfig payload:v8 error:a5];
  playerEngine = self->_playerEngine;
  self->_playerEngine = v11;

  v13 = self->_playerEngine;
  if (!v13)
  {
LABEL_11:
    v15 = -1.0;
    goto LABEL_12;
  }

  [(APCPlayerEngine *)v13 evaluateAsset];
  v15 = v14;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)startSendAtTime:(unint64_t)a3 withBeginning:(id)a4
{
  v6 = a4;
  playerEngine = self->_playerEngine;
  if (playerEngine)
  {
    v8 = [(APCPlayerEngine *)playerEngine startEngineAtTime:a3 withBeginning:v6 callbackTime:self->_callbackTimingMSec];
    self->_isPlaying = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)stopSendAfterMinimumLoops:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  playerEngine = self->_playerEngine;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__APCPlayer_stopSendAfterMinimumLoops_withCompletion___block_invoke;
  v9[3] = &unk_278CE1E68;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(APCPlayerEngine *)playerEngine stopEngineAfterMinimumLoops:a3 withCompletion:v9];
}

- (void)stopSendWithFadeOut:(float)a3 completion:(id)a4
{
  v6 = a4;
  playerEngine = self->_playerEngine;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__APCPlayer_stopSendWithFadeOut_completion___block_invoke;
  v10[3] = &unk_278CE1E68;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  *&v9 = a3;
  [(APCPlayerEngine *)playerEngine stopEngineWithFadeOut:v10 completion:v9];
}

- (APCPlayerEmbedInfo)embeddingInfo
{
  playerEngine = self->_playerEngine;
  if (playerEngine)
  {
    playerEngine = [playerEngine embeddingInfo];
    v2 = vars8;
  }

  return playerEngine;
}

@end