@interface ASCExpandableLabel
- (ASCExpandableLabel)initWithFrame:(CGRect)a3;
- (BOOL)accessibilityActivate;
- (BOOL)isTruncated;
- (BOOL)shouldHideMoreButton;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
@end

@implementation ASCExpandableLabel

- (ASCExpandableLabel)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = ASCExpandableLabel;
  v3 = [(ASCSkeletonLabel *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [ASCExpandableLabelTruncationButton alloc];
    v5 = [(ASCExpandableLabelTruncationButton *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    moreButton = v3->_moreButton;
    v3->_moreButton = v5;

    [(ASCExpandableLabelTruncationButton *)v3->_moreButton setHidden:1];
    [(ASCExpandableLabel *)v3 addSubview:v3->_moreButton];
  }

  return v3;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = ASCExpandableLabel;
  [(ASCExpandableLabel *)&v38 layoutSubviews];
  v3 = [(ASCExpandableLabel *)self shouldHideMoreButton];
  v4 = [(ASCExpandableLabel *)self moreButton];
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    [(ASCExpandableLabel *)self bounds];
    [v5 sizeThatFits:{v7, v8}];
    v10 = v9;
    v12 = v11;

    [(ASCExpandableLabel *)self bounds];
    v14 = v13;
    [(ASCExpandableLabel *)self bounds];
    v16 = v14 + v15 - v10;
    [(ASCExpandableLabel *)self bounds];
    v18 = v17;
    [(ASCExpandableLabel *)self bounds];
    v20 = v18 + v19 - v12;
    v21 = [(ASCExpandableLabel *)self languageAwareString];
    v22 = [v21 writingDirectionOfLine:-[ASCExpandableLabel numberOfLines](self maximumLinesShown:"numberOfLines") - 1 withWidth:-[ASCExpandableLabel numberOfLines](self lineBreakMode:"numberOfLines") cacheLayoutInfo:{-[ASCExpandableLabel lineBreakMode](self, "lineBreakMode"), 1, v10}];

    [(ASCExpandableLabel *)self bounds];
    [__ASCLayoutProxy rectWithLayoutDirectionForRect:v22 layoutDirection:v16 relativeTo:v20, v10, v12, v23, v24, v25, v26];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = [(ASCExpandableLabel *)self moreButton];
    [v35 setFrame:{v28, v30, v32, v34}];

    v36 = v22 == 1;
    v37 = [(ASCExpandableLabel *)self moreButton];
    [v37 setIsRTL:v36];

    v4 = [(ASCExpandableLabel *)self moreButton];
    v5 = v4;
    v6 = 0;
  }

  [v4 setHidden:v6];
}

- (void)setText:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASCExpandableLabel;
  v4 = a3;
  [(ASCExpandableLabel *)&v7 setText:v4];
  v5 = objc_alloc(MEMORY[0x277D22A88]);
  v6 = [v5 initWithString:v4 attributes:0 baseParagraphStyle:0 keepStatisticsOnLanguageComponents:{0, v7.receiver, v7.super_class}];

  [(ASCExpandableLabel *)self setLanguageAwareString:v6];
}

- (void)setAttributedText:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASCExpandableLabel;
  v4 = a3;
  [(ASCExpandableLabel *)&v7 setAttributedText:v4];
  v5 = objc_alloc(MEMORY[0x277D22A88]);
  v6 = [v5 initWithAttributedString:v4 baseParagraphStyle:0 keepStatisticsOnLanguageComponents:{0, v7.receiver, v7.super_class}];

  [(ASCExpandableLabel *)self setLanguageAwareString:v6];
}

- (void)setFont:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASCExpandableLabel;
  v4 = a3;
  [(ASCExpandableLabel *)&v6 setFont:v4];
  v5 = [(ASCExpandableLabel *)self moreButton:v6.receiver];
  [v5 setFont:v4];
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASCExpandableLabel;
  v4 = a3;
  [(ASCExpandableLabel *)&v6 setBackgroundColor:v4];
  v5 = [(ASCExpandableLabel *)self moreButton:v6.receiver];
  [v5 setGradientColor:v4];
}

- (BOOL)shouldHideMoreButton
{
  v3 = [(ASCExpandableLabel *)self text];
  if ([v3 length])
  {
    v4 = [(ASCExpandableLabel *)self attributedText];
    if ([v4 length])
    {
      v5 = ![(ASCExpandableLabel *)self isTruncated];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)isTruncated
{
  [(ASCExpandableLabel *)self bounds];
  v4 = v3;
  [(ASCExpandableLabel *)self bounds];
  v6 = v5;
  [(ASCExpandableLabel *)self bounds];
  [(ASCExpandableLabel *)self textRectForBounds:0 limitedToNumberOfLines:v4, v6];
  v8 = v7;
  [(ASCExpandableLabel *)self bounds];
  return v9 < v8;
}

- (BOOL)accessibilityActivate
{
  v2 = [(ASCExpandableLabel *)self moreButton];
  [v2 sendActionsForControlEvents:64];

  return 1;
}

@end