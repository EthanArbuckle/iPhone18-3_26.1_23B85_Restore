@interface CNRadiantShadowImageView
- (CNRadiantShadowImageView)init;
- (void)applyAffineTransform;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)updateLayerFilters;
@end

@implementation CNRadiantShadowImageView

- (void)applyAffineTransform
{
  [(CNRadiantShadowImageView *)self frame];
  v4 = v3 * 0.015;
  [(CNRadiantShadowImageView *)self frame];
  v6 = v5 * 0.015;
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, 1.05, 1.05);
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeTranslation(&v12, v6, v4);
  t1 = v13;
  memset(&v11, 0, sizeof(v11));
  t2 = v12;
  CGAffineTransformConcat(&v11, &t1, &t2);
  v8 = v11;
  layer = [(CNRadiantShadowImageView *)self layer];
  t1 = v8;
  [layer setAffineTransform:&t1];
}

- (void)updateLayerFilters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v4 setValue:@"low" forKeyPath:*MEMORY[0x1E6979BA0]];
  [v4 setValue:&unk_1F0D4B3A8 forKeyPath:*MEMORY[0x1E6979BA8]];
  v5 = MEMORY[0x1E695E110];
  [v4 setValue:MEMORY[0x1E695E110] forKeyPath:*MEMORY[0x1E6979B48]];
  [v4 setValue:v5 forKeyPath:*MEMORY[0x1E6979B78]];
  [v4 setValue:v5 forKeyPath:*MEMORY[0x1E6979AC8]];
  [v4 setValue:v5 forKeyPath:*MEMORY[0x1E6979B68]];
  [v3 addObject:v4];
  v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
  [v6 setValue:&unk_1F0D4B3B8 forKeyPath:*MEMORY[0x1E6979990]];
  [v3 addObject:v6];

  v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
  v11[0] = xmmword_199E43D80;
  v11[1] = xmmword_199E43D90;
  v11[2] = xmmword_199E43DA0;
  v11[3] = xmmword_199E43DB0;
  v11[4] = xmmword_199E3CCE0;
  v8 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v11];
  [v7 setValue:v8 forKey:*MEMORY[0x1E6979AC0]];
  [v3 addObject:v7];

  [(CNRadiantShadowImageView *)self setAlpha:0.3];
  v9 = [v3 copy];
  layer = [(CNRadiantShadowImageView *)self layer];
  [layer setFilters:v9];
}

- (void)setImage:(id)image
{
  v4.receiver = self;
  v4.super_class = CNRadiantShadowImageView;
  [(CNRadiantShadowImageView *)&v4 setImage:image];
  [(CNRadiantShadowImageView *)self updateLayerFilters];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CNRadiantShadowImageView;
  [(CNRadiantShadowImageView *)&v3 layoutSubviews];
  [(CNRadiantShadowImageView *)self applyAffineTransform];
}

- (CNRadiantShadowImageView)init
{
  v8.receiver = self;
  v8.super_class = CNRadiantShadowImageView;
  v2 = [(CNRadiantShadowImageView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(CNRadiantShadowImageView *)v2 setContentMode:2];
    layer = [(CNRadiantShadowImageView *)v3 layer];
    [layer setShouldRasterize:1];

    layer2 = [(CNRadiantShadowImageView *)v3 layer];
    [layer2 setRasterizationScale:0.5];

    v6 = v3;
  }

  return v3;
}

@end