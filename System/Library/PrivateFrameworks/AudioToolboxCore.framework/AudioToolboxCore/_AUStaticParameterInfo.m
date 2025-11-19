@interface _AUStaticParameterInfo
- (_AUStaticParameterInfo)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _AUStaticParameterInfo

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _AUStaticParameterInfo;
  [(_AUStaticParameterInfo *)&v2 dealloc];
}

- (_AUStaticParameterInfo)initWithCoder:(id)a3
{
  v4 = a3;
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
    [v4 decodeFloatForKey:@"min"];
    v5->_minValue = v6;
    [v4 decodeFloatForKey:@"max"];
    v5->_maxValue = v7;
    v5->_unit = [v4 decodeInt32ForKey:@"unit"];
    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"unitName"];
    unitName = v5->_unitName;
    v5->_unitName = v9;

    v5->_flags = [v4 decodeInt32ForKey:@"flags"];
    v11 = [v4 decodeObjectOfClasses:-[_AUStaticParameterInfo initWithCoder:]::valueStringClasses forKey:@"values"];
    valueStrings = v5->_valueStrings;
    v5->_valueStrings = v11;

    v5->_clumpID = [v4 decodeInt32ForKey:@"clump"];
    [v4 decodeFloatForKey:@"default"];
    v5->_defaultValue = v13;
    v5->_originalOrder = [v4 decodeInt32ForKey:@"originalOrder"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  *&v5 = self->_minValue;
  v8 = v4;
  [v4 encodeFloat:@"min" forKey:v5];
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