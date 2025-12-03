@interface AXSSMotionTrackingVideoFileInput
+ (id)videoFileInputWithName:(id)name;
- (AXSSMotionTrackingVideoFileInput)initWithCoder:(id)coder;
- (AXSSMotionTrackingVideoFileInput)initWithName:(id)name;
- (AXSSMotionTrackingVideoFileInput)initWithPlistDictionary:(id)dictionary;
- (NSString)name;
- (id)description;
- (id)plistDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXSSMotionTrackingVideoFileInput

+ (id)videoFileInputWithName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy && [nameCopy length])
  {
    v6 = [[self alloc] initWithName:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AXSSMotionTrackingVideoFileInput)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = AXSSMotionTrackingVideoFileInput;
  v5 = [(AXSSMotionTrackingInput *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->__name;
    v5->__name = v6;
  }

  return v5;
}

- (NSString)name
{
  _name = [(AXSSMotionTrackingVideoFileInput *)self _name];
  v3 = _name;
  if (_name && [_name length])
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(AXSSMotionTrackingVideoFileInput *)self name];

  if (name)
  {
    _name = [(AXSSMotionTrackingVideoFileInput *)self _name];
    v6 = NSStringFromSelector(sel_name);
    [coderCopy encodeObject:_name forKey:v6];
  }
}

- (AXSSMotionTrackingVideoFileInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_name);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

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
  _name = [(AXSSMotionTrackingVideoFileInput *)self _name];
  v6 = [v3 stringWithFormat:@"%@ <%@>", v4, _name];

  return v6;
}

- (id)plistDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13.receiver = self;
  v13.super_class = AXSSMotionTrackingVideoFileInput;
  plistDictionary = [(AXSSMotionTrackingInput *)&v13 plistDictionary];
  if ([plistDictionary count])
  {
    [dictionary addEntriesFromDictionary:plistDictionary];
  }

  _name = [(AXSSMotionTrackingVideoFileInput *)self _name];
  if (_name)
  {
    v6 = _name;
    _name2 = [(AXSSMotionTrackingVideoFileInput *)self _name];
    v8 = [_name2 length];

    if (v8)
    {
      _name3 = [(AXSSMotionTrackingVideoFileInput *)self _name];
      v10 = NSStringFromSelector(sel_name);
      [dictionary setObject:_name3 forKeyedSubscript:v10];
    }
  }

  v11 = [dictionary copy];

  return v11;
}

- (AXSSMotionTrackingVideoFileInput)initWithPlistDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = NSStringFromSelector(sel_name);
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
  {
    self = [(AXSSMotionTrackingVideoFileInput *)self initWithName:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end