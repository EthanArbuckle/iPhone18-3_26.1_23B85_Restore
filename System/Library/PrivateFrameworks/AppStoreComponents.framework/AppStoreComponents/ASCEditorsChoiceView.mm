@interface ASCEditorsChoiceView
+ (id)editorsChoiceFont;
- (ASCEditorsChoiceView)initWithCoder:(id)coder;
- (ASCEditorsChoiceView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation ASCEditorsChoiceView

+ (id)editorsChoiceFont
{
  if (editorsChoiceFont_onceToken != -1)
  {
    +[ASCEditorsChoiceView editorsChoiceFont];
  }

  v3 = editorsChoiceFont_editorsChoiceFont;

  return v3;
}

uint64_t __41__ASCEditorsChoiceView_editorsChoiceFont__block_invoke()
{
  editorsChoiceFont_editorsChoiceFont = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74418]];

  return MEMORY[0x2821F96F8]();
}

- (ASCEditorsChoiceView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = ASCEditorsChoiceView;
  v3 = [(ASCEditorsChoiceView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASCEditorsChoiceView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ASCEditorsChoiceView *)v4 setBackgroundColor:clearColor];

    [(ASCEditorsChoiceView *)v4 setContentMode:3];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    v8 = v4->_titleLabel;
    grayColor = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v8 setTextColor:grayColor];

    v10 = v4->_titleLabel;
    v11 = +[ASCEditorsChoiceView editorsChoiceText];
    [(UILabel *)v10 setText:v11];

    v12 = v4->_titleLabel;
    v13 = +[ASCEditorsChoiceView editorsChoiceFont];
    [(UILabel *)v12 setFont:v13];

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UILabel *)v4->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(ASCEditorsChoiceView *)v4 addSubview:v4->_titleLabel];
  }

  return v4;
}

- (ASCEditorsChoiceView)initWithCoder:(id)coder
{
  [(ASCEditorsChoiceView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [ASCEditorsChoiceView leftLaurel:fits.width];
  v5 = +[ASCEditorsChoiceView rightLaurel];
  +[ASCEditorsChoiceView laurelPadding];
  v7 = v6;
  [v4 size];
  v9 = v8;
  [v5 size];
  v11 = v9 + v7 * 2.0 + v10;
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  v13 = v11 + v12;
  [v4 size];
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = ASCEditorsChoiceView;
  [(ASCEditorsChoiceView *)&v20 layoutSubviews];
  v3 = +[ASCEditorsChoiceView leftLaurel];
  v4 = +[ASCEditorsChoiceView rightLaurel];
  +[ASCEditorsChoiceView laurelPadding];
  v6 = v5;
  [(ASCEditorsChoiceView *)self bounds];
  v8 = v7;
  [v3 size];
  v10 = v9 + v6 * 2.0;
  [v4 size];
  v12 = v8 - (v10 + v11);
  titleLabel = self->_titleLabel;
  [(ASCEditorsChoiceView *)self bounds];
  [(UILabel *)titleLabel sizeThatFits:v12, v14];
  v16 = v15;
  [v3 size];
  v18 = v6 + v17;
  [(ASCEditorsChoiceView *)self bounds];
  [(UILabel *)self->_titleLabel setFrame:v18, v19 * 0.5 - v16 * 0.5, v12, v16];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v22 = +[ASCEditorsChoiceView leftLaurel];
  [v22 size];
  v8 = v7;
  [v22 size];
  v10 = v8 * v9;
  [v22 size];
  v12 = v10 / v11;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  [v22 drawInRect:{MinX, CGRectGetMidY(v25) - v8 * 0.5, v12, v8}];
  v14 = +[ASCEditorsChoiceView rightLaurel];
  [v14 size];
  v16 = v15;
  [v14 size];
  v18 = v16 * v17;
  [v14 size];
  v20 = v18 / v19;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v21 = CGRectGetMaxX(v26) - v20;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  [v14 drawInRect:{v21, CGRectGetMidY(v27) - v16 * 0.5, v20, v16}];
}

@end