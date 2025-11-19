@interface AAUIiCloudCustomUIView
- (void)setBackgroundColor:(id)a3;
@end

@implementation AAUIiCloudCustomUIView

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(AAUIiCloudCustomUIView *)self lockedColor];

  if (v5)
  {
    v6 = [(AAUIiCloudCustomUIView *)self lockedColor];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  v8.receiver = self;
  v8.super_class = AAUIiCloudCustomUIView;
  [(AAUIiCloudCustomUIView *)&v8 setBackgroundColor:v6];
}

@end