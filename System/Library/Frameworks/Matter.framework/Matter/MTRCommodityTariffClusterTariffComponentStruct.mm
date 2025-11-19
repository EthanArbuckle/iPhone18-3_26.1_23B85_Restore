@interface MTRCommodityTariffClusterTariffComponentStruct
- (MTRCommodityTariffClusterTariffComponentStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommodityTariffClusterTariffComponentStruct

- (MTRCommodityTariffClusterTariffComponentStruct)init
{
  v14.receiver = self;
  v14.super_class = MTRCommodityTariffClusterTariffComponentStruct;
  v2 = [(MTRCommodityTariffClusterTariffComponentStruct *)&v14 init];
  v3 = v2;
  if (v2)
  {
    tariffComponentID = v2->_tariffComponentID;
    v2->_tariffComponentID = &unk_284C3E588;

    price = v3->_price;
    v3->_price = 0;

    friendlyCredit = v3->_friendlyCredit;
    v3->_friendlyCredit = 0;

    auxiliaryLoad = v3->_auxiliaryLoad;
    v3->_auxiliaryLoad = 0;

    peakPeriod = v3->_peakPeriod;
    v3->_peakPeriod = 0;

    powerThreshold = v3->_powerThreshold;
    v3->_powerThreshold = 0;

    threshold = v3->_threshold;
    v3->_threshold = 0;

    label = v3->_label;
    v3->_label = 0;

    predicted = v3->_predicted;
    v3->_predicted = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterTariffComponentStruct);
  v5 = [(MTRCommodityTariffClusterTariffComponentStruct *)self tariffComponentID];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setTariffComponentID:v5];

  v6 = [(MTRCommodityTariffClusterTariffComponentStruct *)self price];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setPrice:v6];

  v7 = [(MTRCommodityTariffClusterTariffComponentStruct *)self friendlyCredit];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setFriendlyCredit:v7];

  v8 = [(MTRCommodityTariffClusterTariffComponentStruct *)self auxiliaryLoad];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setAuxiliaryLoad:v8];

  v9 = [(MTRCommodityTariffClusterTariffComponentStruct *)self peakPeriod];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setPeakPeriod:v9];

  v10 = [(MTRCommodityTariffClusterTariffComponentStruct *)self powerThreshold];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setPowerThreshold:v10];

  v11 = [(MTRCommodityTariffClusterTariffComponentStruct *)self threshold];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setThreshold:v11];

  v12 = [(MTRCommodityTariffClusterTariffComponentStruct *)self label];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setLabel:v12];

  v13 = [(MTRCommodityTariffClusterTariffComponentStruct *)self predicted];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setPredicted:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: tariffComponentID:%@ price:%@; friendlyCredit:%@; auxiliaryLoad:%@; peakPeriod:%@; powerThreshold:%@; threshold:%@; label:%@; predicted:%@; >", v5, self->_tariffComponentID, self->_price, self->_friendlyCredit, self->_auxiliaryLoad, self->_peakPeriod, self->_powerThreshold, self->_threshold, self->_label, self->_predicted];;

  return v6;
}

@end