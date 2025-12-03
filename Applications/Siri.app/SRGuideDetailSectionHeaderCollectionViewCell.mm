@interface SRGuideDetailSectionHeaderCollectionViewCell
+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text;
+ (double)_leadingHorizontalOffsetWithLayoutMargins:(UIEdgeInsets)margins;
+ (double)_trailingHorizontalOffsetWithLayoutMargins:(UIEdgeInsets)margins;
+ (id)_font;
- (SRGuideDetailSectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SRGuideDetailSectionHeaderCollectionViewCell

+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text
{
  height = fits.height;
  width = fits.width;
  textCopy = text;
  _font = [self _font];
  v22[0] = xmmword_10018B8F0;
  v22[1] = unk_10018B900;
  v22[2] = xmmword_10018B910;
  v23 = qword_10018B920;
  [SiriUITextContainerView sizeThatFits:textCopy text:_font font:v22 textContainerStyle:width, height];
  v10 = v9;
  v12 = v11;

  v13 = SiriUIPlatterStyle[31];
  v14 = SiriUIPlatterStyle[32];
  v15 = SiriUIPlatterStyle[33];
  v16 = SiriUIPlatterStyle[34];
  [self _leadingHorizontalOffsetWithLayoutMargins:{v13, v14, v15, v16}];
  v18 = v10 - v17;
  [self _trailingHorizontalOffsetWithLayoutMargins:{v13, v14, v15, v16}];
  v20 = v18 - v19;
  v21 = SiriUIPlatterStyle[26];
  if (v12 >= v21)
  {
    v21 = v12;
  }

  result.height = v21;
  result.width = v20;
  return result;
}

- (SRGuideDetailSectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = SRGuideDetailSectionHeaderCollectionViewCell;
  v3 = [(SRGuideDetailSectionHeaderCollectionViewCell *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = *&UIEdgeInsetsZero.bottom;
    unk_10018B908 = *&UIEdgeInsetsZero.top;
    *(&xmmword_10018B910 + 8) = v4;
    v5 = [[SiriUITextContainerView alloc] initWithText:0];
    textContainerView = v3->_textContainerView;
    v3->_textContainerView = v5;

    [(SiriUITextContainerView *)v3->_textContainerView setTextAlignment:SiriLanguageTextAlignmentLeft()];
    v7 = v3->_textContainerView;
    _font = [objc_opt_class() _font];
    [(SiriUITextContainerView *)v7 setFont:_font];

    v9 = v3->_textContainerView;
    v15[0] = xmmword_10018B8F0;
    v15[1] = unk_10018B900;
    v15[2] = xmmword_10018B910;
    v16 = qword_10018B920;
    [(SiriUITextContainerView *)v9 setTextContainerStyle:v15];
    v10 = v3->_textContainerView;
    v11 = +[UIColor siriui_lightTextColor];
    [(SiriUITextContainerView *)v10 setTextColor:v11];

    contentView = [(SRGuideDetailSectionHeaderCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_textContainerView];

    [(SRGuideDetailSectionHeaderCollectionViewCell *)v3 setKeylineType:3];
    v13 = +[UIColor siriui_lightKeylineColor];
    [(SRGuideDetailSectionHeaderCollectionViewCell *)v3 setKeylineCustomBackgroundColor:v13];
  }

  return v3;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = SRGuideDetailSectionHeaderCollectionViewCell;
  [(SRGuideDetailSectionHeaderCollectionViewCell *)&v14 layoutSubviews];
  v3 = objc_opt_class();
  v4 = SiriUIPlatterStyle[31];
  v5 = SiriUIPlatterStyle[32];
  v6 = SiriUIPlatterStyle[33];
  v7 = SiriUIPlatterStyle[34];
  [v3 _leadingHorizontalOffsetWithLayoutMargins:{v4, v5, v6, v7}];
  v9 = v8;
  [objc_opt_class() _trailingHorizontalOffsetWithLayoutMargins:{v4, v5, v6, v7}];
  v11 = v10;
  textContainerView = self->_textContainerView;
  [(SRGuideDetailSectionHeaderCollectionViewCell *)self bounds];
  v13 = CGRectGetWidth(v15) - v9 - v11;
  [(SRGuideDetailSectionHeaderCollectionViewCell *)self bounds];
  [(SiriUITextContainerView *)textContainerView setFrame:v9, 0.0, v13, CGRectGetHeight(v16)];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SRGuideDetailSectionHeaderCollectionViewCell;
  [(SRGuideDetailSectionHeaderCollectionViewCell *)&v3 prepareForReuse];
  [(SiriUITextContainerView *)self->_textContainerView setText:0];
}

+ (id)_font
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v5 = [UIFont fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (double)_leadingHorizontalOffsetWithLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  left = margins.left;
  if (SiriUISystemLanguageIsRTL())
  {
    return left;
  }

  else
  {
    return right;
  }
}

+ (double)_trailingHorizontalOffsetWithLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  left = margins.left;
  if (SiriUISystemLanguageIsRTL())
  {
    return right;
  }

  else
  {
    return left;
  }
}

@end