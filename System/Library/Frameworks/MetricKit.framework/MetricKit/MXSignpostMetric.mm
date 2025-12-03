@interface MXSignpostMetric
- (MXSignpostMetric)initWithCoder:(id)coder;
- (MXSignpostMetric)initWithSignpostName:(id)name withSignpostCategory:(id)category withTotalCount:(unint64_t)count withSignpostIntervalData:(id)data;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXSignpostMetric

- (MXSignpostMetric)initWithSignpostName:(id)name withSignpostCategory:(id)category withTotalCount:(unint64_t)count withSignpostIntervalData:(id)data
{
  nameCopy = name;
  categoryCopy = category;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = MXSignpostMetric;
  v14 = [(MXMetric *)&v18 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_5;
  }

  v16 = 0;
  if (nameCopy && categoryCopy)
  {
    objc_storeStrong(&v14->_signpostName, name);
    objc_storeStrong(&v15->_signpostCategory, category);
    v15->_totalCount = count;
    objc_storeStrong(&v15->_signpostIntervalData, data);
LABEL_5:
    v16 = v15;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  signpostName = self->_signpostName;
  coderCopy = coder;
  [coderCopy encodeObject:signpostName forKey:@"signpostName"];
  [coderCopy encodeObject:self->_signpostCategory forKey:@"signpostCategory"];
  [coderCopy encodeInteger:self->_totalCount forKey:@"totalSignpostCount"];
  [coderCopy encodeObject:self->_signpostIntervalData forKey:@"signpostIntervalData"];
}

- (MXSignpostMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MXSignpostMetric;
  v5 = [(MXMetric *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostName"];
    signpostName = v5->_signpostName;
    v5->_signpostName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostCategory"];
    signpostCategory = v5->_signpostCategory;
    v5->_signpostCategory = v8;

    v5->_totalCount = [coderCopy decodeIntegerForKey:@"totalSignpostCount"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostIntervalData"];
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
      toDictionary = [(MXSignpostIntervalData *)signpostIntervalData toDictionary];
      [v3 setObject:toDictionary forKey:@"signpostIntervalData"];
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  return v3;
}

@end