@interface COSPinKeyView
- (COSPinKeyView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCodeLength:(int64_t)a3;
@end

@implementation COSPinKeyView

- (COSPinKeyView)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = COSPinKeyView;
  v3 = [(COSPinKeyView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[NSMutableArray array];
    v5 = +[NSMutableArray array];
    if ([(COSPinKeyView *)v3 expectedPinLength]>= 1)
    {
      v6 = 0;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      do
      {
        v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
        v11 = [UIFont systemFontOfSize:45.0];
        [v10 setFont:v11];

        v12 = BPSTextColor();
        [v10 setTextColor:v12];

        [v10 setTextAlignment:1];
        v13 = +[NSBundle mainBundle];
        [v13 localizedStringForKey:@"EMPTY_DIGIT_DASH" value:&stru_10026E598 table:@"Localizable"];
        v15 = v14 = v4;
        [v10 setText:v15];

        [(NSArray *)v5 addObject:v10];
        [(COSPinKeyView *)v3 addSubview:v10];
        v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
        v17 = [UIFont systemFontOfSize:36.0];
        [v16 setFont:v17];

        v18 = BPSTextColor();
        [v16 setTextColor:v18];

        [v16 setTextAlignment:1];
        v19 = +[NSBundle mainBundle];
        [v19 localizedStringForKey:@"EMPTY_DIGIT_DASH" value:&stru_10026E598 table:@"Localizable"];
        v21 = v20 = v5;
        [v16 setText:v21];

        v5 = v20;
        v4 = v14;
        [v14 addObject:v16];
        [(COSPinKeyView *)v3 addSubview:v16];

        ++v6;
      }

      while ([(COSPinKeyView *)v3 expectedPinLength]> v6);
    }

    dashLayers = v3->_dashLayers;
    v3->_dashLayers = v5;
    v23 = v5;

    digitLayers = v3->_digitLayers;
    v3->_digitLayers = v4;
  }

  return v3;
}

- (void)layoutSubviews
{
  [(COSPinKeyView *)self bounds];
  Width = CGRectGetWidth(v34);
  v4 = [(COSPinKeyView *)self expectedPinLength];
  v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v6 = [UIFont systemFontOfSize:45.0];
  [v5 setFont:v6];

  v7 = BPSTextColor();
  [v5 setTextColor:v7];

  [v5 setTextAlignment:1];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DIGIT_DASH" value:&stru_10026E598 table:@"Localizable"];
  [v5 setText:v9];

  [v5 sizeToFit];
  [v5 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = self->_dashLayers;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    LODWORD(v21) = 0;
    v22 = Width / v4;
    v23 = floorf(v22);
    v24 = *v30;
    do
    {
      v25 = 0;
      v21 = v21;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v29 + 1) + 8 * v25);
        v35.origin.x = v11;
        v35.origin.y = v13;
        v35.size.width = v15;
        v35.size.height = v17;
        v27 = (v23 - CGRectGetWidth(v35)) * 0.5;
        v11 = floorf(v27) + v23 * v21;
        [v26 setFrame:{v11, v13, v15, v17, v29}];
        v28 = [(NSArray *)self->_digitLayers objectAtIndexedSubscript:v21];
        [v28 setFrame:{v11, v13, v15, v17}];

        ++v21;
        v25 = v25 + 1;
      }

      while (v20 != v25);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v20);
  }
}

- (void)setCodeLength:(int64_t)a3
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_dashLayers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = 0;
    v8 = *v19;
    do
    {
      v9 = 0;
      v7 = v7;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = v11;
        if (v7 >= a3)
        {
          v16 = [v11 localizedStringForKey:@"EMPTY_DIGIT_DASH" value:&stru_10026E598 table:@"Localizable"];
          [v10 setText:v16];

          [v10 setHidden:0];
          v14 = [(NSArray *)self->_digitLayers objectAtIndexedSubscript:v7];
          [(__CFString *)v14 setText:&stru_10026E598];
        }

        else
        {
          v13 = [v11 localizedStringForKey:@"DIGIT_DASH" value:&stru_10026E598 table:@"Localizable"];
          [v10 setText:v13];

          [v10 setHidden:1];
          v14 = &stru_10026E598;
          if ([(NSString *)self->_digits length]> v7)
          {
            v14 = [(NSString *)self->_digits substringWithRange:v7, 1];
          }

          v15 = [(NSArray *)self->_digitLayers objectAtIndexedSubscript:v7];
          [v15 setText:v14];
        }

        ++v7;
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

@end