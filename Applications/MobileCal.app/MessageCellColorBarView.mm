@interface MessageCellColorBarView
- (MessageCellColorBarView)init;
- (void)setColor:(id)color;
@end

@implementation MessageCellColorBarView

- (MessageCellColorBarView)init
{
  v8.receiver = self;
  v8.super_class = MessageCellColorBarView;
  v2 = [(MessageCellColorBarView *)&v8 init];
  if (v2)
  {
    CalRoundToScreenScale();
    v4 = v3 * 0.5;
    layer = [(MessageCellColorBarView *)v2 layer];
    [layer setCornerRadius:v4];

    layer2 = [(MessageCellColorBarView *)v2 layer];
    [layer2 setMasksToBounds:1];
  }

  return v2;
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);
  colorCopy = color;
  v6.receiver = self;
  v6.super_class = MessageCellColorBarView;
  [(MessageCellColorBarView *)&v6 setBackgroundColor:colorCopy];
}

@end