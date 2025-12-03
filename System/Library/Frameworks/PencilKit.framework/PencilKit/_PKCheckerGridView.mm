@interface _PKCheckerGridView
- (_PKCheckerGridView)initWithFrame:(CGRect)frame;
- (_PKCheckerGridView)initWithTileSize:(double)size colorA:(id)a colorB:(id)b;
- (id)_createGridTileImage;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)setColorA:(id)a;
- (void)setColorB:(id)b;
- (void)setTileSize:(double)size;
@end

@implementation _PKCheckerGridView

- (_PKCheckerGridView)initWithFrame:(CGRect)frame
{
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [(_PKCheckerGridView *)self initWithTileSize:blackColor colorA:whiteColor colorB:5.0];

  return v6;
}

- (_PKCheckerGridView)initWithTileSize:(double)size colorA:(id)a colorB:(id)b
{
  aCopy = a;
  bCopy = b;
  v17.receiver = self;
  v17.super_class = _PKCheckerGridView;
  v11 = [(_PKCheckerGridView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    v11->_tileSize = size;
    objc_storeStrong(&v11->_colorA, a);
    objc_storeStrong(&v12->_colorB, b);
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v12->_imageView;
    v12->_imageView = v13;

    [(UIImageView *)v12->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    imageView = [(_PKCheckerGridView *)v12 imageView];
    [(_PKCheckerGridView *)v12 addSubview:imageView];

    [(_PKCheckerGridView *)v12 _updateUI];
  }

  return v12;
}

- (void)setTileSize:(double)size
{
  self->_tileSize = size;
  [(_PKCheckerGridView *)self _updateUI];

  [(_PKCheckerGridView *)self setNeedsLayout];
}

- (void)setColorA:(id)a
{
  objc_storeStrong(&self->_colorA, a);
  [(_PKCheckerGridView *)self _updateUI];

  [(_PKCheckerGridView *)self setNeedsLayout];
}

- (void)setColorB:(id)b
{
  objc_storeStrong(&self->_colorB, b);
  [(_PKCheckerGridView *)self _updateUI];

  [(_PKCheckerGridView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = _PKCheckerGridView;
  [(_PKCheckerGridView *)&v12 layoutSubviews];
  [(_PKCheckerGridView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(_PKCheckerGridView *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];
}

- (void)_updateUI
{
  _createGridTileImage = [(_PKCheckerGridView *)self _createGridTileImage];
  imageView = [(_PKCheckerGridView *)self imageView];
  [imageView setImage:_createGridTileImage];
}

- (id)_createGridTileImage
{
  [(_PKCheckerGridView *)self tileSize];
  UIRoundToViewScale();
  v4 = v3;
  v5 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v4 + v4, v4 + v4}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42___PKCheckerGridView__createGridTileImage__block_invoke;
  v9[3] = &unk_1E82D7A98;
  v9[4] = self;
  *&v9[5] = v4;
  v6 = [v5 imageWithActions:v9];
  v7 = [v6 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v7;
}

@end