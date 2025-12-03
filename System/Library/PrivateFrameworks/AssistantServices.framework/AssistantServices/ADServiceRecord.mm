@interface ADServiceRecord
- (ADServiceRecord)initWithService:(id)service precedence:(int64_t)precedence;
- (BOOL)hasEqualOrHigherPrecedenceThanServiceRecord:(id)record;
- (id)description;
@end

@implementation ADServiceRecord

- (BOOL)hasEqualOrHigherPrecedenceThanServiceRecord:(id)record
{
  if (!record)
  {
    return 1;
  }

  recordCopy = record;
  precedence = [(ADServiceRecord *)self precedence];
  precedence2 = [recordCopy precedence];

  return precedence != 1 || precedence2 != 0;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  identifier = [(ADService *)self->_service identifier];
  v6 = [v3 initWithFormat:@"<%@: Identifier: %@>", v4, identifier];

  return v6;
}

- (ADServiceRecord)initWithService:(id)service precedence:(int64_t)precedence
{
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = ADServiceRecord;
  v8 = [(ADServiceRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_service, service);
    v9->_precedence = precedence;
  }

  return v9;
}

@end