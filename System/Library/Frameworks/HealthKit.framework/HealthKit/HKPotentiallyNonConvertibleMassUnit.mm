@interface HKPotentiallyNonConvertibleMassUnit
- (id)_unitByPrefixing:(id)prefixing withConversionConstant:(id)constant;
@end

@implementation HKPotentiallyNonConvertibleMassUnit

- (id)_unitByPrefixing:(id)prefixing withConversionConstant:(id)constant
{
  constantCopy = constant;
  if (constantCopy)
  {
    prefixingCopy = prefixing;
    v8 = [HKMassUnit alloc];
    unitString = [(HKBaseUnit *)self unitString];
    [(HKBaseUnit *)self proportionalSize];
    v11 = v10;
    [(HKUnit *)self scaleOffset];
    v13 = [(HKBaseUnit *)v8 _initWithUnitString:unitString proportionalSize:v11 scaleOffset:v12];

    v14 = [v13 _unitByPrefixing:prefixingCopy withConversionConstant:constantCopy];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HKPotentiallyNonConvertibleMassUnit;
    prefixingCopy2 = prefixing;
    v14 = [(HKBaseUnit *)&v17 _unitByPrefixing:prefixingCopy2 withConversionConstant:0];
  }

  return v14;
}

@end