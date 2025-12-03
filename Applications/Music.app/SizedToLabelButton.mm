@interface SizedToLabelButton
- (CGSize)intrinsicContentSize;
- (_TtC5MusicP33_B29993BA797B47F8C660EB2DB95D08BA18SizedToLabelButton)initWithCoder:(id)coder;
@end

@implementation SizedToLabelButton

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  titleLabel = [(SizedToLabelButton *)selfCopy titleLabel];
  if (titleLabel)
  {
    v4 = titleLabel;
    [titleLabel intrinsicContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {

    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC5MusicP33_B29993BA797B47F8C660EB2DB95D08BA18SizedToLabelButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SizedToLabelButton();
  coderCopy = coder;
  v5 = [(SizedToLabelButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end