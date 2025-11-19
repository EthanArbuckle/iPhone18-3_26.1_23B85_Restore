@interface SFNavigationBar
@end

@implementation SFNavigationBar

void __28___SFNavigationBar_setItem___block_invoke(id *a1)
{
  [(_SFNavigationBar *)a1[4] _updatePlaceholderText];
  [a1[4] _updateText];
  [(_SFNavigationBar *)a1[4] _updateShowsSearchIndicator];
  [(_SFNavigationBar *)a1[4] _updateAccessoryButtonsVisibility];
  [(_SFNavigationBar *)a1[4] _updateMediaStateMuteButton];
  [(_SFNavigationBar *)a1[4] _updateNavigationBarTrailingButtonType];
  [(_SFNavigationBar *)a1[4] _updateTextColor];
  [*(a1[4] + 51) resetDisplay];
  [a1[4] _updateSecurityWarningsVisibility];
  [(_SFNavigationBar *)a1[4] _updateProgressView];
  [(_SFNavigationBar *)a1[4] _updateFormatButtonAccessories];
  if ([(_SFNavigationBar *)a1[4] _shouldUpdateBackdropStyleForTransitionFromItem:a1[6] toItem:?])
  {
    v2 = a1[4];

    [(_SFNavigationBar *)v2 _updateEffectiveTheme];
  }
}

uint64_t __51___SFNavigationBar_setDismissButtonStyle_animated___block_invoke(uint64_t a1)
{
  [(SFDismissButton *)*(*(a1 + 32) + 816) setStyle:?];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

id __45___SFNavigationBar__dimmingButtonWithAction___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[103] == 1)
    {
      v12 = MEMORY[0x1E69DCDD0];
      v13 = [MEMORY[0x1E69DCDC8] sf_shapeForToolbarButton:v7];
      v14 = v12;
    }

    else
    {
      v16 = [(SFNavigationBarMetrics *)WeakRetained[81] urlOutlineCornerRadius];
      v17 = MEMORY[0x1E69DCDC8];
      [v7 frame];
      v21 = CGRectInset(v20, 2.0, 2.0);
      v13 = [v17 shapeWithRoundedRect:v21.origin.x cornerRadius:{v21.origin.y, v21.size.width, v21.size.height, v16 + -2.0}];
      v14 = MEMORY[0x1E69DCDD0];
    }

    v15 = [v14 styleWithEffect:v8 shape:v13];
  }

  else
  {
    v15 = [MEMORY[0x1E69DCDD0] styleWithEffect:v8 shape:v9];
  }

  return v15;
}

uint64_t __53___SFNavigationBar_fluidProgressViewDidShowProgress___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 704) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __34___SFNavigationBar_layoutSubviews__block_invoke()
{
  _SFClamp();

  return _SFRoundFloatToPixels();
}

void __34___SFNavigationBar_layoutSubviews__block_invoke_2(uint64_t a1, unint64_t a2)
{
  v9 = [(_SFNavigationBar *)*(a1 + 32) _viewForAccessoryButtonType:a2];
  if (([v9 isHidden] & 1) == 0)
  {
    v4 = [(_SFNavigationBar *)*(a1 + 32) _widthForAccessoryButtonType:a2];
    v5 = *(a1 + 56);
    v6 = *(*(*(a1 + 40) + 8) + 24) + 0.0 + *(a1 + 48);
    v7 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v8 = 0.0;
    if (v7)
    {
      v5 = *(a1 + 64);
      v8 = (*(a1 + 56) - v5) * 0.5;
    }

    [v9 setFrame:{v6, v8, v4, v5}];
    *(*(*(a1 + 40) + 8) + 24) = v4 + 0.0 + *(*(*(a1 + 40) + 8) + 24);
  }
}

void __34___SFNavigationBar_layoutSubviews__block_invoke_3(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 32);
  v5 = [(_SFNavigationBar *)*(a1 + 32) _viewForAccessoryButtonType:a2];
  if (([v5 isHidden] & 1) == 0)
  {
    __34___SFNavigationBar_layoutSubviews__block_invoke_3_cold_1(v4, a2, a1, v5);
  }
}

