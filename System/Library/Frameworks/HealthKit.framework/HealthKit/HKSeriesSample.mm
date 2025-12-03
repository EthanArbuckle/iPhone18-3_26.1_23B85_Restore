@interface HKSeriesSample
- (HKSeriesSample)initWithCoder:(id)coder;
- (id)_validateSample;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSeriesSample

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v9.receiver = self;
  v9.super_class = HKSeriesSample;
  v4 = [(HKSample *)&v9 _validateWithConfiguration:configuration.var0, configuration.var1];
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
  _validateConfiguration = [(HKObject *)&v4 _validateConfiguration];

  return _validateConfiguration;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HKSeriesSample;
  coderCopy = coder;
  [(HKSample *)&v6 encodeWithCoder:coderCopy];
  v5 = atomic_load(&self->_count);
  [coderCopy encodeInt64:v5 forKey:{@"cnt", v6.receiver, v6.super_class}];
  [coderCopy encodeBool:self->_frozen forKey:@"fzn"];
}

- (HKSeriesSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKSeriesSample;
  v5 = [(HKSample *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    atomic_store([coderCopy decodeInt64ForKey:@"cnt"], &v5->_count);
    v5->_frozen = [coderCopy decodeBoolForKey:@"fzn"];
  }

  return v5;
}

@end