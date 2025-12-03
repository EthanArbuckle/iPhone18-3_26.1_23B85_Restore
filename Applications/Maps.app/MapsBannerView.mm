@interface MapsBannerView
- (BNBannerSource)target;
- (MapsBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation;
- (double)bannerAccessoryViewLeadingInset;
- (double)bannerAccessoryViewTrailingInset;
@end

@implementation MapsBannerView

- (double)bannerAccessoryViewLeadingInset
{
  if (qword_10195F1F8 != -1)
  {
    dispatch_once(&qword_10195F1F8, &stru_101655048);
  }

  return *&qword_10195F1F0;
}

- (BNBannerSource)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (double)bannerAccessoryViewTrailingInset
{
  if (qword_10195F208 != -1)
  {
    dispatch_once(&qword_10195F208, &stru_101655068);
  }

  return *&qword_10195F200;
}

- (MapsBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  targetCopy = target;
  itemCopy = item;
  v38.receiver = self;
  v38.super_class = MapsBannerView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(MapsBannerView *)&v38 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v36 = itemCopy;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [(MapsBannerView *)height setAccessibilityIdentifier:v15];

    v37 = targetCopy;
    objc_storeWeak(&height->_target, targetCopy);
    objc_storeStrong(&height->_item, item);
    height->_aperturePresentation = presentationCopy;
    height2 = [[MapsBannerContentView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    contentView = height->_contentView;
    height->_contentView = height2;

    [(MapsBannerContentView *)height->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsBannerView *)height addSubview:height->_contentView];
    leadingAnchor = [(MapsBannerContentView *)height->_contentView leadingAnchor];
    leadingAnchor2 = [(MapsBannerView *)height leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v41[0] = v19;
    trailingAnchor = [(MapsBannerView *)height trailingAnchor];
    trailingAnchor2 = [(MapsBannerContentView *)height->_contentView trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
    v41[1] = v22;
    bottomAnchor = [(MapsBannerView *)height bottomAnchor];
    [(MapsBannerContentView *)height->_contentView bottomAnchor];
    v24 = v33 = presentationCopy;
    v25 = [bottomAnchor constraintEqualToAnchor:v24 constant:17.0];
    v41[2] = v25;
    v35 = [NSArray arrayWithObjects:v41 count:3];

    topAnchor = [(MapsBannerContentView *)height->_contentView topAnchor];
    if (v33)
    {
      sBUISA_systemApertureObstructedAreaLayoutGuide = [(MapsBannerView *)height SBUISA_systemApertureObstructedAreaLayoutGuide];
      bottomAnchor2 = [sBUISA_systemApertureObstructedAreaLayoutGuide bottomAnchor];
      v29 = [topAnchor constraintEqualToAnchor:bottomAnchor2];
      v40 = v29;
      v30 = [NSArray arrayWithObjects:&v40 count:1];
      v31 = [v35 arrayByAddingObjectsFromArray:v30];
    }

    else
    {
      sBUISA_systemApertureObstructedAreaLayoutGuide = [(MapsBannerView *)height topAnchor];
      bottomAnchor2 = [topAnchor constraintEqualToAnchor:sBUISA_systemApertureObstructedAreaLayoutGuide constant:22.0];
      v39 = bottomAnchor2;
      v29 = [NSArray arrayWithObjects:&v39 count:1];
      v30 = v35;
      v31 = [v35 arrayByAddingObjectsFromArray:v29];
    }

    [NSLayoutConstraint activateConstraints:v31];
    itemCopy = v36;
    targetCopy = v37;
  }

  return height;
}

@end