@interface AMFIPathValidator_ios
- (AMFIPathValidator_ios)initWithURL:(id)l withFileOffsetAsNumber:(id)number withFlags:(int)flags;
- (BOOL)areEntitlementsValidated;
- (BOOL)computedCdHash:(unsigned __int8)hash[20];
- (BOOL)isValid;
- (BOOL)validateWithError:(id *)error;
- (NSData)profileAuxSig;
- (NSData)profileData;
- (NSString)profileID;
- (int)isSignerType;
@end

@implementation AMFIPathValidator_ios

- (AMFIPathValidator_ios)initWithURL:(id)l withFileOffsetAsNumber:(id)number withFlags:(int)flags
{
  lCopy = l;
  numberCopy = number;
  v16.receiver = self;
  v16.super_class = AMFIPathValidator_ios;
  v11 = [(AMFIPathValidator_ios *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_url, l);
    objc_storeStrong(&v12->_offset, number);
    v12->_bootargs = 0;
    v12->_flags = flags;
    v12->_isValid = 0;
    v12->_validated = 0;
    v12->_signerType = 0;
    v12->_areEntitlementsValidated = 0;
    cdhash = v12->_cdhash;
    v12->_cdhash = 0;

    profileData = v12->_profileData;
    v12->_profileData = 0;

    amfi_interface_query_bootarg_state(&v12->_bootargs);
  }

  return v12;
}

- (BOOL)computedCdHash:(unsigned __int8)hash[20]
{
  if (!self->_validated)
  {
    [(AMFIPathValidator_ios *)self validateWithError:0];
  }

  cdhash = self->_cdhash;
  if (cdhash)
  {
    [(NSData *)cdhash getBytes:hash length:20];
  }

  return cdhash != 0;
}

- (BOOL)validateWithError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  self->_validated = 1;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v5 setObject:v6 forKey:*MEMORY[0x277D82AD0]];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v5 setObject:v7 forKey:*MEMORY[0x277D82AC0]];

  offset = self->_offset;
  if (offset)
  {
    [v5 setObject:offset forKey:*MEMORY[0x277D82AC8]];
  }

  [(NSURL *)self->_url path];
  v9 = MISValidateSignatureAndCopyInfo();
  v10 = [0 objectForKey:*MEMORY[0x277D82AA8]];
  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = 0x278CBB000uLL;
  if (v9)
  {
    v15 = v13;
    errorCopy = error;
    v17 = MISCopyErrorStringForErrorCode();
    v18 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      path = [*v33 path];
      cf[0] = 138412802;
      *&cf[1] = path;
      v35 = 1024;
      *v36 = v9;
      *&v36[4] = 2112;
      *&v36[6] = v17;
      _os_log_error_impl(&dword_240EEA000, v18, OS_LOG_TYPE_ERROR, "%@ not valid: 0x%x: %@", cf, 0x1Cu);
    }

    v19 = [[AMFIError alloc] initWithMISError:v9 withURL:self->_url];
    error = self->_error;
    self->_error = &v19->super;

    v14 = 0x278CBB000;
    error = errorCopy;
    v13 = v15;
  }

  else
  {
    v9 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      path2 = [*v33 path];
      cf[0] = 138413058;
      *&cf[1] = path2;
      v35 = 2112;
      *v36 = v5;
      *&v36[8] = 2112;
      *&v36[10] = 0;
      v37 = 2112;
      v38 = v13;
      _os_log_error_impl(&dword_240EEA000, v9, OS_LOG_TYPE_ERROR, "MIS Validation successful, but unexpected info? path: '%@', options: %@, info: %@, cdhash: %@", cf, 0x2Au);
    }

    v21 = [[AMFIError alloc] initWithAMFIErrorCode:-401 withURL:self->_url];
    LODWORD(v9) = 0;
    v17 = self->_error;
    self->_error = &v21->super;
  }

  if (self->_flags)
  {
    self->_isValid = 0;
    generic = [*(v14 + 1216) generic];
    if (os_log_type_enabled(generic, OS_LOG_TYPE_ERROR))
    {
      [(AMFIPathValidator_ios *)v33 validateWithError:generic];
    }

    v23 = [[AMFIError alloc] initWithAMFIErrorCode:-430 withURL:self->_url];
    v24 = self->_error;
    self->_error = &v23->super;
  }

  isValid = self->_isValid;
  if (!isValid && v9 != -402620388 && (self->_bootargs & 6) != 0)
  {
    generic2 = [*(v14 + 1216) generic];
    if (os_log_type_enabled(generic2, OS_LOG_TYPE_INFO))
    {
      path3 = [*v33 path];
      cf[0] = 138412290;
      *&cf[1] = path3;
      _os_log_impl(&dword_240EEA000, generic2, OS_LOG_TYPE_INFO, "boot-args allow process with invalid signature: %@", cf, 0xCu);
    }

    self->_isValid = 1;
    v28 = self->_error;
    self->_error = 0;

    isValid = self->_isValid;
  }

  if (error && !isValid)
  {
    *error = self->_error;
    isValid = self->_isValid;
  }

  v29 = *MEMORY[0x277D85DE8];
  return isValid;
}

- (BOOL)isValid
{
  if (!self->_validated)
  {
    [(AMFIPathValidator_ios *)self validateWithError:0];
  }

  return self->_isValid;
}

- (BOOL)areEntitlementsValidated
{
  if (!self->_validated)
  {
    [(AMFIPathValidator_ios *)self validateWithError:0];
  }

  return self->_areEntitlementsValidated;
}

- (int)isSignerType
{
  if (!self->_validated)
  {
    [(AMFIPathValidator_ios *)self validateWithError:0];
  }

  return self->_signerType;
}

- (NSData)profileData
{
  if (!self->_validated)
  {
    [(AMFIPathValidator_ios *)self validateWithError:0];
  }

  profileData = self->_profileData;

  return profileData;
}

- (NSData)profileAuxSig
{
  if (!self->_validated)
  {
    [(AMFIPathValidator_ios *)self validateWithError:0];
  }

  profileAuxSig = self->_profileAuxSig;

  return profileAuxSig;
}

- (NSString)profileID
{
  if (!self->_validated)
  {
    [(AMFIPathValidator_ios *)self validateWithError:0];
  }

  profileID = self->_profileID;

  return profileID;
}

- (void)validateWithError:(NSObject *)a3 .cold.1(id *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a1 path];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_240EEA000, a3, OS_LOG_TYPE_ERROR, "Unable to extract signer type? path: '%@', info: '%@'", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)validateWithError:(id *)a1 .cold.2(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 path];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_240EEA000, a2, OS_LOG_TYPE_ERROR, "dyld_sim policy is not allowed on iOS: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end