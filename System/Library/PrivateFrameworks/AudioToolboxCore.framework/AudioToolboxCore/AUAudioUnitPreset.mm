@interface AUAudioUnitPreset
- (AUAudioUnitPreset)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AUAudioUnitPreset

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUAudioUnitPreset;
  [(AUAudioUnitPreset *)&v2 dealloc];
}

- (AUAudioUnitPreset)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AUAudioUnitPreset;
  v5 = [(AUAudioUnitPreset *)&v10 init];
  if (v5)
  {
    v5->_number = [v4 decodeIntegerForKey:@"num"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_number forKey:@"num"];
  [v4 encodeObject:self->_name forKey:@"name"];
}

@end