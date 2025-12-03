@interface _TUIIdentifierNumberWithUUID
- (BOOL)isEqual:(id)equal;
- (_TUIIdentifierNumberWithUUID)initWithUUID:(id)d value:(unint64_t)value;
- (id)tui_identifierDescribeForDebuggingWithPackage:(id)package;
- (id)tui_identifierToString;
- (id)tui_identifierUUID;
@end

@implementation _TUIIdentifierNumberWithUUID

- (_TUIIdentifierNumberWithUUID)initWithUUID:(id)d value:(unint64_t)value
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = _TUIIdentifierNumberWithUUID;
  v7 = [(_TUIIdentifierNumberWithUUID *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [dCopy getUUIDBytes:v7->_uuid];
    v8->_value = value;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == equalCopy->_value && *self->_uuid == *equalCopy->_uuid && *&self->_uuid[8] == *&equalCopy->_uuid[8];
  }

  return v6;
}

- (id)tui_identifierToString
{
  v3 = [[NSUUID alloc] initWithUUIDBytes:self->_uuid];
  uUIDString = [v3 UUIDString];
  v5 = [NSString stringWithFormat:@"%@/%lu", uUIDString, self->_value];

  return v5;
}

- (id)tui_identifierDescribeForDebuggingWithPackage:(id)package
{
  packageCopy = package;
  v5 = [[NSUUID alloc] initWithUUIDBytes:self->_uuid];
  uUIDString = [v5 UUIDString];
  v10[0] = uUIDString;
  v7 = [TUIIdentifierMap describeForDebuggingIdentifierIndex:self->_value package:packageCopy];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];

  return v8;
}

- (id)tui_identifierUUID
{
  v2 = [[NSUUID alloc] initWithUUIDBytes:self->_uuid];

  return v2;
}

@end