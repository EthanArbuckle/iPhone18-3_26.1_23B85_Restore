@interface GCDeviceType
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)deviceTypeWithIdentifier:(id)a3;
+ (id)deviceTypeWithUTType:(id)a3;
- (BOOL)conformsToDeviceType:(id)a3;
- (BOOL)conformsToType:(id)a3;
- (NSString)localizedDescription;
@end

@implementation GCDeviceType

+ (id)deviceTypeWithIdentifier:(id)a3
{
  if (!a3)
  {
    +[GCDeviceType deviceTypeWithIdentifier:];
  }

  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
  if (v5)
  {

    return [a1 deviceTypeWithUTType:v5];
  }

  else
  {
    [(GCDeviceType *)a3 deviceTypeWithIdentifier:?];
    return v7;
  }
}

+ (id)deviceTypeWithUTType:(id)a3
{
  if (!a3)
  {
    +[GCDeviceType deviceTypeWithUTType:];
  }

  if (([a3 isDynamic] & 1) != 0 || !objc_msgSend(a3, "conformsToType:", *MEMORY[0x1E6983120]))
  {
    return 0;
  }

  [(GCDeviceType *)a3 deviceTypeWithUTType:?];
  return v5;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    objc_opt_self();
    return &sharedPlaceholderDeviceType_Placeholder;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___GCDeviceType;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (NSString)localizedDescription
{
  v2 = [(GCDeviceType *)self type];

  return [(UTType *)v2 localizedDescription];
}

- (BOOL)conformsToType:(id)a3
{
  v5 = [(GCDeviceType *)self type];
  if (v5)
  {

    return [(UTType *)v5 conformsToType:a3];
  }

  else
  {
    v7 = [(GCDeviceType *)self identifier];
    v8 = [a3 identifier];

    return [(NSString *)v7 isEqualToString:v8];
  }
}

- (BOOL)conformsToDeviceType:(id)a3
{
  v5 = [(GCDeviceType *)self type];
  v6 = [a3 type];
  if (v5 && (v7 = v6) != 0)
  {

    return [(UTType *)v5 conformsToType:v6];
  }

  else
  {
    v9 = [(GCDeviceType *)self identifier];
    v10 = [a3 identifier];
    if (v9 && v10)
    {

      return [(NSString *)v9 isEqualToString:v10];
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