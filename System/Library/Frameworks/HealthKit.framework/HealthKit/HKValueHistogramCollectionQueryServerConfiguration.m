@interface HKValueHistogramCollectionQueryServerConfiguration
- (HKValueHistogramCollectionQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKValueHistogramCollectionQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKValueHistogramCollectionQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 7, self->_anchorDate);
  objc_storeStrong(v4 + 8, self->_intervalComponents);
  objc_storeStrong(v4 + 9, self->_quantityRanges);
  return v4;
}

- (HKValueHistogramCollectionQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKValueHistogramCollectionQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchorDate"];
    anchorDate = v5->_anchorDate;
    v5->_anchorDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intervalComponents"];
    intervalComponents = v5->_intervalComponents;
    v5->_intervalComponents = v8;

    v10 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"quantityRanges"];
    quantityRanges = v5->_quantityRanges;
    v5->_quantityRanges = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKValueHistogramCollectionQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_anchorDate forKey:{@"anchorDate", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_intervalComponents forKey:@"intervalComponents"];
  [v4 encodeObject:self->_quantityRanges forKey:@"quantityRanges"];
}

@end