@interface UIScrollView
+ (void)_maps_updateHairlineAlpha:(double)alpha animated:(BOOL)animated getter:(id)getter setter:(id)setter;
- (unint64_t)_maps_edgesObscuringContentIncludingContentInsets:(BOOL)insets;
- (void)_maps_scrollTextViewSelectedRangeVisible:(id)visible;
@end

@implementation UIScrollView

- (unint64_t)_maps_edgesObscuringContentIncludingContentInsets:(BOOL)insets
{
  insetsCopy = insets;
  [(UIScrollView *)self bounds];
  MinX = CGRectGetMinX(v32);
  [(UIScrollView *)self bounds];
  MinY = CGRectGetMinY(v33);
  [(UIScrollView *)self bounds];
  Width = CGRectGetWidth(v34);
  [(UIScrollView *)self bounds];
  Height = CGRectGetHeight(v35);
  [(UIScrollView *)self contentSize];
  v10 = v9;
  [(UIScrollView *)self contentSize];
  v12 = v11;
  if (insetsCopy)
  {
    [(UIScrollView *)self adjustedContentInset];
    v14 = -v13;
    v16 = -v15;
    v10 = v15 + v10 + v17;
    v12 = v13 + v12 + v18;
  }

  else
  {
    v14 = 0.0;
    v16 = 0.0;
  }

  v36.origin.x = MinX;
  v36.origin.y = MinY;
  v36.size.width = Width;
  v36.size.height = Height;
  v30 = Height;
  v31 = CGRectGetMinY(v36);
  v37.origin.x = v16;
  v37.origin.y = v14;
  v37.size.width = v10;
  v37.size.height = v12;
  v28 = CGRectGetMinY(v37);
  v38.origin.x = MinX;
  v38.origin.y = MinY;
  v38.size.width = Width;
  v38.size.height = Height;
  v19 = Width;
  rect = Width;
  v20 = CGRectGetMinX(v38);
  v39.origin.x = v16;
  v39.origin.y = v14;
  v39.size.width = v10;
  v39.size.height = v12;
  v21 = CGRectGetMinX(v39);
  v22 = 2;
  if (v31 > v28)
  {
    v22 = 3;
  }

  if (v20 <= v21)
  {
    v23 = v31 > v28;
  }

  else
  {
    v23 = v22;
  }

  v24 = MinX;
  v40.origin.x = MinX;
  v40.origin.y = MinY;
  v40.size.width = v19;
  v40.size.height = v30;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = v16;
  v41.origin.y = v14;
  v41.size.width = v10;
  v41.size.height = v12;
  if (MaxY < CGRectGetMaxY(v41))
  {
    v23 |= 4uLL;
  }

  v42.origin.x = v24;
  v42.origin.y = MinY;
  v42.size.width = rect;
  v42.size.height = v30;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = v16;
  v43.origin.y = v14;
  v43.size.width = v10;
  v43.size.height = v12;
  if (MaxX >= CGRectGetMaxX(v43))
  {
    return v23;
  }

  else
  {
    return v23 | 8;
  }
}

- (void)_maps_scrollTextViewSelectedRangeVisible:(id)visible
{
  visibleCopy = visible;
  selectedTextRange = [visibleCopy selectedTextRange];
  if (selectedTextRange)
  {
    [visibleCopy firstRectForRange:selectedTextRange];
    [(UIScrollView *)self convertRect:visibleCopy toView:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = 0;
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    while (1)
    {
      v24.origin.x = v6;
      v24.origin.y = v8;
      v24.size.width = v10;
      v24.size.height = v12;
      if (CGRectEqualToRect(v24, *&x) || v13 > 9)
      {
        break;
      }

      [(UIScrollView *)self scrollRectToVisible:0 animated:v6, v8, v10, v12];
      [(UIScrollView *)self layoutIfNeeded];
      [visibleCopy firstRectForRange:selectedTextRange];
      [(UIScrollView *)self convertRect:visibleCopy toView:?];
      width = v10;
      height = v12;
      y = v8;
      x = v6;
      ++v13;
      v6 = v18;
      v8 = v19;
      v10 = v20;
      v12 = v21;
    }
  }
}

+ (void)_maps_updateHairlineAlpha:(double)alpha animated:(BOOL)animated getter:(id)getter setter:(id)setter
{
  animatedCopy = animated;
  setterCopy = setter;
  if ((*(getter + 2))(getter) != alpha)
  {
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1007A3F5C;
    v14 = &unk_101658A20;
    v15 = setterCopy;
    alphaCopy = alpha;
    v10 = objc_retainBlock(&v11);
    if (animatedCopy)
    {
      [UIView animateWithDuration:4 delay:v10 options:0 animations:0.2 completion:0.0, v11, v12, v13, v14];
    }

    else
    {
      [UIView performWithoutAnimation:v10, v11, v12, v13, v14];
    }
  }
}

@end