@interface UIImage(TransitRealTimeExtras)
+ (id)_mapkit_liveTransitIndicatorImageApplyingColorForStatus:()TransitRealTimeExtras darkMode:;
+ (id)_mapkit_liveTransitIndicatorImageUsingDarkMode:()TransitRealTimeExtras;
@end

@implementation UIImage(TransitRealTimeExtras)

+ (id)_mapkit_liveTransitIndicatorImageUsingDarkMode:()TransitRealTimeExtras
{
  v4 = [[MKTransitShield alloc] initWithShieldType:320002 text:0 color:0];
  v5 = [MKTransitArtwork artworkWithShield:v4 accessibilityText:0];
  if (v5)
  {
    v6 = +[MKArtworkDataSourceCache sharedInstance];
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
    v9 = v8;

    v10 = [v6 imageForArtwork:v5 size:8 featureType:0 scale:a3 nightMode:v9];
    if (MKTransitArtworkDataSourceAllowMasking(v5))
    {
      v11 = [v10 imageWithRenderingMode:2];

      v10 = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_mapkit_liveTransitIndicatorImageApplyingColorForStatus:()TransitRealTimeExtras darkMode:
{
  v5 = [a1 _mapkit_liveTransitIndicatorImageUsingDarkMode:a4];
  v6 = MKTransitLiveDepartureColorForLiveStatus(a3);
  v7 = [v5 _flatImageWithColor:v6];

  return v7;
}

@end