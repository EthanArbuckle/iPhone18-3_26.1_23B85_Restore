@interface HKVisionPrism
- (BOOL)isEqual:(id)a3;
- (HKVisionPrism)initWithAmount:(HKQuantity *)amount angle:(HKQuantity *)angle eye:(HKVisionEye)eye;
- (HKVisionPrism)initWithCoder:(id)a3;
- (HKVisionPrism)initWithVerticalAmount:(HKQuantity *)verticalAmount verticalBase:(HKPrismBase)verticalBase horizontalAmount:(HKQuantity *)horizontalAmount horizontalBase:(HKPrismBase)horizontalBase eye:(HKVisionEye)eye;
- (id)description;
- (void)_setPolarValues;
- (void)_setRectangularValues;
- (void)_validatePolar;
- (void)_validateRectangular;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKVisionPrism

- (HKVisionPrism)initWithAmount:(HKQuantity *)amount angle:(HKQuantity *)angle eye:(HKVisionEye)eye
{
  v8 = amount;
  v9 = angle;
  v16.receiver = self;
  v16.super_class = HKVisionPrism;
  v10 = [(HKVisionPrism *)&v16 init];
  if (v10)
  {
    v11 = [(HKQuantity *)v8 copy];
    v12 = v10->_amount;
    v10->_amount = v11;

    v13 = [(HKQuantity *)v9 copy];
    v14 = v10->_angle;
    v10->_angle = v13;

    v10->_eye = eye;
    [(HKVisionPrism *)v10 _validatePolar];
    [(HKVisionPrism *)v10 _setRectangularValues];
  }

  return v10;
}

