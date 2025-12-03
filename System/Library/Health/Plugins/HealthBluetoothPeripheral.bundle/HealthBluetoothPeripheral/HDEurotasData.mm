@interface HDEurotasData
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)getBinaryValueWithError:(id *)error;
- (id)initForWriting;
@end

@implementation HDEurotasData

- (id)initForWriting
{
  v3.receiver = self;
  v3.super_class = HDEurotasData;
  return [(HDHealthServiceCharacteristic *)&v3 _init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (equalCopy && (isKindOfClass & 1) != 0)
    {
      hasHeartRate = self->_hasHeartRate;
      if (hasHeartRate == [(HDEurotasData *)equalCopy hasHeartRate]&& (heartRate = self->_heartRate, heartRate == [(HDEurotasData *)equalCopy heartRate]) && (hasActiveEnergy = self->_hasActiveEnergy, hasActiveEnergy == [(HDEurotasData *)equalCopy hasActiveEnergy]) && (activeEnergy = self->_activeEnergy, activeEnergy == [(HDEurotasData *)equalCopy activeEnergy]) && (hasTotalEnergy = self->_hasTotalEnergy, hasTotalEnergy == [(HDEurotasData *)equalCopy hasTotalEnergy]) && (totalEnergy = self->_totalEnergy, totalEnergy == [(HDEurotasData *)equalCopy totalEnergy]) && (hasAverageHeartRate = self->_hasAverageHeartRate, hasAverageHeartRate == [(HDEurotasData *)equalCopy hasAverageHeartRate]))
      {
        averageHeartRate = self->_averageHeartRate;
        v6 = averageHeartRate == [(HDEurotasData *)equalCopy averageHeartRate];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (id)description
{
  hasHeartRate = self->_hasHeartRate;
  if (hasHeartRate)
  {
    v4 = [NSNumber numberWithUnsignedShort:self->_heartRate];
  }

  else
  {
    v4 = @"(null)";
  }

  hasActiveEnergy = self->_hasActiveEnergy;
  if (hasActiveEnergy)
  {
    v6 = [NSNumber numberWithUnsignedShort:self->_activeEnergy];
  }

  else
  {
    v6 = @"(null)";
  }

  hasTotalEnergy = self->_hasTotalEnergy;
  if (hasTotalEnergy)
  {
    v8 = [NSNumber numberWithUnsignedShort:self->_totalEnergy];
  }

  else
  {
    v8 = @"(null)";
  }

  if (!self->_hasAverageHeartRate)
  {
    v10 = [NSString stringWithFormat:@"Eurotas Data: instantaneousHeartRate = %@, activeCalories = %@, totalCalories = %@, averageHeartRate = %@, ", v4, v6, v8, @"(null)"];
    if (!hasTotalEnergy)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = [NSNumber numberWithUnsignedShort:self->_averageHeartRate];
  v10 = [NSString stringWithFormat:@"Eurotas Data: instantaneousHeartRate = %@, activeCalories = %@, totalCalories = %@, averageHeartRate = %@, ", v4, v6, v8, v9];

  if (hasTotalEnergy)
  {
LABEL_14:
  }

LABEL_15:
  if (!hasActiveEnergy)
  {
    if (!hasHeartRate)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (hasHeartRate)
  {
LABEL_17:
  }

LABEL_18:

  return v10;
}

- (id)getBinaryValueWithError:(id *)error
{
  v10 = v11;
  if ([objc_opt_class() uint8:0 toData:&v10 before:&v12])
  {
    if (!self->_hasHeartRate || (sub_334AC(self, self->_heartRate, 1) & 1) != 0)
    {
      if (!self->_hasActiveEnergy || (sub_334AC(self, self->_activeEnergy, 2) & 1) != 0)
      {
        if (!self->_hasTotalEnergy || (sub_334AC(self, self->_totalEnergy, 3) & 1) != 0)
        {
          if (!self->_hasAverageHeartRate || (sub_334AC(self, self->_averageHeartRate, 4) & 1) != 0)
          {
            v5 = [NSData dataWithBytes:v11 length:v10 - v11];
            goto LABEL_21;
          }

          v6 = @"Not enough buffer for average heart rate";
        }

        else
        {
          v6 = @"Not enough buffer for total energy";
        }
      }

      else
      {
        v6 = @"Not enough buffer for active energy";
      }
    }

    else
    {
      v6 = @"Not enough buffer for heart rate";
    }

    v7 = [NSError hk_error:303 description:v6];
    if (v7)
    {
      if (error)
      {
        v8 = v7;
        *error = v7;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v5 = 0;
LABEL_21:

  return v5;
}

@end