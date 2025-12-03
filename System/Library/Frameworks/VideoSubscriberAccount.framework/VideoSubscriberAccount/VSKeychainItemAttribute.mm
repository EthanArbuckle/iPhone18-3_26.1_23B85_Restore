@interface VSKeychainItemAttribute
- (NSString)attributeValueClassName;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setSecItemAttributeKey:(__CFString *)key;
@end

@implementation VSKeychainItemAttribute

- (void)dealloc
{
  secItemAttributeKey = self->_secItemAttributeKey;
  if (secItemAttributeKey)
  {
    CFRelease(secItemAttributeKey);
  }

  v4.receiver = self;
  v4.super_class = VSKeychainItemAttribute;
  [(VSKeychainItemAttribute *)&v4 dealloc];
}

- (NSString)attributeValueClassName
{
  v2 = self->_attributeValueClassName;
  if (!v2)
  {
    v3 = objc_opt_class();
    v2 = NSStringFromClass(v3);
    if (!v2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The attributeValueClassName parameter must not be nil."];
      v2 = 0;
    }
  }

  return v2;
}

- (void)setSecItemAttributeKey:(__CFString *)key
{
  secItemAttributeKey = self->_secItemAttributeKey;
  if (secItemAttributeKey != key)
  {
    if (secItemAttributeKey)
    {
      CFRelease(secItemAttributeKey);
    }

    self->_secItemAttributeKey = CFStringCreateCopy(*MEMORY[0x277CBECE8], key);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[VSKeychainItemAttribute allocWithZone:?]];
  name = [(VSKeychainItemAttribute *)self name];
  [(VSKeychainItemAttribute *)v4 setName:name];

  [(VSKeychainItemAttribute *)v4 setAttributeType:[(VSKeychainItemAttribute *)self attributeType]];
  attributeValueClassName = [(VSKeychainItemAttribute *)self attributeValueClassName];
  [(VSKeychainItemAttribute *)v4 setAttributeValueClassName:attributeValueClassName];

  [(VSKeychainItemAttribute *)v4 setSecItemAttributeKey:[(VSKeychainItemAttribute *)self secItemAttributeKey]];
  defaultValue = [(VSKeychainItemAttribute *)self defaultValue];
  [(VSKeychainItemAttribute *)v4 setDefaultValue:defaultValue];

  return v4;
}

@end