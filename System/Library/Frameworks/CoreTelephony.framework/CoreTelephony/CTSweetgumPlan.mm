@interface CTSweetgumPlan
- (BOOL)isEqual:(id)a3;
- (CTSweetgumPlan)init;
- (CTSweetgumPlan)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)planStatus;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSweetgumPlan

- (CTSweetgumPlan)init
{
  v11.receiver = self;
  v11.super_class = CTSweetgumPlan;
  v2 = [(CTSweetgumPlan *)&v11 init];
  v3 = v2;
  if (v2)
  {
    planId = v2->_planId;
    v2->_planId = 0;

    planLabel = v3->_planLabel;
    v3->_planLabel = 0;

    planValue = v3->_planValue;
    v3->_planValue = 0;

    *&v3->_planPurchasable = 769;
    planDetailsURL = v3->_planDetailsURL;
    v3->_planDetailsURL = 0;

    planTermsURL = v3->_planTermsURL;
    v3->_planTermsURL = 0;

    planPurchaseURL = v3->_planPurchaseURL;
    v3->_planPurchaseURL = 0;

    v3->_planType = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSweetgumPlan *)self planId];
  [v3 appendFormat:@", planId=%@", v4];

  v5 = [(CTSweetgumPlan *)self planLabel];
  [v3 appendFormat:@", planLabel=%@", v5];

  v6 = [(CTSweetgumPlan *)self planValue];
  [v3 appendFormat:@", planValue=%@", v6];

  [v3 appendFormat:@", planStatus=%s", CTSweetgumPlanStatusAsString(-[CTSweetgumPlan planStatus](self, "planStatus"))];
  [v3 appendFormat:@", planPurchasable=%d", -[CTSweetgumPlan planPurchasable](self, "planPurchasable")];
  v7 = [(CTSweetgumPlan *)self planDetailsURL];
  [v3 appendFormat:@", planDetailsURL=%@", v7];

  v8 = [(CTSweetgumPlan *)self planTermsURL];
  [v3 appendFormat:@", planTermsURL=%@", v8];

  v9 = [(CTSweetgumPlan *)self planPurchaseURL];
  [v3 appendFormat:@", planPurchaseURL=%@", v9];

  [v3 appendFormat:@", planType=%ld", -[CTSweetgumPlan planType](self, "planType")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(CTSweetgumPlan *)self planId];
      v7 = [(CTSweetgumPlan *)v5 planId];
      if (v6 != v7)
      {
        v39 = [(CTSweetgumPlan *)self planId];
        v3 = [(CTSweetgumPlan *)v5 planId];
        if (![v39 isEqualToString:v3])
        {
          v8 = 0;
          goto LABEL_21;
        }
      }

      v9 = [(CTSweetgumPlan *)self planLabel];
      v10 = [(CTSweetgumPlan *)v5 planLabel];
      if (v9 != v10)
      {
        v38 = [(CTSweetgumPlan *)self planLabel];
        v36 = [(CTSweetgumPlan *)v5 planLabel];
        if (![v38 isEqualToString:?])
        {
          v8 = 0;
LABEL_19:

LABEL_20:
          if (v6 == v7)
          {
LABEL_22:

            goto LABEL_23;
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      v11 = [(CTSweetgumPlan *)self planValue];
      v12 = [(CTSweetgumPlan *)v5 planValue];
      if (v11 != v12)
      {
        v37 = [(CTSweetgumPlan *)self planValue];
        v35 = [(CTSweetgumPlan *)v5 planValue];
        if (![v37 isEqualToString:?])
        {
          v8 = 0;
          goto LABEL_17;
        }
      }

      v13 = [(CTSweetgumPlan *)self planSubscriptionStatus];
      if (v13 != [(CTSweetgumPlan *)v5 planSubscriptionStatus]|| (v14 = [(CTSweetgumPlan *)self planPurchasable], v14 != [(CTSweetgumPlan *)v5 planPurchasable]))
      {
        v8 = 0;
        if (v11 == v12)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v16 = [(CTSweetgumPlan *)self planDetailsURL];
      [(CTSweetgumPlan *)v5 planDetailsURL];
      v33 = v32 = v3;
      if (v16 != v33)
      {
        v31 = [(CTSweetgumPlan *)self planDetailsURL];
        v27 = [(CTSweetgumPlan *)v5 planDetailsURL];
        if (![v31 isEqualToString:?])
        {
          v8 = 0;
          v17 = v16;
          v18 = v33;
LABEL_36:

LABEL_37:
          v3 = v32;
          if (v11 == v12)
          {
LABEL_18:

            if (v9 == v10)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }

LABEL_17:

          goto LABEL_18;
        }
      }

      v30 = v16;
      v34 = [(CTSweetgumPlan *)self planTermsURL];
      v29 = [(CTSweetgumPlan *)v5 planTermsURL];
      if (v34 == v29 || (-[CTSweetgumPlan planTermsURL](self, "planTermsURL"), v28 = objc_claimAutoreleasedReturnValue(), -[CTSweetgumPlan planTermsURL](v5, "planTermsURL"), v25 = objc_claimAutoreleasedReturnValue(), [v28 isEqualToString:?]))
      {
        v26 = [(CTSweetgumPlan *)self planPurchaseURL];
        v21 = [(CTSweetgumPlan *)v5 planPurchaseURL];
        if (v26 == v21)
        {

          v8 = 1;
        }

        else
        {
          v24 = v21;
          v23 = [(CTSweetgumPlan *)self planPurchaseURL];
          v22 = [(CTSweetgumPlan *)v5 planPurchaseURL];
          v8 = [v23 isEqualToString:v22];
        }

        v19 = v34;
        v20 = v29;
        if (v34 == v29)
        {
LABEL_35:

          v18 = v33;
          v17 = v30;
          if (v30 == v33)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v8 = 0;
        v19 = v34;
        v20 = v29;
      }

      goto LABEL_35;
    }

    v8 = 0;
  }

LABEL_23:

  return v8;
}

- (int64_t)planStatus
{
  planSubscriptionStatus = self->_planSubscriptionStatus;
  if (planSubscriptionStatus > 2)
  {
    return 0;
  }

  else
  {
    return qword_18304E000[planSubscriptionStatus];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_planId copyWithZone:a3];
  [v5 setPlanId:v6];

  v7 = [(NSString *)self->_planLabel copyWithZone:a3];
  [v5 setPlanLabel:v7];

  v8 = [(NSString *)self->_planValue copyWithZone:a3];
  [v5 setPlanValue:v8];

  [v5 setPlanSubscriptionStatus:self->_planSubscriptionStatus];
  [v5 setPlanPurchasable:self->_planPurchasable];
  v9 = [(NSString *)self->_planDetailsURL copyWithZone:a3];
  [v5 setPlanDetailsURL:v9];

  v10 = [(NSString *)self->_planTermsURL copyWithZone:a3];
  [v5 setPlanTermsURL:v10];

  v11 = [(NSString *)self->_planPurchaseURL copyWithZone:a3];
  [v5 setPlanPurchaseURL:v11];

  [v5 setPlanType:{-[CTSweetgumPlan planType](self, "planType")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_planId forKey:@"planId"];
  [v4 encodeObject:self->_planLabel forKey:@"planLabel"];
  [v4 encodeObject:self->_planValue forKey:@"planValue"];
  [v4 encodeInt:self->_planSubscriptionStatus forKey:@"planSubscriptionStatus"];
  [v4 encodeBool:self->_planPurchasable forKey:@"planPurchasable"];
  [v4 encodeObject:self->_planDetailsURL forKey:@"planDetailsURL"];
  [v4 encodeObject:self->_planTermsURL forKey:@"planTermsURL"];
  [v4 encodeObject:self->_planPurchaseURL forKey:@"planPurchaseURL"];
  [v4 encodeInteger:self->_planType forKey:@"planType"];
}

- (CTSweetgumPlan)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTSweetgumPlan;
  v5 = [(CTSweetgumPlan *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planId"];
    planId = v5->_planId;
    v5->_planId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planLabel"];
    planLabel = v5->_planLabel;
    v5->_planLabel = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planValue"];
    planValue = v5->_planValue;
    v5->_planValue = v10;

    v5->_planSubscriptionStatus = [v4 decodeIntForKey:@"planSubscriptionStatus"];
    v5->_planPurchasable = [v4 decodeBoolForKey:@"planPurchasable"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planDetailsURL"];
    planDetailsURL = v5->_planDetailsURL;
    v5->_planDetailsURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planTermsURL"];
    planTermsURL = v5->_planTermsURL;
    v5->_planTermsURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planPurchaseURL"];
    planPurchaseURL = v5->_planPurchaseURL;
    v5->_planPurchaseURL = v16;

    v5->_planType = [v4 decodeIntegerForKey:@"planType"];
  }

  return v5;
}

@end