uint64_t __34___SFNavigationBar_layoutSubviews__block_invoke_5(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    _SFRoundFloatToPixels();
    v3 = v2 + *(a1 + 56);
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 843))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  v6 = *(a1 + 88) / 0.7;
  [*(v4 + 448) urlSize];
  if (v6 >= v7)
  {
    [*(*(a1 + 32) + 448) urlSize];
    v8 = v9;
  }

  else
  {
    v8 = *(a1 + 88) / 0.7;
  }

  [*(*(a1 + 32) + 448) urlSize];
  v11 = v10;
  v12 = *(a1 + 32);
  if (*(v12 + 843))
  {
    v13 = 1;
  }

  else
  {
    v13 = [*(v12 + 848) showsSearchIndicator];
    v12 = *(a1 + 32);
  }

  [*(v12 + 448) frame];
  Height = CGRectGetHeight(v36);
  v15 = 0.0;
  v37.origin.y = 0.0;
  v37.origin.x = v5;
  v37.size.width = v8;
  v37.size.height = v11;
  v16 = CGRectGetHeight(v37);
  [*(*(a1 + 32) + 520) bounds];
  v17 = CGRectGetWidth(v38) - *(a1 + 104) + -14.0 - *(a1 + 112);
  v39.origin.y = 0.0;
  v39.origin.x = v5;
  v39.size.width = v8;
  v39.size.height = v11;
  v18 = fmin(CGRectGetWidth(v39), v17);
  [*(*(a1 + 32) + 448) setFrame:{v5, 0.0, v18, v11}];
  [*(*(a1 + 32) + 448) setTextAlignmentEdge:v13 ^ 1u];
  v19 = [*(*(a1 + 32) + 848) text];
  if (![v19 length])
  {
    [*(a1 + 32) placeholderHorizontalInset];
    v15 = v20;
  }

  if ((v13 & 1) == 0)
  {
    [*(*(a1 + 32) + 448) bounds];
    Width = CGRectGetWidth(v40);
    [*(*(a1 + 32) + 448) urlSize];
    v15 = v15 + v3 + Width - v22;
  }

  _SFCeilingFloatToPixels();
  [*(*(a1 + 32) + 456) ss_setUntransformedFrame:{v15, 0.0, v23, *(*(a1 + 32) + 496)}];
  v24 = *(a1 + 32);
  if (*(a1 + 128) == 0.0)
  {
    v25 = *(v24 + 843) ^ 1;
  }

  else
  {
    v25 = 0;
  }

  [*(v24 + 680) setHidden:(v25 & 1) == 0];
  if (Height != v16)
  {
    [*(*(a1 + 32) + 448) lastLineBaselineFrameOriginY];
    pencilTextInputElementIdentifier_block_invoke_URLBaseline = v26;
  }

  v27 = *(a1 + 32);
  v28 = *(v27 + 688);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __34___SFNavigationBar_layoutSubviews__block_invoke_6;
  v31[3] = &unk_1E8490998;
  v31[4] = v27;
  *&v31[5] = v5;
  v31[6] = 0;
  *&v31[7] = v18;
  *&v31[8] = v11;
  v31[9] = *(a1 + 128);
  v29 = *(a1 + 152);
  v32 = *(a1 + 136);
  v33 = v29;
  v34 = *(a1 + 168);
  v35 = v25 & 1;
  return [v28 enumerateObjectsWithOptions:2 usingBlock:v31];
}

