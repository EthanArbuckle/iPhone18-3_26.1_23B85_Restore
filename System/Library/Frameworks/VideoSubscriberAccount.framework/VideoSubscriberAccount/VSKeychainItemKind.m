@interface VSKeychainItemKind
- (NSDictionary)attributesByName;
- (NSDictionary)attributesBySecItemAttributeKey;
- (VSKeychainItemKind)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setItemClassName:(id)a3;
- (void)setSecItemClass:(__CFString *)a3;
@end

@implementation VSKeychainItemKind

- (VSKeychainItemKind)init
{
  v8.receiver = self;
  v8.super_class = VSKeychainItemKind;
  v2 = [(VSKeychainItemKind *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    itemClassName = v2->_itemClassName;
    v2->_itemClassName = v4;

    properties = v2->_properties;
    v2->_properties = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (void)dealloc
{
  secItemClass = self->_secItemClass;
  if (secItemClass)
  {
    CFRelease(secItemClass);
  }

  v4.receiver = self;
  v4.super_class = VSKeychainItemKind;
  [(VSKeychainItemKind *)&v4 dealloc];
}

- (void)setItemClassName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = objc_opt_class();
    v4 = NSStringFromClass(v5);
  }

  if (v4 != self->_itemClassName)
  {
    v8 = v4;
    v6 = [(NSString *)v4 copy];
    itemClassName = self->_itemClassName;
    self->_itemClassName = v6;

    v4 = v8;
  }
}

- (void)setSecItemClass:(__CFString *)a3
{
  secItemClass = self->_secItemClass;
  if (secItemClass != a3)
  {
    if (secItemClass)
    {
      CFRelease(secItemClass);
    }

    self->_secItemClass = CFStringCreateCopy(*MEMORY[0x277CBECE8], a3);
  }
}

- (NSDictionary)attributesByName
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(VSKeychainItemKind *)self properties];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 name];
          [v3 setObject:v9 forKey:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSDictionary)attributesBySecItemAttributeKey
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(VSKeychainItemKind *)self properties];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 secItemAttributeKey])
        {
          [v3 setObject:v9 forKey:{objc_msgSend(v9, "secItemAttributeKey")}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VSKeychainItemKind allocWithZone:?]];
  v5 = [(VSKeychainItemKind *)self itemClassName];
  [(VSKeychainItemKind *)v4 setItemClassName:v5];

  [(VSKeychainItemKind *)v4 setSecItemClass:[(VSKeychainItemKind *)self secItemClass]];
  v6 = [(VSKeychainItemKind *)self properties];
  [(VSKeychainItemKind *)v4 setProperties:v6];

  return v4;
}

@end