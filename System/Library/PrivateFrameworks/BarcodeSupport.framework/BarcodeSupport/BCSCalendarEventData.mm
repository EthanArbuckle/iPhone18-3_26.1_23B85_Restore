@interface BCSCalendarEventData
- (BCSCalendarEventData)initWithCoder:(id)a3;
- (BCSCalendarEventData)initWithICSString:(id)a3;
@end

@implementation BCSCalendarEventData

- (BCSCalendarEventData)initWithICSString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BCSCalendarEventData;
  v5 = [(BCSCalendarEventData *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    icsString = v5->_icsString;
    v5->_icsString = v6;

    v8 = v5;
  }

  return v5;
}

- (BCSCalendarEventData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"icsString"];

  v6 = [(BCSCalendarEventData *)self initWithICSString:v5];
  return v6;
}

@end