void __34___SFNavigationBar_layoutSubviews__block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 size];
  if (v6 != 0.0)
  {
    v8 = v6;
    v9 = v7;
    [v5 spacing];
    v44 = v10;
    v11 = [v5 centerAligned];
    if (v11)
    {
      [*(*(a1 + 32) + 448) frame];
      MidY = CGRectGetMidY(v46);
    }

    else
    {
      MidY = *&pencilTextInputElementIdentifier_block_invoke_URLBaseline;
    }

    if (v11)
    {
      v13 = v9 * 0.5;
    }

    else
    {
      v13 = v9;
    }

    v14 = [v5 view];
    v15 = [v14 image];

    v16 = [v5 view];
    v17 = [v16 preferredSymbolConfiguration];
    v18 = [v15 imageWithSymbolConfiguration:v17];

    v19 = 0.0;
    if ((v11 & 1) == 0)
    {
      [v18 baselineOffsetFromBottom];
      v19 = v20;
    }

    v21 = a3 + 1;
    if (v21 == [*(*(a1 + 32) + 688) count])
    {
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
    }

    else
    {
      v26 = [*(*(a1 + 32) + 688) objectAtIndexedSubscript:v21];
      [v26 frame];
      v22 = v27;
      v23 = v28;
      v25 = v29;
      v24 = v30;
    }

    v47.origin.x = v22;
    v47.origin.y = v23;
    v47.size.width = v25;
    v47.size.height = v24;
    v31 = CGRectGetMinX(v47) - v8 - v44;
    v32 = v43 + v19 - v13;
    if (*(a1 + 72) < 1.0)
    {
      v33 = *(a1 + 96);
      *&v45.a = *(a1 + 80);
      *&v45.c = v33;
      *&v45.tx = *(a1 + 112);
      v34 = v31;
      *&v33 = v32;
      v35 = v8;
      v36 = v9;
      v48 = CGRectApplyAffineTransform(*(&v33 - 8), &v45);
      x = v48.origin.x;
      y = v48.origin.y;
      _SFRoundRectToPixels();
      v31 = v31 + v39 - x;
      v32 = v32 + v40 - y;
    }

    [v5 setFrame:{v31, v32, v8, v9}];
    v41 = *(a1 + 128);
    v42 = [v5 view];
    [v42 setHidden:v41];
  }
}

uint64_t __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 843))
  {
    __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_2_cold_2(v1, v2);
  }

  else
  {
    __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_2_cold_1(v1, v2);
  }

  [(_SFNavigationBar *)*v2 _updateAvailabilityAndPageMenuButtonAnimated:?];
  v3 = *(*v2 + 872);

  return [v3 setAlpha:0.0];
}

void __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 843) == 1)
  {
    [*(v2 + 744) setHidden:1];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 528))
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v5 = *(a1 + 32);
    v6 = *(v5 + 528);
    *(v5 + 528) = v4;

    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    v9 = [*(v7 + 872) selectionHighlightColor];
    [v8 setBackgroundColor:v9];

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 552))
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DC738]);
    v11 = *(a1 + 32);
    v12 = *(v11 + 552);
    *(v11 + 552) = v10;

    v13 = *(a1 + 32);
    v14 = *(v13 + 552);
    v15 = [*(v13 + 872) _clearButtonImageForState:0];
    [v14 setImage:v15 forState:0];

    v2 = *(a1 + 32);
  }

  v16 = [*(v2 + 456) attributedText];
  v17 = CTLineCreateWithAttributedString(v16);

  *(*(a1 + 32) + 536) = CTLineGetOffsetForStringIndex(v17, *(a1 + 48), 0);
  *(*(a1 + 32) + 544) = CTLineGetOffsetForStringIndex(v17, *(a1 + 56) + *(a1 + 48), 0);
  CFRelease(v17);
  [*(*(a1 + 32) + 528) setAlpha:(*(*(a1 + 32) + 843) ^ 1u)];
  v18 = *(a1 + 32);
  v19 = *(v18 + 552);
  if (*(v18 + 843) == 1)
  {
    CGAffineTransformMakeScale(&v21, 0.0, 0.0);
  }

  else
  {
    v20 = *(MEMORY[0x1E695EFD0] + 16);
    *&v21.a = *MEMORY[0x1E695EFD0];
    *&v21.c = v20;
    *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  [v19 setTransform:&v21];
  [*(*(a1 + 32) + 696) insertSubview:*(*(a1 + 32) + 528) aboveSubview:*(*(a1 + 32) + 520)];
  [*(*(a1 + 32) + 696) insertSubview:*(*(a1 + 32) + 552) belowSubview:*(*(a1 + 32) + 520)];
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_8(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  LOBYTE(a2) = *(v3 + 843);
  [*(v3 + 528) setAlpha:*&a2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 552);
  if (*(v4 + 843) == 1)
  {
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&v8.a = *MEMORY[0x1E695EFD0];
    *&v8.c = v6;
    *&v8.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v8, 0.0, 0.0);
  }

  return [v5 setTransform:&v8];
}

