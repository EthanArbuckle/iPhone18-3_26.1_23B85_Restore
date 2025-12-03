@interface _UIContentUnavailableView
- (_UIContentUnavailableView)initWithFrame:(CGRect)frame title:(id)title;
@end

@implementation _UIContentUnavailableView

- (_UIContentUnavailableView)initWithFrame:(CGRect)frame title:(id)title
{
  v4 = [(_UIContentUnavailableView *)self initWithFrame:title title:0 style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(_UIContentUnavailableView *)v4 setVibrantOptions:0];
  }

  return v5;
}

@end