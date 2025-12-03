@interface AXSSMotionTrackingInput
+ (id)motionTrackingInputFromPlistDictionary:(id)dictionary;
- (AXSSMotionTrackingInput)init;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMotionTrackingInput:(id)input;
- (NSDictionary)plistDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation AXSSMotionTrackingInput

- (AXSSMotionTrackingInput)init
{
  v3.receiver = self;
  v3.super_class = AXSSMotionTrackingInput;
  return [(AXSSMotionTrackingInput *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  plistDictionary = [(AXSSMotionTrackingInput *)self plistDictionary];
  v4 = [AXSSMotionTrackingInput motionTrackingInputFromPlistDictionary:plistDictionary];

  return v4;
}

- (BOOL)isEqualToMotionTrackingInput:(id)input
{
  inputCopy = input;
  plistDictionary = [(AXSSMotionTrackingInput *)self plistDictionary];
  plistDictionary2 = [inputCopy plistDictionary];

  LOBYTE(inputCopy) = [plistDictionary isEqual:plistDictionary2];
  return inputCopy;
}

- (unint64_t)hash
{
  plistDictionary = [(AXSSMotionTrackingInput *)self plistDictionary];
  v3 = [plistDictionary hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSMotionTrackingInput *)self isEqualToMotionTrackingInput:equalCopy];

  return v5;
}

- (NSDictionary)plistDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([v4 length])
  {
    [dictionary setObject:v4 forKeyedSubscript:@"motionTrackingInputClass"];
  }

  v5 = [dictionary copy];

  return v5;
}

+ (id)motionTrackingInputFromPlistDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"motionTrackingInputClass"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = NSClassFromString(v4), [(objc_class *)v5 isSubclassOfClass:objc_opt_class()]))
  {
    v6 = [[v5 alloc] initWithPlistDictionary:dictionaryCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end