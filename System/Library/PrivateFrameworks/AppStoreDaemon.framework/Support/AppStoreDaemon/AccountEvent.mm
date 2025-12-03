@interface AccountEvent
- (AccountEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation AccountEvent

- (AccountEvent)init
{
  v3.receiver = self;
  v3.super_class = AccountEvent;
  return [(SQLiteMemoryEntity *)&v3 init];
}

- (id)description
{
  v3 = sub_1001F05C8(self);
  v4 = sub_1002525A8(v3);
  v5 = sub_1001F0590(self);
  v6 = sub_1002525A8(v5);
  v7 = sub_1001F0520(self);
  v8 = sub_1001F0558(self);
  v9 = [NSString stringWithFormat:@"{ start: %@ end: %@ account: %@/%@  type: %ld }", v4, v6, v7, v8, sub_1001F0600(self)];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = AccountEvent;
  return [(SQLiteMemoryEntity *)&v4 copyWithZone:zone];
}

@end