@interface MusicPageHeaderPlayButton
- (BOOL)isHighlighted;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation MusicPageHeaderPlayButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_469B8();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_46AC8();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PageHeaderPlayButton();
  return [(MusicPageHeaderPlayButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_46DDC(a3);
}

@end