uint64_t __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);
  v3 = *(v2 + 640);
  *(v2 + 640) = 1;
  result = [*(a1 + 32) layoutBelowIfNeeded];
  *(*(a1 + 32) + 640) = v3;
  return result;
}

void __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_12(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = WBS_LOG_CHANNEL_PREFIXPencilInput();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 == 1)
  {
    if (v4)
    {
      __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_12_cold_2(a1);
    }

    [(_SFNavigationBar *)*(a1 + 32) _setHidePlaceholderURLItemsForPencilInput:?];
  }

  else if (v4)
  {
    __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_12_cold_1(a1);
  }

  [*(a1 + 32) setNeedsLayout];
  v5 = *(a1 + 32);
  if (*(v5 + 843) == 1)
  {
    __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_12_cold_3(v5, a1 + 32);
  }

  else
  {
    [*(v5 + 872) removeFromSuperview];
  }

  [*(*(a1 + 32) + 528) removeFromSuperview];
  v6 = *(a1 + 32);
  v7 = *(v6 + 528);
  *(v6 + 528) = 0;

  [*(*(a1 + 32) + 552) removeFromSuperview];
  v8 = *(a1 + 32);
  v9 = *(v8 + 552);
  *(v8 + 552) = 0;

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke_2;
  v9[3] = &unk_1E848F810;
  v10 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke_3;
  v8[3] = &unk_1E848FA00;
  v8[4] = v10;
  [MEMORY[0x1E69DD250] animateWithDuration:50331648 delay:v9 options:v8 animations:0.2 completion:0.0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke_4;
  v7[3] = &unk_1E848F810;
  v7[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] animateWithDuration:50331648 delay:v7 options:&__block_literal_global_10 animations:0.5 completion:0.0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 744);
  v5[4] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke_6;
  v6[3] = &unk_1E848F810;
  v6[4] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke_7;
  v5[3] = &unk_1E848FA00;
  return [MEMORY[0x1E69DD250] transitionWithView:v3 duration:5242882 options:v6 animations:v5 completion:0.1];
}

uint64_t __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke_7(uint64_t a1)
{
  [*(*(a1 + 32) + 744) setHighlightsBackground:0];
  v2 = *(*(a1 + 32) + 744);

  return [v2 setAccessibilityIdentifier:@"PageFormatMenuButton"];
}

uint64_t __65___SFNavigationBar__updateAvailabilityAndPageMenuButtonAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 432) addSubview:*(*(a1 + 32) + 472)];
    v2 = [*(*(a1 + 32) + 408) currentLabel];
    [*(*(a1 + 32) + 472) setText:v2];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65___SFNavigationBar__updateAvailabilityAndPageMenuButtonAnimated___block_invoke_2;
    v11[3] = &unk_1E848F810;
    v11[4] = *(a1 + 32);
    [MEMORY[0x1E69DD250] animateWithDuration:50331648 delay:v11 options:0 animations:0.2 completion:0.0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65___SFNavigationBar__updateAvailabilityAndPageMenuButtonAnimated___block_invoke_3;
    v10[3] = &unk_1E848F810;
    v10[4] = *(a1 + 32);
    [MEMORY[0x1E69DD250] animateWithDuration:50331648 delay:v10 options:0 animations:0.5 completion:0.06];
    v3 = *(a1 + 40);
    if ((v3 & 0x20) != 0)
    {
      *(*(a1 + 32) + 792) = 1;
    }

    else
    {
      v4 = *(a1 + 32);
      if ((v3 & 0x40) != 0)
      {
        *(v4 + 792) = 2;
      }

      else
      {
        *(v4 + 792) = 0;
      }
    }

    [*(*(a1 + 32) + 744) setHighlightsBackground:1];
    [*(*(a1 + 32) + 744) setAccessibilityIdentifier:@"ReaderButton"];
    v6 = *(a1 + 32);
    v7 = *(v6 + 744);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___SFNavigationBar__updateAvailabilityAndPageMenuButtonAnimated___block_invoke_4;
    v9[3] = &unk_1E848F810;
    v9[4] = v6;
    [MEMORY[0x1E69DD250] transitionWithView:v7 duration:5242882 options:v9 animations:0 completion:0.1];
    v5 = 0.0;
    if ((*(a1 + 48) & 1) == 0)
    {
      v5 = 0.1;
    }
  }

  else
  {
    v5 = 0.1;
  }

  return [(_SFNavigationBar *)*(a1 + 32) _adjustLabelRectForLeadingButtonWithDelay:v5];
}

