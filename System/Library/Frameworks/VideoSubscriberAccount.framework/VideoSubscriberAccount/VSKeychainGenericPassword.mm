@interface VSKeychainGenericPassword
- (BOOL)isInvisible;
- (BOOL)isNegative;
- (BOOL)isSynchronizable;
- (id)_faultWhileAccessingPrimitiveValueForKey:(id)key;
- (void)_notifyWhileSettingPrimitiveValue:(id)value forKey:(id)key;
- (void)setAccessGroup:(id)group;
- (void)setAccount:(id)account;
- (void)setComment:(id)comment;
- (void)setCreatorCode:(id)code;
- (void)setGeneric:(id)generic;
- (void)setInvisible:(BOOL)invisible;
- (void)setItemDescription:(id)description;
- (void)setLabel:(id)label;
- (void)setNegative:(BOOL)negative;
- (void)setService:(id)service;
- (void)setSynchronizable:(BOOL)synchronizable;
- (void)setTypeCode:(id)code;
@end

@implementation VSKeychainGenericPassword

- (void)_notifyWhileSettingPrimitiveValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  [(VSKeychainItem *)self willChangeValueForKey:keyCopy];
  [(VSKeychainItem *)self setPrimitiveValue:valueCopy forKey:keyCopy];

  [(VSKeychainGenericPassword *)self didChangeValueForKey:keyCopy];
}

- (id)_faultWhileAccessingPrimitiveValueForKey:(id)key
{
  keyCopy = key;
  [(VSKeychainItem *)self willAccessValueForKey:keyCopy];
  v5 = [(VSKeychainItem *)self primitiveValueForKey:keyCopy];
  [(VSKeychainItem *)self didAccessValueForKey:keyCopy];

  return v5;
}

- (void)setAccessGroup:(id)group
{
  v4 = [group copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"accessGroup"];
}

- (void)setItemDescription:(id)description
{
  v4 = [description copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"itemDescription"];
}

- (void)setComment:(id)comment
{
  v4 = [comment copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"comment"];
}

- (void)setCreatorCode:(id)code
{
  v4 = [code copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"creatorCode"];
}

- (void)setTypeCode:(id)code
{
  v4 = [code copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"typeCode"];
}

- (void)setLabel:(id)label
{
  v4 = [label copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"label"];
}

- (BOOL)isSynchronizable
{
  v2 = [(VSKeychainGenericPassword *)self _faultWhileAccessingPrimitiveValueForKey:@"synchronizable"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSynchronizable:(BOOL)synchronizable
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:synchronizable];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"synchronizable"];
}

- (BOOL)isInvisible
{
  v2 = [(VSKeychainGenericPassword *)self _faultWhileAccessingPrimitiveValueForKey:@"invisible"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setInvisible:(BOOL)invisible
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:invisible];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"invisible"];
}

- (BOOL)isNegative
{
  v2 = [(VSKeychainGenericPassword *)self _faultWhileAccessingPrimitiveValueForKey:@"negative"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setNegative:(BOOL)negative
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:negative];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"negative"];
}

- (void)setAccount:(id)account
{
  v4 = [account copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"account"];
}

- (void)setService:(id)service
{
  v4 = [service copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"service"];
}

- (void)setGeneric:(id)generic
{
  v4 = [generic copy];
  [(VSKeychainGenericPassword *)self _notifyWhileSettingPrimitiveValue:v4 forKey:@"generic"];
}

@end