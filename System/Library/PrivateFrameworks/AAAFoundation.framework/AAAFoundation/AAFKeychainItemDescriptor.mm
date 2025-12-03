@interface AAFKeychainItemDescriptor
- (AAFKeychainItemDescriptor)initWithAttributes:(id)attributes;
- (id)_keychainAccessibleWithAccessible:(unint64_t)accessible;
- (id)_keychainClassWithClass:(unint64_t)class;
- (id)_objectForOptionalBool:(unint64_t)bool;
- (id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)_accessibleWithKeychainAccessible:(id)accessible;
- (unint64_t)_classWithKeychainClass:(id)class;
- (unint64_t)_optionalValueFromObject:(id)object;
@end

@implementation AAFKeychainItemDescriptor

- (AAFKeychainItemDescriptor)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v31.receiver = self;
  v31.super_class = AAFKeychainItemDescriptor;
  v5 = [(AAFKeychainItemDescriptor *)&v31 init];
  if (v5)
  {
    v6 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AFF8]];
    v5->_itemClass = [(AAFKeychainItemDescriptor *)v5 _classWithKeychainClass:v6];

    v7 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697ABD8]];
    v5->_itemAccessible = [(AAFKeychainItemDescriptor *)v5 _accessibleWithKeychainAccessible:v7];

    v8 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
    account = v5->_account;
    v5->_account = v8;

    v10 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
    service = v5->_service;
    v5->_service = v10;

    v12 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
    server = v5->_server;
    v5->_server = v12;

    v14 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AE70]];
    securityDomain = v5->_securityDomain;
    v5->_securityDomain = v14;

    v16 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
    label = v5->_label;
    v5->_label = v16;

    v18 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697ABD0]];
    accessGroup = v5->_accessGroup;
    v5->_accessGroup = v18;

    v20 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AE90]];
    sharingGroup = v5->_sharingGroup;
    v5->_sharingGroup = v20;

    v22 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AE00]];
    itemProtocol = v5->_itemProtocol;
    v5->_itemProtocol = v22;

    v24 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697ACD8]];
    creator = v5->_creator;
    v5->_creator = v24;

    v26 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AD00]];
    v5->_invisible = [(AAFKeychainItemDescriptor *)v5 _optionalValueFromObject:v26];

    v27 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AEB0]];
    v5->_synchronizable = [(AAFKeychainItemDescriptor *)v5 _optionalValueFromObject:v27];

    v28 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697B390]];
    v5->_useDataProtection = [(AAFKeychainItemDescriptor *)v5 _optionalValueFromObject:v28];

    v29 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697AEC0]];
    v5->_sysBound = [(AAFKeychainItemDescriptor *)v5 _optionalValueFromObject:v29];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AAFKeychainItemDescriptor);
  v4->_itemClass = self->_itemClass;
  v4->_itemAccessible = self->_itemAccessible;
  v5 = [(NSString *)self->_account copy];
  account = v4->_account;
  v4->_account = v5;

  v7 = [(NSString *)self->_service copy];
  service = v4->_service;
  v4->_service = v7;

  v9 = [(NSString *)self->_server copy];
  server = v4->_server;
  v4->_server = v9;

  v11 = [(NSString *)self->_securityDomain copy];
  securityDomain = v4->_securityDomain;
  v4->_securityDomain = v11;

  v13 = [(NSString *)self->_label copy];
  label = v4->_label;
  v4->_label = v13;

  v15 = [(NSString *)self->_accessGroup copy];
  accessGroup = v4->_accessGroup;
  v4->_accessGroup = v15;

  v17 = [(NSString *)self->_sharingGroup copy];
  sharingGroup = v4->_sharingGroup;
  v4->_sharingGroup = v17;

  v19 = [(NSString *)self->_itemProtocol copy];
  itemProtocol = v4->_itemProtocol;
  v4->_itemProtocol = v19;

  v21 = [(NSString *)self->_creator copy];
  creator = v4->_creator;
  v4->_creator = v21;

  v4->_invisible = self->_invisible;
  v4->_synchronizable = self->_synchronizable;
  v4->_useDataProtection = self->_useDataProtection;
  v4->_sysBound = self->_sysBound;
  return v4;
}

