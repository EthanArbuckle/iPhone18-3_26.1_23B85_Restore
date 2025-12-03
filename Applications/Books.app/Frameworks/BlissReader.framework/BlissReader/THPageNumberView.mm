@interface THPageNumberView
- (CGPoint)position;
- (THPageNumberView)initWithPosition:(CGPoint)position;
- (double)p_pillWidthForText:(id)text;
- (void)dealloc;
- (void)p_updateBackgroundLayer;
- (void)p_updateFrame;
- (void)p_updatePageString;
- (void)setBold:(BOOL)bold;
- (void)setIsCurrentPage:(BOOL)page;
- (void)setMode:(int)mode;
- (void)setPageCount:(unint64_t)count;
- (void)setPageNumber:(unint64_t)number;
- (void)setPageNumberColor:(id)color backgroundColor:(id)backgroundColor;
- (void)setPageNumberText:(id)text;
- (void)updateMaxWidth:(double)width;
- (void)updatePosition:(CGPoint)position;
@end

@implementation THPageNumberView

- (THPageNumberView)initWithPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v9.receiver = self;
  v9.super_class = THPageNumberView;
  v5 = [(THPageNumberView *)&v9 initWithFrame:position.x + -40.0, position.y + -23.0, 40.0, 23.0];
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
      backgroundLayer = [(THPageNumberView *)self backgroundLayer];

      [(CALayer *)backgroundLayer removeFromSuperlayer];
    }
  }

  else
  {
    layer = [(THPageNumberView *)self layer];
    backgroundLayer2 = [(THPageNumberView *)self backgroundLayer];
    layer2 = [(UILabel *)[(THPageNumberView *)self label] layer];

    [layer insertSublayer:backgroundLayer2 below:layer2];
  }
}

- (void)setMode:(int)mode
{
  if ([(THPageNumberView *)self mode]!= mode)
  {
    self->_mode = mode;
    [(THPageNumberView *)self p_updateBackgroundLayer];

    [(THPageNumberView *)self p_updatePageString];
  }
}

- (void)setBold:(BOOL)bold
{
  if (bold)
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

- (void)setPageNumberColor:(id)color backgroundColor:(id)backgroundColor
{
  [(UILabel *)[(THPageNumberView *)self label] setTextColor:color];
  if ([(THPageNumberView *)self mode])
  {
    -[CALayer setBackgroundColor:]([(THPageNumberView *)self backgroundLayer], "setBackgroundColor:", [+[UIColor clearColor](UIColor CGColor]);
    cGColor = [+[UIColor clearColor](UIColor CGColor];
    backgroundLayer = [(THPageNumberView *)self backgroundLayer];

    [(CALayer *)backgroundLayer setBorderColor:cGColor];
  }

  else
  {
    -[CALayer setBackgroundColor:](-[THPageNumberView backgroundLayer](self, "backgroundLayer"), "setBackgroundColor:", [backgroundColor CGColor]);
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    if ([color getRed:&v11 green:&v10 blue:&v9 alpha:0])
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

- (void)setPageNumber:(unint64_t)number
{
  if (self->_pageNumber != number)
  {
    self->_pageNumber = number;
    [(THPageNumberView *)self p_updatePageString];
  }
}

- (void)setPageCount:(unint64_t)count
{
  if (self->_pageCount != count)
  {
    self->_pageCount = count;
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
    label = [(THPageNumberView *)self label];
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
    label = [(THPageNumberView *)self label];
    v27 = 0.0;
    v29 = 23.0;
    v26 = v35;
    v28 = v34;
  }

  [(UILabel *)label setFrame:v26, v27, v28, v29];
}

- (void)updatePosition:(CGPoint)position
{
  [(THPageNumberView *)self setPosition:position.x, position.y];

  [(THPageNumberView *)self p_updateFrame];
}

- (void)updateMaxWidth:(double)width
{
  [(THPageNumberView *)self setMaxWidth:width];

  [(THPageNumberView *)self p_updateFrame];
}

- (void)setIsCurrentPage:(BOOL)page
{
  pageCopy = page;
  if ([(THPageNumberView *)self isCurrentPage]!= page)
  {
    self->_isCurrentPage = pageCopy;
    if (pageCopy)
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

    [(CALayer *)backgroundLayer setBorderWidth:!pageCopy];
  }
}

- (double)p_pillWidthForText:(id)text
{
  v3 = [text length];
  if ((v3 - 1) > 2)
  {
    return 40.0;
  }

  else
  {
    return dbl_34AA48[(v3 - 1)];
  }
}

- (void)setPageNumberText:(id)text
{
  [(UILabel *)self->_label setText:text];
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