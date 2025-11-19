@interface UIScrollView(WebKitInternal)
- (BOOL)_wk_canScrollHorizontallyWithoutBouncing;
- (BOOL)_wk_canScrollVerticallyWithoutBouncing;
- (BOOL)_wk_isScrolledBeyondExtents;
- (BOOL)_wk_isScrolledBeyondTopExtent;
- (CGFloat)_wk_clampToScrollExtents:()WebKitInternal;
- (double)_wk_contentHeightIncludingInsets;
- (double)_wk_contentWidthIncludingInsets;
- (uint64_t)_wk_isInterruptingDeceleration;
- (uint64_t)_wk_isScrollAnimating;
- (uint64_t)_wk_isZoomAnimating;
- (uint64_t)_wk_setContentOffsetAndShowScrollIndicators:()WebKitInternal animated:;
- (uint64_t)_wk_setTransfersHorizontalScrollingToParent:()WebKitInternal;
- (uint64_t)_wk_setTransfersVerticalScrollingToParent:()WebKitInternal;
- (void)_wk_stopScrollingAndZooming;
@end

@implementation UIScrollView(WebKitInternal)

- (uint64_t)_wk_isZoomAnimating
{
  if (byte_1EB01D5FB != 1)
  {
    v4 = a1;
    v3 = [MEMORY[0x1E69DCEF8] instancesRespondToSelector:sel_isZoomAnimating];
    a1 = v4;
    byte_1EB01D5FA = v3;
    byte_1EB01D5FB = 1;
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((byte_1EB01D5FA & 1) == 0)
  {
    return 0;
  }

LABEL_3:

  return [a1 isZoomAnimating];
}

- (uint64_t)_wk_isScrollAnimating
{
  if (byte_1EB01D5F9 != 1)
  {
    v4 = a1;
    v3 = [MEMORY[0x1E69DCEF8] instancesRespondToSelector:sel_isScrollAnimating];
    a1 = v4;
    _MergedGlobals_111 = v3;
    byte_1EB01D5F9 = 1;
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((_MergedGlobals_111 & 1) == 0)
  {
    return 0;
  }

LABEL_3:

  return [a1 isScrollAnimating];
}

- (uint64_t)_wk_isInterruptingDeceleration
{
  result = [a1 isDecelerating];
  if (result)
  {

    return [a1 isTracking];
  }

  return result;
}

- (double)_wk_contentWidthIncludingInsets
{
  [a1 adjustedContentInset];
  v3 = v2;
  v5 = v4;
  [a1 contentSize];
  return v5 + v3 + v6;
}

- (double)_wk_contentHeightIncludingInsets
{
  [a1 adjustedContentInset];
  v3 = v2;
  v5 = v4;
  [a1 contentSize];
  return v5 + v3 + v6;
}

- (BOOL)_wk_isScrolledBeyondTopExtent
{
  [a1 contentOffset];
  v3 = v2;
  [a1 adjustedContentInset];
  return v3 < -v4;
}

- (BOOL)_wk_isScrolledBeyondExtents
{
  [a1 contentOffset];
  v3 = v2;
  v5 = v4;
  [a1 adjustedContentInset];
  v10 = -v9;
  if (v3 < -v8 || v5 < v10)
  {
    return 1;
  }

  v13 = v6;
  v14 = v7;
  [a1 contentSize];
  v16 = v15;
  v18 = v17;
  [a1 bounds];
  v20 = v19;
  v22 = v21;
  v23 = v14 + v16;
  [a1 _wk_contentWidthIncludingInsets];
  if (v24 >= v20)
  {
    v24 = v20;
  }

  v25 = v23 - v24;
  v26 = v13 + v18;
  [a1 _wk_contentHeightIncludingInsets];
  if (v27 >= v22)
  {
    v27 = v22;
  }

  return v5 > v26 - v27 || v3 > v25;
}

- (void)_wk_stopScrollingAndZooming
{
  if (byte_1EB01D5FD == 1)
  {
    if ((byte_1EB01D5FC & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v3 = result;
    v2 = [MEMORY[0x1E69DCEF8] instancesRespondToSelector:sel_stopScrollingAndZooming];
    result = v3;
    byte_1EB01D5FC = v2;
    byte_1EB01D5FD = 1;
    if (!v2)
    {
      return result;
    }
  }

  return [result stopScrollingAndZooming];
}

- (CGFloat)_wk_clampToScrollExtents:()WebKitInternal
{
  [a1 bounds];
  v7 = v6;
  v9 = v8;
  [a1 adjustedContentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if ([a1 isZoomBouncing] & 1) == 0 && (objc_msgSend(a1, "isZooming"))
  {
    return a2;
  }

  v28 = v17;
  v30 = v15;
  v18 = -v13;
  [a1 contentSize];
  v20 = v19;
  v29 = v21;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = v7;
  v31.size.height = v9;
  Width = CGRectGetWidth(v31);
  [a1 _wk_contentWidthIncludingInsets];
  if (Width < v23)
  {
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = v7;
    v32.size.height = v9;
    if (CGRectGetMinX(v32) >= v18)
    {
      v24 = v28 + v20;
      v33.origin.x = a2;
      v33.origin.y = a3;
      v33.size.width = v7;
      v33.size.height = v9;
      v18 = a2;
      if (CGRectGetMaxX(v33) > v24)
      {
        v34.origin.x = a2;
        v34.origin.y = a3;
        v34.size.width = v7;
        v34.size.height = v9;
        v18 = v24 - CGRectGetWidth(v34);
      }
    }
  }

  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = v7;
  v35.size.height = v9;
  Height = CGRectGetHeight(v35);
  [a1 _wk_contentHeightIncludingInsets];
  if (Height < v26)
  {
    v36.origin.x = a2;
    v36.origin.y = a3;
    v36.size.width = v7;
    v36.size.height = v9;
    if (CGRectGetMinY(v36) >= -v11)
    {
      v37.origin.x = a2;
      v37.origin.y = a3;
      v37.size.width = v7;
      v37.size.height = v9;
      if (CGRectGetMaxY(v37) > v30 + v29)
      {
        v38.origin.x = a2;
        v38.origin.y = a3;
        v38.size.width = v7;
        v38.size.height = v9;
        CGRectGetHeight(v38);
      }
    }
  }

  return v18;
}

- (BOOL)_wk_canScrollHorizontallyWithoutBouncing
{
  [a1 _wk_contentWidthIncludingInsets];
  v3 = v2;
  [a1 bounds];
  return v3 - CGRectGetWidth(v5) > 0.0001;
}

- (BOOL)_wk_canScrollVerticallyWithoutBouncing
{
  [a1 _wk_contentHeightIncludingInsets];
  v3 = v2;
  [a1 bounds];
  return v3 - CGRectGetHeight(v5) > 0.0001;
}

- (uint64_t)_wk_setTransfersHorizontalScrollingToParent:()WebKitInternal
{
  if (byte_1EB01D5FF == 1)
  {
    if (byte_1EB01D5FE)
    {
LABEL_3:

      return [a1 setTransfersHorizontalScrollingToParent:?];
    }
  }

  else
  {
    v4 = a1;
    v3 = [MEMORY[0x1E69DCEF8] instancesRespondToSelector:sel_setTransfersHorizontalScrollingToParent_];
    a1 = v4;
    byte_1EB01D5FE = v3;
    byte_1EB01D5FF = 1;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  return [a1 _setAllowsParentToBeginHorizontally:?];
}

- (uint64_t)_wk_setTransfersVerticalScrollingToParent:()WebKitInternal
{
  if (byte_1EB01D601 == 1)
  {
    if (byte_1EB01D600)
    {
LABEL_3:

      return [a1 setTransfersVerticalScrollingToParent:?];
    }
  }

  else
  {
    v4 = a1;
    v3 = [MEMORY[0x1E69DCEF8] instancesRespondToSelector:sel_setTransfersVerticalScrollingToParent_];
    a1 = v4;
    byte_1EB01D600 = v3;
    byte_1EB01D601 = 1;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  return [a1 _setAllowsParentToBeginVertically:?];
}

- (uint64_t)_wk_setContentOffsetAndShowScrollIndicators:()WebKitInternal animated:
{
  v21 = *MEMORY[0x1E69E9840];
  v19.x = a2;
  v19.y = a3;
  if (byte_1EB01D603 == 1)
  {
    if (byte_1EB01D602)
    {
LABEL_3:
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3321888768;
      v15[2] = __85__UIScrollView_WebKitInternal___wk_setContentOffsetAndShowScrollIndicators_animated___block_invoke;
      v15[3] = &__block_descriptor_64_e8_32c98_ZTSKZ85__UIScrollView_WebKitInternal___wk_setContentOffsetAndShowScrollIndicators_animated__E3__0_e5_v8__0l;
      *&v20[7] = v19;
      v16 = a5;
      *v17 = *v20;
      *&v17[15] = v19.y;
      v18 = a1;
      return [a1 showScrollIndicatorsForContentOffsetChanges:v15];
    }
  }

  else
  {
    v12 = a5;
    v7 = [MEMORY[0x1E69DCEF8] instancesRespondToSelector:sel_showScrollIndicatorsForContentOffsetChanges_];
    a5 = v12;
    byte_1EB01D602 = v7;
    byte_1EB01D603 = 1;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [a1 setContentOffset:? animated:?];
  [a1 contentOffset];
  *v20 = v8;
  *&v20[8] = v9;
  WebCore::FloatPoint::FloatPoint(&v14, v20);
  WebCore::FloatPoint::FloatPoint(&v13, &v19);
  v10 = vmvn_s8(vceqz_f32(vsub_f32(v14, v13)));
  if (v10.i8[4])
  {
    v11 = v10.i8[0] & 1 | 2;
  }

  else
  {
    v11 = v10.i8[0] & 1;
  }

  return [a1 _flashScrollIndicatorsForAxes:v11 persistingPreviousFlashes:1];
}

@end