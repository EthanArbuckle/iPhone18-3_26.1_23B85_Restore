@interface DADeviceRepresentation
- (BOOL)isEqual:(id)equal;
- (DADeviceDelegate)delegate;
- (DADeviceRepresentation)initWithSerialNumber:(id)number isLocal:(BOOL)local attributes:(id)attributes;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation DADeviceRepresentation

- (DADeviceRepresentation)initWithSerialNumber:(id)number isLocal:(BOOL)local attributes:(id)attributes
{
  numberCopy = number;
  attributesCopy = attributes;
  v16.receiver = self;
  v16.super_class = DADeviceRepresentation;
  v10 = [(DADeviceRepresentation *)&v16 init];
  if (v10)
  {
    v11 = &__NSDictionary0__struct;
    if (attributesCopy)
    {
      v11 = attributesCopy;
    }

    v12 = v11;

    v10->_local = local;
    v13 = [[DADeviceState alloc] initWithSerialNumber:numberCopy attributes:v12];
    state = v10->_state;
    v10->_state = v13;

    attributesCopy = v12;
  }

  return v10;
}

- (unint64_t)hash
{
  state = [(DADeviceRepresentation *)self state];
  serialNumber = [state serialNumber];
  v4 = [serialNumber hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&OBJC_PROTOCOL___DADevice])
  {
    state = [(DADeviceRepresentation *)self state];
    serialNumber = [state serialNumber];
    state2 = [equalCopy state];
    serialNumber2 = [state2 serialNumber];
    v9 = [serialNumber isEqualToString:serialNumber2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  state = [(DADeviceRepresentation *)self state];
  serialNumber = [state serialNumber];
  v7 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, serialNumber];;

  return v7;
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end