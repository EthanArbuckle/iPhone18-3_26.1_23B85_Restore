@interface AVMobileControlsStyleSheet
- (AVMobileControlsStyleSheet)initWithTraitCollection:(id)a3;
- (UIEdgeInsets)embeddedInlineInsets;
- (UIEdgeInsets)landscapeFullscreenInsets;
- (UIEdgeInsets)playbackControlsViewLayoutMarginsForView:(id)a3 keyboardHeight:(double)a4 isFullScreen:(BOOL)a5;
- (UIEdgeInsets)portraitFullscreenInsets;
@end

@implementation AVMobileControlsStyleSheet

- (UIEdgeInsets)embeddedInlineInsets
{
  top = self->_embeddedInlineInsets.top;
  left = self->_embeddedInlineInsets.left;
  bottom = self->_embeddedInlineInsets.bottom;
  right = self->_embeddedInlineInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)playbackControlsViewLayoutMarginsForView:(id)a3 keyboardHeight:(double)a4 isFullScreen:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(AVMobileControlsStyleSheet *)self traitCollection];
  [(AVMobileControlsStyleSheet *)self standardPaddingFullScreen];
  v11 = v10;
  v12 = [v9 userInterfaceIdiom];
  [v8 safeAreaInsets];
  v14 = v13;
  v89 = v15;
  v91 = v16;
  v86 = v17;
  v18 = [v8 window];
  v19 = [v18 windowScene];
  v20 = v19;
  v93 = v14;
  if (v18)
  {
    v85 = a4;
    v87 = v11;
    v21 = [v19 statusBarManager];
    [v21 statusBarFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    Width = v28;

    v95.origin.x = v23;
    v95.origin.y = v25;
    v95.size.width = v27;
    v95.size.height = Width;
    Height = CGRectGetHeight(v95);
    v96.origin.x = v23;
    v96.origin.y = v25;
    v96.size.width = v27;
    v96.size.height = Width;
    if (Height > CGRectGetWidth(v96))
    {
      v97.origin.x = v23;
      v97.origin.y = v25;
      v97.size.width = v27;
      v97.size.height = Width;
      v31 = CGRectGetHeight(v97);
      v98.origin.x = v23;
      v98.origin.y = v25;
      v98.size.width = v27;
      v98.size.height = Width;
      Width = CGRectGetWidth(v98);
      v27 = v31;
    }

    [v8 convertRect:v18 fromView:{v23, v25, v27, Width}];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [v8 bounds];
    v106.origin.x = v40;
    v106.origin.y = v41;
    v106.size.width = v42;
    v106.size.height = v43;
    v99.origin.x = v33;
    v99.origin.y = v35;
    v99.size.width = v37;
    v99.size.height = v39;
    v100 = CGRectIntersection(v99, v106);
    v44 = CGRectGetHeight(v100);
    if (v44 >= 0.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0.0;
    }

    [v8 bounds];
    [v18 convertRect:v8 fromView:?];
    v14 = v93;
    v46 = v93 + CGRectGetMinY(v101);
    v102.origin.x = v23;
    v102.origin.y = v25;
    v102.size.width = v27;
    v102.size.height = Width;
    v11 = v87;
    v47 = v46 > v87 * 0.5 + CGRectGetMaxY(v102);
    a4 = v85;
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v47 = 0;
    v45 = 0.0;
    if (!v5)
    {
LABEL_21:
      v59 = [v8 window];
      v60 = [v59 screen];

      [(AVMobileControlsStyleSheet *)self embeddedInlineInsets];
      v61 = [MEMORY[0x1E69DC938] currentDevice];
      [v61 orientation];

      [v60 _peripheryInsets];
      UIEdgeInsetsAdd();
      v63 = v62;
      v65 = v64;
      v88 = v66;
      v90 = v67;
      v68 = [v8 avkit_isDescendantOfNonPagingScrollView];
      v69 = v93 + v63;
      v70 = v91 + v65;
      if (v68)
      {
        v70 = v65;
        v69 = v63;
      }

      v92 = v70;
      v94 = v69;

      goto LABEL_48;
    }
  }

  if (v12 == 5)
  {
    goto LABEL_21;
  }

  v48 = v11 + a4;
  if (a4 >= 100.0)
  {
    v48 = 0.0;
  }

  if (v91 >= v48)
  {
    v49 = v91;
  }

  else
  {
    v49 = v48;
  }

  [v9 displayCornerRadius];
  if (v50 <= 0.0)
  {
    v71 = v11 * 0.5 + v45;
    if (v71 < v11)
    {
      v71 = v11;
    }

    if (v47)
    {
      v71 = v11 * 0.5 + v14;
    }

    v94 = v71;
    v92 = v11 + v49;
    v88 = v11;
    v90 = v11;
  }

  else
  {
    v51 = MEMORY[0x1E69DDA98];
    if ([*MEMORY[0x1E69DDA98] _isClassic] && objc_msgSend(*v51, "_classicMode") != 5)
    {
      [v8 bounds];
      v76 = CGRectGetWidth(v103);
      [v8 bounds];
      if (v76 <= CGRectGetHeight(v104))
      {
        v77 = v11;
      }

      else
      {
        v77 = v11 * 1.5;
      }

      v90 = v77;
      v92 = v77;
      v88 = v77;
      v94 = v77;
    }

    else
    {
      [v8 avkit_overrideLayoutMarginsForCounterRotation];
      v56.f64[0] = v52;
      v56.f64[1] = v53;
      v57.f64[0] = v54;
      v57.f64[1] = v55;
      v58 = vdupq_n_s64(0x10000000000000uLL);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v56, v58), vceqq_f64(v57, v58))))))
      {
        v88 = v53;
        v90 = v55;
        v92 = v54;
        v94 = v52;
      }

      else
      {
        if (([v20 interfaceOrientation] - 3) > 1)
        {
          [(AVMobileControlsStyleSheet *)self portraitFullscreenInsets];
        }

        else
        {
          [(AVMobileControlsStyleSheet *)self landscapeFullscreenInsets];
        }

        if (v14 >= self->_statusBarHeightThreshold)
        {
          v72 = v11 + v14;
        }

        if (v72 < v14)
        {
          v72 = v14;
        }

        v94 = v72;
        v78 = v89;
        if (v73 >= v89)
        {
          v78 = v73;
        }

        v88 = v78;
        v79 = v86;
        if (v75 >= v86)
        {
          v79 = v75;
        }

        v90 = v79;
        if (v74 >= v49)
        {
          v80 = v74;
        }

        else
        {
          v80 = v49;
        }

        v92 = v80;
      }
    }
  }

LABEL_48:

  v82 = v92;
  v81 = v94;
  v83 = v88;
  v84 = v90;
  result.right = v84;
  result.bottom = v82;
  result.left = v83;
  result.top = v81;
  return result;
}

- (UIEdgeInsets)portraitFullscreenInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)landscapeFullscreenInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (AVMobileControlsStyleSheet)initWithTraitCollection:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVMobileControlsStyleSheet;
  v6 = [(AVMobileControlsStyleSheet *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traitCollection, a3);
    if ([v5 userInterfaceIdiom])
    {
      v8 = [v5 userInterfaceIdiom];
      v9 = 25.0;
      if (v8 != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = 44.0;
    }

    v7->_statusBarHeightThreshold = v9;
  }

LABEL_7:

  return v7;
}

@end