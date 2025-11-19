@interface MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct
- (MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct

- (MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct;
  v2 = [(MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    number = v2->_number;
    v2->_number = &unk_284C3E588;

    requiredState = v3->_requiredState;
    v3->_requiredState = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct);
  v5 = [(MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct *)self number];
  [(MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct *)v4 setNumber:v5];

  v6 = [(MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct *)self requiredState];
  [(MTRCommodityTariffClusterAuxiliaryLoadSwitchSettingsStruct *)v4 setRequiredState:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: number:%@ requiredState:%@; >", v5, self->_number, self->_requiredState];;

  return v6;
}

@end