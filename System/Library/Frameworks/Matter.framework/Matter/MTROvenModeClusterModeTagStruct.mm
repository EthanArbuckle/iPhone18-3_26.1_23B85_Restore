@interface MTROvenModeClusterModeTagStruct
- (MTROvenModeClusterModeTagStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROvenModeClusterModeTagStruct

- (MTROvenModeClusterModeTagStruct)init
{
  v7.receiver = self;
  v7.super_class = MTROvenModeClusterModeTagStruct;
  v2 = [(MTROvenModeClusterModeTagStruct *)&v7 init];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROvenModeClusterModeTagStruct);
  mfgCode = [(MTROvenModeClusterModeTagStruct *)self mfgCode];
  [(MTROvenModeClusterModeTagStruct *)v4 setMfgCode:mfgCode];

  value = [(MTROvenModeClusterModeTagStruct *)self value];
  [(MTROvenModeClusterModeTagStruct *)v4 setValue:value];

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