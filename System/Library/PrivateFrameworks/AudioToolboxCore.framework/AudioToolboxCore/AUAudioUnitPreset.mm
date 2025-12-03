@interface AUAudioUnitPreset
- (AUAudioUnitPreset)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AUAudioUnitPreset

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUAudioUnitPreset;
  [(AUAudioUnitPreset *)&v2 dealloc];
}

- (AUAudioUnitPreset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AUAudioUnitPreset;
  v5 = [(AUAudioUnitPreset *)&v10 init];
  if (v5)
  {
    v5->_number = [coderCopy decodeIntegerForKey:@"num"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_number forKey:@"num"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
}

@end