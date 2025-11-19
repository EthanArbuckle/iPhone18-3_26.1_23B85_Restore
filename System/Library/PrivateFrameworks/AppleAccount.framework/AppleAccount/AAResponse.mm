@interface AAResponse
- (AAResponse)initWithHTTPResponse:(id)a3 data:(id)a4 bodyIsPlist:(BOOL)a5;
- (AAResponse)initWithHTTPResponse:(id)a3 data:(id)a4 mediaType:(id)a5;
- (id)_deviceSpecificLocalizedString:(id)a3;
- (id)_stringWithDescriptionForResponseError:(id)a3;
- (void)_parseResponse:(id)a3 ofType:(id)a4;
@end

@implementation AAResponse

- (void)_parseResponse:(id)a3 ofType:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  objc_storeStrong(&self->_mediaType, a4);
  v8 = a3;
  v9 = [MEMORY[0x1E6985E00] ofType:v7];
  v22 = 0;
  v10 = [v9 dictionaryFromObject:v8 error:&v22];

  v11 = v22;
  responseDictionary = self->_responseDictionary;
  self->_responseDictionary = v10;

  v13 = _AALogSystem();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 localizedDescription];
      *buf = 138412546;
      v24 = v7;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Unable to parse response of type: '%@', error: %@", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E695DF90] dictionary];
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"COMMUNICATIONS_ERROR" value:&stru_1F2EF6280 table:@"Localizable"];
    [v16 setObject:v18 forKey:*MEMORY[0x1E696A578]];

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:objc_msgSend(v11 userInfo:{"code"), v16}];
    [(AAResponse *)self setError:v19];
  }

  else
  {
    v21 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

    if (!v21)
    {
      goto LABEL_6;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = _AALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [AAResponse _parseResponse:? ofType:?];
      }
    }

    else
    {
      if (![MEMORY[0x1E6985E20] isInternalBuild])
      {
        goto LABEL_6;
      }

      v16 = _AALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [AAResponse _parseResponse:? ofType:?];
      }
    }
  }

LABEL_6:
  v20 = *MEMORY[0x1E69E9840];
}

- (AAResponse)initWithHTTPResponse:(id)a3 data:(id)a4 bodyIsPlist:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 MIMEType];
  v11 = [MEMORY[0x1E6985E00] ofType:v10];

  if (!v11)
  {
    v12 = @"application/json";
    if (v5)
    {
      v12 = @"application/x-plist";
    }

    v13 = v12;

    v10 = v13;
  }

  v14 = [(AAResponse *)self initWithHTTPResponse:v8 data:v9 mediaType:v10];

  return v14;
}

- (AAResponse)initWithHTTPResponse:(id)a3 data:(id)a4 mediaType:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v57.receiver = self;
  v57.super_class = AAResponse;
  v12 = [(AAResponse *)&v57 init];
  v13 = v12;
  if (v12)
  {
    if (v9)
    {
      objc_storeStrong(&v12->_httpResponse, a3);
      v13->_statusCode = [v9 statusCode];
      objc_storeStrong(&v13->_data, a4);
    }

    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSHTTPURLResponse *)v13->_httpResponse statusCode];
      *buf = 134217984;
      v59 = v15;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Response code: %ld", buf, 0xCu);
    }

    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(NSHTTPURLResponse *)v13->_httpResponse allHeaderFields];
      *buf = 138412290;
      v59 = v17;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Response headers: %@", buf, 0xCu);
    }

    [(AAResponse *)v13 _parseResponse:v10 ofType:v11];
    if ([(NSHTTPURLResponse *)v13->_httpResponse statusCode]== 200)
    {
      v18 = [(NSHTTPURLResponse *)v13->_httpResponse allHeaderFields];
      v19 = [v18 objectForKeyedSubscript:@"Cache-control"];

      if (!v19)
      {
        goto LABEL_66;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_66;
      }

      v20 = [v19 componentsSeparatedByString:@"="];
      if ([v20 count] != 2)
      {
        goto LABEL_65;
      }

      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = [v21 isEqual:@"max-age"];

      if (!v22 || ([v20 objectAtIndexedSubscript:1], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "integerValue"), v23, v24 < 1))
      {
LABEL_65:

LABEL_66:
        goto LABEL_67;
      }

      v25 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
      maxAge = v13->_maxAge;
      v13->_maxAge = v25;
