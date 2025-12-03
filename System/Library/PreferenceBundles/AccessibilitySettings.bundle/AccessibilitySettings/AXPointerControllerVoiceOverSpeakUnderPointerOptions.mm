@interface AXPointerControllerVoiceOverSpeakUnderPointerOptions
- (id)localizedTextForValue:(double)value;
@end

@implementation AXPointerControllerVoiceOverSpeakUnderPointerOptions

- (id)localizedTextForValue:(double)value
{
  v3 = [NSNumber numberWithDouble:value];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end