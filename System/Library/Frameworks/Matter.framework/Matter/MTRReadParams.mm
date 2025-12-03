@interface MTRReadParams
- (MTRReadParams)init;
- (MTRReadParams)initWithCoder:(id)coder;
- (NSNumber)fabricFiltered;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setFabricFiltered:(NSNumber *)fabricFiltered;
- (void)toReadPrepareParams:(void *)params;
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

- (MTRReadParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MTRReadParams;
  v5 = [(MTRReadParams *)&v9 init];
  if (v5)
  {
    -[MTRReadParams setFilterByFabric:](v5, "setFilterByFabric:", [coderCopy decodeBoolForKey:@"sFilterByFabricKey"]);
    -[MTRReadParams setAssumeUnknownAttributesReportable:](v5, "setAssumeUnknownAttributesReportable:", [coderCopy decodeBoolForKey:@"sAssumeUnknownAttributesReportableKey"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sMinEventNumberKey"];
    [(MTRReadParams *)v5 setMinEventNumber:v6];

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MTRReadParams shouldFilterByFabric](self forKey:{"shouldFilterByFabric"), @"sFilterByFabricKey"}];
  [coderCopy encodeBool:-[MTRReadParams shouldAssumeUnknownAttributesReportable](self forKey:{"shouldAssumeUnknownAttributesReportable"), @"sAssumeUnknownAttributesReportableKey"}];
  minEventNumber = [(MTRReadParams *)self minEventNumber];

  if (minEventNumber)
  {
    minEventNumber2 = [(MTRReadParams *)self minEventNumber];
    [coderCopy encodeObject:minEventNumber2 forKey:@"sMinEventNumberKey"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRReadParams);
  [(MTRReadParams *)v4 setFilterByFabric:[(MTRReadParams *)self shouldFilterByFabric]];
  minEventNumber = [(MTRReadParams *)self minEventNumber];
  [(MTRReadParams *)v4 setMinEventNumber:minEventNumber];

  [(MTRReadParams *)v4 setAssumeUnknownAttributesReportable:[(MTRReadParams *)self shouldAssumeUnknownAttributesReportable]];
  return v4;
}

- (void)toReadPrepareParams:(void *)params
{
  *(params + 113) = [(MTRReadParams *)self shouldFilterByFabric];
  minEventNumber = [(MTRReadParams *)self minEventNumber];

  if (minEventNumber)
  {
    minEventNumber2 = [(MTRReadParams *)self minEventNumber];
    unsignedLongLongValue = [minEventNumber2 unsignedLongLongValue];
    *(params + 88) = 1;
    *(params + 12) = unsignedLongLongValue;
  }
}

- (void)setFabricFiltered:(NSNumber *)fabricFiltered
{
  v4 = fabricFiltered;
  v6 = v4;
  if (v4)
  {
    bOOLValue = [(NSNumber *)v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(MTRReadParams *)self setFilterByFabric:bOOLValue];
}

- (NSNumber)fabricFiltered
{
  v2 = MEMORY[0x277CCABB0];
  shouldFilterByFabric = [(MTRReadParams *)self shouldFilterByFabric];

  return [v2 numberWithBool:shouldFilterByFabric];
}

@end