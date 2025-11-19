@interface TextFirstLineCharacterRangeFinder
- (CGSize)textSize;
- (NSArray)lineFragments;
- (NSAttributedString)attributedText;
- (NSTextContainer)textContainer;
- (NSTextContentStorage)contentStorage;
- (NSTextLayoutManager)layoutManager;
- (id)attributedStringForLineFragment:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setTextSize:(CGSize)a3;
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
    v7 = [(TextFirstLineCharacterRangeFinder *)self layoutManager];
    [v7 setTextContainer:v6];

    textContainer = self->_textContainer;
  }

  return textContainer;
}

- (NSArray)lineFragments
{
  v3 = [(TextFirstLineCharacterRangeFinder *)self contentStorage];
  v4 = [(NSArray *)v3 attributedString];
  if (v4)
  {
    lineFragments = self->_lineFragments;

    if (lineFragments)
    {
      goto LABEL_5;
    }

    v6 = objc_opt_new();
    v7 = [(TextFirstLineCharacterRangeFinder *)self layoutManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100ACA97C;
    v13[3] = &unk_1016373A0;
    v13[4] = self;
    v8 = v6;
    v14 = v8;
    v9 = [v7 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v13];

    v10 = self->_lineFragments;
    self->_lineFragments = v8;
    v3 = v8;
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
    v7 = [(TextFirstLineCharacterRangeFinder *)self layoutManager];
    [(NSTextContentStorage *)v6 addTextLayoutManager:v7];

    contentStorage = self->_contentStorage;
  }

  return contentStorage;
}

- (id)attributedStringForLineFragment:(id)a3
{
  contentStorage = self->_contentStorage;
  v4 = [a3 textElement];
  v5 = [(NSTextContentStorage *)contentStorage attributedStringForTextElement:v4];

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

- (void)setAttributedText:(id)a3
{
  v9 = a3;
  v4 = [(TextFirstLineCharacterRangeFinder *)self contentStorage];
  v5 = [v4 attributedString];
  v6 = [v5 isEqual:v9];

  if ((v6 & 1) == 0)
  {
    lineFragments = self->_lineFragments;
    self->_lineFragments = 0;

    v8 = [(TextFirstLineCharacterRangeFinder *)self contentStorage];
    [v8 setAttributedString:v9];
  }
}

- (NSAttributedString)attributedText
{
  v2 = [(TextFirstLineCharacterRangeFinder *)self contentStorage];
  v3 = [v2 attributedString];

  return v3;
}

- (void)setTextSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TextFirstLineCharacterRangeFinder *)self textContainer];
  [v6 size];
  v8 = v7;
  v10 = v9;

  if (v8 != width || v10 != height)
  {
    lineFragments = self->_lineFragments;
    self->_lineFragments = 0;

    v13 = [(TextFirstLineCharacterRangeFinder *)self textContainer];
    [v13 setSize:{width, height}];
  }
}

- (CGSize)textSize
{
  v2 = [(TextFirstLineCharacterRangeFinder *)self textContainer];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end