@interface MPAVBatteryLevel
- (BOOL)isEqual:(id)equal;
- (MPAVBatteryLevel)initWithOutputDevice:(void *)device;
- (MPAVBatteryLevel)initWithRouteDescription:(id)description;
- (id)description;
@end

@implementation MPAVBatteryLevel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    leftPercentage = self->_leftPercentage;
    leftPercentage = [v6 leftPercentage];
    if (leftPercentage != leftPercentage)
    {
      v9 = self->_leftPercentage;
      leftPercentage2 = [v6 leftPercentage];
      if (![(NSNumber *)v9 isEqual:leftPercentage2])
      {
        v10 = 0;
        goto LABEL_23;
      }
    }

    rightPercentage = self->_rightPercentage;
    rightPercentage = [v6 rightPercentage];
    if (rightPercentage != rightPercentage)
    {
      v13 = self->_rightPercentage;
      rightPercentage2 = [v6 rightPercentage];
      if (![(NSNumber *)v13 isEqual:rightPercentage2])
      {
        v10 = 0;
LABEL_21:

LABEL_22:
        if (leftPercentage == leftPercentage)
        {
LABEL_24:

          goto LABEL_25;
        }

LABEL_23:

        goto LABEL_24;
      }

      v32 = rightPercentage2;
    }

    casePercentage = self->_casePercentage;
    casePercentage = [v6 casePercentage];
    v33 = rightPercentage;
    if (casePercentage == casePercentage)
    {
      v31 = leftPercentage2;
    }

    else
    {
      v17 = self->_casePercentage;
      casePercentage2 = [v6 casePercentage];
      v19 = v17;
      v20 = casePercentage2;
      if (![(NSNumber *)v19 isEqual:casePercentage2])
      {
        v10 = 0;
        v26 = v33;
        goto LABEL_19;
      }

      v29 = v20;
      v31 = leftPercentage2;
    }

    singlePercentage = self->_singlePercentage;
    singlePercentage = [v6 singlePercentage];
    v23 = singlePercentage;
    if (singlePercentage == singlePercentage)
    {

      v10 = 1;
    }

    else
    {
      v24 = self->_singlePercentage;
      singlePercentage2 = [v6 singlePercentage];
      v10 = [(NSNumber *)v24 isEqual:singlePercentage2];
    }

    v27 = casePercentage == casePercentage;
    v20 = v30;
    leftPercentage2 = v31;
    v26 = v33;
    if (v27)
    {
LABEL_20:

      v27 = v26 == rightPercentage;
      rightPercentage2 = v32;
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

- (MPAVBatteryLevel)initWithOutputDevice:(void *)device
{
  v15.receiver = self;
  v15.super_class = MPAVBatteryLevel;
  v4 = [(MPAVBatteryLevel *)&v15 init];
  if (v4)
  {
    v5 = MRAVOutputDeviceCopyModelSpecificInformation();
    v6 = MPAVGetBatteryLevelFromAVODDS(device, v5, 0);
    leftPercentage = v4->_leftPercentage;
    v4->_leftPercentage = v6;

    v8 = MPAVGetBatteryLevelFromAVODDS(device, v5, 1);
    rightPercentage = v4->_rightPercentage;
    v4->_rightPercentage = v8;

    v10 = MPAVGetBatteryLevelFromAVODDS(device, v5, 2);
    casePercentage = v4->_casePercentage;
    v4->_casePercentage = v10;

    v12 = MPAVGetBatteryLevelFromAVODDS(device, v5, 3);
    singlePercentage = v4->_singlePercentage;
    v4->_singlePercentage = v12;
  }

  return v4;
}

- (MPAVBatteryLevel)initWithRouteDescription:(id)description
{
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = MPAVBatteryLevel;
  v5 = [(MPAVBatteryLevel *)&v15 init];
  if (v5)
  {
    v6 = MPAVGetBatteryLevelFromRouteDescription(descriptionCopy, 0);
    leftPercentage = v5->_leftPercentage;
    v5->_leftPercentage = v6;

    v8 = MPAVGetBatteryLevelFromRouteDescription(descriptionCopy, 1);
    rightPercentage = v5->_rightPercentage;
    v5->_rightPercentage = v8;

    v10 = MPAVGetBatteryLevelFromRouteDescription(descriptionCopy, 2);
    casePercentage = v5->_casePercentage;
    v5->_casePercentage = v10;

    v12 = MPAVGetBatteryLevelFromRouteDescription(descriptionCopy, 3);
    singlePercentage = v5->_singlePercentage;
    v5->_singlePercentage = v12;
  }

  return v5;
}

@end