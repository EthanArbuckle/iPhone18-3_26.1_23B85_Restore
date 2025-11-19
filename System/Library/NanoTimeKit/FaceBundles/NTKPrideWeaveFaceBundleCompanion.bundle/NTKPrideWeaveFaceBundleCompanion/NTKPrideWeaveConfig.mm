@interface NTKPrideWeaveConfig
- (NTKPrideWeaveConfig)initWithCoder:(id)a3;
- (id)copy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKPrideWeaveConfig

- (void)encodeWithCoder:(id)a3
{
  winding = self->_winding;
  v5 = a3;
  *&v6 = winding;
  v7 = [NSNumber numberWithFloat:v6];
  [v5 encodeObject:v7 forKey:@"winding"];

  *&v8 = self->_idleRotation;
  v9 = [NSNumber numberWithFloat:v8];
  [v5 encodeObject:v9 forKey:@"idleRotation"];
}

- (NTKPrideWeaveConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NTKPrideWeaveConfig;
  v5 = [(NTKPrideWeaveConfig *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"winding"];
    [v6 floatValue];
    v5->_winding = v7;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idleRotation"];
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