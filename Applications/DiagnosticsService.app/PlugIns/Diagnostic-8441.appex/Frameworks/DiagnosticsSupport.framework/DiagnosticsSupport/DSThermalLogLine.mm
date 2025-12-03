@interface DSThermalLogLine
- (BOOL)isTrapEntry;
- (BOOL)isTrapEvent;
- (DSThermalLogLine)initWithLogLine:(id)line;
@end

@implementation DSThermalLogLine

- (DSThermalLogLine)initWithLogLine:(id)line
{
  v13.receiver = self;
  v13.super_class = DSThermalLogLine;
  v3 = [(DSLogLine *)&v13 initWithLogLine:line];
  v4 = v3;
  if (v3)
  {
    type = [(DSLogLine *)v3 type];
    eventType = v4->_eventType;
    v4->_eventType = type;

    [(DSLogLine *)v4 setType:@"Thermal"];
    fields = [(DSLogLine *)v4 fields];
    v8 = [fields count] - 1;

    if ([(DSThermalLogLine *)v4 isTrapEvent])
    {
      fields2 = [(DSLogLine *)v4 fields];
      v10 = [fields2 count];

      if (v10 >= 4)
      {
        v4->_reason = [(DSLogLine *)v4 stringFromFieldAtIndex:2];
      }
    }

    v11 = [(DSLogLine *)v4 integerFromFieldAtIndex:v8]/ 100.0;
    v4->_maxTemp = v11;
  }

  return v4;
}

- (BOOL)isTrapEvent
{
  eventType = [(DSThermalLogLine *)self eventType];
  if ([eventType isEqualToString:@"ThermalUIAlertEnter"])
  {
    v4 = 1;
  }

  else
  {
    eventType2 = [(DSThermalLogLine *)self eventType];
    v4 = [eventType2 isEqualToString:@"ThermalUIAlertExit"];
  }

  return v4;
}

- (BOOL)isTrapEntry
{
  eventType = [(DSThermalLogLine *)self eventType];
  v3 = [eventType isEqualToString:@"ThermalUIAlertEnter"];

  return v3;
}

@end