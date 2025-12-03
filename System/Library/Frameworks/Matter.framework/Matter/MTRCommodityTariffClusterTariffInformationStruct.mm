@interface MTRCommodityTariffClusterTariffInformationStruct
- (MTRCommodityTariffClusterTariffInformationStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityTariffClusterTariffInformationStruct

- (MTRCommodityTariffClusterTariffInformationStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRCommodityTariffClusterTariffInformationStruct;
  v2 = [(MTRCommodityTariffClusterTariffInformationStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    tariffLabel = v2->_tariffLabel;
    v2->_tariffLabel = 0;

    providerName = v3->_providerName;
    v3->_providerName = 0;

    currency = v3->_currency;
    v3->_currency = 0;

    blockMode = v3->_blockMode;
    v3->_blockMode = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterTariffInformationStruct);
  tariffLabel = [(MTRCommodityTariffClusterTariffInformationStruct *)self tariffLabel];
  [(MTRCommodityTariffClusterTariffInformationStruct *)v4 setTariffLabel:tariffLabel];

  providerName = [(MTRCommodityTariffClusterTariffInformationStruct *)self providerName];
  [(MTRCommodityTariffClusterTariffInformationStruct *)v4 setProviderName:providerName];

  currency = [(MTRCommodityTariffClusterTariffInformationStruct *)self currency];
  [(MTRCommodityTariffClusterTariffInformationStruct *)v4 setCurrency:currency];

  blockMode = [(MTRCommodityTariffClusterTariffInformationStruct *)self blockMode];
  [(MTRCommodityTariffClusterTariffInformationStruct *)v4 setBlockMode:blockMode];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: tariffLabel:%@ providerName:%@; currency:%@; blockMode:%@; >", v5, self->_tariffLabel, self->_providerName, self->_currency, self->_blockMode];;

  return v6;
}

@end