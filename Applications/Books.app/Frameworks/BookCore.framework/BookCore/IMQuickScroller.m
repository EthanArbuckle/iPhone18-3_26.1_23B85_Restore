@interface IMQuickScroller
+ (id)backgroundForSize:(CGSize)a3;
+ (id)foregroundForSize:(CGSize)a3;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (IMQuickScroller)initWithFrame:(CGRect)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)updateValueForTouch:(id)a3;
@end

@implementation IMQuickScroller

+ (id)backgroundForSize:(CGSize)a3
{
  v3 = [UIImage imageNamed:@"quickScroll-track.png", a3.width, a3.height];
  v4 = [v3 stretchableImageWithLeftCapWidth:0 topCapHeight:13];

  return v4;
}

+ (id)foregroundForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (!qword_345E58)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = qword_345E58;
    qword_345E58 = v5;
  }

  v7 = [NSValue valueWithCGSize:width, height];
  v8 = [qword_345E58 objectForKey:v7];
  if (!v8)
  {
    if (width == CGSizeZero.width && height == CGSizeZero.height)
    {
      v8 = 0;
    }

    else
    {
      v10 = 0.0;
      v27.width = width;
      v27.height = height;
      UIGraphicsBeginImageContextWithOptions(v27, 0, 0.0);
      v11 = [UIImage imageNamed:@"quickScroll-dot-large.png"];
      v12 = [UIImage imageNamed:@"quickScroll-dot-small.png"];
      [v11 size];
      v14 = v13;
      v16 = v15;
      [v12 size];
      v18 = v17;
      v20 = v19;
      [v11 drawInRect:{14.0, 15.0, v14, v16}];
      [v11 drawInRect:{14.0, height + -15.0 - v16, v14, v16}];
      v21 = v16 + 15.0 + 12.0;
      v22 = height + v21 * -2.0;
      v23 = vcvtpd_s64_f64(v22 / (v20 + 12.0));
      if (v23 >= 1)
      {
        v24 = v21 + round((v22 - v23 * v20 - (v23 - 1) * 12.0) * 0.5);
        do
        {
          [v12 drawInRect:{15.0, v24 + v10 * (v20 + 12.0), v18, v20}];
          v10 = v10 + 1.0;
          --v23;
        }

        while (v23);
      }

      v8 = UIGraphicsGetImageFromCurrentImageContext();
      if (v8)
      {
        [qword_345E58 setObject:v8 forKey:v7];
      }
    }
  }

  return v8;
}

- (IMQuickScroller)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = IMQuickScroller;
  v3 = [(IMQuickScroller *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(IMQuickScroller *)v3 setBackgroundColor:v4];

    [(IMQuickScroller *)v3 setOpaque:0];
    [(IMQuickScroller *)v3 setAutoresizingMask:18];
    v5 = [UIImageView alloc];
    v6 = [objc_opt_class() backgroundForSize:{CGSizeZero.width, CGSizeZero.height}];
    v7 = [v5 initWithImage:v6];
    background = v3->_background;
    v3->_background = v7;

    [(UIImageView *)v3->_background setHidden:1];
    [(IMQuickScroller *)v3 bounds];
    [(UIImageView *)v3->_background setFrame:?];
    [(UIImageView *)v3->_background setContentMode:0];
    [(UIImageView *)v3->_background setAutoresizingMask:18];
    [(IMQuickScroller *)v3 addSubview:v3->_background];
    v9 = objc_alloc_init(UIImageView);
    foreground = v3->_foreground;
    v3->_foreground = v9;

    [(IMQuickScroller *)v3 bounds];
    [(UIImageView *)v3->_foreground setFrame:?];
    [(UIImageView *)v3->_foreground setHidden:0];
    [(UIImageView *)v3->_foreground setContentMode:4];
    [(UIImageView *)v3->_foreground setAutoresizingMask:18];
    [(IMQuickScroller *)v3 addSubview:v3->_foreground];
  }

  return v3;
}

- (void)updateValueForTouch:(id)a3
{
  [a3 locationInView:self];
  v5 = v4 + -20.0;
  [(IMQuickScroller *)self frame];
  v7 = v5 / (v6 + -40.0);
  *&v7 = v7;
  *&v7 = fminf(fmaxf(*&v7, 0.0), 1.0);
  [(IMQuickScroller *)self setValue:v7];

  [(IMQuickScroller *)self sendActionsForControlEvents:4096];
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  background = self->_background;
  v6 = a3;
  [(UIImageView *)background setHidden:0];
  [(IMQuickScroller *)self updateValueForTouch:v6];

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  LODWORD(v4) = -1.0;
  [(IMQuickScroller *)self setValue:a3, a4, v4];
  background = self->_background;

  [(UIImageView *)background setHidden:1];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  LODWORD(v3) = -1.0;
  [(IMQuickScroller *)self setValue:a3, v3];
  background = self->_background;

  [(UIImageView *)background setHidden:1];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = IMQuickScroller;
  [(IMQuickScroller *)&v8 layoutSubviews];
  [(IMQuickScroller *)self bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  [(UIImageView *)self->_background setFrame:5.0, 6.0, 23.0, CGRectGetHeight(v9) + -12.0];
  v7 = [objc_opt_class() foregroundForSize:{width, height}];
  [(UIImageView *)self->_foreground setImage:v7];

  [(UIImageView *)self->_foreground setFrame:x, y, width, height];
}

@end