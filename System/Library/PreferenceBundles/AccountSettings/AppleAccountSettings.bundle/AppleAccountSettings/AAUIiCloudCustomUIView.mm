@interface AAUIiCloudCustomUIView
- (void)setBackgroundColor:(id)color;
@end

@implementation AAUIiCloudCustomUIView

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  lockedColor = [(AAUIiCloudCustomUIView *)self lockedColor];

  if (lockedColor)
  {
    lockedColor2 = [(AAUIiCloudCustomUIView *)self lockedColor];
  }

  else
  {
    lockedColor2 = colorCopy;
  }

  v7 = lockedColor2;
  v8.receiver = self;
  v8.super_class = AAUIiCloudCustomUIView;
  [(AAUIiCloudCustomUIView *)&v8 setBackgroundColor:lockedColor2];
}

@end