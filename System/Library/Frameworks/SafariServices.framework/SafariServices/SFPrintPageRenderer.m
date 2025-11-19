@interface SFPrintPageRenderer
- (SFPrintPageRenderer)init;
- (SFPrintPageRendererDelegate)delegate;
- (id)printInteractionControllerParentViewController:(id)a3;
- (void)drawFooterForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
- (void)printInteractionControllerWillStartJob:(id)a3;
- (void)setContentFormatter:(id)a3;
@end

@implementation SFPrintPageRenderer

- (SFPrintPageRenderer)init
{
  v11.receiver = self;
  v11.super_class = SFPrintPageRenderer;
  v2 = [(SFPrintPageRenderer *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    numberFormatter = v2->_numberFormatter;
    v2->_numberFormatter = v3;

    [(NSNumberFormatter *)v2->_numberFormatter setNumberStyle:0];
    v5 = [MEMORY[0x1E69DB878] systemFontOfSize:7.0];
    footerFont = v2->_footerFont;
    v2->_footerFont = v5;

    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
    footerColor = v2->_footerColor;
    v2->_footerColor = v7;

    v2->_printFooter = 1;
    v9 = v2;
  }

  return v2;
}

- (void)setContentFormatter:(id)a3
{
  v5 = a3;
  contentFormatter = self->_contentFormatter;
  if (contentFormatter != v5)
  {
    v7 = v5;
    [(UIPrintFormatter *)contentFormatter removeFromPrintPageRenderer];
    objc_storeStrong(&self->_contentFormatter, a3);
    v5 = v7;
    if (self->_contentFormatter)
    {
      [(UIPrintPageRenderer *)self addPrintFormatter:v7 startingAtPageAtIndex:0];
      v5 = v7;
    }
  }
}

- (void)drawFooterForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  if (self->_printFooter)
  {
    [(UIColor *)self->_footerColor set:a4.origin.x];
    [(NSString *)self->_URLString _legacy_drawAtPoint:self->_footerFont forWidth:5 withFont:self->_footerOffset.x lineBreakMode:self->_footerOffset.y, self->_URLWidth];
    [(NSString *)self->_dateString _legacy_drawAtPoint:self->_footerFont forWidth:2 withFont:self->_footerOffset.x + self->_printWidth - self->_dateWidth lineBreakMode:self->_footerOffset.y];
    numberFormatter = self->_numberFormatter;
    v8 = [MEMORY[0x1E696AD98] numberWithLong:a3 + 1];
    v20 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v8];

    v9 = self->_numberFormatter;
    v10 = [MEMORY[0x1E696AD98] numberWithLong:{-[UIPrintPageRenderer numberOfPages](self, "numberOfPages")}];
    v11 = [(NSNumberFormatter *)v9 stringFromNumber:v10];

    v12 = MEMORY[0x1E696AEC0];
    v13 = _WBSLocalizedString();
    v14 = [v12 stringWithFormat:v13, v20, v11, 0];

    [v14 _legacy_sizeWithFont:self->_footerFont];
    v16 = v15;
    y = self->_footerOffset.y;
    v18 = self->_footerOffset.x + self->_printWidth - v15;
    [(UIFont *)self->_footerFont lineHeight];
    [v14 _legacy_drawAtPoint:self->_footerFont forWidth:2 withFont:v18 lineBreakMode:{y + v19, v16}];
  }
}

- (void)printInteractionControllerWillStartJob:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v4 = [v31 printPaper];
  [v4 paperSize];
  v6 = v5;
  v8 = v7;
  [v4 printableRect];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v33 = v38.origin.x;
  v34 = v38.origin.y;
  v30 = v6;
  v35 = v6 - CGRectGetMaxX(v38);
  v13 = 36.0;
  for (i = 8; i != 32; i += 8)
  {
    if (v13 < *&v32[i])
    {
      v13 = *&v32[i];
    }
  }

  v15 = [v31 printInfo];
  v16 = [v15 duplex];

  if (v16)
  {
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    if (v13 <= v8 - CGRectGetMaxY(v39))
    {
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v13 = v8 - CGRectGetMaxY(v40);
    }
  }

  if (self->_printFooter)
  {
    v17 = 18.0;
  }

  else
  {
    v17 = 0.0;
  }

  if (self->_printFooter)
  {
    v18 = 36.0;
  }

  else
  {
    v18 = 0.0;
  }

  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v19 = v8 - CGRectGetMaxY(v41);
  if (v17 >= v19)
  {
    v19 = v17;
  }

  if (v19 < v13 - v18)
  {
    v19 = v13 - v18;
  }

  if (v19 > y || v16 == 0)
  {
    y = v19;
  }

  self->_contentOffset.x = v13;
  self->_contentOffset.y = v13;
  [(UIFont *)self->_footerFont lineHeight];
  self->_footerOffset.x = v13;
  self->_footerOffset.y = v8 - (y + v21 * 2.0);
  if (self->_printFooter)
  {
    [(UIPrintPageRenderer *)self setFooterHeight:?];
  }

  contentFormatter = self->_contentFormatter;
  if (contentFormatter)
  {
    v23 = 0.0;
    if (!self->_printFooter)
    {
      v23 = y;
    }

    [(UIPrintFormatter *)contentFormatter setPerPageContentInsets:self->_contentOffset.y, self->_contentOffset.x, v23, self->_contentOffset.x];
  }

  self->_printWidth = v30 - (v13 + v13);
  v24 = MEMORY[0x1E696AB78];
  v25 = [MEMORY[0x1E695DF00] date];
  v26 = [v24 localizedStringFromDate:v25 dateStyle:1 timeStyle:1];
  dateString = self->_dateString;
  self->_dateString = v26;

  [(NSString *)self->_dateString _legacy_sizeWithFont:self->_footerFont];
  self->_dateWidth = v28;
  [(NSString *)self->_URLString _legacy_sizeWithFont:self->_footerFont forWidth:5 lineBreakMode:self->_printWidth - (v28 + 18.0)];
  self->_URLWidth = v29;
}

- (id)printInteractionControllerParentViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained presentingViewControllerForPrintPageRenderer:self];

  return v5;
}

- (SFPrintPageRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end