@interface MTREnergyPreferenceClusterBalanceStruct
- (MTREnergyPreferenceClusterBalanceStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTREnergyPreferenceClusterBalanceStruct

- (MTREnergyPreferenceClusterBalanceStruct)init
{
  v7.receiver = self;
  v7.super_class = MTREnergyPreferenceClusterBalanceStruct;
  v2 = [(MTREnergyPreferenceClusterBalanceStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    step = v2->_step;
    v2->_step = &unk_284C3E588;

    label = v3->_label;
    v3->_label = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTREnergyPreferenceClusterBalanceStruct);
  v5 = [(MTREnergyPreferenceClusterBalanceStruct *)self step];
  [(MTREnergyPreferenceClusterBalanceStruct *)v4 setStep:v5];

  v6 = [(MTREnergyPreferenceClusterBalanceStruct *)self label];
  [(MTREnergyPreferenceClusterBalanceStruct *)v4 setLabel:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: step:%@ label:%@; >", v5, self->_step, self->_label];;

  return v6;
}

@end