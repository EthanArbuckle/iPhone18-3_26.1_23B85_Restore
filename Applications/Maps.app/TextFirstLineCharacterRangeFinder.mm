@interface TextFirstLineCharacterRangeFinder
- (CGSize)textSize;
- (NSArray)lineFragments;
- (NSAttributedString)attributedText;
- (NSTextContainer)textContainer;
- (NSTextContentStorage)contentStorage;
- (NSTextLayoutManager)layoutManager;
- (id)attributedStringForLineFragment:(id)fragment;
- (void)setAttributedText:(id)text;
- (void)setTextSize:(CGSize)size;
@end

@implementation TextFirstLineCharacterRangeFinder

- (NSTextContainer)textContainer
{
  textContainer = self->_textContainer;
  if (!textContainer)
  {
    v4 = [[NSTextContainer alloc] initWithSize:{CGSizeZero.width, CGSizeZero.height}];
    v5 = self->_textContainer;
    self->_textContainer = v4;

    [(NSTextContainer *)self->_textContainer setLineFragmentPadding:0.0];
    v6 = self->_textContainer;
    layoutManager = [(TextFirstLineCharacterRangeFinder *)self layoutManager];
    [layoutManager setTextContainer:v6];

    textContainer = self->_textContainer;
  }

  return textContainer;
}

- (NSArray)lineFragments
{
  contentStorage = [(TextFirstLineCharacterRangeFinder *)self contentStorage];
  attributedString = [(NSArray *)contentStorage attributedString];
  if (attributedString)
  {
    lineFragments = self->_lineFragments;

    if (lineFragments)
    {
      goto LABEL_5;
    }

    v6 = objc_opt_new();
    layoutManager = [(TextFirstLineCharacterRangeFinder *)self layoutManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100ACA97C;
    v13[3] = &unk_1016373A0;
    v13[4] = self;
    v8 = v6;
    v14 = v8;
    v9 = [layoutManager enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v13];

    v10 = self->_lineFragments;
    self->_lineFragments = v8;
    contentStorage = v8;
  }

LABEL_5:
  v11 = self->_lineFragments;

  return v11;
}

- (NSTextContentStorage)contentStorage
{
  contentStorage = self->_contentStorage;
  if (!contentStorage)
  {
    v4 = objc_opt_new();
    v5 = self->_contentStorage;
    self->_contentStorage = v4;

    v6 = self->_contentStorage;
    layoutManager = [(TextFirstLineCharacterRangeFinder *)self layoutManager];
    [(NSTextContentStorage *)v6 addTextLayoutManager:layoutManager];

    contentStorage = self->_contentStorage;
  }

  return contentStorage;
}

- (id)attributedStringForLineFragment:(id)fragment
{
  contentStorage = self->_contentStorage;
  textElement = [fragment textElement];
  v5 = [(NSTextContentStorage *)contentStorage attributedStringForTextElement:textElement];

  return v5;
}

- (NSTextLayoutManager)layoutManager
{
  layoutManager = self->_layoutManager;
  if (!layoutManager)
  {
    v4 = objc_opt_new();
    v5 = self->_layoutManager;
    self->_layoutManager = v4;

    layoutManager = self->_layoutManager;
  }

  return layoutManager;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  contentStorage = [(TextFirstLineCharacterRangeFinder *)self contentStorage];
  attributedString = [contentStorage attributedString];
  v6 = [attributedString isEqual:textCopy];

  if ((v6 & 1) == 0)
  {
    lineFragments = self->_lineFragments;
    self->_lineFragments = 0;

    contentStorage2 = [(TextFirstLineCharacterRangeFinder *)self contentStorage];
    [contentStorage2 setAttributedString:textCopy];
  }
}

- (NSAttributedString)attributedText
{
  contentStorage = [(TextFirstLineCharacterRangeFinder *)self contentStorage];
  attributedString = [contentStorage attributedString];

  return attributedString;
}

- (void)setTextSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  textContainer = [(TextFirstLineCharacterRangeFinder *)self textContainer];
  [textContainer size];
  v8 = v7;
  v10 = v9;

  if (v8 != width || v10 != height)
  {
    lineFragments = self->_lineFragments;
    self->_lineFragments = 0;

    textContainer2 = [(TextFirstLineCharacterRangeFinder *)self textContainer];
    [textContainer2 setSize:{width, height}];
  }
}

- (CGSize)textSize
{
  textContainer = [(TextFirstLineCharacterRangeFinder *)self textContainer];
  [textContainer size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end