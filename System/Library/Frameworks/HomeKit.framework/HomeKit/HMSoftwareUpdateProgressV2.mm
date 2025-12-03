@interface HMSoftwareUpdateProgressV2
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMSoftwareUpdateProgressV2)initWithPercentageComplete:(float)complete estimatedTimeRemaining:(double)remaining;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMSoftwareUpdateProgressV2

- (NSArray)attributeDescriptions
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = MEMORY[0x1E696AD98];
  [(HMSoftwareUpdateProgressV2 *)self percentageComplete];
  v5 = [v4 numberWithFloat:?];
  v6 = [v3 initWithName:@"percentageComplete" value:v5];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = MEMORY[0x1E696AD98];
  [(HMSoftwareUpdateProgressV2 *)self estimatedTimeRemaining];
  v9 = [v8 numberWithDouble:?];
  v10 = [v7 initWithName:@"estimatedTimeRemaining" value:v9];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && ([(HMSoftwareUpdateProgressV2 *)self percentageComplete], v8 = v7, [(HMSoftwareUpdateProgressV2 *)v6 percentageComplete], vabds_f32(v8, v9) < 0.00000011921))
    {
      [(HMSoftwareUpdateProgressV2 *)self estimatedTimeRemaining];
      v11 = v10;
      [(HMSoftwareUpdateProgressV2 *)v6 estimatedTimeRemaining];
      v13 = vabdd_f64(v11, v12) < 2.22044605e-16;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(HMSoftwareUpdateProgressV2 *)self percentageComplete];
  v4 = [v3 numberWithFloat:?];
  v5 = [v4 hash];
  v6 = MEMORY[0x1E696AD98];
  [(HMSoftwareUpdateProgressV2 *)self estimatedTimeRemaining];
  v7 = [v6 numberWithDouble:?];
  v8 = [v7 hash];

  return v8 ^ v5;
}

- (HMSoftwareUpdateProgressV2)initWithPercentageComplete:(float)complete estimatedTimeRemaining:(double)remaining
{
  v7.receiver = self;
  v7.super_class = HMSoftwareUpdateProgressV2;
  result = [(HMSoftwareUpdateProgressV2 *)&v7 init];
  if (result)
  {
    result->_percentageComplete = complete;
    result->_estimatedTimeRemaining = remaining;
  }

  return result;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end