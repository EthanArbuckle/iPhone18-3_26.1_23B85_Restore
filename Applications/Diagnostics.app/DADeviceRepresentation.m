@interface DADeviceRepresentation
- (BOOL)isEqual:(id)a3;
- (DADeviceDelegate)delegate;
- (DADeviceRepresentation)initWithSerialNumber:(id)a3 isLocal:(BOOL)a4 attributes:(id)a5;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation DADeviceRepresentation

- (DADeviceRepresentation)initWithSerialNumber:(id)a3 isLocal:(BOOL)a4 attributes:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = DADeviceRepresentation;
  v10 = [(DADeviceRepresentation *)&v16 init];
  if (v10)
  {
    v11 = &__NSDictionary0__struct;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v10->_local = a4;
    v13 = [[DADeviceState alloc] initWithSerialNumber:v8 attributes:v12];
    state = v10->_state;
    v10->_state = v13;

    v9 = v12;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(DADeviceRepresentation *)self state];
  v3 = [v2 serialNumber];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___DADevice])
  {
    v5 = [(DADeviceRepresentation *)self state];
    v6 = [v5 serialNumber];
    v7 = [v4 state];
    v8 = [v7 serialNumber];
    v9 = [v6 isEqualToString:v8];
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
  v5 = [(DADeviceRepresentation *)self state];
  v6 = [v5 serialNumber];
  v7 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, v6];;

  return v7;
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end