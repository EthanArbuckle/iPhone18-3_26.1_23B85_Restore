@interface HKActivityMoveModeObject
- (BOOL)isEqual:(id)a3;
- (HKActivityMoveModeObject)initWithCoder:(id)a3;
- (id)_initWithActivityMoveMode:(int64_t)a3;
@end

@implementation HKActivityMoveModeObject

- (id)_initWithActivityMoveMode:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = HKActivityMoveModeObject;
  v4 = [(HKActivityMoveModeObject *)&v10 init];
  if (v4)
  {
    v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = [v5 _validateCharacteristic:v6 error:0];

    if (v7)
    {
      v8 = a3;
    }

    else
    {
      v8 = 1;
    }

    v4->_activityMoveMode = v8;
  }

  return v4;
}

- (HKActivityMoveModeObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKActivityMoveModeObject;
  v5 = [(HKActivityMoveModeObject *)&v12 init];
  if (v5)
  {
    v6 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
    v7 = [v4 decodeIntegerForKey:@"activityMoveMode"];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [v6 _validateCharacteristic:v8 error:0];

    if (!v9)
    {

      v10 = 0;
      goto LABEL_6;
    }

    v5->_activityMoveMode = v7;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activityMoveMode = self->_activityMoveMode;
    v6 = activityMoveMode == [v4 activityMoveMode];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end