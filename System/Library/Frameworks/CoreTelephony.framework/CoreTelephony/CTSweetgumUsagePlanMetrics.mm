@interface CTSweetgumUsagePlanMetrics
- (BOOL)isEqual:(id)equal;
- (CTSweetgumUsagePlanMetrics)init;
- (CTSweetgumUsagePlanMetrics)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  planLabel = [(CTSweetgumUsagePlanMetrics *)self planLabel];
  [v3 appendFormat:@", planLabel=%@", planLabel];

  [v3 appendFormat:@", planCategory=%s", CTSweetgumPlanCategoryAsString(-[CTSweetgumUsagePlanMetrics planCategory](self, "planCategory"))];
  [v3 appendFormat:@", currentUsedPlan=%d", -[CTSweetgumUsagePlanMetrics currentUsedPlan](self, "currentUsedPlan")];
  dataUsage = [(CTSweetgumUsagePlanMetrics *)self dataUsage];
  [v3 appendFormat:@", data=%@", dataUsage];

  messages = [(CTSweetgumUsagePlanMetrics *)self messages];
  [v3 appendFormat:@", messages=%@", messages];

  voice = [(CTSweetgumUsagePlanMetrics *)self voice];
  [v3 appendFormat:@", voice=%@", voice];

  remainingBalance = [(CTSweetgumUsagePlanMetrics *)self remainingBalance];
  [v3 appendFormat:@", remainingBalance=%@", remainingBalance];

  [v3 appendFormat:@", throttled=%d", -[CTSweetgumUsagePlanMetrics throttled](self, "throttled")];
  lastUpdatedAt = [(CTSweetgumUsagePlanMetrics *)self lastUpdatedAt];
  [v3 appendFormat:@", lastUpdatedAt=%@", lastUpdatedAt];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      planLabel = [(CTSweetgumUsagePlanMetrics *)self planLabel];
      planLabel2 = [(CTSweetgumUsagePlanMetrics *)equalCopy planLabel];
      if (planLabel != planLabel2)
      {
        planLabel3 = [(CTSweetgumUsagePlanMetrics *)self planLabel];
        planLabel4 = [(CTSweetgumUsagePlanMetrics *)equalCopy planLabel];
        if (![planLabel3 isEqualToString:planLabel4])
        {
          v10 = 0;
          goto LABEL_44;
        }
      }

      planCategory = [(CTSweetgumUsagePlanMetrics *)self planCategory];
      if (planCategory != [(CTSweetgumUsagePlanMetrics *)equalCopy planCategory]|| (v12 = [(CTSweetgumUsagePlanMetrics *)self currentUsedPlan], v12 != [(CTSweetgumUsagePlanMetrics *)equalCopy currentUsedPlan]))
      {
        v10 = 0;
        goto LABEL_43;
      }

      dataUsage = [(CTSweetgumUsagePlanMetrics *)self dataUsage];
      dataUsage2 = [(CTSweetgumUsagePlanMetrics *)equalCopy dataUsage];
      if (dataUsage != dataUsage2)
      {
        dataUsage3 = [(CTSweetgumUsagePlanMetrics *)self dataUsage];
        dataUsage4 = [(CTSweetgumUsagePlanMetrics *)equalCopy dataUsage];
        if (![dataUsage3 isEqual:dataUsage4])
        {
          v10 = 0;
          goto LABEL_41;
        }

        v53 = dataUsage4;
      }

      messages = [(CTSweetgumUsagePlanMetrics *)self messages];
      messages2 = [(CTSweetgumUsagePlanMetrics *)equalCopy messages];
      v55 = dataUsage;
      v56 = messages;
      v18 = messages == messages2;
      v19 = messages2;
      if (v18)
      {
        v54 = messages2;
      }

      else
      {
        v20 = dataUsage3;
        messages3 = [(CTSweetgumUsagePlanMetrics *)self messages];
        messages4 = [(CTSweetgumUsagePlanMetrics *)equalCopy messages];
        v49 = messages3;
        if (![messages3 isEqual:?])
        {
          v10 = 0;
          v24 = v19;
          v27 = v56;
LABEL_39:

LABEL_40:
          dataUsage4 = v53;
          dataUsage3 = v20;
          dataUsage = v55;
          if (v55 == dataUsage2)
          {
LABEL_42:

LABEL_43:
            if (planLabel == planLabel2)
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
        dataUsage3 = v20;
      }

      voice = [(CTSweetgumUsagePlanMetrics *)self voice];
      voice2 = [(CTSweetgumUsagePlanMetrics *)equalCopy voice];
      v52 = voice;
      v50 = dataUsage2;
      if (voice != voice2)
      {
        voice3 = [(CTSweetgumUsagePlanMetrics *)self voice];
        voice4 = [(CTSweetgumUsagePlanMetrics *)equalCopy voice];
        v45 = voice3;
        if (![voice3 isEqual:?])
        {
          v20 = dataUsage3;
          v24 = v54;
          v10 = 0;
          v26 = voice2;
          v25 = v52;
LABEL_37:

LABEL_38:
          v27 = v56;
          dataUsage2 = v50;
          if (v56 == v24)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      remainingBalance = [(CTSweetgumUsagePlanMetrics *)self remainingBalance];
      remainingBalance2 = [(CTSweetgumUsagePlanMetrics *)equalCopy remainingBalance];
      v47 = remainingBalance;
      if (remainingBalance == remainingBalance2)
      {
        v43 = dataUsage3;
      }

      else
      {
        remainingBalance3 = [(CTSweetgumUsagePlanMetrics *)self remainingBalance];
        remainingBalance4 = [(CTSweetgumUsagePlanMetrics *)equalCopy remainingBalance];
        v42 = remainingBalance3;
        v30 = [remainingBalance3 isEqualToString:?];
        v31 = v54;
        if (!v30)
        {
          v20 = dataUsage3;
          v10 = 0;
          v39 = remainingBalance2;
          v38 = v47;
          goto LABEL_34;
        }

        v43 = dataUsage3;
      }

      throttled = [(CTSweetgumUsagePlanMetrics *)self throttled];
      if (throttled == [(CTSweetgumUsagePlanMetrics *)equalCopy throttled])
      {
        lastUpdatedAt = [(CTSweetgumUsagePlanMetrics *)self lastUpdatedAt];
        lastUpdatedAt2 = [(CTSweetgumUsagePlanMetrics *)equalCopy lastUpdatedAt];
        v35 = lastUpdatedAt2;
        if (lastUpdatedAt == lastUpdatedAt2)
        {

          v10 = 1;
        }

        else
        {
          lastUpdatedAt3 = [(CTSweetgumUsagePlanMetrics *)self lastUpdatedAt];
          lastUpdatedAt4 = [(CTSweetgumUsagePlanMetrics *)equalCopy lastUpdatedAt];
          v10 = [lastUpdatedAt3 isEqualToDate:lastUpdatedAt4];
        }
      }

      else
      {
        v10 = 0;
      }

      v39 = remainingBalance2;
      v38 = v47;
      v20 = v43;
      v31 = v54;
      if (v47 == remainingBalance2)
      {
        v24 = v54;
LABEL_36:

        v26 = voice2;
        v25 = v52;
        if (v52 == voice2)
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

- (void)encodeWithCoder:(id)coder
{
  planLabel = self->_planLabel;
  coderCopy = coder;
  [coderCopy encodeObject:planLabel forKey:@"planLabel"];
  [coderCopy encodeInteger:self->_planCategory forKey:@"planCategory"];
  [coderCopy encodeBool:self->_currentUsedPlan forKey:@"currentUsedPlan"];
  [coderCopy encodeObject:self->_dataUsage forKey:@"dataUsage"];
  [coderCopy encodeObject:self->_messages forKey:@"messages"];
  [coderCopy encodeObject:self->_voice forKey:@"voice"];
  [coderCopy encodeObject:self->_remainingBalance forKey:@"remainingBalance"];
  [coderCopy encodeBool:self->_throttled forKey:@"throttled"];
  [coderCopy encodeObject:self->_lastUpdatedAt forKey:@"lastUpdatedAt"];
}

- (CTSweetgumUsagePlanMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTSweetgumUsagePlanMetrics;
  v5 = [(CTSweetgumUsagePlanMetrics *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planLabel"];
    planLabel = v5->_planLabel;
    v5->_planLabel = v6;

    v5->_planCategory = [coderCopy decodeIntegerForKey:@"planCategory"];
    v5->_currentUsedPlan = [coderCopy decodeBoolForKey:@"currentUsedPlan"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataUsage"];
    dataUsage = v5->_dataUsage;
    v5->_dataUsage = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messages"];
    messages = v5->_messages;
    v5->_messages = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voice"];
    voice = v5->_voice;
    v5->_voice = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remainingBalance"];
    remainingBalance = v5->_remainingBalance;
    v5->_remainingBalance = v14;

    v5->_throttled = [coderCopy decodeBoolForKey:@"throttled"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedAt"];
    lastUpdatedAt = v5->_lastUpdatedAt;
    v5->_lastUpdatedAt = v16;
  }

  return v5;
}

@end