@interface VSKeychainGenericPassword
- (BOOL)isInvisible;
- (BOOL)isNegative;
- (BOOL)isSynchronizable;
- (id)_faultWhileAccessingPrimitiveValueForKey:(id)a3;
- (void)_notifyWhileSettingPrimitiveValue:(id)a3 forKey:(id)a4;
- (void)setAccessGroup:(id)a3;
- (void)setAccount:(id)a3;
- (void)setComment:(id)a3;
- (void)setCreatorCode:(id)a3;
- (void)setGeneric:(id)a3;
- (void)setInvisible:(BOOL)a3;
- (void)setItemDescription:(id)a3;
- (void)setLabel:(id)a3;
- (void)setNegative:(BOOL)a3;
- (void)setService:(id)a3;
- (void)setSynchronizable:(BOOL)a3;
- (void)setTypeCode:(id)a3;
@end

@implementation VSKeychainGenericPassword

- (void)_notifyWhileSettingPrimitiveValue:(id)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(VSKeychainItem *)self willChangeValueForKey:v7];
  [(VSKeychainItem *)self setPrimitiveValue:v6 forKey:v7];

  [(VSKeychainGenericPassword *)self didChangeValueForKey:v7];
}

- (id)_faultWhileAccessingPrimitiveValueForKey:(id)a3
{
  v4 = a3;
  [(VSKeychainItem *)self willAccessValueForKey:v4];
  v5 = [(VSKeychainItem *)self primitiveValueForKey:v4];
  [(VSKeychainItem *)self didAccessValueForKey:v4];

  return v5;
}

- (void)setAccessGroup:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"accessGroup"];
}

- (void)setItemDescription:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"itemDescription"];
}

- (void)setComment:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"comment"];
}

- (void)setCreatorCode:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"creatorCode"];
}

- (void)setTypeCode:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"typeCode"];
}

- (void)setLabel:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"label"];
}

- (BOOL)isSynchronizable
{
  v2 = [(VSKeychainGenericPassword *)self _faultWhileAccessingPrimitiveValueForKey:@"synchronizable"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSynchronizable:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"synchronizable"];
}

- (BOOL)isInvisible
{
  v2 = [(VSKeychainGenericPassword *)self _faultWhileAccessingPrimitiveValueForKey:@"invisible"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setInvisible:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"invisible"];
}

- (BOOL)isNegative
{
  v2 = [(VSKeychainGenericPassword *)self _faultWhileAccessingPrimitiveValueForKey:@"negative"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setNegative:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"negative"];
}

- (void)setAccount:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"account"];
}

- (void)setService:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"service"];
}

- (void)setGeneric:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"generic"];
}

@end