@interface MPSubscriptionStatusPlaybackInformation
- (MPSubscriptionStatusPlaybackInformation)initWithICSubscriptionStatus:(id)a3;
- (id)description;
@end

@implementation MPSubscriptionStatusPlaybackInformation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p subscriptionStatusObject: %@>", v5, self, self->_subscriptionStatusObject];

  return v6;
}

- (MPSubscriptionStatusPlaybackInformation)initWithICSubscriptionStatus:(id)a3
{
  v5 = a3;
  v6 = [(MPSubscriptionStatusPlaybackInformation *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionStatusObject, a3);
    v8 = [v5 statusType];
    v9 = [v5 carrierBundlingStatusType];
    v10 = [v5 reasonType];
    if (v8 == 1)
    {
      v11 = 17;
      v12 = 16;
      v13 = 19;
      if (v9 != 2 || v10)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v9 == 4)
    {
      v11 = 16;
      v12 = 18;
      goto LABEL_10;
    }

    if (v9 == 2)
    {
LABEL_8:
      v11 = 16;
      v12 = 17;
      v13 = 20;
LABEL_9:
      *(&v7->super.isa + v13) = 1;
LABEL_10:
      *(&v7->super.isa + v12) = 1;
      *(&v7->super.isa + v11) = 1;
    }
  }

  return v7;
}

@end