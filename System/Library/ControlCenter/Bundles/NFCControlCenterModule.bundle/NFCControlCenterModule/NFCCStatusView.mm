@interface NFCCStatusView
- (NFCCStatusView)initWithFrame:(CGRect)frame;
- (id)_makePromptLabelWrapper;
- (void)_contentSizeCategoryDidChange;
- (void)_setUp;
- (void)_updateUnsupportedTagPromptLabelWithFont:(id)font;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
- (void)updateOrientationIfNeeded;
@end

@implementation NFCCStatusView

- (NFCCStatusView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NFCCStatusView;
  v3 = [(NFCCStatusView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  cGImage = [v59 CGImage];
  [v59 alignmentRectInsets];
  [(PKGlyphView *)v8 setCustomImage:cGImage withAlignmentEdgeInsets:?];
  [(PKGlyphView *)self->_glyphView setState:9 animated:0 completionHandler:0];
  [(PKGlyphView *)self->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NFCCStatusView *)self addSubview:self->_glyphView];
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  promptLabelContainerView = self->_promptLabelContainerView;
  self->_promptLabelContainerView = v10;

  [(UIView *)self->_promptLabelContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NFCCStatusView *)self addSubview:self->_promptLabelContainerView];
  _makePromptLabelWrapper = [(NFCCStatusView *)self _makePromptLabelWrapper];
  scanTagPromptLabelWrapper = self->_scanTagPromptLabelWrapper;
  self->_scanTagPromptLabelWrapper = _makePromptLabelWrapper;

  v14 = _BCSLocalizedString();
  label = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper label];
  [label setText:v14];

  bottomAnchor = [(UIView *)self->_promptLabelContainerView bottomAnchor];
  bottomAnchor2 = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  scanTagPromptLabelBottomConstraint = self->_scanTagPromptLabelBottomConstraint;
  self->_scanTagPromptLabelBottomConstraint = v18;

  _makePromptLabelWrapper2 = [(NFCCStatusView *)self _makePromptLabelWrapper];
  unavailablePromptLabelWrapper = self->_unavailablePromptLabelWrapper;
  self->_unavailablePromptLabelWrapper = _makePromptLabelWrapper2;

  v22 = _BCSLocalizedString();
  label2 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper label];
  [label2 setText:v22];

  bottomAnchor3 = [(UIView *)self->_promptLabelContainerView bottomAnchor];
  bottomAnchor4 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper bottomAnchor];
  v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  unavailablePromptLabelBottomConstraint = self->_unavailablePromptLabelBottomConstraint;
  self->_unavailablePromptLabelBottomConstraint = v26;

  _makePromptLabelWrapper3 = [(NFCCStatusView *)self _makePromptLabelWrapper];
  unsupportedTagPromptLabelWrapper = self->_unsupportedTagPromptLabelWrapper;
  self->_unsupportedTagPromptLabelWrapper = _makePromptLabelWrapper3;

  bottomAnchor5 = [(UIView *)self->_promptLabelContainerView bottomAnchor];
  bottomAnchor6 = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper bottomAnchor];
  v32 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  unsupportedTagPromptLabelBottomConstraint = self->_unsupportedTagPromptLabelBottomConstraint;
  self->_unsupportedTagPromptLabelBottomConstraint = v32;

  [(NFCCStatusView *)self _moduleStateDidChangeAnimated:0];
  topAnchor = [(UIView *)self->_promptLabelContainerView topAnchor];
  bottomAnchor7 = [(PKGlyphView *)self->_glyphView bottomAnchor];
  v36 = [topAnchor constraintEqualToAnchor:bottomAnchor7];
  glyphViewPromptLabelSpacingConstraint = self->_glyphViewPromptLabelSpacingConstraint;
  self->_glyphViewPromptLabelSpacingConstraint = v36;

  [(NFCCStatusView *)self _contentSizeCategoryDidChange];
  centerXAnchor = [(PKGlyphView *)self->_glyphView centerXAnchor];
  centerXAnchor2 = [(NFCCStatusView *)self centerXAnchor];
  v56 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v62[0] = v56;
  topAnchor2 = [(PKGlyphView *)self->_glyphView topAnchor];
  topAnchor3 = [(NFCCStatusView *)self topAnchor];
  v53 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:36.0];
  v62[1] = v53;
  widthAnchor = [(PKGlyphView *)self->_glyphView widthAnchor];
  v51 = [widthAnchor constraintEqualToConstant:63.0];
  v62[2] = v51;
  heightAnchor = [(PKGlyphView *)self->_glyphView heightAnchor];
  v49 = [heightAnchor constraintEqualToConstant:63.0];
  v62[3] = v49;
  leadingAnchor = [(UIView *)self->_promptLabelContainerView leadingAnchor];
  leadingAnchor2 = [(NFCCStatusView *)self leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v40 = self->_glyphViewPromptLabelSpacingConstraint;
  v62[4] = v39;
  v62[5] = v40;
  trailingAnchor = [(NFCCStatusView *)self trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_promptLabelContainerView trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  v62[6] = v43;
  bottomAnchor8 = [(NFCCStatusView *)self bottomAnchor];
  bottomAnchor9 = [(UIView *)self->_promptLabelContainerView bottomAnchor];
  v46 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:40.0];
  v62[7] = v46;
  v47 = [NSArray arrayWithObjects:v62 count:8];
  [NSLayoutConstraint activateConstraints:v47];
}

