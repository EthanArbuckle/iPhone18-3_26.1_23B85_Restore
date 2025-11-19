@interface MessageCellColorBarView
- (MessageCellColorBarView)init;
- (void)setColor:(id)a3;
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
    v5 = [(MessageCellColorBarView *)v2 layer];
    [v5 setCornerRadius:v4];

    v6 = [(MessageCellColorBarView *)v2 layer];
    [v6 setMasksToBounds:1];
  }

  return v2;
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);
  v5 = a3;
  v6.receiver = self;
  v6.super_class = MessageCellColorBarView;
  [(MessageCellColorBarView *)&v6 setBackgroundColor:v5];
}

@end