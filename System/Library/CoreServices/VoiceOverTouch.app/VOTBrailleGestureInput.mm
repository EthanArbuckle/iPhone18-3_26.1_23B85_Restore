@interface VOTBrailleGestureInput
- (id)description;
@end

@implementation VOTBrailleGestureInput

- (id)description
{
  v8.receiver = self;
  v8.super_class = VOTBrailleGestureInput;
  v3 = [(VOTBrailleGestureInput *)&v8 description];
  v4 = [(VOTBrailleGestureInput *)self seriesOfTouchPoints];
  v5 = [(VOTBrailleGestureInput *)self languageCode];
  v6 = [v3 stringByAppendingFormat:@" - touch points: %@, language code: %@", v4, v5];

  return v6;
}

@end