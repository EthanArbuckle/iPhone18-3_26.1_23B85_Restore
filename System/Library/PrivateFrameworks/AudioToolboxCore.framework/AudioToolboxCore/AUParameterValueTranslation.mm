@interface AUParameterValueTranslation
- (AUParameterValueTranslation)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AUParameterValueTranslation

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUParameterValueTranslation;
  [(AUParameterValueTranslation *)&v2 dealloc];
}

- (AUParameterValueTranslation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AUParameterValueTranslation;
  v5 = [(AUParameterValueTranslation *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"otherDesc"];
    otherDesc = v5->_otherDesc;
    v5->_otherDesc = v7;

    v5->_otherParamID = [coderCopy decodeIntForKey:@"otherParamID"];
    [coderCopy decodeFloatForKey:@"otherValue"];
    v5->_otherValue = v9;
    v5->_auParamID = [coderCopy decodeInt64ForKey:@"auParamID"];
    [coderCopy decodeFloatForKey:@"auValue"];
    v5->_auValue = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_otherDesc forKey:@"otherDesc"];
  [coderCopy encodeInteger:self->_otherParamID forKey:@"otherParamID"];
  *&v4 = self->_otherValue;
  [coderCopy encodeFloat:@"otherValue" forKey:v4];
  [coderCopy encodeInt64:self->_auParamID forKey:@"auParamID"];
  *&v5 = self->_auValue;
  [coderCopy encodeFloat:@"auValue" forKey:v5];
}

@end