@interface ASUSQLiteKeychainHelper
+ (BOOL)storeKey:(id)key withIdentifier:(id)identifier error:(id *)error;
+ (id)fetchKeyWithIdentifier:(id)identifier error:(id *)error;
+ (uint64_t)_copyErrorForOSStatus:(uint64_t)status;
@end

@implementation ASUSQLiteKeychainHelper

+ (id)fetchKeyWithIdentifier:(id)identifier error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.app-store-utilities.encryption", identifier];
  v6 = objc_opt_self();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 3, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], identifier);

  v8 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], v8);
  result = 0;
  v9 = SecItemCopyMatching(Mutable, &result);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = result == 0;
  }

  if (v10)
  {
    if (v9 == -25300 || v9 == 0)
    {
      v20 = *MEMORY[0x277CCA068];
      v21[0] = @"SecItemCopyMatching succeeded with empty results";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASUSQLiteErrorDomain" code:5 userInfo:v12];
    }

    else
    {
      v15 = [(ASUSQLiteKeychainHelper *)v6 _copyErrorForOSStatus:v9];
    }

    v14 = 0;
    if (!error)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEA90]);
    v14 = [v13 initWithBase64EncodedData:result options:0];
    CFRelease(result);
    v15 = 0;
    if (!error)
    {
      goto LABEL_17;
    }
  }

  if (!v14)
  {
    v16 = v15;
    *error = v15;
  }

LABEL_17:
  CFRelease(Mutable);

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)storeKey:(id)key withIdentifier:(id)identifier error:(id *)error
{
  v7 = MEMORY[0x277CCACA8];
  keyCopy = key;
  identifier = [v7 stringWithFormat:@"%@.%@", @"com.apple.app-store-utilities.encryption", identifier];
  v10 = keyCopy;
  v11 = objc_opt_self();
  v12 = [v10 base64EncodedDataWithOptions:0];

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 7, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], identifier);

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC080], @"App Store User Data Encryption");
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], v12);
  SecItemDelete(Mutable);
  v14 = SecItemAdd(Mutable, 0);
  CFRelease(Mutable);
  if (v14)
  {
    v15 = [(ASUSQLiteKeychainHelper *)v11 _copyErrorForOSStatus:v14];
    v16 = v15;
    if (error)
    {
      v17 = v15;
      *error = v16;
    }
  }

  else
  {
    v16 = 0;
  }

  return v14 == 0;
}

+ (uint64_t)_copyErrorForOSStatus:(uint64_t)status
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3 = SecCopyErrorMessageString(a2, 0);
  if (v3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Keychain failed to return value (error %d): %@", a2, v3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Keychain failed to return value (error %d)", a2, v10];
  }
  v4 = ;
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA068];
  v12[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v5 errorWithDomain:@"ASUSQLiteErrorDomain" code:4 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

@end