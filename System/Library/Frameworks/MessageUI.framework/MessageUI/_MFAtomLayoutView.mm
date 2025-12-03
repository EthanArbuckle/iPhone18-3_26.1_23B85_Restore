@interface _MFAtomLayoutView
+ (id)layoutViewWithDelegateView:(id)view;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGRect)boundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (CGRect)selectionBounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)atomInsets;
- (_MFAtomLayoutView)initWithCoder:(id)coder;
- (_MFAtomLayoutView)initWithDelegateView:(id)view;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)layoutSubviews;
- (void)setMaskBounds:(CGRect)bounds;
@end

@implementation _MFAtomLayoutView

+ (id)layoutViewWithDelegateView:(id)view
{
  viewCopy = view;
  v5 = [[self alloc] initWithDelegateView:viewCopy];

  return v5;
}

- (_MFAtomLayoutView)initWithDelegateView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _MFAtomLayoutView;
  v6 = [(_MFAtomLayoutView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegateView, view);
    [(MFAtomTextViewAtomLayout *)v7->_delegateView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MFAtomLayoutView *)v7 setAutoresizesSubviews:0];
    [(_MFAtomLayoutView *)v7 addSubview:v7->_delegateView];
    v8 = v7;
  }

  return v7;
}

- (_MFAtomLayoutView)initWithCoder:(id)coder
{
  coderCopy = coder;
  [(_MFAtomLayoutView *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[_MFAtomLayoutView initWithCoder:]", "MFAtomTextView.m", 1966, "0");
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = _MFAtomLayoutView;
  if ([(_MFAtomLayoutView *)&v5 respondsToSelector:?])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = _MFAtomLayoutView;
  v5 = [(_MFAtomLayoutView *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(MFAtomTextViewAtomLayout *)self->_delegateView methodSignatureForSelector:selector];
  }

  return v5;
}

- (void)setMaskBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(_MFAtomLayoutView *)self bounds];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v8 = CGRectEqualToRect(v17, v18);
  layer = [(_MFAtomLayoutView *)self layer];
  v14 = layer;
  if (v8)
  {
    [layer setMask:0];
  }

  else
  {
    mask = [layer mask];

    v11 = mask;
    if (!mask)
    {
      layer2 = [MEMORY[0x1E69794A0] layer];
      layer3 = [(_MFAtomLayoutView *)self layer];
      [layer3 setMask:layer2];

      v11 = layer2;
    }

    v14 = v11;
    v13 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x, y, width, height}];
    [v14 setPath:{objc_msgSend(v13, "CGPath")}];
  }
}

- (UIEdgeInsets)atomInsets
{
  [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[_MFAtomLayoutView semanticContentAttribute](self, "semanticContentAttribute")}];
  v2 = 0.0;
  v3 = 2.0;
  v4 = 0.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(MFAtomTextViewAtomLayout *)self->_delegateView systemLayoutSizeFittingSize:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(_MFAtomLayoutView *)self atomInsets];
  v10 = v5 + v8 + v9;
  v13 = v7 + v11 + v12;
  v14 = v10;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = _MFAtomLayoutView;
  [(_MFAtomLayoutView *)&v15 layoutSubviews];
  [(_MFAtomLayoutView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_MFAtomLayoutView *)self atomInsets];
  v12 = v4 + v11;
  [(MFAtomTextViewAtomLayout *)self->_delegateView systemLayoutSizeFittingSize:v8, v10];
  [(MFAtomTextViewAtomLayout *)self->_delegateView setFrame:v12, v6, v13, v14];
}

- (CGRect)selectionBounds
{
  [(MFAtomTextViewAtomLayout *)self->_delegateView bounds];
  delegateView = self->_delegateView;

  [(_MFAtomLayoutView *)self convertRect:delegateView fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  height = fragment.size.height;
  [(_MFAtomLayoutView *)self layoutIfNeeded:container];
  [(_MFAtomLayoutView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v9 = v8;
  v11 = v10;
  viewForLastBaselineLayout = [(_MFAtomLayoutView *)self viewForLastBaselineLayout];
  [viewForLastBaselineLayout bounds];
  [(_MFAtomLayoutView *)self convertRect:viewForLastBaselineLayout fromView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [viewForLastBaselineLayout _baselineOffsetFromBottom];
  v22 = v21;
  v30.origin.x = v14;
  v30.origin.y = v16;
  v30.size.width = v18;
  v30.size.height = v20;
  MaxY = CGRectGetMaxY(v30);
  v24 = *MEMORY[0x1E695F058];
  v31.origin.y = *(MEMORY[0x1E695F058] + 8);
  v31.origin.x = *MEMORY[0x1E695F058];
  v31.size.width = v9;
  v31.size.height = v11;
  v25 = MaxY - CGRectGetMaxY(v31) - v22;

  v26 = v24;
  v27 = v25;
  v28 = v9;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

@end