@interface AATrustedDeviceListResponse
+ (id)_privacySensitiveKeys;
- (AATrustedDeviceListResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (id)privacySensitiveResponseBody;
@end

@implementation AATrustedDeviceListResponse

- (AATrustedDeviceListResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = AATrustedDeviceListResponse;
  v4 = [(AAResponse *)&v36 initWithHTTPResponse:a3 data:a4 bodyIsPlist:0];
  v5 = v4;
  if (!v4)
  {
LABEL_14:
    v24 = v5;
    goto LABEL_18;
  }

  v6 = [(AAResponse *)v4 responseDictionary];
  v7 = [v6 objectForKeyedSubscript:@"manageDevices"];

  v8 = [v7 objectForKeyedSubscript:@"devices"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x1E695DF70] array];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v33;
        do
        {
          v14 = 0;
          do
          {
            if (*v33 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v32 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [AATrustedDevice alloc];
              v17 = [(AATrustedDevice *)v16 initWithDictionary:v15, v32];
              [(NSArray *)v9 addObject:v17];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v12);
      }

      devices = v5->_devices;
      v5->_devices = v9;

      v19 = MEMORY[0x1E696AD98];
      v20 = [(AAResponse *)v5 responseDictionary];
      v21 = [v20 objectForKeyedSubscript:@"defaultNumberOfDevicesToShow"];
      v22 = [v19 numberWithInt:{objc_msgSend(v21, "intValue")}];
      defaultNumberOfDevicesToShow = v5->_defaultNumberOfDevicesToShow;
      v5->_defaultNumberOfDevicesToShow = v22;

      goto LABEL_14;
    }
  }

  v25 = [(AAResponse *)v5 responseDictionary];
  v26 = [v25 objectForKeyedSubscript:@"status"];

  v27 = [(AAResponse *)v5 responseDictionary];
  v28 = [v27 objectForKeyedSubscript:@"status-message"];

  v29 = _AALogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v26;
    v39 = 2112;
    v40 = v28;
    _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Error: Trusted device list not seen in server response data with status=%@ message=%@", buf, 0x16u);
  }

  v24 = 0;
LABEL_18:

  v30 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (id)_privacySensitiveKeys
{
  if (_privacySensitiveKeys_onceToken_684 != -1)
  {
    +[AATrustedDeviceListResponse _privacySensitiveKeys];
  }

  v3 = _privacySensitiveKeys_keysToRedact_683;

  return v3;
}

void __52__AATrustedDeviceListResponse__privacySensitiveKeys__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"pushToken";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = _privacySensitiveKeys_keysToRedact_683;
  _privacySensitiveKeys_keysToRedact_683 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)privacySensitiveResponseBody
{
  v3 = [(AAResponse *)self responseDictionary];

  if (v3)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    v5 = [(AAResponse *)self responseDictionary];
    v6 = +[AATrustedDeviceListResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:v5 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end