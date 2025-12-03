@interface PHActionSliderTrackComponentView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation PHActionSliderTrackComponentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PHActionSliderTrackComponentView;
    v5 = [(PHActionSliderTrackComponentView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end