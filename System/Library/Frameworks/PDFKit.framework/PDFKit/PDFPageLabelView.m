@interface PDFPageLabelView
- (PDFPageLabelView)initWithFrame:(CGRect)a3;
- (void)_startFade;
- (void)setCurrentPageNumber:(unint64_t)a3 forPageCount:(unint64_t)a4;
- (void)updateEffect;
@end

@implementation PDFPageLabelView

- (PDFPageLabelView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v30.receiver = self;
  v30.super_class = PDFPageLabelView;
  v5 = [(PDFPageLabelView *)&v30 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = objc_alloc_init(PDFPageLabelViewPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    [(PDFPageLabelView *)v5 setUserInteractionEnabled:0];
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    [(PDFPageLabelView *)v5 setAlpha:0.0];
    v10 = [(PDFPageLabelView *)v5 layer];
    [v10 setAllowsGroupOpacity:0];

    v11 = [(PDFPageLabelView *)v5 layer];
    [v11 setAllowsGroupBlending:0];

    v12 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2020];
    [v12 setScale:0.5];
    v13 = [objc_alloc(MEMORY[0x1E69DD370]) initWithSettings:v12];
    v14 = v5->_private;
    backdropView = v14->backdropView;
    v14->backdropView = v13;

    [(_UIBackdropView *)v5->_private->backdropView setFrame:v8, v9, width, height];
    [(_UIBackdropView *)v5->_private->backdropView _setCornerRadius:7.0];
    [(PDFPageLabelView *)v5 addSubview:v5->_private->backdropView];
    v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, width, height}];
    v17 = v5->_private;
    label = v17->label;
    v17->label = v16;

    [(UILabel *)v5->_private->label setOpaque:0];
    [(UILabel *)v5->_private->label setBackgroundColor:0];
    [(UILabel *)v5->_private->label setTextAlignment:1];
    v19 = v5->_private->label;
    v20 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:16.0];
    [(UILabel *)v19 setFont:v20];

    v21 = v5->_private->label;
    v22 = [MEMORY[0x1E69DC888] blackColor];
    [(UILabel *)v21 setTextColor:v22];

    [(UILabel *)v5->_private->label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v5->_private->label setAlpha:0.4];
    v23 = [(UILabel *)v5->_private->label layer];
    v24 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    [v23 setCompositingFilter:v24];

    v25 = [(_UIBackdropView *)v5->_private->backdropView contentView];
    [v25 addSubview:v5->_private->label];

    v26 = [[PDFTimer alloc] initWithThrottleDelay:sel__startFade forSelector:v5 forTarget:1.5];
    v27 = v5->_private;
    visibilityTimer = v27->visibilityTimer;
    v27->visibilityTimer = v26;
  }

  return v5;
}

- (void)setCurrentPageNumber:(unint64_t)a3 forPageCount:(unint64_t)a4
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = PDFKitLocalizedString(@"%d of %d");
  v9 = [v7 stringWithFormat:v8, a3, a4];

  [(UILabel *)self->_private->label setText:v9];
  [(PDFPageLabelView *)self updateEffect];
}

- (void)updateEffect
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__PDFPageLabelView_updateEffect__block_invoke;
  v3[3] = &unk_1E8150990;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.1];
  [(PDFTimer *)self->_private->visibilityTimer cancel];
  [(PDFTimer *)self->_private->visibilityTimer update];
}

- (void)_startFade
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __30__PDFPageLabelView__startFade__block_invoke;
  v2[3] = &unk_1E8150990;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.75];
}

@end