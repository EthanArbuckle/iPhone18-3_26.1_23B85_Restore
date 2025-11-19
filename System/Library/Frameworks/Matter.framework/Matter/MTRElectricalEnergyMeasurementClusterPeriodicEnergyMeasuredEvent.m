@interface MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent
- (MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent

- (MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent;
  v2 = [(MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent *)&v7 init];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent);
  v5 = [(MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent *)self energyImported];
  [(MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent *)v4 setEnergyImported:v5];

  v6 = [(MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent *)self energyExported];
  [(MTRElectricalEnergyMeasurementClusterPeriodicEnergyMeasuredEvent *)v4 setEnergyExported:v6];

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