- (id)attributes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AAFKeychainItemDescriptor *)self _keychainClassWithClass:self->_itemClass];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E697AFF8]];

  v5 = [(AAFKeychainItemDescriptor *)self _keychainAccessibleWithAccessible:self->_itemAccessible];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E697ABD8]];

  [v3 setObject:self->_account forKeyedSubscript:*MEMORY[0x1E697AC30]];
  [v3 setObject:self->_service forKeyedSubscript:*MEMORY[0x1E697AE88]];
  [v3 setObject:self->_server forKeyedSubscript:*MEMORY[0x1E697AE80]];
  [v3 setObject:self->_securityDomain forKeyedSubscript:*MEMORY[0x1E697AE70]];
  [v3 setObject:self->_label forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  [v3 setObject:self->_accessGroup forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  [v3 setObject:self->_sharingGroup forKeyedSubscript:*MEMORY[0x1E697AE90]];
  [v3 setObject:self->_itemProtocol forKeyedSubscript:*MEMORY[0x1E697AE00]];
  [v3 setObject:self->_creator forKeyedSubscript:*MEMORY[0x1E697ACD8]];
  v6 = [(AAFKeychainItemDescriptor *)self _objectForOptionalBool:self->_invisible];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697AD00]];

  v7 = [(AAFKeychainItemDescriptor *)self _objectForOptionalBool:self->_synchronizable];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697AEB0]];

  v8 = [(AAFKeychainItemDescriptor *)self _objectForOptionalBool:self->_useDataProtection];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697B390]];

  v9 = [(AAFKeychainItemDescriptor *)self _objectForOptionalBool:self->_sysBound];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697AEC0]];

  v10 = [v3 copy];

  return v10;
}

- (id)_keychainClassWithClass:(unint64_t)class
{
  if (class - 1 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E831BA10 + class - 1);
  }

  return v4;
}

- (unint64_t)_classWithKeychainClass:(id)class
{
  classCopy = class;
  if ([classCopy isEqualToString:*MEMORY[0x1E697B008]])
  {
    v4 = 1;
  }

  else if ([classCopy isEqualToString:*MEMORY[0x1E697B018]])
  {
    v4 = 2;
  }

  else if ([classCopy isEqualToString:*MEMORY[0x1E697B020]])
  {
    v4 = 3;
  }

  else if ([classCopy isEqualToString:*MEMORY[0x1E697B010]])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_keychainAccessibleWithAccessible:(unint64_t)accessible
{
  if (accessible - 1 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E831BA30 + accessible - 1);
  }

  return v4;
}

- (unint64_t)_accessibleWithKeychainAccessible:(id)accessible
{
  accessibleCopy = accessible;
  if ([accessibleCopy isEqualToString:*MEMORY[0x1E697AC20]])
  {
    v4 = 1;
  }

  else if ([accessibleCopy isEqualToString:*MEMORY[0x1E697ABE0]])
  {
    v4 = 2;
  }

  else if ([accessibleCopy isEqualToString:*MEMORY[0x1E697AC18]])
  {
    v4 = 3;
  }

  else if ([accessibleCopy isEqualToString:*MEMORY[0x1E697AC28]])
  {
    v4 = 4;
  }

  else if ([accessibleCopy isEqualToString:*MEMORY[0x1E697ABE8]])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_optionalValueFromObject:(id)object
{
  if (!object)
  {
    return 0;
  }

  if ([object BOOLValue])
  {
    return 2;
  }

  return 1;
}

- (id)_objectForOptionalBool:(unint64_t)bool
{
  v3 = MEMORY[0x1E695E118];
  if (bool != 2)
  {
    v3 = 0;
  }

  if (bool == 1)
  {
    return MEMORY[0x1E695E110];
  }

  else
  {
    return v3;
  }
}

@end