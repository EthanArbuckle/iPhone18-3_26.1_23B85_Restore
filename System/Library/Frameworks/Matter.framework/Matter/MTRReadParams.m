@interface MTRReadParams
- (MTRReadParams)init;
- (MTRReadParams)initWithCoder:(id)a3;
- (NSNumber)fabricFiltered;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFabricFiltered:(NSNumber *)fabricFiltered;
- (void)toReadPrepareParams:(void *)a3;
@end

@implementation MTRReadParams

- (MTRReadParams)init
{
  v3.receiver = self;
  v3.super_class = MTRReadParams;
  result = [(MTRReadParams *)&v3 init];
  if (result)
  {
    *&result->_filterByFabric = 257;
  }

  return result;
}

- (MTRReadParams)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTRReadParams;
  v5 = [(MTRReadParams *)&v9 init];
  if (v5)
  {
    -[MTRReadParams setFilterByFabric:](v5, "setFilterByFabric:", [v4 decodeBoolForKey:@"sFilterByFabricKey"]);
    -[MTRReadParams setAssumeUnknownAttributesReportable:](v5, "setAssumeUnknownAttributesReportable:", [v4 decodeBoolForKey:@"sAssumeUnknownAttributesReportableKey"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sMinEventNumberKey"];
    [(MTRReadParams *)v5 setMinEventNumber:v6];

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:-[MTRReadParams shouldFilterByFabric](self forKey:{"shouldFilterByFabric"), @"sFilterByFabricKey"}];
  [v6 encodeBool:-[MTRReadParams shouldAssumeUnknownAttributesReportable](self forKey:{"shouldAssumeUnknownAttributesReportable"), @"sAssumeUnknownAttributesReportableKey"}];
  v4 = [(MTRReadParams *)self minEventNumber];

  if (v4)
  {
    v5 = [(MTRReadParams *)self minEventNumber];
    [v6 encodeObject:v5 forKey:@"sMinEventNumberKey"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRReadParams);
  [(MTRReadParams *)v4 setFilterByFabric:[(MTRReadParams *)self shouldFilterByFabric]];
  v5 = [(MTRReadParams *)self minEventNumber];
  [(MTRReadParams *)v4 setMinEventNumber:v5];

  [(MTRReadParams *)v4 setAssumeUnknownAttributesReportable:[(MTRReadParams *)self shouldAssumeUnknownAttributesReportable]];
  return v4;
}

- (void)toReadPrepareParams:(void *)a3
{
  *(a3 + 113) = [(MTRReadParams *)self shouldFilterByFabric];
  v5 = [(MTRReadParams *)self minEventNumber];

  if (v5)
  {
    v7 = [(MTRReadParams *)self minEventNumber];
    v6 = [v7 unsignedLongLongValue];
    *(a3 + 88) = 1;
    *(a3 + 12) = v6;
  }
}

- (void)setFabricFiltered:(NSNumber *)fabricFiltered
{
  v4 = fabricFiltered;
  v6 = v4;
  if (v4)
  {
    v5 = [(NSNumber *)v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  [(MTRReadParams *)self setFilterByFabric:v5];
}

- (NSNumber)fabricFiltered
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(MTRReadParams *)self shouldFilterByFabric];

  return [v2 numberWithBool:v3];
}

@end