LABEL_64:

      goto LABEL_65;
    }

    v20 = [MEMORY[0x1E695DF90] dictionary];
    v27 = [(NSHTTPURLResponse *)v13->_httpResponse statusCode];
    v28 = _AALogSystem();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27 > 404)
    {
      if (v27 == 405)
      {
        if (v29)
        {
          *buf = 0;
          v30 = "Method not allowed.";
          goto LABEL_36;
        }

LABEL_37:

        v38 = [(AAResponse *)v13 responseDictionary];
        v39 = [v38 objectForKey:@"message"];

        if (v39)
        {
LABEL_38:
          v34 = [(AAResponse *)v13 responseDictionary];
          v40 = [v34 objectForKey:@"message"];
LABEL_41:
          v19 = v40;
LABEL_55:

          if (v19)
          {
            [v20 setObject:v19 forKey:*MEMORY[0x1E696A578]];
          }

          v49 = [(AAResponse *)v13 responseDictionary];

          if (v49)
          {
            v50 = [(AAResponse *)v13 responseDictionary];
            [v20 setObject:v50 forKey:@"responseDictionary"];
          }

          v51 = [(AAResponse *)v13 error];

          if (v51)
          {
            goto LABEL_65;
          }

          v52 = [(NSHTTPURLResponse *)v13->_httpResponse statusCode];
          v53 = MEMORY[0x1E696ABC0];
          if (v52 == 409)
          {
            v54 = 403;
          }

          else
          {
            v54 = [(NSHTTPURLResponse *)v13->_httpResponse statusCode];
          }

          maxAge = [v53 errorWithDomain:@"com.apple.appleaccount" code:v54 userInfo:v20];
          [(AAResponse *)v13 setError:maxAge];
          goto LABEL_64;
        }

        v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v34 = v33;
        v35 = @"COMMUNICATIONS_ERROR";
LABEL_40:
        v40 = [v33 localizedStringForKey:v35 value:&stru_1F2EF6280 table:@"Localizable"];
        goto LABEL_41;
      }

      if (v27 != 409)
      {
        if (v27 == 503)
        {
          if (v29)
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "Scheduled maintenance.", buf, 2u);
          }

          v31 = [(AAResponse *)v13 responseDictionary];
          v32 = [v31 objectForKey:@"message"];

          if (v32)
          {
            goto LABEL_38;
          }

          v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v34 = v33;
          v35 = @"SCHEDULED_MAINTENENCE";
          goto LABEL_40;
        }

        goto LABEL_34;
      }

      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "Forbidden. (409)", buf, 2u);
      }

      v46 = [(AAResponse *)v13 responseDictionary];
      v34 = [v46 objectForKey:@"localizedError"];

      if (v34)
      {
        [v20 setObject:v34 forKey:@"localizedError"];
      }

      v47 = [(AAResponse *)v13 responseDictionary];
      v48 = [v47 objectForKey:@"message"];

      if (!v48)
      {
        v40 = [(AAResponse *)v13 _stringWithDescriptionForResponseError:v34];
        goto LABEL_41;
      }
    }

    else
    {
      if (v27 == 401)
      {
        if (v29)
        {
          *buf = 0;
          _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "Password is bad.", buf, 2u);
        }

        v36 = [(AAResponse *)v13 responseDictionary];
        v37 = [v36 objectForKey:@"message"];

        if (v37)
        {
          goto LABEL_38;
        }

        v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v34 = v33;
        v35 = @"INVALID_PASSWORD";
        goto LABEL_40;
      }

      if (v27 != 403)
      {
        if (v27 == 404)
        {
          if (v29)
          {
            *buf = 0;
            v30 = "Not found.";
LABEL_36:
            _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
            goto LABEL_37;
          }

          goto LABEL_37;
        }

LABEL_34:
        if (v29)
        {
          *buf = 0;
          v30 = "Other error.";
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "Forbidden.", buf, 2u);
      }

      v41 = [(AAResponse *)v13 responseDictionary];
      v34 = [v41 objectForKey:@"localizedError"];

      if (v34)
      {
        [v20 setObject:v34 forKey:@"localizedError"];
      }

      v42 = [(AAResponse *)v13 responseDictionary];
      v43 = [v42 objectForKey:@"message"];

      if (!v43)
      {
        v44 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v45 = [v44 localizedStringForKey:v34 value:&stru_1F2EF6280 table:@"Localizable"];
LABEL_54:
        v19 = v45;

        goto LABEL_55;
      }
    }

    v44 = [(AAResponse *)v13 responseDictionary];
    v45 = [v44 objectForKey:@"message"];
    goto LABEL_54;
  }

LABEL_67:

  v55 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_stringWithDescriptionForResponseError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v6 = @"MOBILEME_CREATE_UNAVAILABLE";
  if ([v4 isEqualToString:@"MOBILEME_CREATE_UNAVAILABLE"])
  {
    goto LABEL_3;
  }

  if ([v5 isEqualToString:@"MOBILEME_UNSUPPORTED_DEVICE_REBRAND"])
  {
    v7 = AADeviceLocStringForKey(@"MOBILEME_UNSUPPORTED_DEVICE_REBRAND");
    goto LABEL_7;
  }

  v6 = @"MOBILEME_INVALID_SIGNATURE";
  if ([v5 isEqualToString:@"MOBILEME_INVALID_SIGNATURE"])
  {
LABEL_3:
    v7 = [(AAResponse *)self _deviceSpecificLocalizedString:v6];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v10 localizedStringForKey:v5 value:&stru_1F2EF6280 table:@"Localizable"];

LABEL_8:

  return v8;
}

- (id)_deviceSpecificLocalizedString:(id)a3
{
  v3 = a3;
  v4 = MGCopyAnswer();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"iPhone";
  }

  v6 = [(__CFString *)v5 uppercaseString];
  v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v3, v7];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v8 value:&stru_1F2EF6280 table:@"Localizable"];

  return v10;
}

- (void)_parseResponse:(void *)a1 ofType:.cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 responseDictionary];
  v3 = [a1 httpResponse];
  v4 = [v3 URL];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_6(&dword_1B6F6A000, v5, v6, "Response Body: %{sensitive}@. for url: %@, Something missing? See rdar://149798094.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_parseResponse:(void *)a1 ofType:.cold.2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 privacySensitiveResponseBody];
  v3 = [a1 httpResponse];
  v4 = [v3 URL];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_6(&dword_1B6F6A000, v5, v6, "Response Body: %{sensitive}@, for url: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end