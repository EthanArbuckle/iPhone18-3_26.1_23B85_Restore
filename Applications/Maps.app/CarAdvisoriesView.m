@interface CarAdvisoriesView
- (CarAdvisoriesView)initWithFrame:(CGRect)a3;
- (unint64_t)count;
- (void)_setupViews;
- (void)refreshContent;
- (void)setRoute:(id)a3;
@end

@implementation CarAdvisoriesView

- (void)refreshContent
{
  v3 = [(GEOComposedRoute *)self->_route advisories];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DABB10;
  v8[3] = &unk_101654258;
  v8[4] = self;
  v4 = sub_100021DB0(v3, v8);

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

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_route, a3);
    [(CarAdvisoriesView *)self refreshContent];
    v5 = v6;
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
  v18 = [(UIStackView *)self->_advisoriesStackView leadingAnchor];
  v17 = [(CarAdvisoriesView *)self leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v15 = [(UIStackView *)self->_advisoriesStackView trailingAnchor];
  v6 = [(CarAdvisoriesView *)self trailingAnchor];
  v7 = [v15 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [(UIStackView *)self->_advisoriesStackView topAnchor];
  v9 = [(CarAdvisoriesView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [(UIStackView *)self->_advisoriesStackView bottomAnchor];
  v12 = [(CarAdvisoriesView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [NSArray arrayWithObjects:v19 count:4];
  [(CarAdvisoriesView *)self addConstraints:v14];
}

- (unint64_t)count
{
  v2 = [(UIStackView *)self->_advisoriesStackView arrangedSubviews];
  v3 = [v2 count];

  return v3;
}

- (CarAdvisoriesView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CarAdvisoriesView;
  v3 = [(CarAdvisoriesView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarAdvisoriesView *)v3 setAccessibilityIdentifier:@"CarAdvisoriesView"];
    [(CarAdvisoriesView *)v4 _setupViews];
  }

  return v4;
}

@end