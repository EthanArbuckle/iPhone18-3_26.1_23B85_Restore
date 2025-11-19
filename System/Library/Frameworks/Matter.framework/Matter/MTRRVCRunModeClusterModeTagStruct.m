@interface MTRRVCRunModeClusterModeTagStruct
- (MTRRVCRunModeClusterModeTagStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRRVCRunModeClusterModeTagStruct

- (MTRRVCRunModeClusterModeTagStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRRVCRunModeClusterModeTagStruct;
  v2 = [(MTRRVCRunModeClusterModeTagStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    mfgCode = v2->_mfgCode;
    v2->_mfgCode = 0;

    value = v3->_value;
    v3->_value = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRRVCRunModeClusterModeTagStruct);
  v5 = [(MTRRVCRunModeClusterModeTagStruct *)self mfgCode];
  [(MTRRVCRunModeClusterModeTagStruct *)v4 setMfgCode:v5];

  v6 = [(MTRRVCRunModeClusterModeTagStruct *)self value];
  [(MTRRVCRunModeClusterModeTagStruct *)v4 setValue:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: mfgCode:%@ value:%@; >", v5, self->_mfgCode, self->_value];;

  return v6;
}

@end