- (id)_makePromptLabelWrapper
{
  v3 = [[NFCCWrappedLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(NFCCWrappedLabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_promptLabelContainerView addSubview:v3];
  label = [(NFCCWrappedLabel *)v3 label];
  [label setTextAlignment:1];
  [label setNumberOfLines:0];
  leadingAnchor = [(NFCCWrappedLabel *)v3 leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_promptLabelContainerView leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v16[0] = v5;
  topAnchor = [(NFCCWrappedLabel *)v3 topAnchor];
  topAnchor2 = [(UIView *)self->_promptLabelContainerView topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v16[1] = v8;
  trailingAnchor = [(UIView *)self->_promptLabelContainerView trailingAnchor];
  trailingAnchor2 = [(NFCCWrappedLabel *)v3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  window = [(NFCCStatusView *)self window];

  if (window)
  {
    v4 = [(NFCCStatusView *)self visualStylingProviderForCategory:1];
    visualStylingProvider = self->_visualStylingProvider;
    if (v4 != visualStylingProvider)
    {
      label = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper label];
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:label];

      v7 = self->_visualStylingProvider;
      label2 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper label];
      [(MTVisualStylingProvider *)v7 stopAutomaticallyUpdatingView:label2];

      v9 = self->_visualStylingProvider;
      label3 = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper label];
      [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:label3];

      objc_storeStrong(&self->_visualStylingProvider, v4);
      v11 = self->_visualStylingProvider;
      label4 = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper label];
      [(MTVisualStylingProvider *)v11 automaticallyUpdateView:label4 withStyle:1];

      v13 = self->_visualStylingProvider;
      label5 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper label];
      [(MTVisualStylingProvider *)v13 automaticallyUpdateView:label5 withStyle:1];

      v15 = self->_visualStylingProvider;
      label6 = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper label];
      [(MTVisualStylingProvider *)v15 automaticallyUpdateView:label6 withStyle:1];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = NFCCStatusView;
  changeCopy = change;
  [(NFCCStatusView *)&v9 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(NFCCStatusView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

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
  traitCollection = [(NFCCStatusView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  activeInterfaceOrientation = [UIApp activeInterfaceOrientation];
  self->_interfaceOrientation = activeInterfaceOrientation;
  if (sub_5758(preferredContentSizeCategory, activeInterfaceOrientation))
  {
    v5 = UIContentSizeCategoryAccessibilityLarge;

    v6 = v5;
  }

  else
  {
    v6 = preferredContentSizeCategory;
  }

  v11 = v6;
  v7 = [UIFont bsui_preferredFontForTextStyle:UIFontTextStyleBody hiFontStyle:8 contentSizeCategory:v6];
  label = [(NFCCWrappedLabel *)self->_scanTagPromptLabelWrapper label];
  [label setFont:v7];

  label2 = [(NFCCWrappedLabel *)self->_unavailablePromptLabelWrapper label];
  [label2 setFont:v7];

  [(NFCCStatusView *)self _updateUnsupportedTagPromptLabelWithFont:v7];
  [v7 _scaledValueForValue:30.0];
  [(NSLayoutConstraint *)self->_glyphViewPromptLabelSpacingConstraint setConstant:?];
}

- (void)_updateUnsupportedTagPromptLabelWithFont:(id)font
{
  fontCopy = font;
  v15 = [UIImageSymbolConfiguration configurationWithFont:fontCopy scale:2];
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
  label = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper label];
  [label setAttributedText:v10];

  label2 = [(NFCCWrappedLabel *)self->_unsupportedTagPromptLabelWrapper label];
  [label2 setFont:fontCopy];
}

@end