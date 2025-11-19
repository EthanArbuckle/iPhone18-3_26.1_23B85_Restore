@interface HKSeriesSample
- (HKSeriesSample)initWithCoder:(id)a3;
- (id)_validateSample;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSeriesSample

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v9.receiver = self;
  v9.super_class = HKSeriesSample;
  v4 = [(HKSample *)&v9 _validateWithConfiguration:a3.var0, a3.var1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = objc_opt_class();
    v7 = [v5 hk_errorForInvalidArgument:@"@" class:v6 selector:a2 format:{@"Invalid data type %@", objc_opt_class()}];

    v4 = v7;
  }

  return v4;
}

- (id)_validateSample
{
  v4.receiver = self;
  v4.super_class = HKSeriesSample;
  v2 = [(HKObject *)&v4 _validateConfiguration];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKSeriesSample;
  v4 = a3;
  [(HKSample *)&v6 encodeWithCoder:v4];
  v5 = atomic_load(&self->_count);
  [v4 encodeInt64:v5 forKey:{@"cnt", v6.receiver, v6.super_class}];
  [v4 encodeBool:self->_frozen forKey:@"fzn"];
}

- (HKSeriesSample)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKSeriesSample;
  v5 = [(HKSample *)&v7 initWithCoder:v4];
  if (v5)
  {
    atomic_store([v4 decodeInt64ForKey:@"cnt"], &v5->_count);
    v5->_frozen = [v4 decodeBoolForKey:@"fzn"];
  }

  return v5;
}

@end