@interface _AUStaticParameterInfo
- (_AUStaticParameterInfo)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _AUStaticParameterInfo

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _AUStaticParameterInfo;
  [(_AUStaticParameterInfo *)&v2 dealloc];
}

- (_AUStaticParameterInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  {
    v15 = objc_alloc(MEMORY[0x1E695DFD8]);
    v16 = objc_opt_self();
    v17 = objc_opt_self();
    -[_AUStaticParameterInfo initWithCoder:]::valueStringClasses = [v15 initWithObjects:{v16, v17, 0}];
  }

  v18.receiver = self;
  v18.super_class = _AUStaticParameterInfo;
  v5 = [(_AUStaticParameterInfo *)&v18 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"min"];
    v5->_minValue = v6;
    [coderCopy decodeFloatForKey:@"max"];
    v5->_maxValue = v7;
    v5->_unit = [coderCopy decodeInt32ForKey:@"unit"];
    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"unitName"];
    unitName = v5->_unitName;
    v5->_unitName = v9;

    v5->_flags = [coderCopy decodeInt32ForKey:@"flags"];
    v11 = [coderCopy decodeObjectOfClasses:-[_AUStaticParameterInfo initWithCoder:]::valueStringClasses forKey:@"values"];
    valueStrings = v5->_valueStrings;
    v5->_valueStrings = v11;

    v5->_clumpID = [coderCopy decodeInt32ForKey:@"clump"];
    [coderCopy decodeFloatForKey:@"default"];
    v5->_defaultValue = v13;
    v5->_originalOrder = [coderCopy decodeInt32ForKey:@"originalOrder"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  *&v5 = self->_minValue;
  v8 = coderCopy;
  [coderCopy encodeFloat:@"min" forKey:v5];
  *&v6 = self->_maxValue;
  [v8 encodeFloat:@"max" forKey:v6];
  [v8 encodeInt32:self->_unit forKey:@"unit"];
  [v8 encodeObject:self->_unitName forKey:@"unitName"];
  [v8 encodeInt64:self->_flags forKey:@"flags"];
  [v8 encodeObject:self->_valueStrings forKey:@"values"];
  [v8 encodeInt32:self->_clumpID forKey:@"clump"];
  *&v7 = self->_defaultValue;
  [v8 encodeFloat:@"default" forKey:v7];
  [v8 encodeInt32:self->_originalOrder forKey:@"originalOrder"];
}

@end