@interface BCSCalendarEventData
- (BCSCalendarEventData)initWithCoder:(id)coder;
- (BCSCalendarEventData)initWithICSString:(id)string;
@end

@implementation BCSCalendarEventData

- (BCSCalendarEventData)initWithICSString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = BCSCalendarEventData;
  v5 = [(BCSCalendarEventData *)&v10 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    icsString = v5->_icsString;
    v5->_icsString = v6;

    v8 = v5;
  }

  return v5;
}

- (BCSCalendarEventData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"icsString"];

  v6 = [(BCSCalendarEventData *)self initWithICSString:v5];
  return v6;
}

@end