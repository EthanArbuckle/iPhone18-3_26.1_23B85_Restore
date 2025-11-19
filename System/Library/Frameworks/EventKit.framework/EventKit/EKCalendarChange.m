@interface EKCalendarChange
- (EKCalendarChange)initWithChangeProperties:(id)a3;
@end

@implementation EKCalendarChange

- (EKCalendarChange)initWithChangeProperties:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EKCalendarChange;
  v5 = [(EKObjectChange *)&v12 initWithChangeProperties:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    v5->_titleChanged = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"color"];
    v5->_colorChanged = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"display_order"];
    v5->_orderChanged = [v8 BOOLValue];

    v9 = [v4 objectForKeyedSubscript:@"UUID"];
    calendarIdentifier = v5->_calendarIdentifier;
    v5->_calendarIdentifier = v9;
  }

  return v5;
}

@end