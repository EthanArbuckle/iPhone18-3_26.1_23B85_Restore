@interface AVMobileTitlebarView
- (AVMobileTitlebarView)initWithStyleSheet:(id)a3;
- (AVMobileTitlebarViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (double)titleLabelCenterYOffset;
- (void)_infoAffordancePressed:(id)a3;
- (void)_setUpInfoAffordanceIfNeeded;
- (void)_setUpSubtitleLabelIfNeeded;
- (void)_setUpTitleLabelIfNeeded;
- (void)_updateFonts;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentTag:(id)a3;
- (void)setShowsInfoAffordance:(BOOL)a3;
- (void)setStyleSheet:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation AVMobileTitlebarView

- (AVMobileTitlebarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_infoAffordancePressed:(id)a3
{
  v4 = [(AVMobileTitlebarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVMobileTitlebarView *)self delegate];
    [v6 titleBarViewInfoAffordanceWasPressed:self];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3
{
  [(AVMobileTitlebarView *)self setNeedsLayout];
  v4 = [(AVMobileTitlebarView *)self superview];
  [v4 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
}

- (void)layoutSubviews
{
  v101 = *MEMORY[0x1E69E9840];
  v99.receiver = self;
  v99.super_class = AVMobileTitlebarView;
  [(AVView *)&v99 layoutSubviews];
  [(AVMobileTitlebarView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v3;
  v8 = [(AVMobileTitlebarView *)self effectiveUserInterfaceLayoutDirection];
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  v11 = 0.0;
  v12 = 0x1EA9C0000uLL;
  if ([(AVMobileTitlebarView *)self showsContentTag]&& self->_contentTag && (contentTagView = self->_contentTagView) != 0)
  {
    [(AVMobileContentTagView *)contentTagView intrinsicContentSize];
    v16 = v15 > v6;
    v89 = v15;
    v87 = v14;
    if (v14 <= v4 + -20.0)
    {
      if (v15 <= v6)
      {
        v94 = v14 + 5.0;
        v79 = [(AVMobileContentTag *)self->_contentTag placement];
        if (v79)
        {
          if (v79 == 1)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v7 = v4 - (v94 + 2.0);
            v96 = v7;
            v97 = v94 + 2.0;
            v98 = 0.0;
            v94 = v94 + 2.0;
            v11 = v89;
            goto LABEL_7;
          }

          v80 = _AVLog();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            v82 = [(AVMobileContentTag *)self->_contentTag placement];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v82;
            _os_log_error_impl(&dword_18B49C000, v80, OS_LOG_TYPE_ERROR, "Error: Unrecognized content tag placement - %ld", &buf, 0xCu);
          }
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v96 = v4 - v94;
        v97 = 0.0;
        v98 = v89;
        goto LABEL_7;
      }

      v17 = 0;
      v16 = 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = 1;
    v96 = v7;
    v97 = 0.0;
    v98 = 0.0;
    v94 = 0.0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
    v96 = v7;
    v97 = 0.0;
    v98 = 0.0;
    v94 = 0.0;
    v89 = v10;
    v87 = v9;
  }

LABEL_7:
  if ([(AVMobileTitlebarView *)self showsSubtitle]&& self->_subtitleLabelString && (v17 & 1) == 0)
  {
    [(UILabel *)self->_subtitleLabel intrinsicContentSize];
    v71 = v70;
    v72 = v70 > v6 || v96 < 30.0;
    v86 = v70;
    if (v72)
    {
      v19 = 1;
      v20 = v6;
    }

    else
    {
      v19 = 0;
      v78 = v98;
      if (v98 < v71)
      {
        v78 = v71;
      }

      v98 = v78;
      v20 = v6 - (v78 + 2.0);
    }
  }

  else
  {
    v19 = 1;
    v20 = v6;
    v86 = v10;
  }

  v21 = 0x1EA9C0000uLL;
  v91 = v8;
  if ([(AVMobileTitlebarView *)self showsTitle]&& !((v17 | v16) & 1 | (self->_titleLabelString == 0)))
  {
    [(UILabel *)self->_titleLabel intrinsicContentSize];
    v85 = v30;
    v23 = v31;
    v32 = v31;
    v33 = v20;
    v35 = vabds_f32(v32, v33) >= 0.00000011921 && v32 >= v33;
    v22 = v35 || v7 < 30.0;
    if ([(AVMobileTitlebarView *)self showsInfoAffordance]&& (v22 & 1) == 0)
    {
      [(AVButton *)self->_infoAffordance intrinsicContentSize];
      LOBYTE(v22) = 0;
      v88 = v37;
      v38 = v37 + 6.0;
      v39 = v96;
      v40 = v96 - v38;
      v41 = v7 - v38;
      v42 = v40 < 30.0;
      if (v41 < 30.0)
      {
        v42 = 1;
      }

      v93 = v36;
      v24 = v36 > v6 || v42;
      if (!v24)
      {
        v7 = v41;
        v39 = v40;
      }

      v96 = v39;
      goto LABEL_33;
    }

    v93 = v10;
    v88 = v9;
  }

  else
  {
    [(AVMobileTitlebarView *)self showsInfoAffordance];
    v22 = 1;
    v88 = v9;
    v85 = v9;
    v93 = v10;
    v23 = v10;
  }

  v92 = 0.0;
  v24 = 1;
  v25 = 1;
  v26 = 0.0;
  v95 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  if (v18 & v19 & v22)
  {
    if (v18)
    {
LABEL_16:
      v29 = v25;
      goto LABEL_49;
    }

    goto LABEL_57;
  }

LABEL_33:
  v83 = v4;
  v43 = 0.0;
  if (((v18 & v19) | v22))
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 2.0;
  }

  v45 = v98 + v23 + v44;
  v46 = v97 + v7;
  if (v94 + v96 >= v97 + v7)
  {
    v46 = v94 + v96;
  }

  if (v11 >= v45)
  {
    v45 = v11;
  }

  if (v45 >= v93)
  {
    v26 = v45;
  }

  else
  {
    v26 = v93;
  }

  v92 = v6 - v26;
  v95 = v46;
  [(UIView *)self->_contentContainerView avkit_setFrame:v8 inLayoutDirection:0.0, *&v83];
  v47 = [(AVMobileTitlebarView *)self effectiveUserInterfaceLayoutDirection];
  v48 = [MEMORY[0x1E69DC888] blackColor];
  v49 = [v48 CGColor];

  v50 = [MEMORY[0x1E69DC888] clearColor];
  v51 = [v50 CGColor];

  [(UIView *)self->_contentContainerView bounds];
  v53 = v52;
  v55 = v54;
  v56 = 20.0 / v52;
  v57 = v56;
  if (v47)
  {
    *&buf = v51;
    v58 = v49;
  }

  else
  {
    v43 = 1.0 - v57;
    *&buf = v49;
    v58 = v51;
    v57 = 1.0;
  }

  *(&buf + 1) = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CAGradientLayer *)self->_contentContainerViewMask setStartPoint:v43, 0.5];
  [(CAGradientLayer *)self->_contentContainerViewMask setEndPoint:v57, 0.5];
  [(CAGradientLayer *)self->_contentContainerViewMask setColors:v59];
  [(CAGradientLayer *)self->_contentContainerViewMask setFrame:0.0, 0.0, v53, v55];
  [MEMORY[0x1E6979518] commit];

  v28 = v26 - v98 - v44;
  v27 = v26 - v23;
  if ((v22 & 1) == 0)
  {
    v12 = 0x1EA9C0000;
    v8 = v91;
    v4 = v84;
    v21 = 0x1EA9C0000;
    if (((v18 | v19 ^ 1) & 1) == 0 && [(AVMobileContentTag *)self->_contentTag placement]== 1)
    {
      v27 = v27 + (v89 - v23) * -0.5;
    }

    v25 = 0;
    v28 = v28 - v23;
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_57:
    v29 = v25;
    v60 = 0x1EA9C0000;
    goto LABEL_67;
  }

  v12 = 0x1EA9C0000uLL;
  v4 = v84;
  v21 = 0x1EA9C0000;
  if (v18)
  {
    v29 = 0;
    v25 = 1;
    v8 = v91;
LABEL_49:
    v60 = 0x1EA9C0000uLL;
    if ((v19 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_77;
  }

  v60 = 0x1EA9C0000uLL;
  v29 = 0;
  if ([(AVMobileContentTag *)self->_contentTag placement]== 1)
  {
    v28 = (v89 - v98) * 0.5 + v26 - v89;
  }

  v25 = 1;
LABEL_67:
  v73 = [(AVMobileContentTag *)self->_contentTag placement];
  if (!v73)
  {
LABEL_75:
    v74 = (v98 - v89) * 0.5 + v28;
    goto LABEL_76;
  }

  if (v73 != 1)
  {
    v75 = v12;
    v76 = _AVLog();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v81 = [(AVMobileContentTag *)self->_contentTag placement];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v81;
      _os_log_error_impl(&dword_18B49C000, v76, OS_LOG_TYPE_ERROR, "Error: Unrecognized content tag placement - %ld", &buf, 0xCu);
    }

    v12 = v75;
    v21 = 0x1EA9C0000uLL;
    goto LABEL_75;
  }

  v74 = v26 - v89 + (v26 - v89) * -0.25;
  if ((v19 | v25))
  {
    v74 = v26 - v89;
  }

LABEL_76:
  v8 = v91;
  [*(&self->super.super.super.super.isa + *(v12 + 3672)) avkit_setFrame:v91 inLayoutDirection:{0.0, v74, v87}];
  if ((v19 & 1) == 0)
  {
LABEL_50:
    v90 = v25;
    v61 = v8;
    v62 = v29;
    v63 = v19;
    v64 = v12;
    v65 = v18;
    v66 = v24;
    v67 = v21;
    v68 = *(v60 + 3684);
    [*(&self->super.super.super.super.isa + v68) setPreferredMaxLayoutWidth:v96];
    v69 = *(&self->super.super.super.super.isa + v68);
    v21 = v67;
    v24 = v66;
    v18 = v65;
    v12 = v64;
    v19 = v63;
    v29 = v62;
    v8 = v61;
    v25 = v90;
    [v69 avkit_setFrame:v8 inLayoutDirection:{v94, (v98 - v86) * 0.5 + v28, v95}];
    if ((v90 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_78:
    if (v24)
    {
      goto LABEL_82;
    }

    goto LABEL_79;
  }

LABEL_77:
  if (v25)
  {
    goto LABEL_78;
  }

LABEL_51:
  [(UILabel *)self->_titleLabel avkit_setFrame:v8 inLayoutDirection:v97, v27, v95, v23];
  if (v24)
  {
    goto LABEL_82;
  }

LABEL_79:
  v77 = v97 + v85 + 6.0;
  if (v77 >= v4 - v88)
  {
    v77 = v4 - v88;
  }

  [*(&self->super.super.super.super.isa + *(v21 + 3676)) avkit_setFrame:v8 inLayoutDirection:{v77, v27 + v92 + (v93 - v23) * -0.5 + 1.0}];
LABEL_82:
  [(UIView *)self->_contentContainerView setHidden:v29];
  [*(&self->super.super.super.super.isa + *(v12 + 3672)) setHidden:v18];
  [*(&self->super.super.super.super.isa + *(v60 + 3684)) setHidden:v19];
  [(UILabel *)self->_titleLabel setHidden:v25];
  [*(&self->super.super.super.super.isa + *(v21 + 3676)) setHidden:v24];
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileContentTagView *)self->_contentTagView intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_subtitleLabel intrinsicContentSize];
  v12 = v11;
  v14 = v13;
  [(AVButton *)self->_infoAffordance intrinsicContentSize];
  v16 = v15;
  v18 = v17;
  contentTag = self->_contentTag;
  if (contentTag && ![(AVMobileContentTag *)contentTag placement])
  {
    if (v14 < v6)
    {
      v14 = v6;
    }

    if (v12 <= 0.0)
    {
      v12 = v4 + v12;
    }

    else
    {
      v12 = v4 + v12 + 5.0;
    }
  }

  if (v12 >= v8)
  {
    v8 = v12;
  }

  if (v10 <= 0.0 || v14 <= 0.0)
  {
    v21 = v10 + v14;
  }

  else
  {
    v21 = v10 + v14 + 2.0;
  }

  if (self->_contentTagView)
  {
    v22 = [(AVMobileContentTag *)self->_contentTag placement];
    v23 = v21 >= v6 ? v21 : v6;
    if (v22 == 1)
    {
      v21 = v23;
      v8 = v4 + 5.0 + 2.0 + v8;
    }
  }

  if (self->_titleLabelString || self->_subtitleLabelString || self->_contentTag)
  {
    if (v21 >= v18)
    {
      v24 = v21;
    }

    else
    {
      v24 = v18;
    }

    if (self->_showsInfoAffordance)
    {
      v21 = v24;
      v8 = v16 + 6.0 + v8;
    }
  }

  v25 = v8;
  v26 = v21;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)didMoveToWindow
{
  [(AVMobileTitlebarView *)self _setUpTitleLabelIfNeeded];
  [(AVMobileTitlebarView *)self _setUpSubtitleLabelIfNeeded];
  [(AVMobileTitlebarView *)self _setUpInfoAffordanceIfNeeded];

  [(AVMobileTitlebarView *)self _updateFonts];
}

- (void)_setUpTitleLabelIfNeeded
{
  if (a1)
  {
    if (!*(a1 + 504))
    {
      v2 = [a1 window];
      if (v2)
      {
        v3 = *(a1 + 528);

        if (v3)
        {
          v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
          v5 = *(a1 + 504);
          *(a1 + 504) = v4;

          [*(a1 + 504) setAccessibilityIdentifier:@"Title"];
          v6 = *(a1 + 504);
          v7 = AVLocalizedString(@"Title");
          [v6 setAccessibilityLabel:v7];

          [*(a1 + 504) setIsAccessibilityElement:1];
          [*(a1 + 504) setLineBreakMode:2];
          [*(a1 + 504) setAutoresizingMask:0];
          [*(a1 + 504) setHidden:1];
          [*(a1 + 504) setAttributedText:*(a1 + 528)];
          v8 = *(a1 + 504);
          v9 = [*(a1 + 560) titleFont];
          [v8 setFont:v9];

          v10 = *(a1 + 504);
          v11 = [MEMORY[0x1E69DC888] whiteColor];
          [v10 setTextColor:v11];

          v12 = *(a1 + 480);
          v13 = *(a1 + 504);

          [v12 addSubview:v13];
        }
      }
    }
  }
}

- (void)_setUpSubtitleLabelIfNeeded
{
  if (a1)
  {
    if (!*(a1 + 512))
    {
      v2 = [a1 window];
      if (v2)
      {
        v3 = *(a1 + 536);

        if (v3)
        {
          v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
          v5 = *(a1 + 512);
          *(a1 + 512) = v4;

          [*(a1 + 512) setAccessibilityIdentifier:@"Sub-title"];
          v6 = *(a1 + 512);
          v7 = AVLocalizedString(@"Sub-title");
          [v6 setAccessibilityLabel:v7];

          [*(a1 + 512) setIsAccessibilityElement:1];
          [*(a1 + 512) setAutoresizingMask:0];
          [*(a1 + 512) setHidden:1];
          [*(a1 + 512) setAttributedText:*(a1 + 536)];
          v8 = *(a1 + 512);
          v9 = [*(a1 + 560) subtitleFont];
          [v8 setFont:v9];

          v10 = *(a1 + 512);
          v11 = [MEMORY[0x1E69DC888] whiteColor];
          [v10 setTextColor:v11];

          [*(a1 + 512) setNumberOfLines:2];
          [*(a1 + 512) setLineBreakMode:0];
          v12 = *(a1 + 480);
          v13 = *(a1 + 512);

          [v12 addSubview:v13];
        }
      }
    }
  }
}

- (void)_setUpInfoAffordanceIfNeeded
{
  if (a1)
  {
    if (!*(a1 + 520))
    {
      v2 = [a1 window];
      if (v2)
      {
        v3 = *(a1 + 544);

        if (v3 == 1)
        {
          v4 = [AVButton buttonWithAccessibilityIdentifier:@"More Info" isFirstGeneration:0];
          v5 = *(a1 + 520);
          *(a1 + 520) = v4;

          [*(a1 + 520) setAppliesTransformToImageViewWhenHighlighted:1];
          [*(a1 + 520) setAutoresizingMask:0];
          [*(a1 + 520) setTranslatesAutoresizingMaskIntoConstraints:1];
          v6 = *(a1 + 520);
          v7 = [MEMORY[0x1E69DC888] whiteColor];
          [v6 setTintColor:v7];

          [*(a1 + 520) setHidden:1];
          v8 = *(a1 + 520);
          v9 = [*(a1 + 560) infoAffordanceButtonFont];
          [v8 setInlineFont:v9];

          [*(a1 + 520) setImageName:@"chevron.right"];
          [*(a1 + 520) addTarget:a1 action:sel__infoAffordancePressed_ forControlEvents:64];
          v10 = *(a1 + 520);

          [a1 addSubview:v10];
        }
      }
    }
  }
}

- (void)_updateFonts
{
  if (a1)
  {
    v2 = *(a1 + 504);
    v3 = [*(a1 + 560) titleFont];
    [v2 setFont:v3];

    v4 = *(a1 + 512);
    v5 = [*(a1 + 560) subtitleFont];
    [v4 setFont:v5];
  }
}

- (double)titleLabelCenterYOffset
{
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(AVMobileTitlebarView *)self intrinsicContentSize];
  v8 = v7 - v6;
  v9 = 0;
  v10 = v4;
  v11 = v6;

  return CGRectGetMidY(*&v9);
}

- (void)setTitle:(id)a3
{
  v12 = a3;
  if (![(NSAttributedString *)self->_title isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_title, a3);
    v5 = [(NSAttributedString *)self->_title mutableCopy];
    titleLabelString = self->_titleLabelString;
    self->_titleLabelString = v5;

    v7 = [(NSMutableAttributedString *)self->_titleLabelString mutableString];
    v8 = [(NSMutableAttributedString *)self->_titleLabelString string];
    v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];
    [v7 setString:v10];

    if (![(NSMutableAttributedString *)self->_titleLabelString length])
    {
      v11 = self->_titleLabelString;
      self->_titleLabelString = 0;
    }

    [(AVMobileTitlebarView *)self _setUpTitleLabelIfNeeded];
    [(UILabel *)self->_titleLabel setAttributedText:self->_titleLabelString];
    [(AVMobileTitlebarView *)self avkit_intrinsicContentSizeOfSubviewWasInvalidated:self->_titleLabel];
  }
}

- (void)setSubtitle:(id)a3
{
  v12 = a3;
  if (![(NSAttributedString *)self->_subtitle isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_subtitle, a3);
    v5 = [(NSAttributedString *)self->_subtitle mutableCopy];
    subtitleLabelString = self->_subtitleLabelString;
    self->_subtitleLabelString = v5;

    v7 = [(NSMutableAttributedString *)self->_subtitleLabelString mutableString];
    v8 = [(NSMutableAttributedString *)self->_subtitleLabelString string];
    v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];
    [v7 setString:v10];

    if (![(NSMutableAttributedString *)self->_subtitleLabelString length])
    {
      v11 = self->_subtitleLabelString;
      self->_subtitleLabelString = 0;
    }

    [(AVMobileTitlebarView *)self _setUpSubtitleLabelIfNeeded];
    [(UILabel *)self->_subtitleLabel setAttributedText:self->_subtitleLabelString];
    [(AVMobileTitlebarView *)self avkit_intrinsicContentSizeOfSubviewWasInvalidated:self->_subtitleLabel];
  }
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileTitlebarView *)self _updateFonts];
    [(AVMobileTitlebarView *)self avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
    v5 = v6;
  }
}

