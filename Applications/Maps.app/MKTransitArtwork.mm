@interface MKTransitArtwork
+ (id)_shieldWithType:(int64_t)type hexColorString:(id)string accessibilityText:(id)text;
@end

@implementation MKTransitArtwork

+ (id)_shieldWithType:(int64_t)type hexColorString:(id)string accessibilityText:(id)text
{
  textCopy = text;
  stringCopy = string;
  v9 = [[MKTransitShield alloc] initWithShieldType:type text:0 color:stringCopy];

  v10 = [MKTransitArtwork artworkWithShield:v9 accessibilityText:textCopy];

  return v10;
}

@end