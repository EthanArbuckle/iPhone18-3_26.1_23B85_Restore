@interface SQLiteKeychainHelper
+ (BOOL)_saveValueToKeychain:(id)keychain forKey:(id)key error:(id *)error;
+ (BOOL)storeKey:(id)key withIdentifier:(id)identifier error:(id *)error;
+ (__CFDictionary)_baseQueryForKeyID:(id)d additionalCapacity:(unint64_t)capacity;
+ (id)_copyErrorForOSStatus:(int)status;
+ (id)_valueFromKeychainForKey:(id)key error:(id *)error;
+ (id)fetchKeyWithIdentifier:(id)identifier error:(id *)error;
@end

@implementation SQLiteKeychainHelper

+ (id)fetchKeyWithIdentifier:(id)identifier error:(id *)error
{
  identifier = [NSString stringWithFormat:@"%@.%@", @"com.apple.storekitagent.encryption", identifier];
  v7 = [self _valueFromKeychainForKey:identifier error:error];

  return v7;
}

+ (BOOL)storeKey:(id)key withIdentifier:(id)identifier error:(id *)error
{
  keyCopy = key;
  identifier = [NSString stringWithFormat:@"%@.%@", @"com.apple.storekitagent.encryption", identifier];
  LOBYTE(error) = [self _saveValueToKeychain:keyCopy forKey:identifier error:error];

  return error;
}

+ (id)_copyErrorForOSStatus:(int)status
{
  v3 = *&status;
  v4 = SecCopyErrorMessageString(status, 0);
  if (v4)
  {
    v14[0] = NSDebugDescriptionErrorKey;
    v5 = [NSString stringWithFormat:@"Keychain failed to return value (error %d): %@", v3, v4];
    v15[0] = v5;
    v14[1] = @"SKUnderlyingSecErr";
    v6 = [NSNumber numberWithInt:v3];
    v15[1] = v6;
    v7 = v15;
    v8 = v14;
  }

  else
  {
    v12[0] = NSDebugDescriptionErrorKey;
    v5 = [NSString stringWithFormat:@"Keychain failed to return value (error %d)", v3];
    v12[1] = @"SKUnderlyingSecErr";
    v13[0] = v5;
    v6 = [NSNumber numberWithInt:v3];
    v13[1] = v6;
    v7 = v13;
    v8 = v12;
  }

  v9 = [NSDictionary dictionaryWithObjects:v7 forKeys:v8 count:2];

  v10 = [NSError errorWithDomain:ASDErrorDomain code:523 userInfo:v9];

  return v10;
}

+ (BOOL)_saveValueToKeychain:(id)keychain forKey:(id)key error:(id *)error
{
  keyCopy = key;
  keychainCopy = keychain;
  v10 = [self _baseQueryForKeyID:keyCopy additionalCapacity:5];
  CFDictionaryAddValue(v10, kSecAttrLabel, @"StoreKit User Data Encryption");
  CFDictionaryAddValue(v10, kSecAttrCanEncrypt, kCFBooleanTrue);
  CFDictionaryAddValue(v10, kSecAttrCanDecrypt, kCFBooleanTrue);
  CFDictionaryAddValue(v10, kSecValueData, keychainCopy);

  CFDictionaryAddValue(v10, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly);
  v11 = SecItemAdd(v10, 0);
  if (v11 == -25299)
  {
    v12 = [self _baseQueryForKeyID:keyCopy additionalCapacity:0];
    SecItemDelete(v12);
    CFRelease(v12);
    v11 = SecItemAdd(v10, 0);
  }

  CFRelease(v10);
  if (v11)
  {
    v13 = [self _copyErrorForOSStatus:v11];
    if (error)
    {
      v13 = v13;
      *error = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  return v11 == 0;
}

+ (id)_valueFromKeychainForKey:(id)key error:(id *)error
{
  v6 = [self _baseQueryForKeyID:key additionalCapacity:1];
  CFDictionaryAddValue(v6, kSecReturnData, kCFBooleanTrue);
  cf = 0;
  v7 = SecItemCopyMatching(v6, &cf);
  if (!v7 && cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFDataGetTypeID())
    {
      v9 = 0;
      v10 = cf;
      if (!error)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 == -25300 || !v7)
  {
LABEL_8:
    v15 = NSDebugDescriptionErrorKey;
    v16 = @"SecItemCopyMatching succeeded with empty results";
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [NSError errorWithDomain:ASDErrorDomain code:901 userInfo:v11];

    goto LABEL_10;
  }

  v9 = [self _copyErrorForOSStatus:?];
LABEL_10:
  v10 = 0;
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v10)
  {
    v12 = v9;
    *error = v9;
  }

LABEL_13:
  CFRelease(v6);

  return v10;
}

+ (__CFDictionary)_baseQueryForKeyID:(id)d additionalCapacity:(unint64_t)capacity
{
  dCopy = d;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, capacity + 5, 0, 0);
  CFDictionaryAddValue(Mutable, kSecAttrApplicationLabel, dCopy);

  CFDictionaryAddValue(Mutable, kSecUseDataProtectionKeychain, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassKey);
  CFDictionaryAddValue(Mutable, kSecAttrKeyClass, kSecAttrKeyClassPrivate);
  if (os_variant_has_internal_content())
  {
    CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, @"com.apple.storekit");
  }

  return Mutable;
}

@end