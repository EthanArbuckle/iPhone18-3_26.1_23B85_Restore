@interface AAResponse
- (AAResponse)initWithHTTPResponse:(id)response data:(id)data bodyIsPlist:(BOOL)plist;
- (AAResponse)initWithHTTPResponse:(id)response data:(id)data mediaType:(id)type;
- (id)_deviceSpecificLocalizedString:(id)string;
- (id)_stringWithDescriptionForResponseError:(id)error;
- (void)_parseResponse:(id)response ofType:(id)type;
@end

@implementation AAResponse

- (void)_parseResponse:(id)response ofType:(id)type
{
  v27 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  objc_storeStrong(&self->_mediaType, type);
  responseCopy = response;
  v9 = [MEMORY[0x1E6985E00] ofType:typeCopy];
  v22 = 0;
  v10 = [v9 dictionaryFromObject:responseCopy error:&v22];

  v11 = v22;
  responseDictionary = self->_responseDictionary;
  self->_responseDictionary = v10;

  v13 = _AALogSystem();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v11 localizedDescription];
      *buf = 138412546;
      v24 = typeCopy;
      v25 = 2112;
      v26 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Unable to parse response of type: '%@', error: %@", buf, 0x16u);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"COMMUNICATIONS_ERROR" value:&stru_1F2EF6280 table:@"Localizable"];
    [dictionary setObject:v18 forKey:*MEMORY[0x1E696A578]];

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:objc_msgSend(v11 userInfo:{"code"), dictionary}];
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
      dictionary = _AALogSystem();
      if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEBUG))
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

      dictionary = _AALogSystem();
      if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEBUG))
      {
        [AAResponse _parseResponse:? ofType:?];
      }
    }
  }

LABEL_6:
  v20 = *MEMORY[0x1E69E9840];
}

- (AAResponse)initWithHTTPResponse:(id)response data:(id)data bodyIsPlist:(BOOL)plist
{
  plistCopy = plist;
  responseCopy = response;
  dataCopy = data;
  mIMEType = [responseCopy MIMEType];
  v11 = [MEMORY[0x1E6985E00] ofType:mIMEType];

  if (!v11)
  {
    v12 = @"application/json";
    if (plistCopy)
    {
      v12 = @"application/x-plist";
    }

    v13 = v12;

    mIMEType = v13;
  }

  v14 = [(AAResponse *)self initWithHTTPResponse:responseCopy data:dataCopy mediaType:mIMEType];

  return v14;
}

