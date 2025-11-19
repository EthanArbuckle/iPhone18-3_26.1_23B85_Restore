@interface AATrustedDeviceListRequest
- (AATrustedDeviceListRequest)initWithURLString:(id)a3 accountStore:(id)a4 grandSlamAccount:(id)a5;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AATrustedDeviceListRequest

- (AATrustedDeviceListRequest)initWithURLString:(id)a3 accountStore:(id)a4 grandSlamAccount:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = AATrustedDeviceListRequest;
  v10 = [(AARequest *)&v14 initWithURLString:a3];
  if (v10)
  {
    v11 = [[AAGrandSlamSigner alloc] initWithAccountStore:v8 grandSlamAccount:v9 appTokenID:@"com.apple.gs.appleid.auth"];
    grandSlamSigner = v10->_grandSlamSigner;
    v10->_grandSlamSigner = v11;
  }

  return v10;
}

- (id)urlString
{
  grandSlamSigner = self->_grandSlamSigner;
  if (grandSlamSigner)
  {
    v4 = [grandSlamSigner grandSlamAccount];

    if (v4 && ([(AAGrandSlamSigner *)self->_grandSlamSigner accountStore], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v7.receiver = self;
      v7.super_class = AATrustedDeviceListRequest;
      grandSlamSigner = [(AARequest *)&v7 urlString];
    }

    else
    {
      grandSlamSigner = 0;
    }
  }

  return grandSlamSigner;
}

- (id)urlRequest
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AATrustedDeviceListRequest;
  v3 = [(AARequest *)&v13 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 URL];
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Sending GET to %@", buf, 0xCu);
  }

  [v4 setHTTPMethod:@"GET"];
  [(AAGrandSlamSigner *)self->_grandSlamSigner setUseAltDSID:1];
  if (![(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:v4 isUserInitiated:0])
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "AAGrandSlamSigner failed!", buf, 2u);
    }
  }

  v8 = [(AAGrandSlamSigner *)self->_grandSlamSigner grandSlamAccount];
  v9 = [v8 aida_alternateDSID];
  [v4 aa_addGrandslamAuthorizationheaderWithAltDSID:v9 heartbeatToken:self->_heartbeatToken];

  [v4 aa_addDeviceIDHeader];
  v10 = +[AADeviceInfo serialNumber];
  [v4 setValue:v10 forHTTPHeaderField:@"X-Apple-I-SRL-NO"];

  [v4 aa_addContentTypeHeaders:@"application/json"];
  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end