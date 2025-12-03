@interface FMSubscriptionContext
- (NSString)plmn;
- (id)description;
- (id)init:(id)init subscriptionID:(id)d mcc:(id)mcc mnc:(id)mnc;
@end

@implementation FMSubscriptionContext

- (id)init:(id)init subscriptionID:(id)d mcc:(id)mcc mnc:(id)mnc
{
  initCopy = init;
  dCopy = d;
  mccCopy = mcc;
  mncCopy = mnc;
  v19.receiver = self;
  v19.super_class = FMSubscriptionContext;
  v15 = [(FMSubscriptionContext *)&v19 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, init);
    objc_storeStrong(p_isa + 2, d);
    objc_storeStrong(p_isa + 3, mcc);
    objc_storeStrong(p_isa + 4, mnc);
    v17 = p_isa;
  }

  return p_isa;
}

- (id)description
{
  uuid = [(FMSubscriptionContext *)self uuid];
  subscriptionID = [(FMSubscriptionContext *)self subscriptionID];
  plmn = [(FMSubscriptionContext *)self plmn];
  v6 = [NSString stringWithFormat:@"UUID: %@, subscriptionID: %@, PLMN: %@", uuid, subscriptionID, plmn];

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