@interface NFCCStatusView
- (NFCCStatusView)initWithFrame:(CGRect)a3;
- (id)_makePromptLabelWrapper;
- (void)_contentSizeCategoryDidChange;
- (void)_setUp;
- (void)_updateUnsupportedTagPromptLabelWithFont:(id)a3;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateOrientationIfNeeded;
@end

@implementation NFCCStatusView

- (NFCCStatusView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = NFCCStatusView;
  v3 = [(NFCCStatusView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NFCCStatusView *)v3 _setUp];
    v5 = v4;
  }

  return v4;
}

- (void)_setUp
{
  v3 = [[PKGlyphView alloc] initWithStyle:3];
  glyphView = self->_glyphView;
  self->_glyphView = v3;

  v5 = self->_glyphView;
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  [(PKGlyphView *)v5 updateRasterizationScale:?];

  v61 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:1 scale:36.0];
  v60 = [UIColor colorWithWhite:0.745098039 alpha:1.0];
  v7 = [UIImage systemImageNamed:@"exclamationmark" withConfiguration:v61];
  v59 = [v7 _flatImageWithColor:v60];

  v8 = self->_glyphView;
  v9 = [v59 CGImage];
  [v59 alignmentRectInsets];
  [(PKGlyphView *)v8 setCustomImage:v9 withAlignmentEdgeInsets:?];
  [(PKGlyphView *)self->_glyphView setState:9 animated:0 completionHandler:0];
  [(PKGlyphView *)self->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NFCCStatusView *)self addSubview:self->_glyphView];
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  promptLabelContainerView = self->_promptLabelContainerView;
  self->_promptLabelContainerView = v10;

  [(UIView *)self->_promptLabelContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NFCCStatusView *)self addSubview:self->_promptLabelContainerView];
  v12 = [(NFCCStatusView *)self _makePromptLabelWrapper];
  scanTagPromptLabelWrapper = self->_scanTagPromptLabelWrapper;
  self->_scanTagPromptLabelWrapper = v12;

  v14 = _BCSLocalizedString();
  v15 = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper label];
  [v15 setText:v14];

  v16 = [(UIView *)self->_promptLabelContainerView bottomAnchor];
  v17 = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  scanTagPromptLabelBottomConstraint = self->_scanTagPromptLabelBottomConstraint;
  self->_scanTagPromptLabelBottomConstraint = v18;

  v20 = [(NFCCStatusView *)self _makePromptLabelWrapper];
  unavailablePromptLabelWrapper = self->_unavailablePromptLabelWrapper;
  self->_unavailablePromptLabelWrapper = v20;

  v22 = _BCSLocalizedString();
  v23 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper label];
  [v23 setText:v22];

  v24 = [(UIView *)self->_promptLabelContainerView bottomAnchor];
  v25 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  unavailablePromptLabelBottomConstraint = self->_unavailablePromptLabelBottomConstraint;
  self->_unavailablePromptLabelBottomConstraint = v26;

  v28 = [(NFCCStatusView *)self _makePromptLabelWrapper];
  unsupportedTagPromptLabelWrapper = self->_unsupportedTagPromptLabelWrapper;
  self->_unsupportedTagPromptLabelWrapper = v28;

  v30 = [(UIView *)self->_promptLabelContainerView bottomAnchor];
  v31 = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  unsupportedTagPromptLabelBottomConstraint = self->_unsupportedTagPromptLabelBottomConstraint;
  self->_unsupportedTagPromptLabelBottomConstraint = v32;

  [(NFCCStatusView *)self _moduleStateDidChangeAnimated:0];
  v34 = [(UIView *)self->_promptLabelContainerView topAnchor];
  v35 = [(PKGlyphView *)self->_glyphView bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  glyphViewPromptLabelSpacingConstraint = self->_glyphViewPromptLabelSpacingConstraint;
  self->_glyphViewPromptLabelSpacingConstraint = v36;

  [(NFCCStatusView *)self _contentSizeCategoryDidChange];
  v58 = [(PKGlyphView *)self->_glyphView centerXAnchor];
  v57 = [(NFCCStatusView *)self centerXAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v62[0] = v56;
  v55 = [(PKGlyphView *)self->_glyphView topAnchor];
  v54 = [(NFCCStatusView *)self topAnchor];
  v53 = [v55 constraintEqualToAnchor:v54 constant:36.0];
  v62[1] = v53;
  v52 = [(PKGlyphView *)self->_glyphView widthAnchor];
  v51 = [v52 constraintEqualToConstant:63.0];
  v62[2] = v51;
  v50 = [(PKGlyphView *)self->_glyphView heightAnchor];
  v49 = [v50 constraintEqualToConstant:63.0];
  v62[3] = v49;
  v48 = [(UIView *)self->_promptLabelContainerView leadingAnchor];
  v38 = [(NFCCStatusView *)self leadingAnchor];
  v39 = [v48 constraintEqualToAnchor:v38 constant:16.0];
  v40 = self->_glyphViewPromptLabelSpacingConstraint;
  v62[4] = v39;
  v62[5] = v40;
  v41 = [(NFCCStatusView *)self trailingAnchor];
  v42 = [(UIView *)self->_promptLabelContainerView trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:16.0];
  v62[6] = v43;
  v44 = [(NFCCStatusView *)self bottomAnchor];
  v45 = [(UIView *)self->_promptLabelContainerView bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:40.0];
  v62[7] = v46;
  v47 = [NSArray arrayWithObjects:v62 count:8];
  [NSLayoutConstraint activateConstraints:v47];
}

- (id)_makePromptLabelWrapper
{
  v3 = [[NFCCWrappedLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(NFCCWrappedLabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_promptLabelContainerView addSubview:v3];
  v4 = [(NFCCWrappedLabel *)v3 label];
  [v4 setTextAlignment:1];
  [v4 setNumberOfLines:0];
  v15 = [(NFCCWrappedLabel *)v3 leadingAnchor];
  v14 = [(UIView *)self->_promptLabelContainerView leadingAnchor];
  v5 = [v15 constraintEqualToAnchor:v14];
  v16[0] = v5;
  v6 = [(NFCCWrappedLabel *)v3 topAnchor];
  v7 = [(UIView *)self->_promptLabelContainerView topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v16[1] = v8;
  v9 = [(UIView *)self->_promptLabelContainerView trailingAnchor];
  v10 = [(NFCCWrappedLabel *)v3 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v16[2] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:3];
  [NSLayoutConstraint activateConstraints:v12];

  return v3;
}

- (void)didMoveToWindow
{
  v17.receiver = self;
  v17.super_class = NFCCStatusView;
  [(NFCCStatusView *)&v17 didMoveToWindow];
  v3 = [(NFCCStatusView *)self window];

  if (v3)
  {
    v4 = [(NFCCStatusView *)self visualStylingProviderForCategory:1];
    visualStylingProvider = self->_visualStylingProvider;
    if (v4 != visualStylingProvider)
    {
      v6 = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper label];
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:v6];

      v7 = self->_visualStylingProvider;
      v8 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper label];
      [(MTVisualStylingProvider *)v7 stopAutomaticallyUpdatingView:v8];

      v9 = self->_visualStylingProvider;
      v10 = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper label];
      [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:v10];

      objc_storeStrong(&self->_visualStylingProvider, v4);
      v11 = self->_visualStylingProvider;
      v12 = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper label];
      [(MTVisualStylingProvider *)v11 automaticallyUpdateView:v12 withStyle:1];

      v13 = self->_visualStylingProvider;
      v14 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper label];
      [(MTVisualStylingProvider *)v13 automaticallyUpdateView:v14 withStyle:1];

      v15 = self->_visualStylingProvider;
      v16 = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper label];
      [(MTVisualStylingProvider *)v15 automaticallyUpdateView:v16 withStyle:1];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = NFCCStatusView;
  v4 = a3;
  [(NFCCStatusView *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(NFCCStatusView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(NFCCStatusView *)self _contentSizeCategoryDidChange];
  }
}

