@interface CANodeButton
- (CANodeButton)init;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHasLabel:(BOOL)label;
@end

@implementation CANodeButton

- (CANodeButton)init
{
  v3.receiver = self;
  v3.super_class = CANodeButton;
  return [(CANodeButton *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CANodeButton;
  [(CANodeButton *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = CANodeButton;
  [(CANodeButton *)&v21 layoutSubviews];
  if ([(CANodeButton *)self hasLabel])
  {
    v3 = [-[CANodeButton titleLabel](self "titleLabel")];
    v22 = *MEMORY[0x277D740A8];
    v23[0] = [-[CANodeButton titleLabel](self "titleLabel")];
    [v3 sizeWithAttributes:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1)}];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (v7 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7 + 4.0;
  }

  [(CANodeButton *)self frame];
  v10 = v9;
  [(CANodeButton *)self frame];
  if (v10 >= v11 - v8)
  {
    v10 = v11 - v8;
  }

  [(CANodeButton *)self frame];
  v13 = (v12 - v10) * 0.5;
  v14 = floorf(v13);
  [(CANodeButton *)self frame];
  v16 = (v15 - v8 - v10) * 0.5;
  [-[CANodeButton imageView](self "imageView")];
  [(CANodeButton *)self frame];
  v18 = (v17 - v5) * 0.5;
  v19 = floorf(v18);
  [(CANodeButton *)self frame];
  [-[CANodeButton titleLabel](self "titleLabel")];
}

- (void)setHasLabel:(BOOL)label
{
  self->hasLabel = label;
  titleLabel = [(CANodeButton *)self titleLabel];
  if (label)
  {

    [(CANodeButton *)self addSubview:titleLabel];
  }

  else
  {

    [titleLabel removeFromSuperview];
  }
}

@end