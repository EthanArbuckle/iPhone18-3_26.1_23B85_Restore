@interface MKTransitArtwork
+ (id)_shieldWithType:(int64_t)a3 hexColorString:(id)a4 accessibilityText:(id)a5;
@end

@implementation MKTransitArtwork

+ (id)_shieldWithType:(int64_t)a3 hexColorString:(id)a4 accessibilityText:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[MKTransitShield alloc] initWithShieldType:a3 text:0 color:v8];

  v10 = [MKTransitArtwork artworkWithShield:v9 accessibilityText:v7];

  return v10;
}

@end