@interface HKValueHistogramCollectionQueryServerConfiguration
- (HKValueHistogramCollectionQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKValueHistogramCollectionQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKValueHistogramCollectionQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 7, self->_anchorDate);
  objc_storeStrong(v4 + 8, self->_intervalComponents);
  objc_storeStrong(v4 + 9, self->_quantityRanges);
  return v4;
}

- (HKValueHistogramCollectionQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKValueHistogramCollectionQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchorDate"];
    anchorDate = v5->_anchorDate;
    v5->_anchorDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intervalComponents"];
    intervalComponents = v5->_intervalComponents;
    v5->_intervalComponents = v8;

    v10 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"quantityRanges"];
    quantityRanges = v5->_quantityRanges;
    v5->_quantityRanges = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKValueHistogramCollectionQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_anchorDate forKey:{@"anchorDate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_intervalComponents forKey:@"intervalComponents"];
  [coderCopy encodeObject:self->_quantityRanges forKey:@"quantityRanges"];
}

@end