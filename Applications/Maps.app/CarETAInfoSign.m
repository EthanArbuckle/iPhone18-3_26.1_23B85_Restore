@interface CarETAInfoSign
- ($F24F406B2B787EFB06265DBA3D28CBD5)etaInfoSignMetrics;
- (CarETACardSignDelegate)delegate;
- (CarETAInfoSign)initWithDelegate:(id)a3 metricsDelegate:(id)a4 interruptPresenter:(id)a5;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (double)tappableHeight;
- (void)_onExpandTapped:(id)a3;
- (void)infoViewDidTapShareTripButton:(id)a3;
- (void)setLatestETA:(id)a3;
- (void)setShareButtonHidden:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CarETAInfoSign

- (NSArray)preferredFocusEnvironments
{
  v3 = objc_alloc_init(NSMutableArray);
  if (![(CarETAInfoSign *)self isShareButtonHidden])
  {
    [v3 addObject:self->_shareETAInfoView];
  }

  v4 = [v3 copy];

  return v4;
}

- (CarETACardSignDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)focusOrderSubItems
{
  v3 = objc_alloc_init(NSMutableArray);
  if (![(CarETAInfoSign *)self isShareButtonHidden])
  {
    v4 = [(CarShareETAInfoView *)self->_shareETAInfoView focusOrderSubItems];
    [v3 addObjectsFromArray:v4];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)infoViewDidTapShareTripButton:(id)a3
{
  v4 = [(CarETAInfoSign *)self delegate];
  [v4 etaCardSign:self didSelectAction:6];
}

- (void)setLatestETA:(id)a3
{
  v5 = a3;
  if (self->_latestETA != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_latestETA, a3);
    [(NavMetricsView *)self->_metricsView setEta:v6];
    v5 = v6;
  }
}

- (void)_onExpandTapped:(id)a3
{
  v4 = [(CarETAInfoSign *)self delegate];
  [v4 etaCardSign:self didSelectAction:0];

  v5 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DA7498;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)setShareButtonHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_shareButtonHidden != a3)
  {
    v16[5] = v7;
    v16[6] = v6;
    v16[11] = v4;
    v16[12] = v5;
    v8 = a4;
    self->_shareButtonHidden = a3;
    if (a3)
    {
      v10 = &OBJC_IVAR___CarETAInfoSign__showingShareTripButtonConstraints;
    }

    else
    {
      v10 = &OBJC_IVAR___CarETAInfoSign__hidingShareTripButtonConstraints;
    }

    if (a3)
    {
      v11 = &OBJC_IVAR___CarETAInfoSign__hidingShareTripButtonConstraints;
    }

    else
    {
      v11 = &OBJC_IVAR___CarETAInfoSign__showingShareTripButtonConstraints;
    }

    [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.isa + *v10)];
    [NSLayoutConstraint activateConstraints:*(&self->super.super.super.isa + *v11)];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100DA761C;
    v16[3] = &unk_101661B18;
    v16[4] = self;
    v12 = objc_retainBlock(v16);
    v13 = v12;
    if (v8)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100DA7644;
      v14[3] = &unk_101661090;
      v14[4] = self;
      v15 = v12;
      [UIView animateWithDuration:v14 animations:0.3];
    }

    else
    {
      (v12[2])(v12);
    }
  }
}

- (double)tappableHeight
{
  [(NavMetricsView *)self->_metricsView frame];

  return CGRectGetMaxY(*&v2);
}

- (CarETAInfoSign)initWithDelegate:(id)a3 metricsDelegate:(id)a4 interruptPresenter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v53.receiver = self;
  v53.super_class = CarETAInfoSign;
  v11 = [(CarETAInfoSign *)&v53 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    v13 = [[_TtC4Maps14NavMetricsView alloc] initWithParentViewController:v9 delegate:v9 eta:0 isCarPlay:1];
    metricsView = v12->_metricsView;
    v12->_metricsView = v13;

    [(NavMetricsView *)v12->_metricsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarETAInfoSign *)v12 addSubview:v12->_metricsView];
    v15 = [[CarShareETAInfoView alloc] initWithDelegate:v12 interruptPresenter:v10];
    shareETAInfoView = v12->_shareETAInfoView;
    v12->_shareETAInfoView = v15;

    [(CarShareETAInfoView *)v12->_shareETAInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarETAInfoSign *)v12 addSubview:v12->_shareETAInfoView];
    v52 = objc_alloc_init(NSMutableArray);
    [(CarETAInfoSign *)v12 trailingAnchor];
    v17 = v49 = v10;
    [(NavMetricsView *)v12->_metricsView trailingAnchor];
    v18 = v50 = v9;
    v19 = [v17 constraintEqualToAnchor:v18];
    v57 = v19;
    [NSArray arrayWithObjects:&v57 count:1];
    v20 = v51 = v8;
    [v52 addObjectsFromArray:v20];

    v48 = [(NavMetricsView *)v12->_metricsView topAnchor];
    v47 = [(CarETAInfoSign *)v12 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v56[0] = v46;
    v45 = [(NavMetricsView *)v12->_metricsView leadingAnchor];
    v44 = [(CarETAInfoSign *)v12 leadingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v56[1] = v43;
    v42 = [(CarShareETAInfoView *)v12->_shareETAInfoView topAnchor];
    v41 = [(NavMetricsView *)v12->_metricsView bottomAnchor];
    v21 = [v42 constraintEqualToAnchor:v41];
    v56[2] = v21;
    v22 = [(CarShareETAInfoView *)v12->_shareETAInfoView leadingAnchor];
    v23 = [(CarETAInfoSign *)v12 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v56[3] = v24;
    v25 = [(CarETAInfoSign *)v12 trailingAnchor];
    v26 = [(CarShareETAInfoView *)v12->_shareETAInfoView trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v56[4] = v27;
    v28 = [NSArray arrayWithObjects:v56 count:5];
    [v52 addObjectsFromArray:v28];

    v29 = [(CarShareETAInfoView *)v12->_shareETAInfoView bottomAnchor];
    v30 = [(CarETAInfoSign *)v12 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v55 = v31;
    v32 = [NSArray arrayWithObjects:&v55 count:1];
    showingShareTripButtonConstraints = v12->_showingShareTripButtonConstraints;
    v12->_showingShareTripButtonConstraints = v32;

    v34 = [(CarShareETAInfoView *)v12->_shareETAInfoView topAnchor];
    v35 = [(CarETAInfoSign *)v12 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v54 = v36;
    v37 = [NSArray arrayWithObjects:&v54 count:1];
    hidingShareTripButtonConstraints = v12->_hidingShareTripButtonConstraints;
    v12->_hidingShareTripButtonConstraints = v37;

    v9 = v50;
    [NSLayoutConstraint activateConstraints:v52];
    v10 = v49;
    if (v12->_shareButtonHidden)
    {
      v39 = 32;
    }

    else
    {
      v39 = 24;
    }

    v8 = v51;
    [NSLayoutConstraint activateConstraints:*(&v12->super.super.super.isa + v39)];
  }

  return v12;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)etaInfoSignMetrics
{
  v2 = 22.0;
  v3 = 16.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end