@interface FKActions
- (BOOL)isEqual:(id)equal;
- (FKActions)initWithDigitalServicingURL:(id)l payNowURL:(id)rL transferFundsURL:(id)uRL postInstallmentURL:(id)installmentURL redeemRewardsURL:(id)rewardsURL;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKActions

- (FKActions)initWithDigitalServicingURL:(id)l payNowURL:(id)rL transferFundsURL:(id)uRL postInstallmentURL:(id)installmentURL redeemRewardsURL:(id)rewardsURL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  installmentURLCopy = installmentURL;
  rewardsURLCopy = rewardsURL;
  v29.receiver = self;
  v29.super_class = FKActions;
  v17 = [(FKActions *)&v29 init];
  if (v17)
  {
    v18 = [lCopy copy];
    digitalServicingURL = v17->_digitalServicingURL;
    v17->_digitalServicingURL = v18;

    v20 = [rLCopy copy];
    payNowURL = v17->_payNowURL;
    v17->_payNowURL = v20;

    v22 = [uRLCopy copy];
    transferFundsURL = v17->_transferFundsURL;
    v17->_transferFundsURL = v22;

    v24 = [installmentURLCopy copy];
    postInstallmentURL = v17->_postInstallmentURL;
    v17->_postInstallmentURL = v24;

    v26 = [rewardsURLCopy copy];
    redeemRewardsURL = v17->_redeemRewardsURL;
    v17->_redeemRewardsURL = v26;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKActions);
  v6 = [(NSURL *)self->_digitalServicingURL copyWithZone:zone];
  digitalServicingURL = v5->_digitalServicingURL;
  v5->_digitalServicingURL = v6;

  v8 = [(NSURL *)self->_payNowURL copyWithZone:zone];
  payNowURL = v5->_payNowURL;
  v5->_payNowURL = v8;

  v10 = [(NSURL *)self->_transferFundsURL copyWithZone:zone];
  transferFundsURL = v5->_transferFundsURL;
  v5->_transferFundsURL = v10;

  v12 = [(NSURL *)self->_postInstallmentURL copyWithZone:zone];
  postInstallmentURL = v5->_postInstallmentURL;
  v5->_postInstallmentURL = v12;

  v14 = [(NSURL *)self->_redeemRewardsURL copyWithZone:zone];
  redeemRewardsURL = v5->_redeemRewardsURL;
  v5->_redeemRewardsURL = v14;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_digitalServicingURL];
  [v3 safelyAddObject:self->_payNowURL];
  [v3 safelyAddObject:self->_transferFundsURL];
  [v3 safelyAddObject:self->_postInstallmentURL];
  [v3 safelyAddObject:self->_redeemRewardsURL];
  v4 = FKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_digitalServicingURL, v6[1]) && FKEqualObjects(self->_payNowURL, v6[2]) && FKEqualObjects(self->_transferFundsURL, v6[3]) && FKEqualObjects(self->_postInstallmentURL, v6[4]))
    {
      v7 = FKEqualObjects(self->_redeemRewardsURL, v6[5]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end