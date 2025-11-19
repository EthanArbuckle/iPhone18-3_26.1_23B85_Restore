@interface CAIAANodeContainer
+ (void)initialize;
- (CAIAANodeContainer)initWithFrame:(CGRect)a3;
- (double)contentWidth;
- (void)layoutSubviews;
@end

@implementation CAIAANodeContainer

+ (void)initialize
{
  [MEMORY[0x277D75418] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x277D75418] "currentDevice")])
  {
    v2 = 0x4053000000000000;
  }

  else
  {
    v2 = 0x404E000000000000;
  }

  _minWidth = v2;
}

- (CAIAANodeContainer)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAIAANodeContainer;
  v3 = [(CAIAANodeContainer *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAIAANodeContainer *)v3 setNumPages:1];
    [(CAIAANodeContainer *)v4 setShowsHorizontalScrollIndicator:0];
    [(CAIAANodeContainer *)v4 setShowsVerticalScrollIndicator:0];
    [(CAIAANodeContainer *)v4 setPagingEnabled:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v45 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = CAIAANodeContainer;
  [(CAIAANodeContainer *)&v43 layoutSubviews];
  v3 = [(CAIAANodeContainer *)self subviews];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v6);
  }

  v10 = *&_minWidth + 12.0;
  v11 = [v4 count];
  v12 = (3 * [v4 count] - 3) + v10 * v11;
  [(CAIAANodeContainer *)self frame];
  if (v13 - v12 + -6.0 >= 0.0)
  {
    [(CAIAANodeContainer *)self setNumPages:1];
    [(CAIAANodeContainer *)self frame];
    [(CAIAANodeContainer *)self setContentSize:v20, v21];
    v16 = [v4 count];
  }

  else
  {
    [(CAIAANodeContainer *)self frame];
    v15 = (v14 + -20.0 - (*&_minWidth + 12.0)) / (*&_minWidth + 6.0);
    v16 = vcvtms_u32_f32(v15);
    v17 = [v4 count] / v16;
    [(CAIAANodeContainer *)self setNumPages:vcvtps_s32_f32(v17)];
    [(CAIAANodeContainer *)self frame];
    [(CAIAANodeContainer *)self setContentSize:v18 * [(CAIAANodeContainer *)self numPages], v19];
  }

  if ([(CAIAANodeContainer *)self numPages])
  {
    v22 = 0;
    v23 = 0;
    v24 = 0.0;
    do
    {
      if (v23 == [(CAIAANodeContainer *)self numPages]- 1)
      {
        v16 = [v4 count] - v22;
      }

      v25 = *&_minWidth;
      [(CAIAANodeContainer *)self frame];
      if (v16)
      {
        v27 = v26 - ((3 * v16 - 3) + (v25 + 12.0) * v16) + -6.0;
        v28 = v27 / v16 * 0.5;
        v29 = floorf(v28);
        if (v29 + v29 > 14.0)
        {
          v29 = 14.0;
        }

        v30 = (v27 + v29 * -2.0 * v16) * 0.5;
        v31 = v24 + floorf(v30) + 3.0;
        v32 = v29 + 6.0;
        v33 = v22;
        v34 = v16;
        do
        {
          v35 = [v4 objectAtIndexedSubscript:v33];
          v36 = *&_minWidth + v32 * 2.0;
          [(CAIAANodeContainer *)self frame];
          [v35 setFrame:{v31, 0.0, v36}];
          [v35 frame];
          v31 = v31 + v37 + 3.0;
          ++v33;
          --v34;
        }

        while (v34);
      }

      v22 += v16;
      [(CAIAANodeContainer *)self frame];
      v24 = v24 + v38;
      ++v23;
    }

    while (v23 < [(CAIAANodeContainer *)self numPages]);
  }
}

- (double)contentWidth
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(CAIAANodeContainer *)self subviews];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (![v3 count])
  {
    return 0.0;
  }

  v9 = *&_minWidth + 12.0;
  v10 = [v3 count];
  return (3 * [v3 count] - 3) + v9 * v10;
}

@end