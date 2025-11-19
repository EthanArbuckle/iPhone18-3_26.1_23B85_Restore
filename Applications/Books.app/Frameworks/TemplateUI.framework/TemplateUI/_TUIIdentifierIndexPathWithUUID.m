@interface _TUIIdentifierIndexPathWithUUID
- (BOOL)isEqual:(id)a3;
- (_TUIIdentifierIndexPathWithUUID)initWithUUID:(id)a3 indexPath:(id)a4;
- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3;
- (id)tui_identifierToString;
@end

@implementation _TUIIdentifierIndexPathWithUUID

- (_TUIIdentifierIndexPathWithUUID)initWithUUID:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _TUIIdentifierIndexPathWithUUID;
  v8 = [(_TUIIdentifierIndexPathWithUUID *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    UUID = v8->_UUID;
    v8->_UUID = v9;

    v11 = [v7 copy];
    indexPath = v8->_indexPath;
    v8->_indexPath = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSIndexPath *)self->_indexPath isEqual:v4->_indexPath])
    {
      v5 = [(NSUUID *)self->_UUID isEqual:v4->_UUID];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)tui_identifierToString
{
  v3 = [[NSMutableString alloc] initWithCapacity:64];
  v4 = [(NSUUID *)self->_UUID UUIDString];
  [v3 appendFormat:@"%@", v4];

  [(NSIndexPath *)self->_indexPath tui_appendToString:v3];
  v5 = [v3 copy];

  return v5;
}

- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(NSUUID *)self->_UUID UUIDString];
  [v5 addObject:v6];

  v7 = [(NSIndexPath *)self->_indexPath tui_identifierDescribeForDebuggingWithPackage:v4];
  [v5 addObjectsFromArray:v7];

  v8 = [v5 copy];

  return v8;
}

@end