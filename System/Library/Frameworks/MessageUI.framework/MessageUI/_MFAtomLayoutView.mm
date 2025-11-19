@interface _MFAtomLayoutView
+ (id)layoutViewWithDelegateView:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGRect)boundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (CGRect)selectionBounds;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)atomInsets;
- (_MFAtomLayoutView)initWithCoder:(id)a3;
- (_MFAtomLayoutView)initWithDelegateView:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)layoutSubviews;
- (void)setMaskBounds:(CGRect)a3;
@end

@implementation _MFAtomLayoutView

+ (id)layoutViewWithDelegateView:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDelegateView:v4];

  return v5;
}

- (_MFAtomLayoutView)initWithDelegateView:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _MFAtomLayoutView;
  v6 = [(_MFAtomLayoutView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegateView, a3);
    [(MFAtomTextViewAtomLayout *)v7->_delegateView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MFAtomLayoutView *)v7 setAutoresizesSubviews:0];
    [(_MFAtomLayoutView *)v7 addSubview:v7->_delegateView];
    v8 = v7;
  }

  return v7;
}

- (_MFAtomLayoutView)initWithCoder:(id)a3
{
  v5 = a3;
  [(_MFAtomLayoutView *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[_MFAtomLayoutView initWithCoder:]", "MFAtomTextView.m", 1966, "0");
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = _MFAtomLayoutView;
  v5 = [(_MFAtomLayoutView *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(MFAtomTextViewAtomLayout *)self->_delegateView methodSignatureForSelector:a3];
  }

  return v5;
}

- (void)setMaskBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_MFAtomLayoutView *)self bounds];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v8 = CGRectEqualToRect(v17, v18);
  v9 = [(_MFAtomLayoutView *)self layer];
  v14 = v9;
  if (v8)
  {
    [v9 setMask:0];
  }

  else
  {
    v10 = [v9 mask];

    v11 = v10;
    if (!v10)
    {
      v15 = [MEMORY[0x1E69794A0] layer];
      v12 = [(_MFAtomLayoutView *)self layer];
      [v12 setMask:v15];

      v11 = v15;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(MFAtomTextViewAtomLayout *)self->_delegateView systemLayoutSizeFittingSize:a3.width, a3.height];
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

- (CGRect)boundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  height = a4.size.height;
  [(_MFAtomLayoutView *)self layoutIfNeeded:a3];
  [(_MFAtomLayoutView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v9 = v8;
  v11 = v10;
  v12 = [(_MFAtomLayoutView *)self viewForLastBaselineLayout];
  [v12 bounds];
  [(_MFAtomLayoutView *)self convertRect:v12 fromView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v12 _baselineOffsetFromBottom];
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