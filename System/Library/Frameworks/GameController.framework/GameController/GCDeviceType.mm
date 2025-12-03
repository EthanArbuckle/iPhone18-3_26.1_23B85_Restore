@interface GCDeviceType
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)deviceTypeWithIdentifier:(id)identifier;
+ (id)deviceTypeWithUTType:(id)type;
- (BOOL)conformsToDeviceType:(id)type;
- (BOOL)conformsToType:(id)type;
- (NSString)localizedDescription;
@end

@implementation GCDeviceType

+ (id)deviceTypeWithIdentifier:(id)identifier
{
  if (!identifier)
  {
    +[GCDeviceType deviceTypeWithIdentifier:];
  }

  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
  if (v5)
  {

    return [self deviceTypeWithUTType:v5];
  }

  else
  {
    [(GCDeviceType *)identifier deviceTypeWithIdentifier:?];
    return v7;
  }
}

+ (id)deviceTypeWithUTType:(id)type
{
  if (!type)
  {
    +[GCDeviceType deviceTypeWithUTType:];
  }

  if (([type isDynamic] & 1) != 0 || !objc_msgSend(type, "conformsToType:", *MEMORY[0x1E6983120]))
  {
    return 0;
  }

  [(GCDeviceType *)type deviceTypeWithUTType:?];
  return v5;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    objc_opt_self();
    return &sharedPlaceholderDeviceType_Placeholder;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___GCDeviceType;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (NSString)localizedDescription
{
  type = [(GCDeviceType *)self type];

  return [(UTType *)type localizedDescription];
}

- (BOOL)conformsToType:(id)type
{
  type = [(GCDeviceType *)self type];
  if (type)
  {

    return [(UTType *)type conformsToType:type];
  }

  else
  {
    identifier = [(GCDeviceType *)self identifier];
    identifier2 = [type identifier];

    return [(NSString *)identifier isEqualToString:identifier2];
  }
}

- (BOOL)conformsToDeviceType:(id)type
{
  type = [(GCDeviceType *)self type];
  type2 = [type type];
  if (type && (v7 = type2) != 0)
  {

    return [(UTType *)type conformsToType:type2];
  }

  else
  {
    identifier = [(GCDeviceType *)self identifier];
    identifier2 = [type identifier];
    if (identifier && identifier2)
    {

      return [(NSString *)identifier isEqualToString:identifier2];
    }

    else
    {
      return 0;
    }
  }
}

+ (_GCDeviceTypeUnknown)deviceTypeWithIdentifier:(void *)a1 .cold.1(void *a1, _GCDeviceTypeUnknown **a2)
{
  v4 = [_GCDeviceTypeUnknown alloc];
  if (v4)
  {
    v4->_identifier = [a1 copy];
  }

  result = v4;
  *a2 = result;
  return result;
}

+ (_GCDeviceTypeDeclared)deviceTypeWithUTType:(void *)a1 .cold.1(void *a1, _GCDeviceTypeDeclared **a2)
{
  v4 = [_GCDeviceTypeDeclared alloc];
  if (v4)
  {
    v4->_type = a1;
  }

  result = v4;
  *a2 = result;
  return result;
}

@end