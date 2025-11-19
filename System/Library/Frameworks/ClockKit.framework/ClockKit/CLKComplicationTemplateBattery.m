@interface CLKComplicationTemplateBattery
+ (id)templateWithFamily:(int64_t)a3 textProvider:(id)a4 level:(double)a5 charging:(BOOL)a6;
- (CLKComplicationTemplateBattery)initWithFamily:(int64_t)a3 textProvider:(id)a4 level:(double)a5 charging:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLKComplicationTemplateBattery

- (CLKComplicationTemplateBattery)initWithFamily:(int64_t)a3 textProvider:(id)a4 level:(double)a5 charging:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateBattery;
  v11 = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = v11;
  if (v11)
  {
    v11->_family = a3;
    [(CLKComplicationTemplateBattery *)v11 setTextProvider:v10];
    [(CLKComplicationTemplateBattery *)v12 setLevel:a5];
    [(CLKComplicationTemplateBattery *)v12 setCharging:v6];
  }

  return v12;
}

+ (id)templateWithFamily:(int64_t)a3 textProvider:(id)a4 level:(double)a5 charging:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = [[a1 alloc] initWithFamily:a3 textProvider:v10 level:v6 charging:a5];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CLKComplicationTemplateBattery;
  v4 = [(CLKComplicationTemplate *)&v6 copyWithZone:a3];
  *(v4 + 9) = self->_family;
  *(v4 + 12) = *&self->_level;
  *(v4 + 80) = self->_charging;
  objc_storeStrong(v4 + 11, self->_textProvider);
  return v4;
}

@end