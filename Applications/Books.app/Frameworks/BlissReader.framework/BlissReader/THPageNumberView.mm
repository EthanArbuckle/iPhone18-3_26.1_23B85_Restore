@interface THPageNumberView
- (CGPoint)position;
- (THPageNumberView)initWithPosition:(CGPoint)a3;
- (double)p_pillWidthForText:(id)a3;
- (void)dealloc;
- (void)p_updateBackgroundLayer;
- (void)p_updateFrame;
- (void)p_updatePageString;
- (void)setBold:(BOOL)a3;
- (void)setIsCurrentPage:(BOOL)a3;
- (void)setMode:(int)a3;
- (void)setPageCount:(unint64_t)a3;
- (void)setPageNumber:(unint64_t)a3;
- (void)setPageNumberColor:(id)a3 backgroundColor:(id)a4;
- (void)setPageNumberText:(id)a3;
- (void)updateMaxWidth:(double)a3;
- (void)updatePosition:(CGPoint)a3;
@end

@implementation THPageNumberView

- (THPageNumberView)initWithPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v9.receiver = self;
  v9.super_class = THPageNumberView;
  v5 = [(THPageNumberView *)&v9 initWithFrame:a3.x + -40.0, a3.y + -23.0, 40.0, 23.0];
  v6 = v5;
  if (v5)
  {
    v5->_mode = 0;
    v5->_position.x = x;
    v5->_position.y = y;
    v5->_pageNumber = 0x7FFFFFFFFFFFFFFFLL;
    v5->_pageCount = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [UILabel alloc];
    [(THPageNumberView *)v6 bounds];
    v6->_label = [v7 initWithFrame:?];
    [(UILabel *)v6->_label setFont:[UIFont systemFontOfSize:12.0]];
    [(UILabel *)v6->_label setTextAlignment:1];
    [(UILabel *)v6->_label setTextColor:+[UIColor blackColor]];
    [(UILabel *)v6->_label setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v6->_label setOpaque:0];
    [(UILabel *)v6->_label setBackgroundColor:+[UIColor clearColor]];
    [(THPageNumberView *)v6 addSubview:v6->_label];
    [(THPageNumberView *)v6 p_updateBackgroundLayer];
  }

  return v6;
}

- (void)dealloc
{
  self->_backgroundLayer = 0;

  self->_label = 0;
  v3.receiver = self;
  v3.super_class = THPageNumberView;
  [(THPageNumberView *)&v3 dealloc];
}

- (void)p_updateBackgroundLayer
{
  if (![(THPageNumberView *)self backgroundLayer])
  {
    self->_backgroundLayer = objc_alloc_init(CALayer);
  }

  [(THPageNumberView *)self bounds];
  [(CALayer *)[(THPageNumberView *)self backgroundLayer] setBounds:v3, v4, v5, v6];
  [(CALayer *)[(THPageNumberView *)self backgroundLayer] setCornerRadius:11.5];
  if ([(THPageNumberView *)self mode])
  {
    v7 = +[UIColor clearColor];
  }

  else
  {
    v7 = +[UIColor whiteColor];
  }

  [(CALayer *)[(THPageNumberView *)self backgroundLayer] setBackgroundColor:[(UIColor *)v7 CGColor]];
  if ([(THPageNumberView *)self mode])
  {
    v8 = +[UIColor clearColor];
  }

  else
  {
    v8 = [UIColor colorWithWhite:0.0 alpha:0.15];
  }

  [(CALayer *)[(THPageNumberView *)self backgroundLayer] setBorderColor:[(UIColor *)v8 CGColor]];
  [(CALayer *)[(THPageNumberView *)self backgroundLayer] setBorderWidth:1.0];
  if ([(THPageNumberView *)self mode])
  {
    if ([(CALayer *)[(THPageNumberView *)self backgroundLayer] superlayer])
    {
      v9 = [(THPageNumberView *)self backgroundLayer];

      [(CALayer *)v9 removeFromSuperlayer];
    }
  }

  else
  {
    v10 = [(THPageNumberView *)self layer];
    v11 = [(THPageNumberView *)self backgroundLayer];
    v12 = [(UILabel *)[(THPageNumberView *)self label] layer];

    [v10 insertSublayer:v11 below:v12];
  }
}

- (void)setMode:(int)a3
{
  if ([(THPageNumberView *)self mode]!= a3)
  {
    self->_mode = a3;
    [(THPageNumberView *)self p_updateBackgroundLayer];

    [(THPageNumberView *)self p_updatePageString];
  }
}

- (void)setBold:(BOOL)a3
{
  if (a3)
  {
    v4 = [UIFont boldSystemFontOfSize:12.0];
  }

  else
  {
    v4 = [UIFont systemFontOfSize:12.0];
  }

  v5 = v4;
  label = self->_label;

  [(UILabel *)label setFont:v5];
}

