@interface UIScrollView
- (CGPoint)tui_contentOffsetForScrollingToRect:(CGRect)a3 atScrollPosition:(unint64_t)a4 delegate:(id)a5;
- (UIEdgeInsets)tui_revealableContentPadding;
- (void)tui_scrollToRect:(CGRect)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5 delegate:(id)a6;
@end

@implementation UIScrollView

- (UIEdgeInsets)tui_revealableContentPadding
{
  if (objc_opt_respondsToSelector())
  {
    [(UIScrollView *)self _revealableContentPadding];
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)tui_contentOffsetForScrollingToRect:(CGRect)a3 atScrollPosition:(unint64_t)a4 delegate:(id)a5
{
  rect = a3.size.height;
  x = a3.origin.x;
  y = a3.origin.y;
  rect2 = a3.size.width;
  v7 = a5;
  [(UIScrollView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self adjustedContentInset];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(UIScrollView *)self tui_revealableContentPadding];
  if (v7)
  {
    [v7 contentInsetsForScrollingToRectWithContentInsets:{v17, v19, v21, v23}];
    v17 = v24;
    v19 = v25;
    v21 = v26;
    v23 = v27;
  }

  v28 = v9 + v19;
  v29 = v11 + v17;
  v30 = v13 - (v23 + v19);
  v31 = v15 - (v21 + v17);
  v32 = x;
  v33 = y;
  if (a4)
  {
    v39 = x;
    v40 = y;
    goto LABEL_10;
  }

  v34 = rect;
  v35 = rect2;
  if ((a4 & 2) != 0)
  {
    v108.origin.x = x;
    v108.origin.y = y;
    v108.size.width = rect2;
    v108.size.height = rect;
    MidY = CGRectGetMidY(v108);
    v109.origin.x = v28;
    v109.origin.y = v29;
    v109.size.width = v30;
    v109.size.height = v31;
    v37 = MidY + CGRectGetHeight(v109) * -0.5;
LABEL_14:
    v34 = rect;
    goto LABEL_15;
  }

  if ((a4 & 4) != 0)
  {
    v44 = x;
    v45 = y;
    v46 = rect2;
LABEL_13:
    v47 = v34;
    MaxY = CGRectGetMaxY(*&v44);
    v110.origin.x = v28;
    v110.origin.y = v29;
    v110.size.width = v30;
    v110.size.height = v31;
    v37 = MaxY - CGRectGetHeight(v110);
    goto LABEL_14;
  }

  v105.origin.x = v28;
  v105.origin.y = v29;
  v105.size.width = v30;
  v105.size.height = v31;
  v36 = rect;
  v37 = v29;
  if (CGRectContainsRect(v105, *&v32))
  {
    goto LABEL_15;
  }

  v106.origin.y = y;
  v106.origin.x = x;
  v106.size.width = rect2;
  v106.size.height = rect;
  MinY = CGRectGetMinY(v106);
  v107.origin.x = v28;
  v107.origin.y = v29;
  v107.size.width = v30;
  v107.size.height = v31;
  if (MinY < CGRectGetMinY(v107))
  {
    v39 = x;
    v40 = y;
LABEL_10:
    v41 = rect2;
    v34 = rect;
    v42 = rect;
    v37 = CGRectGetMinY(*&v39);
    goto LABEL_15;
  }

  v125.origin.x = x;
  v125.origin.y = y;
  v125.size.width = rect2;
  v34 = rect;
  v125.size.height = rect;
  v90 = CGRectGetMaxY(v125);
  v126.origin.x = v28;
  v126.origin.y = v29;
  v126.size.width = v30;
  v126.size.height = v31;
  v91 = v90 <= CGRectGetMaxY(v126);
  v37 = v29;
  if (!v91)
  {
    v44 = x;
    v45 = y;
    v46 = rect2;
    goto LABEL_13;
  }

LABEL_15:
  if ((a4 & 8) != 0)
  {
    v56 = x;
    v57 = y;
    v58 = rect2;
    v59 = v34;
    goto LABEL_22;
  }

  v49 = x;
  v50 = y;
  if ((a4 & 0x10) != 0)
  {
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = rect2;
    v114.size.height = v34;
    MidX = CGRectGetMidX(v114);
    v115.origin.x = v28;
    v115.origin.y = v29;
    v115.size.width = v30;
    v115.size.height = v31;
    v54 = MidX + CGRectGetWidth(v115) * -0.5;
    goto LABEL_26;
  }

  if ((a4 & 0x20) != 0)
  {
    v61 = x;
    v62 = y;
LABEL_25:
    v63 = rect2;
    v64 = v34;
    MaxX = CGRectGetMaxX(*&v61);
    v116.origin.x = v28;
    v116.origin.y = v29;
    v116.size.width = v30;
    v116.size.height = v31;
    v54 = MaxX - CGRectGetWidth(v116);
    goto LABEL_26;
  }

  v111.origin.x = v28;
  v111.origin.y = v29;
  v111.size.width = v30;
  v111.size.height = v31;
  v51 = rect2;
  v52 = v34;
  v53 = CGRectContainsRect(v111, *&v49);
  v54 = v28;
  if (v53)
  {
    goto LABEL_26;
  }

  v112.origin.x = x;
  v112.origin.y = y;
  v112.size.width = rect2;
  v112.size.height = v34;
  MinX = CGRectGetMinX(v112);
  v113.origin.x = v28;
  v113.origin.y = v29;
  v113.size.width = v30;
  v113.size.height = v31;
  if (MinX < CGRectGetMinX(v113))
  {
    v56 = x;
    v57 = y;
    v58 = rect2;
    v59 = rect;
LABEL_22:
    v54 = CGRectGetMinX(*&v56);
    goto LABEL_26;
  }

  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = rect2;
  v34 = rect;
  v127.size.height = rect;
  v94 = CGRectGetMaxX(v127);
  v128.origin.x = v28;
  v128.origin.y = v29;
  v128.size.width = v30;
  v128.size.height = v31;
  v91 = v94 <= CGRectGetMaxX(v128);
  v54 = v28;
  if (!v91)
  {
    v61 = x;
    v62 = y;
    goto LABEL_25;
  }

LABEL_26:
  v66 = v28;
  v67 = v31;
  v68 = v30;
  v69 = v54 - v19;
  v70 = v37 - v17;
  if (v7)
  {
    v71 = v29;
    v72 = v66;
    [v7 contentOffsetFromProposedContentOffset:a4 atScrollPosition:{v69, v70}];
    v93 = v73;
  }

  else
  {
    v93 = v69;
    v71 = v29;
    v72 = v66;
  }

  rect2a = v70;
  [(UIScrollView *)self contentSize];
  v75 = v74;
  v77 = v76;
  [(UIScrollView *)self adjustedContentInset];
  UIEdgeInsetsAdd();
  v79 = v78;
  v95 = v80;
  v117.origin.x = v72;
  v117.origin.y = v71;
  v117.size.width = v68;
  v117.size.height = v67;
  v96 = v79;
  recta = v77;
  v81 = v79 + rect2a + CGRectGetHeight(v117);
  v100 = v75;
  v118.origin.x = CGPointZero.x;
  v118.origin.y = v92;
  v118.size.width = v75;
  v118.size.height = v77;
  if (v81 > CGRectGetMaxY(v118))
  {
    v119.size.width = v75;
    v119.origin.x = CGPointZero.x;
    v119.origin.y = v92;
    v119.size.height = v77;
    v82 = CGRectGetMaxY(v119);
    v120.origin.x = v72;
    v120.origin.y = v71;
    v120.size.width = v68;
    v120.size.height = v67;
    rect2a = v82 - (v96 + CGRectGetHeight(v120));
  }

  v121.origin.x = v72;
  v121.origin.y = v71;
  v121.size.width = v68;
  v121.size.height = v67;
  v83 = v93;
  v84 = v95 + v93 + CGRectGetWidth(v121);
  v122.size.width = v100;
  v122.origin.x = CGPointZero.x;
  v122.origin.y = v92;
  v122.size.height = recta;
  if (v84 > CGRectGetMaxX(v122))
  {
    v123.size.width = v100;
    v123.origin.x = CGPointZero.x;
    v123.origin.y = v92;
    v123.size.height = recta;
    v85 = CGRectGetMaxX(v123);
    v124.origin.x = v72;
    v124.origin.y = v71;
    v124.size.width = v68;
    v124.size.height = v67;
    v83 = v85 - (v95 + CGRectGetWidth(v124));
  }

  if (rect2a >= -v96)
  {
    v86 = rect2a;
  }

  else
  {
    v86 = -v96;
  }

  if (v83 >= -v95)
  {
    v87 = v83;
  }

  else
  {
    v87 = -v95;
  }

  v88 = v87;
  v89 = v86;
  result.y = v89;
  result.x = v88;
  return result;
}

- (void)tui_scrollToRect:(CGRect)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5 delegate:(id)a6
{
  v6 = a5;
  [(UIScrollView *)self tui_contentOffsetForScrollingToRect:a4 atScrollPosition:a6 delegate:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = v9;
  v11 = v8;
  if (v9 == 0.0 && v8 < 0.0)
  {

    [(UIScrollView *)self _scrollToTopIfPossible:v6];
  }

  else if (v6)
  {

    [(UIScrollView *)self setContentOffset:1 animated:?];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(UIScrollView *)self setContentOffset:0 animated:v10, v11];

    +[CATransaction commit];
  }
}

@end