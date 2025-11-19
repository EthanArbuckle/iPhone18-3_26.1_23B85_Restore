@interface UGCPOIEnrichmentModalHeaderView
- (UGCPOIEnrichmentModalHeaderView)initWithFrame:(CGRect)a3;
- (void)_setupConstraints;
- (void)_setupSubviews;
@end

@implementation UGCPOIEnrichmentModalHeaderView

- (void)_setupConstraints
{
  [(ModalCardHeaderView *)self->_modalHeaderView buttonWidth];
  v4 = v3 + 16.0;
  v26 = [(ModalCardHeaderView *)self->_modalHeaderView leadingAnchor];
  v25 = [(UGCPOIEnrichmentModalHeaderView *)self leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v27[0] = v24;
  v23 = [(ModalCardHeaderView *)self->_modalHeaderView trailingAnchor];
  v22 = [(UGCPOIEnrichmentModalHeaderView *)self trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v27[1] = v21;
  v20 = [(ModalCardHeaderView *)self->_modalHeaderView topAnchor];
  v19 = [(UGCPOIEnrichmentModalHeaderView *)self topAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v27[2] = v18;
  v17 = [(UGCPOIEnrichmentHeaderView *)self->_poiIconView leadingAnchor];
  v16 = [(UGCPOIEnrichmentModalHeaderView *)self leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16 constant:v4];
  v27[3] = v15;
  v5 = [(UGCPOIEnrichmentHeaderView *)self->_poiIconView trailingAnchor];
  v6 = [(UGCPOIEnrichmentModalHeaderView *)self trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:-v4];
  v27[4] = v7;
  v8 = [(UGCPOIEnrichmentHeaderView *)self->_poiIconView topAnchor];
  v9 = [(UGCPOIEnrichmentModalHeaderView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v27[5] = v10;
  v11 = [(UGCPOIEnrichmentHeaderView *)self->_poiIconView bottomAnchor];
  v12 = [(UGCPOIEnrichmentModalHeaderView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
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
  v7 = [(ModalCardHeaderView *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  modalHeaderView = self->_modalHeaderView;
  self->_modalHeaderView = v7;

  [(ModalCardHeaderView *)self->_modalHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [MapsThemeButton buttonWithType:1];
  [v14 setAccessibilityIdentifier:@"LeadingButton"];
  [(ModalCardHeaderView *)self->_modalHeaderView setLeadingButton:v14];
  v9 = [MapsThemeButton buttonWithType:1];
  [v9 setAccessibilityIdentifier:@"TrailingButton"];
  [(ModalCardHeaderView *)self->_modalHeaderView setTrailingButton:v9];
  v10 = [[UGCPOIEnrichmentHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  poiIconView = self->_poiIconView;
  self->_poiIconView = v10;

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

- (UGCPOIEnrichmentModalHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UGCPOIEnrichmentModalHeaderView;
  v3 = [(UGCPOIEnrichmentModalHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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