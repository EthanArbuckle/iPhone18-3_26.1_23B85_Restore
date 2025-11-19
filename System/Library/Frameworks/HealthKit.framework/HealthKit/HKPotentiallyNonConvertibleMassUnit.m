@interface HKPotentiallyNonConvertibleMassUnit
- (id)_unitByPrefixing:(id)a3 withConversionConstant:(id)a4;
@end

@implementation HKPotentiallyNonConvertibleMassUnit

- (id)_unitByPrefixing:(id)a3 withConversionConstant:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [HKMassUnit alloc];
    v9 = [(HKBaseUnit *)self unitString];
    [(HKBaseUnit *)self proportionalSize];
    v11 = v10;
    [(HKUnit *)self scaleOffset];
    v13 = [(HKBaseUnit *)v8 _initWithUnitString:v9 proportionalSize:v11 scaleOffset:v12];

    v14 = [v13 _unitByPrefixing:v7 withConversionConstant:v6];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HKPotentiallyNonConvertibleMassUnit;
    v15 = a3;
    v14 = [(HKBaseUnit *)&v17 _unitByPrefixing:v15 withConversionConstant:0];
  }

  return v14;
}

@end