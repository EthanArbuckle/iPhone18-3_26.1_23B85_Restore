@interface _SFFindOnPageInputBar
- (CGSize)intrinsicContentSize;
- (_SFFindOnPageInputBar)initWithFrame:(CGRect)frame;
- (float)contentCompressionResistancePriorityForAxis:(int64_t)axis;
@end

@implementation _SFFindOnPageInputBar

- (_SFFindOnPageInputBar)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _SFFindOnPageInputBar;
  v3 = [(_SFFindOnPageInputBar *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SFFindOnPageInputBar *)v3 setSearchBarStyle:2];
    [(_SFFindOnPageInputBar *)v4 setAutocorrectionType:1];
    [(_SFFindOnPageInputBar *)v4 setAutocapitalizationType:0];
    [(_SFFindOnPageInputBar *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    searchField = [(_SFFindOnPageInputBar *)v4 searchField];
    [searchField setDisablePrediction:1];

    v6 = v4;
  }

  return v4;
}

- (float)contentCompressionResistancePriorityForAxis:(int64_t)axis
{
  if (axis || (_SFDeviceIsPad() & 1) == 0)
  {
    return 250.0;
  }

  else
  {
    return 750.0;
  }
}

- (CGSize)intrinsicContentSize
{
  IsPad = _SFDeviceIsPad();
  v3 = 9999.0;
  if (IsPad)
  {
    v3 = 660.0;
  }

  v4 = 44.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end