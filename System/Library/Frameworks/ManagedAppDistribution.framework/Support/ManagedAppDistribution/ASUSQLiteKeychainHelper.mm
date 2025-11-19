@interface ASUSQLiteKeychainHelper
+ (BOOL)storeKey:(id)a3 withIdentifier:(id)a4 error:(id *)a5;
+ (id)fetchKeyWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation ASUSQLiteKeychainHelper

+ (id)fetchKeyWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = [NSString stringWithFormat:@"%@.%@", @"com.apple.app-store-utilities.encryption", a3];
  v7 = sub_1001E3820(a1, v6, a4);

  return v7;
}

+ (BOOL)storeKey:(id)a3 withIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [NSString stringWithFormat:@"%@.%@", @"com.apple.app-store-utilities.encryption", a4];
  LOBYTE(a5) = sub_1001E3AD0(a1, v8, v9, a5);

  return a5;
}

@end