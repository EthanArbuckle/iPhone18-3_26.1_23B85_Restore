@interface HKValueHistogramCollection
- (BOOL)isEqual:(id)equal;
- (HKValueHistogramCollection)initWithCoder:(id)coder;
- (HKValueHistogramCollection)initWithQuantityRanges:(id)ranges valueHistogramsByDateIntervalIndex:(id)index anchorDate:(id)date intervalComponents:(id)components;
- (NSArray)valueHistograms;
- (id)description;
- (id)valueHistogramForDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKValueHistogramCollection

- (HKValueHistogramCollection)initWithQuantityRanges:(id)ranges valueHistogramsByDateIntervalIndex:(id)index anchorDate:(id)date intervalComponents:(id)components
{
  rangesCopy = ranges;
  indexCopy = index;
  dateCopy = date;
  componentsCopy = components;
  v20.receiver = self;
  v20.super_class = HKValueHistogramCollection;
  v15 = [(HKValueHistogramCollection *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_quantityRanges, ranges);
    objc_storeStrong(&v16->_valueHistogramsByDateIntervalIndex, index);
    objc_storeStrong(&v16->_anchorDate, date);
    objc_storeStrong(&v16->_intervalComponents, components);
    v17 = [[_HKDateIntervalCollection alloc] initWithAnchorDate:dateCopy intervalComponents:componentsCopy];
    intervalCollection = v16->_intervalCollection;
    v16->_intervalCollection = v17;
  }

  return v16;
}

- (NSArray)valueHistograms
{
  allKeys = [(NSDictionary *)self->_valueHistogramsByDateIntervalIndex allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__HKValueHistogramCollection_valueHistograms__block_invoke;
  v7[3] = &unk_1E737FA88;
  v7[4] = self;
  v5 = [v4 hk_map:v7];

  return v5;
}

- (id)valueHistogramForDate:(id)date
{
  v9 = 0;
  v4 = [(_HKDateIntervalCollection *)self->_intervalCollection dateIntervalContainingDate:date index:&v9];
  valueHistogramsByDateIntervalIndex = self->_valueHistogramsByDateIntervalIndex;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v7 = [(NSDictionary *)valueHistogramsByDateIntervalIndex objectForKeyedSubscript:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if ([(HKValueHistogramCollection *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    if ([(NSArray *)self->_quantityRanges isEqual:v5->_quantityRanges]&& [(NSDictionary *)self->_valueHistogramsByDateIntervalIndex isEqual:v5->_valueHistogramsByDateIntervalIndex]&& [(NSDate *)self->_anchorDate isEqual:v5->_anchorDate])
    {
      v6 = [(NSDateComponents *)self->_intervalComponents isEqual:v5->_intervalComponents];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  quantityRanges = self->_quantityRanges;
  anchorDate = self->_anchorDate;
  return [v3 stringWithFormat:@"<%@:%p quantityRanges=%@ valueHistograms=%@ anchorDate=%@ intervalComponents=%@>", v4, self, quantityRanges, self->_valueHistogramsByDateIntervalIndex, anchorDate, self->_intervalComponents];
}

- (HKValueHistogramCollection)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 hk_typesForArrayOf:objc_opt_class()];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"quantityRanges"];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 hk_typesForDictionaryMapping:v9 to:objc_opt_class()];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"valueHistogramsByDateIntervalIndex"];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchorDate"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intervalComponents"];

  v14 = [(HKValueHistogramCollection *)self initWithQuantityRanges:v7 valueHistogramsByDateIntervalIndex:v11 anchorDate:v12 intervalComponents:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  quantityRanges = self->_quantityRanges;
  coderCopy = coder;
  [coderCopy encodeObject:quantityRanges forKey:@"quantityRanges"];
  [coderCopy encodeObject:self->_valueHistogramsByDateIntervalIndex forKey:@"valueHistogramsByDateIntervalIndex"];
  [coderCopy encodeObject:self->_anchorDate forKey:@"anchorDate"];
  [coderCopy encodeObject:self->_intervalComponents forKey:@"intervalComponents"];
}

@end