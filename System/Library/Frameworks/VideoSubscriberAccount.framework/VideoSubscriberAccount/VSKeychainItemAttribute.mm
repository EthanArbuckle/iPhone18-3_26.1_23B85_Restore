@interface VSKeychainItemAttribute
- (NSString)attributeValueClassName;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setSecItemAttributeKey:(__CFString *)a3;
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

- (void)setSecItemAttributeKey:(__CFString *)a3
{
  secItemAttributeKey = self->_secItemAttributeKey;
  if (secItemAttributeKey != a3)
  {
    if (secItemAttributeKey)
    {
      CFRelease(secItemAttributeKey);
    }

    self->_secItemAttributeKey = CFStringCreateCopy(*MEMORY[0x277CBECE8], a3);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VSKeychainItemAttribute allocWithZone:?]];
  v5 = [(VSKeychainItemAttribute *)self name];
  [(VSKeychainItemAttribute *)v4 setName:v5];

  [(VSKeychainItemAttribute *)v4 setAttributeType:[(VSKeychainItemAttribute *)self attributeType]];
  v6 = [(VSKeychainItemAttribute *)self attributeValueClassName];
  [(VSKeychainItemAttribute *)v4 setAttributeValueClassName:v6];

  [(VSKeychainItemAttribute *)v4 setSecItemAttributeKey:[(VSKeychainItemAttribute *)self secItemAttributeKey]];
  v7 = [(VSKeychainItemAttribute *)self defaultValue];
  [(VSKeychainItemAttribute *)v4 setDefaultValue:v7];

  return v4;
}

@end