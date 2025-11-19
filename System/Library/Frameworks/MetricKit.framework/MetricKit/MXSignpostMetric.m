@interface MXSignpostMetric
- (MXSignpostMetric)initWithCoder:(id)a3;
- (MXSignpostMetric)initWithSignpostName:(id)a3 withSignpostCategory:(id)a4 withTotalCount:(unint64_t)a5 withSignpostIntervalData:(id)a6;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXSignpostMetric

- (MXSignpostMetric)initWithSignpostName:(id)a3 withSignpostCategory:(id)a4 withTotalCount:(unint64_t)a5 withSignpostIntervalData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = MXSignpostMetric;
  v14 = [(MXMetric *)&v18 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_5;
  }

  v16 = 0;
  if (v11 && v12)
  {
    objc_storeStrong(&v14->_signpostName, a3);
    objc_storeStrong(&v15->_signpostCategory, a4);
    v15->_totalCount = a5;
    objc_storeStrong(&v15->_signpostIntervalData, a6);
LABEL_5:
    v16 = v15;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  signpostName = self->_signpostName;
  v5 = a3;
  [v5 encodeObject:signpostName forKey:@"signpostName"];
  [v5 encodeObject:self->_signpostCategory forKey:@"signpostCategory"];
  [v5 encodeInteger:self->_totalCount forKey:@"totalSignpostCount"];
  [v5 encodeObject:self->_signpostIntervalData forKey:@"signpostIntervalData"];
}

- (MXSignpostMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MXSignpostMetric;
  v5 = [(MXMetric *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signpostName"];
    signpostName = v5->_signpostName;
    v5->_signpostName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signpostCategory"];
    signpostCategory = v5->_signpostCategory;
    v5->_signpostCategory = v8;

    v5->_totalCount = [v4 decodeIntegerForKey:@"totalSignpostCount"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signpostIntervalData"];
    signpostIntervalData = v5->_signpostIntervalData;
    v5->_signpostIntervalData = v10;
  }

  return v5;
}

- (id)toDictionary
{
  if (self->_signpostName && self->_signpostCategory)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:self->_signpostName forKey:@"signpostName"];
    [v3 setObject:self->_signpostCategory forKey:@"signpostCategory"];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_totalCount];
    [v3 setObject:v4 forKey:@"totalSignpostCount"];

    signpostIntervalData = self->_signpostIntervalData;
    if (signpostIntervalData)
    {
      v6 = [(MXSignpostIntervalData *)signpostIntervalData toDictionary];
      [v3 setObject:v6 forKey:@"signpostIntervalData"];
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  return v3;
}

@end