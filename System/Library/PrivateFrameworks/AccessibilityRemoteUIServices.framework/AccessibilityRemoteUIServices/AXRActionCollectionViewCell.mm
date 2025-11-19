@interface AXRActionCollectionViewCell
- (AXRActionCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)largeContentImageInsets;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 title:(id)a4;
@end

@implementation AXRActionCollectionViewCell

- (AXRActionCollectionViewCell)initWithFrame:(CGRect)a3
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = AXRActionCollectionViewCell;
  v3 = [(AXRActionCollectionViewCell *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setContentMode:1];
    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v7 = [(AXRActionCollectionViewCell *)v3 contentView];
    [v7 setBackgroundColor:v6];

    v8 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UIImageView *)v3->_imageView setTintColor:v8];

    v9 = [(AXRActionCollectionViewCell *)v3 contentView];
    [v9 addSubview:v3->_imageView];

    v22 = MEMORY[0x277CCAAD0];
    v26 = [(UIImageView *)v3->_imageView centerXAnchor];
    v27 = [(AXRActionCollectionViewCell *)v3 contentView];
    v25 = [v27 centerXAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v29[0] = v24;
    v23 = [(UIImageView *)v3->_imageView centerYAnchor];
    v10 = [(AXRActionCollectionViewCell *)v3 contentView];
    v11 = [v10 centerYAnchor];
    v12 = [v23 constraintEqualToAnchor:v11];
    v29[1] = v12;
    v13 = [(UIImageView *)v3->_imageView heightAnchor];
    v14 = [v13 constraintEqualToConstant:40.0];
    v29[2] = v14;
    v15 = [(UIImageView *)v3->_imageView widthAnchor];
    v16 = [(UIImageView *)v3->_imageView heightAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v29[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v22 activateConstraints:v18];

    v19 = objc_opt_new();
    [(AXRActionCollectionViewCell *)v3 addInteraction:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = AXRActionCollectionViewCell;
  [(AXRActionCollectionViewCell *)&v3 prepareForReuse];
  [(UIImageView *)self->_imageView setImage:0];
  [(AXRActionCollectionViewCell *)self setAccessibilityLabel:0];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = AXRActionCollectionViewCell;
  [(AXRActionCollectionViewCell *)&v6 layoutSubviews];
  v3 = [(AXRActionCollectionViewCell *)self contentView];
  [v3 bounds];
  v4 = CGRectGetHeight(v7) * 0.5;
  v5 = [(AXRActionCollectionViewCell *)self contentView];
  [v5 _setCornerRadius:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v20.receiver = self;
  v20.super_class = AXRActionCollectionViewCell;
  [(AXRActionCollectionViewCell *)&v20 setHighlighted:?];
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, 1.0, 1.0);
  if (v3)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v18 = v19;
    v15 = __46__AXRActionCollectionViewCell_setHighlighted___block_invoke;
    v16 = &unk_278BED650;
    v17 = self;
    v5 = 0.165000007;
    v6 = &v13;
  }

  else
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v12 = v19;
    v9 = __46__AXRActionCollectionViewCell_setHighlighted___block_invoke_2;
    v10 = &unk_278BED650;
    v11 = self;
    v5 = 0.25;
    v6 = &v7;
  }

  [MEMORY[0x277D75D18] animateWithDuration:6 delay:v6 options:0 animations:v5 completion:{0.0, v7, v8, v9, v10, v11, *&v12.a, *&v12.c, *&v12.tx, v13, v14, v15, v16, v17, *&v18.a, *&v18.c, *&v18.d, *&v18.ty}];
}

uint64_t __46__AXRActionCollectionViewCell_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  *&v5.a = *(a1 + 40);
  *&v5.c = v3;
  *&v5.tx = *(a1 + 72);
  CGAffineTransformScale(&v6, &v5, 0.970000029, 0.970000029);
  [v2 setTransform:&v6];
  return [*(a1 + 32) setAlpha:0.5];
}

uint64_t __46__AXRActionCollectionViewCell_setHighlighted___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

- (void)setImage:(id)a3 title:(id)a4
{
  imageView = self->_imageView;
  v7 = a4;
  [(UIImageView *)imageView setImage:a3];
  [(AXRActionCollectionViewCell *)self setAccessibilityLabel:v7];
}

- (UIEdgeInsets)largeContentImageInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end