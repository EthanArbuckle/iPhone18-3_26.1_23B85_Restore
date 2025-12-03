@interface EKCalendarChange
- (EKCalendarChange)initWithChangeProperties:(id)properties;
@end

@implementation EKCalendarChange

- (EKCalendarChange)initWithChangeProperties:(id)properties
{
  propertiesCopy = properties;
  v12.receiver = self;
  v12.super_class = EKCalendarChange;
  v5 = [(EKObjectChange *)&v12 initWithChangeProperties:propertiesCopy];
  if (v5)
  {
    v6 = [propertiesCopy objectForKeyedSubscript:@"title"];
    v5->_titleChanged = [v6 BOOLValue];

    v7 = [propertiesCopy objectForKeyedSubscript:@"color"];
    v5->_colorChanged = [v7 BOOLValue];

    v8 = [propertiesCopy objectForKeyedSubscript:@"display_order"];
    v5->_orderChanged = [v8 BOOLValue];

    v9 = [propertiesCopy objectForKeyedSubscript:@"UUID"];
    calendarIdentifier = v5->_calendarIdentifier;
    v5->_calendarIdentifier = v9;
  }

  return v5;
}

@end