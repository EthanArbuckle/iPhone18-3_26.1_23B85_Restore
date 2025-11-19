@interface AXSSMotionTrackingInput
+ (id)motionTrackingInputFromPlistDictionary:(id)a3;
- (AXSSMotionTrackingInput)init;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMotionTrackingInput:(id)a3;
- (NSDictionary)plistDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation AXSSMotionTrackingInput

- (AXSSMotionTrackingInput)init
{
  v3.receiver = self;
  v3.super_class = AXSSMotionTrackingInput;
  return [(AXSSMotionTrackingInput *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(AXSSMotionTrackingInput *)self plistDictionary];
  v4 = [AXSSMotionTrackingInput motionTrackingInputFromPlistDictionary:v3];

  return v4;
}

- (BOOL)isEqualToMotionTrackingInput:(id)a3
{
  v4 = a3;
  v5 = [(AXSSMotionTrackingInput *)self plistDictionary];
  v6 = [v4 plistDictionary];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(AXSSMotionTrackingInput *)self plistDictionary];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSMotionTrackingInput *)self isEqualToMotionTrackingInput:v4];

  return v5;
}

- (NSDictionary)plistDictionary
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([v4 length])
  {
    [v2 setObject:v4 forKeyedSubscript:@"motionTrackingInputClass"];
  }

  v5 = [v2 copy];

  return v5;
}

+ (id)motionTrackingInputFromPlistDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"motionTrackingInputClass"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = NSClassFromString(v4), [(objc_class *)v5 isSubclassOfClass:objc_opt_class()]))
  {
    v6 = [[v5 alloc] initWithPlistDictionary:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end