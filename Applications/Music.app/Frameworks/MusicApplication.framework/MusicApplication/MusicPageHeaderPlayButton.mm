@interface MusicPageHeaderPlayButton
- (BOOL)isHighlighted;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MusicPageHeaderPlayButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
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
  selfCopy = self;
  sub_46AC8();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PageHeaderPlayButton();
  return [(MusicPageHeaderPlayButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_46DDC(highlighted);
}

@end