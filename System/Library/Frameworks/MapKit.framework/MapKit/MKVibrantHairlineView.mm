@interface MKVibrantHairlineView
- (MKVibrantHairlineView)initWithFrame:(CGRect)frame;
@end

@implementation MKVibrantHairlineView

- (MKVibrantHairlineView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MKVibrantHairlineView;
  v3 = [(MKVibrantView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    contentView = [(MKVibrantHairlineView *)v3 contentView];
    [contentView setBackgroundColor:v4];

    [(MKVibrantView *)v3 setStyle:7];
  }

  return v3;
}

@end