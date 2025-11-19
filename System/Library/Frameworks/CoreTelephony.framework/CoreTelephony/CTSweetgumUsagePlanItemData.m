@interface CTSweetgumUsagePlanItemData
- (BOOL)isEqual:(id)a3;
- (CTSweetgumUsagePlanItemData)init;
- (CTSweetgumUsagePlanItemData)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSweetgumUsagePlanItemData

- (CTSweetgumUsagePlanItemData)init
{
  v10.receiver = self;
  v10.super_class = CTSweetgumUsagePlanItemData;
  v2 = [(CTSweetgumUsagePlanItemData *)&v10 init];
  v3 = v2;
  if (v2)
  {
    capacity = v2->_capacity;
    v2->_units = 0;
    v2->_capacity = 0;

    maxDataBeforeThrottling = v3->_maxDataBeforeThrottling;
    v3->_maxDataBeforeThrottling = 0;

    thisDeviceDataUsed = v3->_thisDeviceDataUsed;
    v3->_thisDeviceDataUsed = 0;

    sharedDataUsed = v3->_sharedDataUsed;
    v3->_sharedDataUsed = 0;

    sharedPlanIdentifier = v3->_sharedPlanIdentifier;
    v3->_sharedPlanIdentifier = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", units=%s", CTSweetgumDataUnitsAsString(-[CTSweetgumUsagePlanItemData units](self, "units"))];
  v4 = [(CTSweetgumUsagePlanItemData *)self capacity];
  [v3 appendFormat:@", capacity=%@", v4];

  v5 = [(CTSweetgumUsagePlanItemData *)self maxDataBeforeThrottling];
  [v3 appendFormat:@", maxDataBeforeThrottling=%@", v5];

  v6 = [(CTSweetgumUsagePlanItemData *)self thisDeviceDataUsed];
  [v3 appendFormat:@", used=%@", v6];

  v7 = [(CTSweetgumUsagePlanItemData *)self sharedDataUsed];
  [v3 appendFormat:@", sharedDataUsed=%@", v7];

  v8 = [(CTSweetgumUsagePlanItemData *)self sharedPlanIdentifier];
  [v3 appendFormat:@", sharedPlanIdentifier=%@", v8];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CTSweetgumUsagePlanItemData *)self units];
      if (v7 == [(CTSweetgumUsagePlanItemData *)v6 units])
      {
        v8 = [(CTSweetgumUsagePlanItemData *)self capacity];
        v9 = [(CTSweetgumUsagePlanItemData *)v6 capacity];
        if (v8 != v9)
        {
          v10 = [(CTSweetgumUsagePlanItemData *)self capacity];
          v42 = [(CTSweetgumUsagePlanItemData *)v6 capacity];
          v43 = v10;
          if (![v10 isEqualToString:?])
          {
            v11 = 0;
            goto LABEL_30;
          }
        }

        v12 = [(CTSweetgumUsagePlanItemData *)self maxDataBeforeThrottling];
        v13 = [(CTSweetgumUsagePlanItemData *)v6 maxDataBeforeThrottling];
        if (v12 != v13)
        {
          v3 = [(CTSweetgumUsagePlanItemData *)self maxDataBeforeThrottling];
          v4 = [(CTSweetgumUsagePlanItemData *)v6 maxDataBeforeThrottling];
          if (![v3 isEqualToString:v4])
          {
            v11 = 0;
LABEL_28:

LABEL_29:
            if (v8 == v9)
            {
LABEL_31:

              goto LABEL_32;
            }

LABEL_30:

            goto LABEL_31;
          }
        }

        v14 = [(CTSweetgumUsagePlanItemData *)self thisDeviceDataUsed];
        v15 = [(CTSweetgumUsagePlanItemData *)v6 thisDeviceDataUsed];
        v41 = v14;
        v16 = v14 == v15;
        v17 = v15;
        if (!v16)
        {
          v18 = [(CTSweetgumUsagePlanItemData *)self thisDeviceDataUsed];
          v36 = [(CTSweetgumUsagePlanItemData *)v6 thisDeviceDataUsed];
          v37 = v18;
          if (![v18 isEqualToString:?])
          {
            v11 = 0;
            v19 = v41;
LABEL_26:

LABEL_27:
            if (v12 == v13)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }

        v20 = [(CTSweetgumUsagePlanItemData *)self sharedDataUsed];
        v38 = [(CTSweetgumUsagePlanItemData *)v6 sharedDataUsed];
        v39 = v17;
        v40 = v4;
        if (v20 == v38)
        {
          v35 = v3;
        }

        else
        {
          v21 = v3;
          v22 = [(CTSweetgumUsagePlanItemData *)self sharedDataUsed];
          v33 = [(CTSweetgumUsagePlanItemData *)v6 sharedDataUsed];
          v34 = v22;
          if (![v22 isEqualToString:?])
          {
            v11 = 0;
            v30 = v38;
            v3 = v21;
            v4 = v40;
            goto LABEL_24;
          }

          v35 = v21;
        }

        v23 = [(CTSweetgumUsagePlanItemData *)self sharedPlanIdentifier];
        v24 = [(CTSweetgumUsagePlanItemData *)v6 sharedPlanIdentifier];
        v25 = v24;
        if (v23 == v24)
        {

          v11 = 1;
        }

        else
        {
          v26 = [(CTSweetgumUsagePlanItemData *)self sharedPlanIdentifier];
          [(CTSweetgumUsagePlanItemData *)v6 sharedPlanIdentifier];
          v32 = v13;
          v27 = v12;
          v29 = v28 = v20;
          v11 = [v26 isEqualToString:v29];

          v20 = v28;
          v12 = v27;
          v13 = v32;
        }

        v30 = v38;
        v3 = v35;
        v4 = v40;
        if (v20 == v38)
        {
LABEL_25:

          v19 = v41;
          v17 = v39;
          if (v41 == v39)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  units = self->_units;
  v5 = a3;
  [v5 encodeInteger:units forKey:@"units"];
  [v5 encodeObject:self->_capacity forKey:@"capacity"];
  [v5 encodeObject:self->_maxDataBeforeThrottling forKey:@"maxDataBeforeThrottling"];
  [v5 encodeObject:self->_thisDeviceDataUsed forKey:@"thisDeviceDataUsed"];
  [v5 encodeObject:self->_sharedDataUsed forKey:@"sharedDataUsed"];
  [v5 encodeObject:self->_sharedPlanIdentifier forKey:@"sharedPlanIdentifier"];
}

- (CTSweetgumUsagePlanItemData)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CTSweetgumUsagePlanItemData;
  v5 = [(CTSweetgumUsagePlanItemData *)&v17 init];
  if (v5)
  {
    v5->_units = [v4 decodeIntegerForKey:@"units"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capacity"];
    capacity = v5->_capacity;
    v5->_capacity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxDataBeforeThrottling"];
    maxDataBeforeThrottling = v5->_maxDataBeforeThrottling;
    v5->_maxDataBeforeThrottling = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thisDeviceDataUsed"];
    thisDeviceDataUsed = v5->_thisDeviceDataUsed;
    v5->_thisDeviceDataUsed = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedDataUsed"];
    sharedDataUsed = v5->_sharedDataUsed;
    v5->_sharedDataUsed = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedPlanIdentifier"];
    sharedPlanIdentifier = v5->_sharedPlanIdentifier;
    v5->_sharedPlanIdentifier = v14;
  }

  return v5;
}

@end