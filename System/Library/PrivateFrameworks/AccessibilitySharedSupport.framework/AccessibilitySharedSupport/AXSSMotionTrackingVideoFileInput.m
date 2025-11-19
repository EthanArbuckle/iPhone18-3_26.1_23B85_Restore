@interface AXSSMotionTrackingVideoFileInput
+ (id)videoFileInputWithName:(id)a3;
- (AXSSMotionTrackingVideoFileInput)initWithCoder:(id)a3;
- (AXSSMotionTrackingVideoFileInput)initWithName:(id)a3;
- (AXSSMotionTrackingVideoFileInput)initWithPlistDictionary:(id)a3;
- (NSString)name;
- (id)description;
- (id)plistDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXSSMotionTrackingVideoFileInput

+ (id)videoFileInputWithName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [[a1 alloc] initWithName:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AXSSMotionTrackingVideoFileInput)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXSSMotionTrackingVideoFileInput;
  v5 = [(AXSSMotionTrackingInput *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->__name;
    v5->__name = v6;
  }

  return v5;
}

- (NSString)name
{
  v2 = [(AXSSMotionTrackingVideoFileInput *)self _name];
  v3 = v2;
  if (v2 && [v2 length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (Test Video File)", v3];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(AXSSMotionTrackingVideoFileInput *)self name];

  if (v4)
  {
    v5 = [(AXSSMotionTrackingVideoFileInput *)self _name];
    v6 = NSStringFromSelector(sel_name);
    [v7 encodeObject:v5 forKey:v6];
  }
}

- (AXSSMotionTrackingVideoFileInput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_name);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7 && [v7 length])
  {
    v8 = [objc_alloc(objc_opt_class()) initWithName:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AXSSMotionTrackingVideoFileInput;
  v4 = [(AXSSMotionTrackingVideoFileInput *)&v8 description];
  v5 = [(AXSSMotionTrackingVideoFileInput *)self _name];
  v6 = [v3 stringWithFormat:@"%@ <%@>", v4, v5];

  return v6;
}

- (id)plistDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v13.receiver = self;
  v13.super_class = AXSSMotionTrackingVideoFileInput;
  v4 = [(AXSSMotionTrackingInput *)&v13 plistDictionary];
  if ([v4 count])
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = [(AXSSMotionTrackingVideoFileInput *)self _name];
  if (v5)
  {
    v6 = v5;
    v7 = [(AXSSMotionTrackingVideoFileInput *)self _name];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [(AXSSMotionTrackingVideoFileInput *)self _name];
      v10 = NSStringFromSelector(sel_name);
      [v3 setObject:v9 forKeyedSubscript:v10];
    }
  }

  v11 = [v3 copy];

  return v11;
}

- (AXSSMotionTrackingVideoFileInput)initWithPlistDictionary:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_name);
  v6 = [v4 objectForKeyedSubscript:v5];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
  {
    self = [(AXSSMotionTrackingVideoFileInput *)self initWithName:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end