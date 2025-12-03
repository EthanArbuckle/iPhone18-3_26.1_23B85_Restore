@interface _TUIIdentifierIndexPathWithUUID
- (BOOL)isEqual:(id)equal;
- (_TUIIdentifierIndexPathWithUUID)initWithUUID:(id)d indexPath:(id)path;
- (id)tui_identifierDescribeForDebuggingWithPackage:(id)package;
- (id)tui_identifierToString;
@end

@implementation _TUIIdentifierIndexPathWithUUID

- (_TUIIdentifierIndexPathWithUUID)initWithUUID:(id)d indexPath:(id)path
{
  dCopy = d;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = _TUIIdentifierIndexPathWithUUID;
  v8 = [(_TUIIdentifierIndexPathWithUUID *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    UUID = v8->_UUID;
    v8->_UUID = v9;

    v11 = [pathCopy copy];
    indexPath = v8->_indexPath;
    v8->_indexPath = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSIndexPath *)self->_indexPath isEqual:equalCopy->_indexPath])
    {
      v5 = [(NSUUID *)self->_UUID isEqual:equalCopy->_UUID];
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
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  [v3 appendFormat:@"%@", uUIDString];

  [(NSIndexPath *)self->_indexPath tui_appendToString:v3];
  v5 = [v3 copy];

  return v5;
}

- (id)tui_identifierDescribeForDebuggingWithPackage:(id)package
{
  packageCopy = package;
  v5 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  [v5 addObject:uUIDString];

  v7 = [(NSIndexPath *)self->_indexPath tui_identifierDescribeForDebuggingWithPackage:packageCopy];
  [v5 addObjectsFromArray:v7];

  v8 = [v5 copy];

  return v8;
}

@end