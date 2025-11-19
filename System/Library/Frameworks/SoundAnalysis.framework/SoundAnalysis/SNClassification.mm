@interface SNClassification
+ (SNClassification)new;
- (BOOL)isEqual:(id)a3;
- (SNClassification)init;
- (SNClassification)initWithCoder:(id)a3;
- (SNClassification)initWithIdentifier:(id)a3 confidence:(double)a4;
- (SNClassification)initWithImpl:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (SNClassification)initWithIdentifier:(id)a3 confidence:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SNClassification;
  v7 = [(SNClassification *)&v11 init];
  if (v7)
  {
    v8 = [[_SNClassification alloc] initWithIdentifier:v6 confidence:a4];
    impl = v7->_impl;
    v7->_impl = v8;

    if (!v7->_impl)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (SNClassification)initWithImpl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNClassification;
  v6 = [(SNClassification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(_SNClassification *)self->_impl copyWithZone:a3];
  v7 = [v5 initWithImpl:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
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

- (SNClassification)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SNClassification;
  v5 = [(SNClassification *)&v10 init];
  v6 = v5;
  if (!v4 || v5 && (v7 = [[_SNClassification alloc] initWithCoder:v4], impl = v6->_impl, v6->_impl = v7, impl, !v6->_impl))
  {

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (a3)
  {
    MEMORY[0x1EEE66B58](self->_impl, sel_encodeWithCoder_);
  }
}

@end