@interface MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent
- (MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent

- (MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent;
  v2 = [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    energyImported = v2->_energyImported;
    v2->_energyImported = 0;

    energyExported = v3->_energyExported;
    v3->_energyExported = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent);
  energyImported = [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent *)self energyImported];
  [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent *)v4 setEnergyImported:energyImported];

  energyExported = [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent *)self energyExported];
  [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyMeasuredEvent *)v4 setEnergyExported:energyExported];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: energyImported:%@ energyExported:%@; >", v5, self->_energyImported, self->_energyExported];;

  return v6;
}

@end