@interface _TUIIdentifierNumberWithUUID
- (BOOL)isEqual:(id)a3;
- (_TUIIdentifierNumberWithUUID)initWithUUID:(id)a3 value:(unint64_t)a4;
- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3;
- (id)tui_identifierToString;
- (id)tui_identifierUUID;
@end

@implementation _TUIIdentifierNumberWithUUID

- (_TUIIdentifierNumberWithUUID)initWithUUID:(id)a3 value:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = _TUIIdentifierNumberWithUUID;
  v7 = [(_TUIIdentifierNumberWithUUID *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [v6 getUUIDBytes:v7->_uuid];
    v8->_value = a4;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == v4->_value && *self->_uuid == *v4->_uuid && *&self->_uuid[8] == *&v4->_uuid[8];
  }

  return v6;
}

- (id)tui_identifierToString
{
  v3 = [[NSUUID alloc] initWithUUIDBytes:self->_uuid];
  v4 = [v3 UUIDString];
  v5 = [NSString stringWithFormat:@"%@/%lu", v4, self->_value];

  return v5;
}

- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3
{
  v4 = a3;
  v5 = [[NSUUID alloc] initWithUUIDBytes:self->_uuid];
  v6 = [v5 UUIDString];
  v10[0] = v6;
  v7 = [TUIIdentifierMap describeForDebuggingIdentifierIndex:self->_value package:v4];
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