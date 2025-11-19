@interface GridItemButtonCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setButtonSubtitle:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)tintColorDidChange;
@end

@implementation GridItemButtonCell

- (void)setButtonTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_AB92A0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle);
  v7 = *(self + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle);
  v8 = *(self + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle + 8);
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_262F1C(v7, v8);
}

- (void)setButtonSubtitle:(id)a3
{
  if (a3)
  {
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_263108(v4, v6);
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(GridItemButtonCell *)&v3 tintColorDidChange];
  sub_263DA8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_263434();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v9.receiver = *(self + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton);
  v9.super_class = type metadata accessor for SubtitledButton();
  [(GridItemButtonCell *)&v9 sizeThatFits:width, height];
  v6 = 50.0;
  if (v5 > 50.0)
  {
    v6 = v5;
  }

  v7 = v6 + 24.0;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

@end