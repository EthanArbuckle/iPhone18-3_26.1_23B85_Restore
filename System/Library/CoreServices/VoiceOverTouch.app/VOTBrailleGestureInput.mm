@interface VOTBrailleGestureInput
- (id)description;
@end

@implementation VOTBrailleGestureInput

- (id)description
{
  v8.receiver = self;
  v8.super_class = VOTBrailleGestureInput;
  v3 = [(VOTBrailleGestureInput *)&v8 description];
  seriesOfTouchPoints = [(VOTBrailleGestureInput *)self seriesOfTouchPoints];
  languageCode = [(VOTBrailleGestureInput *)self languageCode];
  v6 = [v3 stringByAppendingFormat:@" - touch points: %@, language code: %@", seriesOfTouchPoints, languageCode];

  return v6;
}

@end