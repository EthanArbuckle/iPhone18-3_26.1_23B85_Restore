@interface ADServiceRecord
- (ADServiceRecord)initWithService:(id)a3 precedence:(int64_t)a4;
- (BOOL)hasEqualOrHigherPrecedenceThanServiceRecord:(id)a3;
- (id)description;
@end

@implementation ADServiceRecord

- (BOOL)hasEqualOrHigherPrecedenceThanServiceRecord:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(ADServiceRecord *)self precedence];
  v6 = [v4 precedence];

  return v5 != 1 || v6 != 0;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(ADService *)self->_service identifier];
  v6 = [v3 initWithFormat:@"<%@: Identifier: %@>", v4, v5];

  return v6;
}

- (ADServiceRecord)initWithService:(id)a3 precedence:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ADServiceRecord;
  v8 = [(ADServiceRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_service, a3);
    v9->_precedence = a4;
  }

  return v9;
}

@end