- (void)setShowsInfoAffordance:(BOOL)a3
{
  if (self->_showsInfoAffordance != a3)
  {
    self->_showsInfoAffordance = a3;
    [(AVMobileTitlebarView *)self _setUpInfoAffordanceIfNeeded];
    infoAffordance = self->_infoAffordance;

    [(AVMobileTitlebarView *)self avkit_intrinsicContentSizeOfSubviewWasInvalidated:infoAffordance];
  }
}

- (void)setContentTag:(id)a3
{
  v5 = a3;
  if (self->_contentTag != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_contentTag, a3);
    if (self->_contentTag)
    {
      if (!self->_contentTagView)
      {
        v6 = [(AVMobileTitlebarView *)self window];
        if (v6)
        {
          contentTag = self->_contentTag;

          if (contentTag)
          {
            v8 = [[AVMobileContentTagView alloc] initWithContentTag:self->_contentTag withStyleSheet:self->_styleSheet];
            contentTagView = self->_contentTagView;
            self->_contentTagView = v8;

            [(AVMobileContentTagView *)self->_contentTagView setHidden:1];
            [(AVMobileContentTagView *)self->_contentTagView setAutoresizingMask:0];
            [(UIView *)self->_contentContainerView addSubview:self->_contentTagView];
          }
        }
      }

      [(AVMobileContentTagView *)self->_contentTagView setContentTag:self->_contentTag];
    }

    [(AVMobileTitlebarView *)self avkit_intrinsicContentSizeOfSubviewWasInvalidated:self->_contentTagView];
    v5 = v10;
  }
}

- (AVMobileTitlebarView)initWithStyleSheet:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AVMobileTitlebarView;
  v6 = [(AVView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_showsContentTag = 1;
    v6->_showsSubtitle = 1;
    v6->_showsTitle = 1;
    v6->_showsInfoAffordance = 0;
    objc_storeStrong(&v6->_styleSheet, a3);
    v8 = objc_alloc_init(MEMORY[0x1E6979380]);
    contentContainerViewMask = v7->_contentContainerViewMask;
    v7->_contentContainerViewMask = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentContainerView = v7->_contentContainerView;
    v7->_contentContainerView = v10;

    [(UIView *)v7->_contentContainerView setAutoresizingMask:0];
    v12 = [(UIView *)v7->_contentContainerView layer];
    [v12 setMask:v7->_contentContainerViewMask];

    [(AVMobileTitlebarView *)v7 addSubview:v7->_contentContainerView];
    [(AVView *)v7 setIgnoresTouches:1];
  }

  return v7;
}

@end