uint64_t __65___SFNavigationBar__updateAvailabilityAndPageMenuButtonAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 448) contentView];
  [v2 setAlpha:0.0];

  [*(*(a1 + 32) + 480) setAlpha:0.0];
  [*(*(a1 + 32) + 464) setAlpha:0.0];
  [*(*(a1 + 32) + 664) setAlpha:0.0];
  v3 = *(*(a1 + 32) + 672);

  return [v3 setAlpha:0.0];
}

void __65___SFNavigationBar_navigationBarURLButtonDidReceivePasteCommand___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E69B1C50] builder];
    v6 = [v5 navigationIntentWithText:v7];
    [v4 navigationBar:WeakRetained didProduceNavigationIntent:v6];
  }
}

id __53___SFNavigationBar_dragInteraction_sessionWillBegin___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DC998];
  v2 = *(a1 + 32);
  v3 = [v2 _title];
  v4 = [v1 previewForURL:v2 title:v3];

  return v4;
}

void __48___SFNavigationBar_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((v3 + 888));
    [WeakRetained navigationBar:*(a1 + 32) didProduceNavigationIntent:v4];
  }
}

double __48___SFNavigationBar__updateAccessoryButtonsAlpha__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(SFNavigationBarAccessoryButtonArrangement *)*(*(a1 + 32) + 736) containsButtonType:a2];
  result = 0.0;
  if (v3)
  {
    if ((*(*(a1 + 32) + 560) & 1) == 0)
    {
      return *(a1 + 40);
    }
  }

  return result;
}

void __31___SFNavigationBar__updateText__block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_42(a1);
  [(_SFNavigationBar *)v2 _attributedStringSecurityAnnotation];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_23();
  [*(*(v1 + 32) + 480) setAttributedText:?];
}

void __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_42(a1);
  [(_SFNavigationBar *)v2 _updateToolbarAndCancelButtonAlpha];
  [(_SFNavigationBar *)*(v1 + 32) _updateAccessoryButtonsAlpha];
  v3 = *(v1 + 32);
  v4 = (*(v3 + 843) ^ 1u);
  v5 = [*(v3 + 448) contentView];
  [v5 setAlpha:v4];

  v6 = *(v1 + 32);
  v7 = 0.0;
  if ((*(v6 + 843) & 1) == 0)
  {
    v7 = [*(v6 + 848) showsSecurityAnnotation];
    v6 = *(v1 + 32);
  }

  [*(v6 + 480) setAlpha:v7];
  v8 = *(v1 + 32);
  LOBYTE(v9) = *(v8 + 843);
  [*(v8 + 456) setAlpha:v9];
  if ([*(*(v1 + 32) + 848) overrideBarStyleForSecurityWarning])
  {
    v10 = *(v1 + 32);

    [(_SFNavigationBar *)v10 _updateEffectiveTheme];
  }
}

void __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_10(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_42(a1);
  [(_SFNavigationBar *)v2 _updateFakeViews];
  v3 = *(v1 + 40);

  dispatch_group_leave(v3);
}

