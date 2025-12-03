@interface UGCPOIEnrichmentModalHeaderView
- (UGCPOIEnrichmentModalHeaderView)initWithFrame:(CGRect)frame;
- (void)_setupConstraints;
- (void)_setupSubviews;
@end

@implementation UGCPOIEnrichmentModalHeaderView

- (void)_setupConstraints
{
  [(ModalCardHeaderView *)self->_modalHeaderView buttonWidth];
  v4 = v3 + 16.0;
  leadingAnchor = [(ModalCardHeaderView *)self->_modalHeaderView leadingAnchor];
  leadingAnchor2 = [(UGCPOIEnrichmentModalHeaderView *)self leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[0] = v24;
  trailingAnchor = [(ModalCardHeaderView *)self->_modalHeaderView trailingAnchor];
  trailingAnchor2 = [(UGCPOIEnrichmentModalHeaderView *)self trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v21;
  topAnchor = [(ModalCardHeaderView *)self->_modalHeaderView topAnchor];
  topAnchor2 = [(UGCPOIEnrichmentModalHeaderView *)self topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[2] = v18;
  leadingAnchor3 = [(UGCPOIEnrichmentHeaderView *)self->_poiIconView leadingAnchor];
  leadingAnchor4 = [(UGCPOIEnrichmentModalHeaderView *)self leadingAnchor];
  v15 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v4];
  v27[3] = v15;
  trailingAnchor3 = [(UGCPOIEnrichmentHeaderView *)self->_poiIconView trailingAnchor];
  trailingAnchor4 = [(UGCPOIEnrichmentModalHeaderView *)self trailingAnchor];
  v7 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v4];
  v27[4] = v7;
  topAnchor3 = [(UGCPOIEnrichmentHeaderView *)self->_poiIconView topAnchor];
  topAnchor4 = [(UGCPOIEnrichmentModalHeaderView *)self topAnchor];
  v10 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v27[5] = v10;
  bottomAnchor = [(UGCPOIEnrichmentHeaderView *)self->_poiIconView bottomAnchor];
  bottomAnchor2 = [(UGCPOIEnrichmentModalHeaderView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[6] = v13;
  v14 = [NSArray arrayWithObjects:v27 count:7];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_setupSubviews
{
  v3 = [_TtC4Maps19ModalCardHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ModalCardHeaderView *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  modalHeaderView = self->_modalHeaderView;
  self->_modalHeaderView = height;

  [(ModalCardHeaderView *)self->_modalHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [MapsThemeButton buttonWithType:1];
  [v14 setAccessibilityIdentifier:@"LeadingButton"];
  [(ModalCardHeaderView *)self->_modalHeaderView setLeadingButton:v14];
  v9 = [MapsThemeButton buttonWithType:1];
  [v9 setAccessibilityIdentifier:@"TrailingButton"];
  [(ModalCardHeaderView *)self->_modalHeaderView setTrailingButton:v9];
  height2 = [[UGCPOIEnrichmentHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  poiIconView = self->_poiIconView;
  self->_poiIconView = height2;

  [(UGCPOIEnrichmentHeaderView *)self->_poiIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UGCPOIEnrichmentHeaderView *)self->_poiIconView setHideSummaryText:1];
  if ((MapsFeature_IsEnabled_SydneyARP() & 1) == 0)
  {
    v12 = [[UIProgressView alloc] initWithProgressViewStyle:1];
    progressView = self->_progressView;
    self->_progressView = v12;
  }

  [(UGCPOIEnrichmentModalHeaderView *)self addSubview:self->_modalHeaderView];
  [(UGCPOIEnrichmentModalHeaderView *)self addSubview:self->_poiIconView];
  if ((MapsFeature_IsEnabled_SydneyARP() & 1) == 0)
  {
    [(UGCPOIEnrichmentModalHeaderView *)self addSubview:self->_progressView];
  }
}

- (UGCPOIEnrichmentModalHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UGCPOIEnrichmentModalHeaderView;
  v3 = [(UGCPOIEnrichmentModalHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCPOIEnrichmentModalHeaderView *)v3 setAccessibilityIdentifier:@"UGCPOIEnrichmentModalHeader"];
    [(UGCPOIEnrichmentModalHeaderView *)v4 _setupSubviews];
    [(UGCPOIEnrichmentModalHeaderView *)v4 _setupConstraints];
  }

  return v4;
}

@end