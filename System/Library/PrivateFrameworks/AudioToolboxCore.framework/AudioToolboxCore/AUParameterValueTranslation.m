@interface AUParameterValueTranslation
- (AUParameterValueTranslation)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AUParameterValueTranslation

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUParameterValueTranslation;
  [(AUParameterValueTranslation *)&v2 dealloc];
}

- (AUParameterValueTranslation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AUParameterValueTranslation;
  v5 = [(AUParameterValueTranslation *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"otherDesc"];
    otherDesc = v5->_otherDesc;
    v5->_otherDesc = v7;

    v5->_otherParamID = [v4 decodeIntForKey:@"otherParamID"];
    [v4 decodeFloatForKey:@"otherValue"];
    v5->_otherValue = v9;
    v5->_auParamID = [v4 decodeInt64ForKey:@"auParamID"];
    [v4 decodeFloatForKey:@"auValue"];
    v5->_auValue = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_otherDesc forKey:@"otherDesc"];
  [v6 encodeInteger:self->_otherParamID forKey:@"otherParamID"];
  *&v4 = self->_otherValue;
  [v6 encodeFloat:@"otherValue" forKey:v4];
  [v6 encodeInt64:self->_auParamID forKey:@"auParamID"];
  *&v5 = self->_auValue;
  [v6 encodeFloat:@"auValue" forKey:v5];
}

@end