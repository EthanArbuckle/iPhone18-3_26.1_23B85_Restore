@interface AXPointerControllerVoiceOverSpeakUnderPointerOptions
- (id)localizedTextForValue:(double)a3;
@end

@implementation AXPointerControllerVoiceOverSpeakUnderPointerOptions

- (id)localizedTextForValue:(double)a3
{
  v3 = [NSNumber numberWithDouble:a3];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end