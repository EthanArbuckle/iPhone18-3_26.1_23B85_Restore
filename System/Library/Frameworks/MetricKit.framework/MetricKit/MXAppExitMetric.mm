@interface MXAppExitMetric
- (MXAppExitMetric)initWithCoder:(id)a3;
- (MXAppExitMetric)initWithForegroundExitData:(id)a3 backgroundExitData:(id)a4;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXAppExitMetric

- (void)encodeWithCoder:(id)a3
{
  foregroundExitData = self->_foregroundExitData;
  v5 = a3;
  [v5 encodeObject:foregroundExitData forKey:@"foregroundExitData"];
  [v5 encodeObject:self->_backgroundExitData forKey:@"backgroundExitData"];
}

- (MXAppExitMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXAppExitMetric;
  v5 = [(MXMetric *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundExitData"];
    foregroundExitData = v5->_foregroundExitData;
    v5->_foregroundExitData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundExitData"];
    backgroundExitData = v5->_backgroundExitData;
    v5->_backgroundExitData = v8;
  }

  return v5;
}

- (MXAppExitMetric)initWithForegroundExitData:(id)a3 backgroundExitData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MXAppExitMetric;
  v9 = [(MXMetric *)&v13 init];
  p_isa = &v9->super.super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (v7 && v8)
  {
    objc_storeStrong(&v9->_foregroundExitData, a3);
    objc_storeStrong(p_isa + 3, a4);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  foregroundExitData = self->_foregroundExitData;
  if (foregroundExitData)
  {
    v5 = [(MXForegroundExitData *)foregroundExitData toDictionary];
    [v3 setObject:v5 forKey:@"foregroundExitData"];
  }

  backgroundExitData = self->_backgroundExitData;
  if (backgroundExitData)
  {
    v7 = [(MXBackgroundExitData *)backgroundExitData toDictionary];
    [v3 setObject:v7 forKey:@"backgroundExitData"];
  }

  return v3;
}

@end