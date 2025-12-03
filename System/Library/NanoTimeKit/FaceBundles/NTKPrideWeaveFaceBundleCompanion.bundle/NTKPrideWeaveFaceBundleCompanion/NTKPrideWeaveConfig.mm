@interface NTKPrideWeaveConfig
- (NTKPrideWeaveConfig)initWithCoder:(id)coder;
- (id)copy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKPrideWeaveConfig

- (void)encodeWithCoder:(id)coder
{
  winding = self->_winding;
  coderCopy = coder;
  *&v6 = winding;
  v7 = [NSNumber numberWithFloat:v6];
  [coderCopy encodeObject:v7 forKey:@"winding"];

  *&v8 = self->_idleRotation;
  v9 = [NSNumber numberWithFloat:v8];
  [coderCopy encodeObject:v9 forKey:@"idleRotation"];
}

- (NTKPrideWeaveConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NTKPrideWeaveConfig;
  v5 = [(NTKPrideWeaveConfig *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"winding"];
    [v6 floatValue];
    v5->_winding = v7;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idleRotation"];
    [v8 floatValue];
    v5->_idleRotation = v9;
  }

  return v5;
}

- (id)copy
{
  v3 = objc_alloc_init(NTKPrideWeaveConfig);
  [(NTKPrideWeaveConfig *)self winding];
  [(NTKPrideWeaveConfig *)v3 setWinding:?];
  [(NTKPrideWeaveConfig *)self idleRotation];
  [(NTKPrideWeaveConfig *)v3 setIdleRotation:?];
  return v3;
}

@end