uint64_t __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 448) contentView];
  [v2 setAlpha:1.0];

  v3 = OUTLINED_FUNCTION_57();
  [v4 setAlpha:v3];
  v5 = OUTLINED_FUNCTION_57();
  [v6 setAlpha:v5];
  [*(*(a1 + 32) + 464) setAlpha:-[_SFNavigationBar _privateBrowsingLabelRevealPercent](*(a1 + 32))];
  result = [*(*(a1 + 32) + 848) showsSecurityAnnotation];
  if (result)
  {
    v9 = OUTLINED_FUNCTION_57();

    return [v8 setAlpha:v9];
  }

  return result;
}

void __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke_6(uint64_t a1)
{
  *(*(a1 + 32) + 792) = 0;
  [(_SFNavigationBar *)*(a1 + 32) _formatToggleButtonImage];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_23();
  [*(*(a1 + 32) + 744) setImage:?];
}

void __65___SFNavigationBar__updateAvailabilityAndPageMenuButtonAnimated___block_invoke_4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_42(a1);
  [(_SFNavigationBar *)v2 _formatToggleButtonImage];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_23();
  [*(*(v1 + 32) + 744) setImage:?];
}

uint64_t __62___SFNavigationBar__adjustLabelRectForLeadingButtonWithDelay___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_42(a1);
  v3 = v2[54];
  if (v3)
  {
    *(v3 + 408) = 1;
    v2 = *(v1 + 32);
  }

  [v2 setNeedsLayout];
  result = [*(v1 + 32) layoutIfNeeded];
  v5 = *(*(v1 + 32) + 432);
  if (v5)
  {
    *(v5 + 408) = 0;
  }

  return result;
}

double __34___SFNavigationBar_layoutSubviews__block_invoke_3_cold_1(uint64_t *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v6 = [(_SFNavigationBar *)*a1 _widthForAccessoryButtonType:a2];
  [a4 setFrame:{*(a3 + 80) + CGRectGetWidth(*(a3 + 48)) - (v6 + *(*(*(a3 + 40) + 8) + 24) + 0.0), 0.0, v6, *(a3 + 88)}];
  v7 = *(*(a3 + 40) + 8);
  result = v6 + 0.0 + *(v7 + 24);
  *(v7 + 24) = result;
  return result;
}

void __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  [*(a1 + 432) setHidden:0];
  [*(*a2 + 696) setUserInteractionEnabled:1];
  v3 = *a2;

  [(_SFNavigationBar *)v3 _updateAccessoryButtonsVisibility];
}

uint64_t __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_2_cold_2(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 872);
  v4 = [*(a1 + 848) text];
  if ([v4 length])
  {
    v5 = *(*a2 + 728);
  }

  else
  {
    v5 = 0;
  }

  [v3 setAttributedText:v5];

  [*(*a2 + 424) addSubview:*(*a2 + 872)];
  [(_SFNavigationBar *)*a2 _updateAccessoryButtonsVisibility];
  v6 = *a2;

  return [(_SFNavigationBar *)v6 _updateTextFieldFrame];
}

void __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_12_cold_1(uint64_t a1)
{
  if (*(*(a1 + 32) + 843))
  {
    v1 = @"YES";
  }

  else
  {
    v1 = @"NO";
  }

  v2 = v1;
  OUTLINED_FUNCTION_63(&dword_1D4644000, v3, v4, "Not changing placeholder hiding after animation because it wasn't hidden before; expanded: %{public}@", v5, v6, v7, v8, 2u);
}

void __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_12_cold_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 843))
  {
    v1 = @"YES";
  }

  else
  {
    v1 = @"NO";
  }

  v2 = v1;
  OUTLINED_FUNCTION_63(&dword_1D4644000, v3, v4, "Unhiding placeholder items since expand animation is complete; expanded: %{public}@", v5, v6, v7, v8, 2u);
}

uint64_t __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_12_cold_3(uint64_t a1, uint64_t a2)
{
  [(_SFNavigationBar *)a1 _updateAccessoryButtonsVisibility];
  [*(*a2 + 696) setUserInteractionEnabled:0];
  [*(*a2 + 432) setHidden:1];
  v3 = OUTLINED_FUNCTION_57();
  return [v4 setAlpha:v3];
}

@end