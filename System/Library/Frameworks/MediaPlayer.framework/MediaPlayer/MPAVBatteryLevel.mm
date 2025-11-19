@interface MPAVBatteryLevel
- (BOOL)isEqual:(id)a3;
- (MPAVBatteryLevel)initWithOutputDevice:(void *)a3;
- (MPAVBatteryLevel)initWithRouteDescription:(id)a3;
- (id)description;
@end

@implementation MPAVBatteryLevel

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    leftPercentage = self->_leftPercentage;
    v8 = [v6 leftPercentage];
    if (leftPercentage != v8)
    {
      v9 = self->_leftPercentage;
      v3 = [v6 leftPercentage];
      if (![(NSNumber *)v9 isEqual:v3])
      {
        v10 = 0;
        goto LABEL_23;
      }
    }

    rightPercentage = self->_rightPercentage;
    v12 = [v6 rightPercentage];
    if (rightPercentage != v12)
    {
      v13 = self->_rightPercentage;
      v14 = [v6 rightPercentage];
      if (![(NSNumber *)v13 isEqual:v14])
      {
        v10 = 0;
LABEL_21:

LABEL_22:
        if (leftPercentage == v8)
        {
LABEL_24:

          goto LABEL_25;
        }

LABEL_23:

        goto LABEL_24;
      }

      v32 = v14;
    }

    casePercentage = self->_casePercentage;
    v16 = [v6 casePercentage];
    v33 = rightPercentage;
    if (casePercentage == v16)
    {
      v31 = v3;
    }

    else
    {
      v17 = self->_casePercentage;
      v18 = [v6 casePercentage];
      v19 = v17;
      v20 = v18;
      if (![(NSNumber *)v19 isEqual:v18])
      {
        v10 = 0;
        v26 = v33;
        goto LABEL_19;
      }

      v29 = v20;
      v31 = v3;
    }

    singlePercentage = self->_singlePercentage;
    v22 = [v6 singlePercentage];
    v23 = v22;
    if (singlePercentage == v22)
    {

      v10 = 1;
    }

    else
    {
      v24 = self->_singlePercentage;
      v25 = [v6 singlePercentage];
      v10 = [(NSNumber *)v24 isEqual:v25];
    }

    v27 = casePercentage == v16;
    v20 = v30;
    v3 = v31;
    v26 = v33;
    if (v27)
    {
LABEL_20:

      v27 = v26 == v12;
      v14 = v32;
      if (v27)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_19:

    goto LABEL_20;
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = v3;
  leftPercentage = self->_leftPercentage;
  v6 = leftPercentage != 0;
  if (leftPercentage)
  {
    [v3 appendFormat:@" left=%@", self->_leftPercentage];
  }

  if (self->_rightPercentage)
  {
    [v4 appendFormat:@" right=%@", self->_rightPercentage];
    v6 = 1;
  }

  if (self->_casePercentage)
  {
    [v4 appendFormat:@" case=%@", self->_casePercentage];
    singlePercentage = self->_singlePercentage;
    if (!singlePercentage)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v4 appendFormat:@" single=%@", singlePercentage];
    goto LABEL_10;
  }

  singlePercentage = self->_singlePercentage;
  if (singlePercentage)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    [v4 appendString:@" none"];
  }

LABEL_10:
  [v4 appendString:@">"];

  return v4;
}

- (MPAVBatteryLevel)initWithOutputDevice:(void *)a3
{
  v15.receiver = self;
  v15.super_class = MPAVBatteryLevel;
  v4 = [(MPAVBatteryLevel *)&v15 init];
  if (v4)
  {
    v5 = MRAVOutputDeviceCopyModelSpecificInformation();
    v6 = MPAVGetBatteryLevelFromAVODDS(a3, v5, 0);
    leftPercentage = v4->_leftPercentage;
    v4->_leftPercentage = v6;

    v8 = MPAVGetBatteryLevelFromAVODDS(a3, v5, 1);
    rightPercentage = v4->_rightPercentage;
    v4->_rightPercentage = v8;

    v10 = MPAVGetBatteryLevelFromAVODDS(a3, v5, 2);
    casePercentage = v4->_casePercentage;
    v4->_casePercentage = v10;

    v12 = MPAVGetBatteryLevelFromAVODDS(a3, v5, 3);
    singlePercentage = v4->_singlePercentage;
    v4->_singlePercentage = v12;
  }

  return v4;
}

- (MPAVBatteryLevel)initWithRouteDescription:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MPAVBatteryLevel;
  v5 = [(MPAVBatteryLevel *)&v15 init];
  if (v5)
  {
    v6 = MPAVGetBatteryLevelFromRouteDescription(v4, 0);
    leftPercentage = v5->_leftPercentage;
    v5->_leftPercentage = v6;

    v8 = MPAVGetBatteryLevelFromRouteDescription(v4, 1);
    rightPercentage = v5->_rightPercentage;
    v5->_rightPercentage = v8;

    v10 = MPAVGetBatteryLevelFromRouteDescription(v4, 2);
    casePercentage = v5->_casePercentage;
    v5->_casePercentage = v10;

    v12 = MPAVGetBatteryLevelFromRouteDescription(v4, 3);
    singlePercentage = v5->_singlePercentage;
    v5->_singlePercentage = v12;
  }

  return v5;
}

@end