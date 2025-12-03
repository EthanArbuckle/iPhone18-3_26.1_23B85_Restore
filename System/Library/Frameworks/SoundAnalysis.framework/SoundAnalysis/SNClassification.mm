@interface SNClassification
+ (SNClassification)new;
- (BOOL)isEqual:(id)equal;
- (SNClassification)init;
- (SNClassification)initWithCoder:(id)coder;
- (SNClassification)initWithIdentifier:(id)identifier confidence:(double)confidence;
- (SNClassification)initWithImpl:(id)impl;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SNClassification

- (SNClassification)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-init is not a valid initializer for the class SNClassification" userInfo:0];
  objc_exception_throw(v2);
}

+ (SNClassification)new
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"+new is not a valid class method for the class SNClassification" userInfo:0];
  objc_exception_throw(v2);
}

- (SNClassification)initWithIdentifier:(id)identifier confidence:(double)confidence
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SNClassification;
  v7 = [(SNClassification *)&v11 init];
  if (v7)
  {
    v8 = [[_SNClassification alloc] initWithIdentifier:identifierCopy confidence:confidence];
    impl = v7->_impl;
    v7->_impl = v8;

    if (!v7->_impl)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (SNClassification)initWithImpl:(id)impl
{
  implCopy = impl;
  v9.receiver = self;
  v9.super_class = SNClassification;
  v6 = [(SNClassification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, impl);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(_SNClassification *)self->_impl copyWithZone:zone];
  v7 = [v5 initWithImpl:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(_SNClassification *)self->_impl isEqual:v5->_impl];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (SNClassification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SNClassification;
  v5 = [(SNClassification *)&v10 init];
  v6 = v5;
  if (!coderCopy || v5 && (v7 = [[_SNClassification alloc] initWithCoder:coderCopy], impl = v6->_impl, v6->_impl = v7, impl, !v6->_impl))
  {

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if (coder)
  {
    MEMORY[0x1EEE66B58](self->_impl, sel_encodeWithCoder_);
  }
}

@end