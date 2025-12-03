@interface MTRModeSelectClusterSemanticTagStruct
- (MTRModeSelectClusterSemanticTagStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRModeSelectClusterSemanticTagStruct

- (MTRModeSelectClusterSemanticTagStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRModeSelectClusterSemanticTagStruct;
  v2 = [(MTRModeSelectClusterSemanticTagStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    mfgCode = v2->_mfgCode;
    v2->_mfgCode = &unk_284C3E588;

    value = v3->_value;
    v3->_value = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRModeSelectClusterSemanticTagStruct);
  mfgCode = [(MTRModeSelectClusterSemanticTagStruct *)self mfgCode];
  [(MTRModeSelectClusterSemanticTagStruct *)v4 setMfgCode:mfgCode];

  value = [(MTRModeSelectClusterSemanticTagStruct *)self value];
  [(MTRModeSelectClusterSemanticTagStruct *)v4 setValue:value];

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