@interface SRGuideDetailPhraseViewCell
+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text;
- (SRGuideDetailPhraseViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SRGuideDetailPhraseViewCell

+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text
{
  height = fits.height;
  width = fits.width;
  textCopy = text;
  _font = [self _font];
  v15[0] = xmmword_1000F6B30;
  v15[1] = unk_1000F6B40;
  v15[2] = xmmword_1000F6B50;
  v16 = 0x4040000000000000;
  [SiriUITextContainerView sizeThatFits:textCopy text:_font font:v15 textContainerStyle:width, height];
  v10 = v9;
  v12 = v11;

  if (v12 >= SiriUIPlatterStyle[26])
  {
    v13 = v12;
  }

  else
  {
    v13 = SiriUIPlatterStyle[26];
  }

  v14 = v10;
  result.height = v13;
  result.width = v14;
  return result;
}

- (SRGuideDetailPhraseViewCell)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = SRGuideDetailPhraseViewCell;
  v3 = [(SRGuideDetailPhraseViewCell *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[SiriUITextContainerView alloc] initWithText:0 visualEffect:0];
    textContainerView = v3->_textContainerView;
    v3->_textContainerView = v4;

    [(SiriUITextContainerView *)v3->_textContainerView setTextAlignment:SiriLanguageTextAlignmentLeft()];
    v6 = v3->_textContainerView;
    _font = [objc_opt_class() _font];
    [(SiriUITextContainerView *)v6 setFont:_font];

    v8 = v3->_textContainerView;
    v13[0] = xmmword_1000F6B30;
    v13[1] = unk_1000F6B40;
    v13[2] = xmmword_1000F6B50;
    v14 = 0x4040000000000000;
    [(SiriUITextContainerView *)v8 setTextContainerStyle:v13];
    v9 = v3->_textContainerView;
    v10 = +[UIColor siriui_blendEffectColor];
    [(SiriUITextContainerView *)v9 setTextColor:v10];

    contentView = [(SRGuideDetailPhraseViewCell *)v3 contentView];
    [contentView addSubview:v3->_textContainerView];

    [(SiriUITextContainerView *)v3->_textContainerView siriui_setBlendEffectEnabled:1];
    [(SRGuideDetailPhraseViewCell *)v3 setKeylineType:0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SRGuideDetailPhraseViewCell;
  [(SRGuideDetailPhraseViewCell *)&v5 layoutSubviews];
  textContainerView = self->_textContainerView;
  contentView = [(SRGuideDetailPhraseViewCell *)self contentView];
  [contentView bounds];
  [(SiriUITextContainerView *)textContainerView setFrame:?];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SRGuideDetailPhraseViewCell;
  [(SRGuideDetailPhraseViewCell *)&v3 prepareForReuse];
  [(SiriUITextContainerView *)self->_textContainerView setText:0];
}

@end