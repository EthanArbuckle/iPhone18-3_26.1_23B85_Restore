@interface MXAppExitMetric
- (MXAppExitMetric)initWithCoder:(id)coder;
- (MXAppExitMetric)initWithForegroundExitData:(id)data backgroundExitData:(id)exitData;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXAppExitMetric

- (void)encodeWithCoder:(id)coder
{
  foregroundExitData = self->_foregroundExitData;
  coderCopy = coder;
  [coderCopy encodeObject:foregroundExitData forKey:@"foregroundExitData"];
  [coderCopy encodeObject:self->_backgroundExitData forKey:@"backgroundExitData"];
}

- (MXAppExitMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MXAppExitMetric;
  v5 = [(MXMetric *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foregroundExitData"];
    foregroundExitData = v5->_foregroundExitData;
    v5->_foregroundExitData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundExitData"];
    backgroundExitData = v5->_backgroundExitData;
    v5->_backgroundExitData = v8;
  }

  return v5;
}

- (MXAppExitMetric)initWithForegroundExitData:(id)data backgroundExitData:(id)exitData
{
  dataCopy = data;
  exitDataCopy = exitData;
  v13.receiver = self;
  v13.super_class = MXAppExitMetric;
  v9 = [(MXMetric *)&v13 init];
  p_isa = &v9->super.super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (dataCopy && exitDataCopy)
  {
    objc_storeStrong(&v9->_foregroundExitData, data);
    objc_storeStrong(p_isa + 3, exitData);
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
    toDictionary = [(MXForegroundExitData *)foregroundExitData toDictionary];
    [v3 setObject:toDictionary forKey:@"foregroundExitData"];
  }

  backgroundExitData = self->_backgroundExitData;
  if (backgroundExitData)
  {
    toDictionary2 = [(MXBackgroundExitData *)backgroundExitData toDictionary];
    [v3 setObject:toDictionary2 forKey:@"backgroundExitData"];
  }

  return v3;
}

@end