@interface NUIContentScrollView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
- (CGSize)_finalSizeForTargetSize:(CGSize)result resultSize:(CGSize)size insets:(UIEdgeInsets)insets;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)_measureSizeForTargetSize:(CGSize)size insets:(UIEdgeInsets)insets;
- (NUIContentScrollView)initWithDocumentView:(id)view;
- (NUIContentScrollView)initWithFrame:(CGRect)frame;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)layoutSubviews;
- (void)setCanScrollDocumentViewHorizontally:(BOOL)horizontally;
- (void)setCanScrollDocumentViewVertically:(BOOL)vertically;
- (void)setDocumentView:(id)view;
- (void)setHorizontalAlignment:(int64_t)alignment;
- (void)setVerticalAlignment:(int64_t)alignment;
@end

@implementation NUIContentScrollView

- (void)setCanScrollDocumentViewHorizontally:(BOOL)horizontally
{
  if (self->_canScrollDocumentViewHorizontally != horizontally)
  {
    self->_canScrollDocumentViewHorizontally = horizontally;
    [(NUIContentScrollView *)self setNeedsLayout];
  }
}

- (void)setCanScrollDocumentViewVertically:(BOOL)vertically
{
  if (self->_canScrollDocumentViewVertically != vertically)
  {
    self->_canScrollDocumentViewVertically = vertically;
    [(NUIContentScrollView *)self setNeedsLayout];
  }
}

