@interface MTRCommodityTariffClusterTariffComponentStruct
- (MTRCommodityTariffClusterTariffComponentStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterTariffComponentStruct);
  tariffComponentID = [(MTRCommodityTariffClusterTariffComponentStruct *)self tariffComponentID];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setTariffComponentID:tariffComponentID];

  price = [(MTRCommodityTariffClusterTariffComponentStruct *)self price];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setPrice:price];

  friendlyCredit = [(MTRCommodityTariffClusterTariffComponentStruct *)self friendlyCredit];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setFriendlyCredit:friendlyCredit];

  auxiliaryLoad = [(MTRCommodityTariffClusterTariffComponentStruct *)self auxiliaryLoad];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setAuxiliaryLoad:auxiliaryLoad];

  peakPeriod = [(MTRCommodityTariffClusterTariffComponentStruct *)self peakPeriod];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setPeakPeriod:peakPeriod];

  powerThreshold = [(MTRCommodityTariffClusterTariffComponentStruct *)self powerThreshold];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setPowerThreshold:powerThreshold];

  threshold = [(MTRCommodityTariffClusterTariffComponentStruct *)self threshold];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setThreshold:threshold];

  label = [(MTRCommodityTariffClusterTariffComponentStruct *)self label];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setLabel:label];

  predicted = [(MTRCommodityTariffClusterTariffComponentStruct *)self predicted];
  [(MTRCommodityTariffClusterTariffComponentStruct *)v4 setPredicted:predicted];

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