- (void)updateOrientationIfNeeded
{
  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation != [UIApp activeInterfaceOrientation])
  {

    [(NFCCStatusView *)self _contentSizeCategoryDidChange];
  }
}

- (void)_contentSizeCategoryDidChange
{
  v3 = [(NFCCStatusView *)self traitCollection];
  v10 = [v3 preferredContentSizeCategory];

  v4 = [UIApp activeInterfaceOrientation];
  self->_interfaceOrientation = v4;
  if (sub_5758(v10, v4))
  {
    v5 = UIContentSizeCategoryAccessibilityLarge;

    v6 = v5;
  }

  else
  {
    v6 = v10;
  }

  v11 = v6;
  v7 = [UIFont bsui_preferredFontForTextStyle:UIFontTextStyleBody hiFontStyle:8 contentSizeCategory:v6];
  v8 = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper label];
  [v8 setFont:v7];

  v9 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper label];
  [v9 setFont:v7];

  [(NFCCStatusView *)self _updateUnsupportedTagPromptLabelWithFont:v7];
  [v7 _scaledValueForValue:30.0];
  [(NSLayoutConstraint *)self->_glyphViewPromptLabelSpacingConstraint setConstant:?];
}

- (void)_updateUnsupportedTagPromptLabelWithFont:(id)a3
{
  v4 = a3;
  v15 = [UIImageSymbolConfiguration configurationWithFont:v4 scale:2];
  v5 = [UIImage systemImageNamed:@"exclamationmark.circle" withConfiguration:v15];
  v6 = [NSTextAttachment textAttachmentWithImage:v5];
  v7 = [NSAttributedString alloc];
  v8 = _BCSLocalizedString();
  v9 = [v7 initWithString:v8];

  v10 = objc_alloc_init(NSMutableAttributedString);
  v11 = [NSAttributedString attributedStringWithAttachment:v6];
  [v10 appendAttributedString:v11];

  v12 = [[NSAttributedString alloc] initWithString:@" "];
  [v10 appendAttributedString:v12];

  [v10 appendAttributedString:v9];
  v13 = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper label];
  [v13 setAttributedText:v10];

  v14 = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper label];
  [v14 setFont:v4];
}

@end