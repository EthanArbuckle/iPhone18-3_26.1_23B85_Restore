@interface ASUSQLiteKeychainHelper
+ (BOOL)storeKey:(id)key withIdentifier:(id)identifier error:(id *)error;
+ (id)fetchKeyWithIdentifier:(id)identifier error:(id *)error;
@end

@implementation ASUSQLiteKeychainHelper

+ (id)fetchKeyWithIdentifier:(id)identifier error:(id *)error
{
  identifier = [NSString stringWithFormat:@"%@.%@", @"com.apple.app-store-utilities.encryption", identifier];
  v7 = sub_1001E3820(self, identifier, error);

  return v7;
}

+ (BOOL)storeKey:(id)key withIdentifier:(id)identifier error:(id *)error
{
  keyCopy = key;
  identifier = [NSString stringWithFormat:@"%@.%@", @"com.apple.app-store-utilities.encryption", identifier];
  LOBYTE(error) = sub_1001E3AD0(self, keyCopy, identifier, error);

  return error;
}

@end