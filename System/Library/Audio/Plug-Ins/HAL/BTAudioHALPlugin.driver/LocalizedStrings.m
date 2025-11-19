@interface LocalizedStrings
- (LocalizedStrings)init;
- (void)dealloc;
@end

@implementation LocalizedStrings

- (LocalizedStrings)init
{
  v4.receiver = self;
  v4.super_class = LocalizedStrings;
  v2 = [(LocalizedStrings *)&v4 init];
  if (v2)
  {
    v2->_spatialFormat = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SPATIAL_AUDIO", &stru_B24D0, @"SpatialAudio"];
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = LocalizedStrings;
  [(LocalizedStrings *)&v2 dealloc];
}

@end