- (HKVisionPrism)initWithVerticalAmount:(HKQuantity *)verticalAmount verticalBase:(HKPrismBase)verticalBase horizontalAmount:(HKQuantity *)horizontalAmount horizontalBase:(HKPrismBase)horizontalBase eye:(HKVisionEye)eye
{
  v12 = verticalAmount;
  v13 = horizontalAmount;
  v20.receiver = self;
  v20.super_class = HKVisionPrism;
  v14 = [(HKVisionPrism *)&v20 init];
  if (v14)
  {
    v15 = [(HKQuantity *)v12 copy];
    v16 = v14->_verticalAmount;
    v14->_verticalAmount = v15;

    v14->_verticalBase = verticalBase;
    v17 = [(HKQuantity *)v13 copy];
    v18 = v14->_horizontalAmount;
    v14->_horizontalAmount = v17;

    v14->_horizontalBase = horizontalBase;
    v14->_eye = eye;
    [(HKVisionPrism *)v14 _validateRectangular];
    [(HKVisionPrism *)v14 _setPolarValues];
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p Amount=%@, Angle=%@>", v5, self, self->_amount, self->_angle];

  return v6;
}

- (void)_validatePolar
{
  amount = self->_amount;
  v4 = +[HKUnit prismDiopterUnit];
  LOBYTE(amount) = [(HKQuantity *)amount isCompatibleWithUnit:v4];

  v5 = MEMORY[0x1E695D940];
  if ((amount & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Prism amount must be an prism diopter quantity"];
  }

  angle = self->_angle;
  v7 = +[HKUnit radianAngleUnit];
  LOBYTE(angle) = [(HKQuantity *)angle isCompatibleWithUnit:v7];

  if ((angle & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *v5;

    [v8 raise:v9 format:@"Prism angle must be an Angle quantity"];
  }
}

- (void)_validateRectangular
{
  verticalAmount = self->_verticalAmount;
  v4 = +[HKUnit prismDiopterUnit];
  LOBYTE(verticalAmount) = [(HKQuantity *)verticalAmount isCompatibleWithUnit:v4];

  v5 = MEMORY[0x1E695D940];
  if ((verticalAmount & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Vertical amount must be an prism diopter quantity"];
  }

  horizontalAmount = self->_horizontalAmount;
  v7 = +[HKUnit prismDiopterUnit];
  LOBYTE(horizontalAmount) = [(HKQuantity *)horizontalAmount isCompatibleWithUnit:v7];

  if ((horizontalAmount & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *v5;

    [v8 raise:v9 format:@"Horizontal amount must be an prism diopter quantity"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      amount = self->_amount;
      v9 = [(HKVisionPrism *)v7 amount];
      if (amount == v9)
      {
        goto LABEL_9;
      }

      v10 = [(HKVisionPrism *)v7 amount];
      if (!v10)
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v3 = v10;
      v11 = self->_amount;
      v4 = [(HKVisionPrism *)v7 amount];
      if ([(HKQuantity *)v11 isEqual:v4])
      {
LABEL_9:
        angle = self->_angle;
        v14 = [(HKVisionPrism *)v7 angle];
        v15 = v14;
        if (angle == v14)
        {

          v12 = 1;
        }

        else
        {
          v16 = [(HKVisionPrism *)v7 angle];
          if (v16)
          {
            v17 = v16;
            v18 = self->_angle;
            v19 = [(HKVisionPrism *)v7 angle];
            v12 = [(HKQuantity *)v18 isEqual:v19];
          }

          else
          {

            v12 = 0;
          }
        }

        if (amount == v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"Amount"];
  [v5 encodeObject:self->_angle forKey:@"Base"];
  [v5 encodeInteger:self->_eye forKey:@"Eye"];
}

- (HKVisionPrism)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Amount"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Base"];
  v7 = [v4 decodeIntegerForKey:@"Eye"];

  v8 = [(HKVisionPrism *)self initWithAmount:v5 angle:v6 eye:v7];
  return v8;
}

- (void)_setRectangularValues
{
  amount = self->_amount;
  v4 = +[HKUnit prismDiopterUnit];
  [(HKQuantity *)amount doubleValueForUnit:v4];
  v6 = v5;

  angle = self->_angle;
  v8 = +[HKUnit radianAngleUnit];
  [(HKQuantity *)angle doubleValueForUnit:v8];
  v10 = v9;

  v11 = __sincos_stret(v10);
  v12 = v6 * v11.__cosval;
  v13 = 3;
  if ((self->_eye == 2) != v6 * v11.__cosval > 0.0)
  {
    v13 = 4;
  }

  v14 = v6 * v11.__sinval;
  v15 = 2;
  if (v14 > 0.0)
  {
    v15 = 1;
  }

  self->_verticalBase = v15;
  self->_horizontalBase = v13;
  v16 = +[HKUnit prismDiopterUnit];
  v17 = [HKQuantity quantityWithUnit:v16 doubleValue:fabs(v12)];
  horizontalAmount = self->_horizontalAmount;
  self->_horizontalAmount = v17;

  v21 = +[HKUnit prismDiopterUnit];
  v19 = [HKQuantity quantityWithUnit:v21 doubleValue:fabs(v14)];
  verticalAmount = self->_verticalAmount;
  self->_verticalAmount = v19;
}

- (void)_setPolarValues
{
  verticalAmount = self->_verticalAmount;
  v4 = +[HKUnit prismDiopterUnit];
  [(HKQuantity *)verticalAmount doubleValueForUnit:v4];
  v6 = v5;

  horizontalAmount = self->_horizontalAmount;
  v8 = +[HKUnit prismDiopterUnit];
  [(HKQuantity *)horizontalAmount doubleValueForUnit:v8];
  v10 = v9;

  eye = self->_eye;
  if (eye == 1)
  {
    if (self->_horizontalBase == 3)
    {
LABEL_4:
      v10 = -v10;
    }
  }

  else if (eye == 2 && self->_horizontalBase == 4)
  {
    goto LABEL_4;
  }

  if (self->_verticalBase == 2)
  {
    v6 = -v6;
  }

  v12 = +[HKUnit prismDiopterUnit];
  v13 = [HKQuantity quantityWithUnit:v12 doubleValue:sqrt(v6 * v6 + v10 * v10)];
  amount = self->_amount;
  self->_amount = v13;

  v15 = round(atan2(v6, v10) * 57.2957795);
  if (v15 >= 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 360.0;
  }

  v19 = +[HKUnit degreeAngleUnit];
  v17 = [HKQuantity quantityWithUnit:v19 doubleValue:v16];
  angle = self->_angle;
  self->_angle = v17;
}

@end