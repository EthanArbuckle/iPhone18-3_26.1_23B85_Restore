@interface COSDashboardPairingEventSummary
- (void)setEventValue:(id)value;
@end

@implementation COSDashboardPairingEventSummary

- (void)setEventValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Pairing event summary values must be NSString or NSNumber" userInfo:0];
      objc_exception_throw(v6);
    }
  }

  eventValue = self->_eventValue;
  self->_eventValue = valueCopy;
}

@end