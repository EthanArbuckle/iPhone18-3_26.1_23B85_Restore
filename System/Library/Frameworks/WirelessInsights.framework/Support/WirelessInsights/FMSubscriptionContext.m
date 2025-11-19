@interface FMSubscriptionContext
- (NSString)plmn;
- (id)description;
- (id)init:(id)a3 subscriptionID:(id)a4 mcc:(id)a5 mnc:(id)a6;
@end

@implementation FMSubscriptionContext

- (id)init:(id)a3 subscriptionID:(id)a4 mcc:(id)a5 mnc:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = FMSubscriptionContext;
  v15 = [(FMSubscriptionContext *)&v19 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    v17 = p_isa;
  }

  return p_isa;
}

- (id)description
{
  v3 = [(FMSubscriptionContext *)self uuid];
  v4 = [(FMSubscriptionContext *)self subscriptionID];
  v5 = [(FMSubscriptionContext *)self plmn];
  v6 = [NSString stringWithFormat:@"UUID: %@, subscriptionID: %@, PLMN: %@", v3, v4, v5];

  return v6;
}

- (NSString)plmn
{
  mcc = self->_mcc;
  if (mcc)
  {
    if (self->_mnc)
    {
      mcc = [mcc length];
      if (mcc)
      {
        mcc = [(NSString *)self->_mnc length];
        if (mcc)
        {
          mcc = [NSString stringWithFormat:@"%@.%@", self->_mcc, self->_mnc];
        }
      }
    }

    else
    {
      mcc = 0;
    }
  }

  return mcc;
}

@end