@interface SSSScreenshotCountIndicator
+ (id)_labelFont;
- (CGSize)intrinsicContentSize;
- (SSSScreenshotCountIndicator)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCount:(int64_t)a3;
- (void)setIndex:(int64_t)a3;
@end

@implementation SSSScreenshotCountIndicator

+ (id)_labelFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0 options:3];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (SSSScreenshotCountIndicator)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = SSSScreenshotCountIndicator;
  v3 = [(SSSScreenshotCountIndicator *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(UIPageControl);
  pageControl = v3->_pageControl;
  v3->_pageControl = v4;

  v6 = v3->_pageControl;
  v7 = [UIColor colorWithRed:0.8359375 green:0.87890625 blue:0.9453125 alpha:1.0];
  [(UIPageControl *)v6 setCurrentPageIndicatorTintColor:v7];

  [(UIPageControl *)v3->_pageControl setUserInteractionEnabled:0];
  v8 = objc_alloc_init(UILabel);
  label = v3->_label;
  v3->_label = v8;

  v10 = v3->_label;
  v11 = [UIColor colorWithWhite:1.0 alpha:0.75];
  [(UILabel *)v10 setTextColor:v11];

  v12 = v3->_label;
  v13 = [objc_opt_class() _labelFont];
  [(UILabel *)v12 setFont:v13];

  [(UILabel *)v3->_label setTextAlignment:1];
  [(SSSScreenshotCountIndicator *)v3 addSubview:v3->_pageControl];
  [(SSSScreenshotCountIndicator *)v3 addSubview:v3->_label];
  return v3;
}

- (void)layoutSubviews
{
  [(SSSScreenshotCountIndicator *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIPageControl *)self->_pageControl setFrame:?];
  [(UILabel *)self->_label setFrame:v4, v6, v8, v10];
  [(UIPageControl *)self->_pageControl setNumberOfPages:[(SSSScreenshotCountIndicator *)self count]];
  [(UIPageControl *)self->_pageControl setCurrentPage:[(SSSScreenshotCountIndicator *)self index]];
  [(UIPageControl *)self->_pageControl intrinsicContentSize];
  v12 = v11;
  v13 = (v8 + v8) / 3.0;
  if (v11 > v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  if (v12 > v13)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  [(UIPageControl *)self->_pageControl setAlpha:v14];
  [(UILabel *)self->_label setAlpha:v15];
  if (v12 > v13)
  {
    v17 = [(SSSScreenshotCountIndicator *)self index]+ 1;
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"INDEX_OF_SCREENSHOT_IN_TOTAL_FORMAT" value:&stru_1000BC350 table:0];
    v20 = [NSString localizedStringWithFormat:v19, v17, [(SSSScreenshotCountIndicator *)self count]];

    [(UILabel *)self->_label setText:v20];
  }

  else
  {
    label = self->_label;

    [(UILabel *)label setText:0];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIPageControl *)self->_pageControl intrinsicContentSize];
  v4 = v3;
  [(UILabel *)self->_label intrinsicContentSize];
  if (v4 < v5)
  {
    v4 = v5;
  }

  [(UIPageControl *)self->_pageControl intrinsicContentSize];
  v7 = v6;
  [(UILabel *)self->_label intrinsicContentSize];
  if (v7 >= v8)
  {
    v8 = v7;
  }

  v9 = v4;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)setCount:(int64_t)a3
{
  if (self->_count != a3)
  {
    self->_count = a3;
    [(SSSScreenshotCountIndicator *)self setNeedsLayout];

    [(SSSScreenshotCountIndicator *)self layoutIfNeeded];
  }
}

- (void)setIndex:(int64_t)a3
{
  if (self->_index != a3)
  {
    self->_index = a3;
    [(SSSScreenshotCountIndicator *)self setNeedsLayout];

    [(SSSScreenshotCountIndicator *)self layoutIfNeeded];
  }
}

@end