@interface CLKComplicationTemplateBattery
+ (id)templateWithFamily:(int64_t)family textProvider:(id)provider level:(double)level charging:(BOOL)charging;
- (CLKComplicationTemplateBattery)initWithFamily:(int64_t)family textProvider:(id)provider level:(double)level charging:(BOOL)charging;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLKComplicationTemplateBattery

- (CLKComplicationTemplateBattery)initWithFamily:(int64_t)family textProvider:(id)provider level:(double)level charging:(BOOL)charging
{
  chargingCopy = charging;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateBattery;
  initPrivate = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    initPrivate->_family = family;
    [(CLKComplicationTemplateBattery *)initPrivate setTextProvider:providerCopy];
    [(CLKComplicationTemplateBattery *)v12 setLevel:level];
    [(CLKComplicationTemplateBattery *)v12 setCharging:chargingCopy];
  }

  return v12;
}

+ (id)templateWithFamily:(int64_t)family textProvider:(id)provider level:(double)level charging:(BOOL)charging
{
  chargingCopy = charging;
  providerCopy = provider;
  v11 = [[self alloc] initWithFamily:family textProvider:providerCopy level:chargingCopy charging:level];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CLKComplicationTemplateBattery;
  v4 = [(CLKComplicationTemplate *)&v6 copyWithZone:zone];
  *(v4 + 9) = self->_family;
  *(v4 + 12) = *&self->_level;
  *(v4 + 80) = self->_charging;
  objc_storeStrong(v4 + 11, self->_textProvider);
  return v4;
}

@end