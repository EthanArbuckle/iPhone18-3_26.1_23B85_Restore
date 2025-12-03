@interface CarAdvisoriesView
- (CarAdvisoriesView)initWithFrame:(CGRect)frame;
- (unint64_t)count;
- (void)_setupViews;
- (void)refreshContent;
- (void)setRoute:(id)route;
@end

@implementation CarAdvisoriesView

- (void)refreshContent
{
  advisories = [(GEOComposedRoute *)self->_route advisories];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DABB10;
  v8[3] = &unk_101654258;
  v8[4] = self;
  v4 = sub_100021DB0(advisories, v8);

  if ([v4 count] > 3)
  {
    v5 = 4;
  }

  else
  {
    v5 = [v4 count];
  }

  advisoriesStackView = self->_advisoriesStackView;
  v7 = [v4 subarrayWithRange:{0, v5}];
  [(UIStackView *)advisoriesStackView _maps_setArrangedSubviews:v7];
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v6 = routeCopy;
    objc_storeStrong(&self->_route, route);
    [(CarAdvisoriesView *)self refreshContent];
    routeCopy = v6;
  }
}

- (void)_setupViews
{
  v3 = objc_alloc_init(UIStackView);
  advisoriesStackView = self->_advisoriesStackView;
  self->_advisoriesStackView = v3;

  [(UIStackView *)self->_advisoriesStackView setAccessibilityIdentifier:@"AdvisoriesStackView"];
  [(UIStackView *)self->_advisoriesStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_advisoriesStackView setAxis:1];
  [(UIStackView *)self->_advisoriesStackView setAlignment:0];
  [(UIStackView *)self->_advisoriesStackView setDistribution:2];
  [(UIStackView *)self->_advisoriesStackView setSpacing:3.0];
  [(UIStackView *)self->_advisoriesStackView setClipsToBounds:1];
  LODWORD(v5) = 1148846080;
  [(UIStackView *)self->_advisoriesStackView setContentHuggingPriority:1 forAxis:v5];
  [(CarAdvisoriesView *)self addSubview:self->_advisoriesStackView];
  leadingAnchor = [(UIStackView *)self->_advisoriesStackView leadingAnchor];
  leadingAnchor2 = [(CarAdvisoriesView *)self leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[0] = v16;
  trailingAnchor = [(UIStackView *)self->_advisoriesStackView trailingAnchor];
  trailingAnchor2 = [(CarAdvisoriesView *)self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v7;
  topAnchor = [(UIStackView *)self->_advisoriesStackView topAnchor];
  topAnchor2 = [(CarAdvisoriesView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[2] = v10;
  bottomAnchor = [(UIStackView *)self->_advisoriesStackView bottomAnchor];
  bottomAnchor2 = [(CarAdvisoriesView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[3] = v13;
  v14 = [NSArray arrayWithObjects:v19 count:4];
  [(CarAdvisoriesView *)self addConstraints:v14];
}

- (unint64_t)count
{
  arrangedSubviews = [(UIStackView *)self->_advisoriesStackView arrangedSubviews];
  v3 = [arrangedSubviews count];

  return v3;
}

- (CarAdvisoriesView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CarAdvisoriesView;
  v3 = [(CarAdvisoriesView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarAdvisoriesView *)v3 setAccessibilityIdentifier:@"CarAdvisoriesView"];
    [(CarAdvisoriesView *)v4 _setupViews];
  }

  return v4;
}

@end