- (AAResponse)initWithHTTPResponse:(id)response data:(id)data mediaType:(id)type
{
  v60 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dataCopy = data;
  typeCopy = type;
  v57.receiver = self;
  v57.super_class = AAResponse;
  v12 = [(AAResponse *)&v57 init];
  v13 = v12;
  if (v12)
  {
    if (responseCopy)
    {
      objc_storeStrong(&v12->_httpResponse, response);
      v13->_statusCode = [responseCopy statusCode];
      objc_storeStrong(&v13->_data, data);
    }

    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      statusCode = [(NSHTTPURLResponse *)v13->_httpResponse statusCode];
      *buf = 134217984;
      v59 = statusCode;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Response code: %ld", buf, 0xCu);
    }

    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      allHeaderFields = [(NSHTTPURLResponse *)v13->_httpResponse allHeaderFields];
      *buf = 138412290;
      v59 = allHeaderFields;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Response headers: %@", buf, 0xCu);
    }

    [(AAResponse *)v13 _parseResponse:dataCopy ofType:typeCopy];
    if ([(NSHTTPURLResponse *)v13->_httpResponse statusCode]== 200)
    {
      allHeaderFields2 = [(NSHTTPURLResponse *)v13->_httpResponse allHeaderFields];
      v19 = [allHeaderFields2 objectForKeyedSubscript:@"Cache-control"];

      if (!v19)
      {
        goto LABEL_66;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_66;
      }

      dictionary = [v19 componentsSeparatedByString:@"="];
      if ([dictionary count] != 2)
      {
        goto LABEL_65;
      }

      v21 = [dictionary objectAtIndexedSubscript:0];
      v22 = [v21 isEqual:@"max-age"];

      if (!v22 || ([dictionary objectAtIndexedSubscript:1], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "integerValue"), v23, v24 < 1))
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    statusCode2 = [(NSHTTPURLResponse *)v13->_httpResponse statusCode];
    v28 = _AALogSystem();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (statusCode2 > 404)
    {
      if (statusCode2 == 405)
      {
        if (v29)
        {
          *buf = 0;
          v30 = "Method not allowed.";
          goto LABEL_36;
        }

LABEL_37:

        responseDictionary = [(AAResponse *)v13 responseDictionary];
        v39 = [responseDictionary objectForKey:@"message"];

        if (v39)
        {
LABEL_38:
          responseDictionary2 = [(AAResponse *)v13 responseDictionary];
          v40 = [responseDictionary2 objectForKey:@"message"];
LABEL_41:
          v19 = v40;
LABEL_55:

          if (v19)
          {
            [dictionary setObject:v19 forKey:*MEMORY[0x1E696A578]];
          }

          responseDictionary3 = [(AAResponse *)v13 responseDictionary];

          if (responseDictionary3)
          {
            responseDictionary4 = [(AAResponse *)v13 responseDictionary];
            [dictionary setObject:responseDictionary4 forKey:@"responseDictionary"];
          }

          error = [(AAResponse *)v13 error];

          if (error)
          {
            goto LABEL_65;
          }

          statusCode3 = [(NSHTTPURLResponse *)v13->_httpResponse statusCode];
          v53 = MEMORY[0x1E696ABC0];
          if (statusCode3 == 409)
          {
            statusCode4 = 403;
          }

          else
          {
            statusCode4 = [(NSHTTPURLResponse *)v13->_httpResponse statusCode];
          }

          maxAge = [v53 errorWithDomain:@"com.apple.appleaccount" code:statusCode4 userInfo:dictionary];
          [(AAResponse *)v13 setError:maxAge];
          goto LABEL_64;
        }

        v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        responseDictionary2 = v33;
        v35 = @"COMMUNICATIONS_ERROR";
LABEL_40:
        v40 = [v33 localizedStringForKey:v35 value:&stru_1F2EF6280 table:@"Localizable"];
        goto LABEL_41;
      }

      if (statusCode2 != 409)
      {
        if (statusCode2 == 503)
        {
          if (v29)
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "Scheduled maintenance.", buf, 2u);
          }

          responseDictionary5 = [(AAResponse *)v13 responseDictionary];
          v32 = [responseDictionary5 objectForKey:@"message"];

          if (v32)
          {
            goto LABEL_38;
          }

          v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          responseDictionary2 = v33;
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

      responseDictionary6 = [(AAResponse *)v13 responseDictionary];
      responseDictionary2 = [responseDictionary6 objectForKey:@"localizedError"];

      if (responseDictionary2)
      {
        [dictionary setObject:responseDictionary2 forKey:@"localizedError"];
      }

      responseDictionary7 = [(AAResponse *)v13 responseDictionary];
      v48 = [responseDictionary7 objectForKey:@"message"];

      if (!v48)
      {
        v40 = [(AAResponse *)v13 _stringWithDescriptionForResponseError:responseDictionary2];
        goto LABEL_41;
      }
    }

    else
    {
      if (statusCode2 == 401)
      {
        if (v29)
        {
          *buf = 0;
          _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "Password is bad.", buf, 2u);
        }

        responseDictionary8 = [(AAResponse *)v13 responseDictionary];
        v37 = [responseDictionary8 objectForKey:@"message"];

        if (v37)
        {
          goto LABEL_38;
        }

        v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        responseDictionary2 = v33;
        v35 = @"INVALID_PASSWORD";
        goto LABEL_40;
      }

      if (statusCode2 != 403)
      {
        if (statusCode2 == 404)
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

      responseDictionary9 = [(AAResponse *)v13 responseDictionary];
      responseDictionary2 = [responseDictionary9 objectForKey:@"localizedError"];

      if (responseDictionary2)
      {
        [dictionary setObject:responseDictionary2 forKey:@"localizedError"];
      }

      responseDictionary10 = [(AAResponse *)v13 responseDictionary];
      v43 = [responseDictionary10 objectForKey:@"message"];

      if (!v43)
      {
        responseDictionary11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v45 = [responseDictionary11 localizedStringForKey:responseDictionary2 value:&stru_1F2EF6280 table:@"Localizable"];
LABEL_54:
        v19 = v45;

        goto LABEL_55;
      }
    }

    responseDictionary11 = [(AAResponse *)v13 responseDictionary];
    v45 = [responseDictionary11 objectForKey:@"message"];
    goto LABEL_54;
  }

LABEL_67:

  v55 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_stringWithDescriptionForResponseError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v6 = @"MOBILEME_CREATE_UNAVAILABLE";
  if ([errorCopy isEqualToString:@"MOBILEME_CREATE_UNAVAILABLE"])
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

- (id)_deviceSpecificLocalizedString:(id)string
{
  stringCopy = string;
  v4 = MGCopyAnswer();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"iPhone";
  }

  uppercaseString = [(__CFString *)v5 uppercaseString];
  v7 = [uppercaseString stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", stringCopy, v7];

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