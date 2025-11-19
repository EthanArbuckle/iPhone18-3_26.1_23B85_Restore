@interface CTSweetgumUsagePlanMetrics
- (BOOL)isEqual:(id)a3;
- (CTSweetgumUsagePlanMetrics)init;
- (CTSweetgumUsagePlanMetrics)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSweetgumUsagePlanMetrics

- (CTSweetgumUsagePlanMetrics)init
{
  v11.receiver = self;
  v11.super_class = CTSweetgumUsagePlanMetrics;
  v2 = [(CTSweetgumUsagePlanMetrics *)&v11 init];
  v3 = v2;
  if (v2)
  {
    planLabel = v2->_planLabel;
    v2->_planLabel = 0;

    dataUsage = v3->_dataUsage;
    v3->_planCategory = 0;
    v3->_dataUsage = 0;
    v3->_currentUsedPlan = 0;

    messages = v3->_messages;
    v3->_messages = 0;

    voice = v3->_voice;
    v3->_voice = 0;

    remainingBalance = v3->_remainingBalance;
    v3->_remainingBalance = 0;

    v3->_throttled = 0;
    lastUpdatedAt = v3->_lastUpdatedAt;
    v3->_lastUpdatedAt = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSweetgumUsagePlanMetrics *)self planLabel];
  [v3 appendFormat:@", planLabel=%@", v4];

  [v3 appendFormat:@", planCategory=%s", CTSweetgumPlanCategoryAsString(-[CTSweetgumUsagePlanMetrics planCategory](self, "planCategory"))];
  [v3 appendFormat:@", currentUsedPlan=%d", -[CTSweetgumUsagePlanMetrics currentUsedPlan](self, "currentUsedPlan")];
  v5 = [(CTSweetgumUsagePlanMetrics *)self dataUsage];
  [v3 appendFormat:@", data=%@", v5];

  v6 = [(CTSweetgumUsagePlanMetrics *)self messages];
  [v3 appendFormat:@", messages=%@", v6];

  v7 = [(CTSweetgumUsagePlanMetrics *)self voice];
  [v3 appendFormat:@", voice=%@", v7];

  v8 = [(CTSweetgumUsagePlanMetrics *)self remainingBalance];
  [v3 appendFormat:@", remainingBalance=%@", v8];

  [v3 appendFormat:@", throttled=%d", -[CTSweetgumUsagePlanMetrics throttled](self, "throttled")];
  v9 = [(CTSweetgumUsagePlanMetrics *)self lastUpdatedAt];
  [v3 appendFormat:@", lastUpdatedAt=%@", v9];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(CTSweetgumUsagePlanMetrics *)self planLabel];
      v9 = [(CTSweetgumUsagePlanMetrics *)v7 planLabel];
      if (v8 != v9)
      {
        v3 = [(CTSweetgumUsagePlanMetrics *)self planLabel];
        v4 = [(CTSweetgumUsagePlanMetrics *)v7 planLabel];
        if (![v3 isEqualToString:v4])
        {
          v10 = 0;
          goto LABEL_44;
        }
      }

      v11 = [(CTSweetgumUsagePlanMetrics *)self planCategory];
      if (v11 != [(CTSweetgumUsagePlanMetrics *)v7 planCategory]|| (v12 = [(CTSweetgumUsagePlanMetrics *)self currentUsedPlan], v12 != [(CTSweetgumUsagePlanMetrics *)v7 currentUsedPlan]))
      {
        v10 = 0;
        goto LABEL_43;
      }

      v13 = [(CTSweetgumUsagePlanMetrics *)self dataUsage];
      v14 = [(CTSweetgumUsagePlanMetrics *)v7 dataUsage];
      if (v13 != v14)
      {
        v5 = [(CTSweetgumUsagePlanMetrics *)self dataUsage];
        v15 = [(CTSweetgumUsagePlanMetrics *)v7 dataUsage];
        if (![v5 isEqual:v15])
        {
          v10 = 0;
          goto LABEL_41;
        }

        v53 = v15;
      }

      v16 = [(CTSweetgumUsagePlanMetrics *)self messages];
      v17 = [(CTSweetgumUsagePlanMetrics *)v7 messages];
      v55 = v13;
      v56 = v16;
      v18 = v16 == v17;
      v19 = v17;
      if (v18)
      {
        v54 = v17;
      }

      else
      {
        v20 = v5;
        v21 = [(CTSweetgumUsagePlanMetrics *)self messages];
        v48 = [(CTSweetgumUsagePlanMetrics *)v7 messages];
        v49 = v21;
        if (![v21 isEqual:?])
        {
          v10 = 0;
          v24 = v19;
          v27 = v56;
LABEL_39:

LABEL_40:
          v15 = v53;
          v5 = v20;
          v13 = v55;
          if (v55 == v14)
          {
LABEL_42:

LABEL_43:
            if (v8 == v9)
            {
LABEL_45:

              goto LABEL_46;
            }

LABEL_44:

            goto LABEL_45;
          }

LABEL_41:

          goto LABEL_42;
        }

        v54 = v19;
        v5 = v20;
      }

      v22 = [(CTSweetgumUsagePlanMetrics *)self voice];
      v51 = [(CTSweetgumUsagePlanMetrics *)v7 voice];
      v52 = v22;
      v50 = v14;
      if (v22 != v51)
      {
        v23 = [(CTSweetgumUsagePlanMetrics *)self voice];
        v44 = [(CTSweetgumUsagePlanMetrics *)v7 voice];
        v45 = v23;
        if (![v23 isEqual:?])
        {
          v20 = v5;
          v24 = v54;
          v10 = 0;
          v26 = v51;
          v25 = v52;
LABEL_37:

LABEL_38:
          v27 = v56;
          v14 = v50;
          if (v56 == v24)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      v28 = [(CTSweetgumUsagePlanMetrics *)self remainingBalance];
      v46 = [(CTSweetgumUsagePlanMetrics *)v7 remainingBalance];
      v47 = v28;
      if (v28 == v46)
      {
        v43 = v5;
      }

      else
      {
        v29 = [(CTSweetgumUsagePlanMetrics *)self remainingBalance];
        v41 = [(CTSweetgumUsagePlanMetrics *)v7 remainingBalance];
        v42 = v29;
        v30 = [v29 isEqualToString:?];
        v31 = v54;
        if (!v30)
        {
          v20 = v5;
          v10 = 0;
          v39 = v46;
          v38 = v47;
          goto LABEL_34;
        }

        v43 = v5;
      }

      v32 = [(CTSweetgumUsagePlanMetrics *)self throttled];
      if (v32 == [(CTSweetgumUsagePlanMetrics *)v7 throttled])
      {
        v33 = [(CTSweetgumUsagePlanMetrics *)self lastUpdatedAt];
        v34 = [(CTSweetgumUsagePlanMetrics *)v7 lastUpdatedAt];
        v35 = v34;
        if (v33 == v34)
        {

          v10 = 1;
        }

        else
        {
          v36 = [(CTSweetgumUsagePlanMetrics *)self lastUpdatedAt];
          v37 = [(CTSweetgumUsagePlanMetrics *)v7 lastUpdatedAt];
          v10 = [v36 isEqualToDate:v37];
        }
      }

      else
      {
        v10 = 0;
      }

      v39 = v46;
      v38 = v47;
      v20 = v43;
      v31 = v54;
      if (v47 == v46)
      {
        v24 = v54;
LABEL_36:

        v26 = v51;
        v25 = v52;
        if (v52 == v51)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_34:
      v24 = v31;

      goto LABEL_36;
    }

    v10 = 0;
  }

LABEL_46:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  planLabel = self->_planLabel;
  v5 = a3;
  [v5 encodeObject:planLabel forKey:@"planLabel"];
  [v5 encodeInteger:self->_planCategory forKey:@"planCategory"];
  [v5 encodeBool:self->_currentUsedPlan forKey:@"currentUsedPlan"];
  [v5 encodeObject:self->_dataUsage forKey:@"dataUsage"];
  [v5 encodeObject:self->_messages forKey:@"messages"];
  [v5 encodeObject:self->_voice forKey:@"voice"];
  [v5 encodeObject:self->_remainingBalance forKey:@"remainingBalance"];
  [v5 encodeBool:self->_throttled forKey:@"throttled"];
  [v5 encodeObject:self->_lastUpdatedAt forKey:@"lastUpdatedAt"];
}

- (CTSweetgumUsagePlanMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTSweetgumUsagePlanMetrics;
  v5 = [(CTSweetgumUsagePlanMetrics *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planLabel"];
    planLabel = v5->_planLabel;
    v5->_planLabel = v6;

    v5->_planCategory = [v4 decodeIntegerForKey:@"planCategory"];
    v5->_currentUsedPlan = [v4 decodeBoolForKey:@"currentUsedPlan"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataUsage"];
    dataUsage = v5->_dataUsage;
    v5->_dataUsage = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messages"];
    messages = v5->_messages;
    v5->_messages = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voice"];
    voice = v5->_voice;
    v5->_voice = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remainingBalance"];
    remainingBalance = v5->_remainingBalance;
    v5->_remainingBalance = v14;

    v5->_throttled = [v4 decodeBoolForKey:@"throttled"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedAt"];
    lastUpdatedAt = v5->_lastUpdatedAt;
    v5->_lastUpdatedAt = v16;
  }

  return v5;
}

@end