- (void)setPageNumberColor:(id)a3 backgroundColor:(id)a4
{
  [(UILabel *)[(THPageNumberView *)self label] setTextColor:a3];
  if ([(THPageNumberView *)self mode])
  {
    -[CALayer setBackgroundColor:]([(THPageNumberView *)self backgroundLayer], "setBackgroundColor:", [+[UIColor clearColor](UIColor CGColor]);
    v7 = [+[UIColor clearColor](UIColor CGColor];
    v8 = [(THPageNumberView *)self backgroundLayer];

    [(CALayer *)v8 setBorderColor:v7];
  }

  else
  {
    -[CALayer setBackgroundColor:](-[THPageNumberView backgroundLayer](self, "backgroundLayer"), "setBackgroundColor:", [a4 CGColor]);
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    if ([a3 getRed:&v11 green:&v10 blue:&v9 alpha:0])
    {
      -[CALayer setBorderColor:]([(THPageNumberView *)self backgroundLayer], "setBorderColor:", [+[UIColor colorWithRed:green:blue:alpha:](UIColor CGColor:v11]);
    }
  }
}

- (void)p_updatePageString
{
  if ([(THPageNumberView *)self mode]== 1)
  {
    if ([(THPageNumberView *)self pageNumber]== 0x7FFFFFFFFFFFFFFFLL || [(THPageNumberView *)self pageCount]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = @"...";
    }

    else
    {
      v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"%@ of %@" value:&stru_471858 table:0], +[NSNumberFormatter imaxLocalizedUnsignedInteger:usesGroupingSeparator:](NSNumberFormatter, "imaxLocalizedUnsignedInteger:usesGroupingSeparator:", -[THPageNumberView pageNumber](self, "pageNumber"), 0), +[NSNumberFormatter imaxLocalizedUnsignedInteger:usesGroupingSeparator:](NSNumberFormatter, "imaxLocalizedUnsignedInteger:usesGroupingSeparator:", -[THPageNumberView pageCount](self, "pageCount"), 0));
    }

    [(UILabel *)[(THPageNumberView *)self label] setText:v3];
  }

  [(UILabel *)[(THPageNumberView *)self label] sizeToFit];

  [(THPageNumberView *)self p_updateFrame];
}

- (void)setPageNumber:(unint64_t)a3
{
  if (self->_pageNumber != a3)
  {
    self->_pageNumber = a3;
    [(THPageNumberView *)self p_updatePageString];
  }
}

- (void)setPageCount:(unint64_t)a3
{
  if (self->_pageCount != a3)
  {
    self->_pageCount = a3;
    [(THPageNumberView *)self p_updatePageString];
  }
}

- (void)p_updateFrame
{
  if ([(THPageNumberView *)self mode])
  {
    [(UILabel *)[(THPageNumberView *)self label] bounds];
    v4 = v3;
    v6 = v5;
    [(THPageNumberView *)self maxWidth];
    if (v7 > 0.0)
    {
      [(THPageNumberView *)self maxWidth];
      if (v4 > v8)
      {
        [(THPageNumberView *)self maxWidth];
        v4 = v9;
      }
    }

    [(THPageNumberView *)self position];
    v11 = v10 - v4 * 0.5;
    [(THPageNumberView *)self position];
    v37.origin.y = v12 - v6 * 0.5;
    v37.origin.x = v11;
    v37.size.width = v4;
    v37.size.height = v6;
    v38 = CGRectIntegral(v37);
    [(THPageNumberView *)self setFrame:v38.origin.x, v38.origin.y, v38.size.width, v38.size.height];
    [(THPageNumberView *)self bounds];
    [(CALayer *)[(THPageNumberView *)self backgroundLayer] setBounds:v13, v14, v15, v16];
    [(THPageNumberView *)self bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(THPageNumberView *)self label];
    v26 = v18;
    v27 = v20;
    v28 = v22;
    v29 = v24;
  }

  else
  {
    [(THPageNumberView *)self position];
    v31 = v30 + -40.0;
    [(THPageNumberView *)self position];
    [(THPageNumberView *)self setFrame:v31, v32 + -23.0, 40.0, 23.0];
    [(THPageNumberView *)self p_pillWidthForText:[(UILabel *)self->_label text]];
    v34 = v33;
    v35 = 40.0 - v33;
    [(CALayer *)[(THPageNumberView *)self backgroundLayer] setFrame:40.0 - v33, 0.0, v33, 23.0];
    v25 = [(THPageNumberView *)self label];
    v27 = 0.0;
    v29 = 23.0;
    v26 = v35;
    v28 = v34;
  }

  [(UILabel *)v25 setFrame:v26, v27, v28, v29];
}

- (void)updatePosition:(CGPoint)a3
{
  [(THPageNumberView *)self setPosition:a3.x, a3.y];

  [(THPageNumberView *)self p_updateFrame];
}

- (void)updateMaxWidth:(double)a3
{
  [(THPageNumberView *)self setMaxWidth:a3];

  [(THPageNumberView *)self p_updateFrame];
}

- (void)setIsCurrentPage:(BOOL)a3
{
  v3 = a3;
  if ([(THPageNumberView *)self isCurrentPage]!= a3)
  {
    self->_isCurrentPage = v3;
    if (v3)
    {
      -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [+[UIColor colorWithRed:green:blue:alpha:](UIColor CGColor:0.0]);
      v5 = +[UIColor whiteColor];
    }

    else
    {
      -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [+[UIColor whiteColor](UIColor CGColor]);
      v5 = +[UIColor blackColor];
    }

    [(UILabel *)self->_label setTextColor:v5];
    backgroundLayer = self->_backgroundLayer;

    [(CALayer *)backgroundLayer setBorderWidth:!v3];
  }
}

- (double)p_pillWidthForText:(id)a3
{
  v3 = [a3 length];
  if ((v3 - 1) > 2)
  {
    return 40.0;
  }

  else
  {
    return dbl_34AA48[(v3 - 1)];
  }
}

- (void)setPageNumberText:(id)a3
{
  [(UILabel *)self->_label setText:a3];
  [(UILabel *)self->_label sizeToFit];

  [(THPageNumberView *)self p_updateFrame];
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

@end