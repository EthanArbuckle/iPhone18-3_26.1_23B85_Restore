@interface MKPlaceCardUseSmallerFont
@end

@implementation MKPlaceCardUseSmallerFont

void ___MKPlaceCardUseSmallerFont_block_invoke()
{
  _MKPlaceCardUseSmallerFont_smallerFont = 0;
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 bounds];
  v2 = v1;

  if (v2 <= 320.0)
  {
    _MKPlaceCardUseSmallerFont_smallerFont = 1;
  }
}

@end