- (NUIContentScrollView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(NUIContentScrollView *)self initWithDocumentView:0];
  v8 = v7;
  if (v7)
  {
    [(NUIContentScrollView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (NUIContentScrollView)initWithDocumentView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = NUIContentScrollView;
  v5 = [(NUIContentScrollView *)&v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_canScrollDocumentViewHorizontally = 1;
    v5->_canScrollDocumentViewVertically = 1;
    [(NUIContentScrollView *)v5 _setHostsLayoutEngine:1];
    v6->_horizontalAlignment = 3;
    v6->_verticalAlignment = 1;
    [(NUIContentScrollView *)v6 setDocumentView:viewCopy];
  }

  return v6;
}

- (void)setDocumentView:(id)view
{
  viewCopy = view;
  documentView = [(NUIContentScrollView *)self documentView];

  v6 = viewCopy;
  if (documentView != viewCopy)
  {
    [(UIView *)self->_documentView removeFromSuperview];
    objc_storeStrong(&self->_documentView, view);
    if (viewCopy)
    {
      [(NUIContentScrollView *)self addSubview:viewCopy];
    }

    [(NUIContentScrollView *)self invalidateIntrinsicContentSize];
    v6 = viewCopy;
  }
}

- (void)setHorizontalAlignment:(int64_t)alignment
{
  alignmentCopy = 3;
  if (alignment != -1)
  {
    alignmentCopy = alignment;
  }

  if (self->_horizontalAlignment != alignmentCopy)
  {
    self->_horizontalAlignment = alignmentCopy;
    [(NUIContentScrollView *)self setNeedsLayout];
  }
}

- (void)setVerticalAlignment:(int64_t)alignment
{
  if (alignment == -1)
  {
    alignmentCopy = 1;
  }

  else
  {
    alignmentCopy = alignment;
  }

  if (self->_verticalAlignment != alignmentCopy)
  {
    self->_verticalAlignment = alignmentCopy;
    [(NUIContentScrollView *)self setNeedsLayout];
  }
}

- (BOOL)isLayoutSizeDependentOnPerpendicularAxis
{
  documentView = [(NUIContentScrollView *)self documentView];
  isLayoutSizeDependentOnPerpendicularAxis = [documentView isLayoutSizeDependentOnPerpendicularAxis];

  return isLayoutSizeDependentOnPerpendicularAxis;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  [(UIView *)self effectiveFirstBaselineOffsetFromContentTop:size.width];
  v5 = v4;
  [(UIView *)self effectiveBaselineOffsetFromContentBottom];
  v7 = v6;
  viewForFirstBaselineLayout = [(NUIContentScrollView *)self viewForFirstBaselineLayout];

  if (viewForFirstBaselineLayout == self)
  {
    v5 = 2.22507386e-308;
  }

  viewForLastBaselineLayout = [(NUIContentScrollView *)self viewForLastBaselineLayout];

  if (viewForLastBaselineLayout == self)
  {
    v10 = 2.22507386e-308;
  }

  else
  {
    v10 = v7;
  }

  v11 = v5;
  result.var1 = v10;
  result.var0 = v11;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  viewCopy = view;
  documentView = [(NUIContentScrollView *)self documentView];

  if (documentView == viewCopy)
  {
    [(NUIContentScrollView *)self invalidateIntrinsicContentSize];
    [(NUIContentScrollView *)self setNeedsLayout];
  }

  v6.receiver = self;
  v6.super_class = NUIContentScrollView;
  [(UIView *)&v6 _intrinsicContentSizeInvalidatedForChildView:viewCopy];
}

- (CGSize)_measureSizeForTargetSize:(CGSize)size insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  v11 = fabs(size.width) < 0.001 || [(NUIContentScrollView *)self canScrollDocumentViewHorizontally];
  if (fabs(height) >= 0.001)
  {
    canScrollDocumentViewVertically = [(NUIContentScrollView *)self canScrollDocumentViewVertically];
    v12 = width - (left + right);
    if (v11)
    {
      v12 = 3.40282347e38;
    }

    if (!canScrollDocumentViewVertically)
    {
      v14 = height - (top + bottom);
      goto LABEL_13;
    }
  }

  else
  {
    v12 = width - (left + right);
    if (v11)
    {
      v12 = 3.40282347e38;
    }
  }

  v14 = 3.40282347e38;
LABEL_13:
  result.height = v14;
  result.width = v12;
  return result;
}

- (CGSize)_finalSizeForTargetSize:(CGSize)result resultSize:(CGSize)size insets:(UIEdgeInsets)insets
{
  v5 = insets.right + size.width + insets.left;
  if (v5 < result.width)
  {
    result.width = v5;
  }

  if (insets.bottom + size.height + insets.top < result.height)
  {
    result.height = insets.bottom + size.height + insets.top;
  }

  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(NUIContentScrollView *)self contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v26 = width;
  v27 = height;
  [(NUIContentScrollView *)self _measureSizeForTargetSize:width insets:height, v6, v8, v10, v12];
  v16 = 0.0;
  v17 = 0.0;
  if (v14 > 0.0)
  {
    v18 = v15;
    if (v15 > 0.0)
    {
      v19 = v14;
      documentView = [(NUIContentScrollView *)self documentView];

      if (documentView)
      {
        documentView2 = [(NUIContentScrollView *)self documentView];
        [documentView2 effectiveLayoutSizeFittingSize:{v19, v18}];
        v16 = v22;
        v17 = v23;
      }
    }
  }

  [(NUIContentScrollView *)self _finalSizeForTargetSize:v26 resultSize:v27 insets:v16, v17, v7, v9, v11, v13];
  result.height = v25;
  result.width = v24;
  return result;
}

- (id)viewForFirstBaselineLayout
{
  documentView = [(NUIContentScrollView *)self documentView];

  if (documentView)
  {
    documentView2 = [(NUIContentScrollView *)self documentView];
    selfCopy = [documentView2 viewForFirstBaselineLayout];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)viewForLastBaselineLayout
{
  documentView = [(NUIContentScrollView *)self documentView];

  if (documentView)
  {
    documentView2 = [(NUIContentScrollView *)self documentView];
    selfCopy = [documentView2 viewForLastBaselineLayout];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)layoutSubviews
{
  v83.receiver = self;
  v83.super_class = NUIContentScrollView;
  [(NUIContentScrollView *)&v83 layoutSubviews];
  documentView = [(NUIContentScrollView *)self documentView];

  if (!documentView)
  {
    return;
  }

  [(NUIContentScrollView *)self contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(NUIContentScrollView *)self bounds];
  v14 = v13 - (v8 + v12);
  v16 = v15 - (v6 + v10);
  v17 = *MEMORY[0x277CBF3A8];
  v18 = *(MEMORY[0x277CBF3A8] + 8);
  if (![(NUIContentScrollView *)self canScrollDocumentViewHorizontally])
  {
    v17 = v14;
  }

  if (![(NUIContentScrollView *)self canScrollDocumentViewVertically])
  {
    v18 = v16;
  }

  v20 = *MEMORY[0x277CBF3A0];
  v19 = *(MEMORY[0x277CBF3A0] + 8);
  documentView2 = [(NUIContentScrollView *)self documentView];
  [documentView2 effectiveLayoutSizeFittingSize:{v17, v18}];
  v23 = v22;
  v25 = v24;

  [(NUIContentScrollView *)self setContentSize:v23, v25];
  effectiveUserInterfaceLayoutDirection = [(NUIContentScrollView *)self effectiveUserInterfaceLayoutDirection];
  horizontalAlignment = self->_horizontalAlignment;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    if (horizontalAlignment <= 2)
    {
      if (horizontalAlignment)
      {
        if (horizontalAlignment != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_26:
      v85.origin.x = v20;
      v85.origin.y = v19;
      v85.size.width = v23;
      v85.size.height = v25;
      Width = CGRectGetWidth(v85);
      if (Width >= v14)
      {
        v23 = Width;
      }

      else
      {
        v23 = v14;
      }

      goto LABEL_31;
    }

    if (horizontalAlignment != 3)
    {
      if (horizontalAlignment == 4)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (horizontalAlignment <= 2)
  {
    if (horizontalAlignment)
    {
      if (horizontalAlignment == 1)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (horizontalAlignment == 3)
  {
LABEL_29:
    v86.origin.x = v20;
    v86.origin.y = v19;
    v86.size.width = v23;
    v86.size.height = v25;
    v28 = (v14 - CGRectGetWidth(v86)) * 0.5;
    goto LABEL_30;
  }

  if (horizontalAlignment == 4)
  {
LABEL_20:
    v84.origin.x = v20;
    v84.origin.y = v19;
    v84.size.width = v23;
    v84.size.height = v25;
    v28 = v14 - CGRectGetWidth(v84);
LABEL_30:
    v20 = fmax(v28, 0.0);
    goto LABEL_31;
  }

LABEL_21:
  if ((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached())
  {
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContentScrollView.m"];
    v30 = v29;
    v31 = @"<Unknown File>";
    if (v29)
    {
      v31 = v29;
    }

    v32 = v31;

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:v32 lineNumber:260 description:{@"Invalid horizontal alignment %ld.", self->_horizontalAlignment}];
  }

LABEL_31:
  verticalAlignment = self->_verticalAlignment;
  if (verticalAlignment > 2)
  {
    if (verticalAlignment == 3)
    {
      v89.origin.x = v20;
      v89.origin.y = v19;
      v89.size.width = v23;
      v89.size.height = v25;
      v36 = (v16 - CGRectGetHeight(v89)) * 0.5;
    }

    else
    {
      if (verticalAlignment != 4)
      {
LABEL_38:
        if ((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached())
        {
          v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContentScrollView.m"];
          v38 = v37;
          v39 = @"<Unknown File>";
          if (v37)
          {
            v39 = v37;
          }

          v40 = v39;

          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:v40 lineNumber:276 description:{@"Invalid vertical alignment %ld.", self->_verticalAlignment}];
        }

        goto LABEL_48;
      }

      v87.origin.x = v20;
      v87.origin.y = v19;
      v87.size.width = v23;
      v87.size.height = v25;
      v36 = v16 - CGRectGetHeight(v87);
    }

    v19 = fmax(v36, 0.0);
  }

  else if (verticalAlignment)
  {
    if (verticalAlignment != 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v88.origin.x = v20;
    v88.origin.y = v19;
    v88.size.width = v23;
    v88.size.height = v25;
    Height = CGRectGetHeight(v88);
    if (Height >= v16)
    {
      v25 = Height;
    }

    else
    {
      v25 = v16;
    }
  }

LABEL_48:
  [(NUIContentScrollView *)self _currentScreenScale];
  v44 = v43;
  v90.origin.x = v20;
  v90.origin.y = v19;
  v90.size.width = v23;
  v90.size.height = v25;
  MinX = CGRectGetMinX(v90);
  if (v44 == 1.0)
  {
    v46 = ceil(MinX);
    v47 = v46 - MinX;
    v48 = floor(MinX);
    if (v47 >= 0.001)
    {
      v49 = v48;
    }

    else
    {
      v49 = v46;
    }

    v91.origin.x = v20;
    v91.origin.y = v19;
    v91.size.width = v23;
    v91.size.height = v25;
    MinY = CGRectGetMinY(v91);
    v51 = ceil(MinY);
    v52 = v51 - MinY;
    v53 = floor(MinY);
    if (v52 >= 0.001)
    {
      v54 = v53;
    }

    else
    {
      v54 = v51;
    }

    v92.origin.x = v20;
    v92.origin.y = v19;
    v92.size.width = v23;
    v92.size.height = v25;
    v55 = CGRectGetWidth(v92);
    v56 = floor(v55);
    v57 = v55 - v56;
    v58 = ceil(v55);
    if (v57 >= 0.001)
    {
      v59 = v58;
    }

    else
    {
      v59 = v56;
    }

    v93.origin.x = v20;
    v93.origin.y = v19;
    v93.size.width = v23;
    v93.size.height = v25;
    v60 = CGRectGetHeight(v93);
    v61 = floor(v60);
    v62 = v60 - v61;
    v63 = ceil(v60);
    if (v62 >= 0.001)
    {
      v64 = v63;
    }

    else
    {
      v64 = v61;
    }
  }

  else
  {
    v65 = v44 * MinX;
    v66 = ceil(v65);
    v67 = v66 - v65;
    v68 = floor(v65);
    if (v67 < 0.001)
    {
      v68 = v66;
    }

    v82 = v68 / v44;
    v94.origin.x = v20;
    v94.origin.y = v19;
    v94.size.width = v23;
    v94.size.height = v25;
    v69 = v44 * CGRectGetMinY(v94);
    v70 = ceil(v69);
    v71 = v70 - v69;
    v72 = floor(v69);
    if (v71 < 0.001)
    {
      v72 = v70;
    }

    v54 = v72 / v44;
    v95.origin.x = v20;
    v95.origin.y = v19;
    v95.size.width = v23;
    v95.size.height = v25;
    v73 = v44 * CGRectGetWidth(v95);
    v74 = floor(v73);
    v75 = v73 - v74;
    v76 = ceil(v73);
    if (v75 < 0.001)
    {
      v76 = v74;
    }

    v59 = v76 / v44;
    v96.origin.x = v20;
    v96.origin.y = v19;
    v49 = v82;
    v96.size.width = v23;
    v96.size.height = v25;
    v77 = v44 * CGRectGetHeight(v96);
    v78 = floor(v77);
    v79 = v77 - v78;
    v80 = ceil(v77);
    if (v79 < 0.001)
    {
      v80 = v78;
    }

    v64 = v80 / v44;
  }

  documentView3 = [(NUIContentScrollView *)self documentView];
  [documentView3 setFrame:{v49, v54, v59, v64}];
}

@end