@interface PublisherActionView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (PublisherActionView)initWithFrame:(CGRect)a3;
- (PublisherHeaderViewActionManager)actionManager;
- (id)titleForFilterAtIndexPath:(id)a3;
- (void)configureWithActionManager:(id)a3 publishersResultFilters:(id)a4 routingDelegate:(id)a5 selectedFilterIndex:(id)a6;
- (void)createActions;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation PublisherActionView

- (PublisherHeaderViewActionManager)actionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);

  return WeakRetained;
}

- (id)titleForFilterAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PublisherActionView *)self filterCarousel];
  v6 = [v5 titleForFilterAtIndexPath:v4];

  return v6;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(PublisherActionView *)self layoutIfNeeded];
  v20.receiver = self;
  v20.super_class = PublisherActionView;
  *&v10 = a4;
  *&v11 = a5;
  [(PublisherActionView *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  v13 = v12;
  v15 = v14;
  v16 = [(PublisherActionView *)self filterCarousel];

  if (v16)
  {
    [CollectionsFilterCarouselView defaultHeightForDisplayStyle:0 inContext:0];
    v15 = v17 + v15;
  }

  v18 = v13;
  v19 = v15;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)createActions
{
  v4 = [(PublisherActionView *)self actionManager];
  v3 = [(PublisherActionView *)self actionRowView];
  [v3 setActionManager:v4];
}

- (void)setupConstraints
{
  v32 = [(PublisherActionView *)self actionRowView];
  v31 = [v32 topAnchor];
  v30 = [(PublisherActionView *)self topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:16.0];
  v33[0] = v29;
  v28 = [(PublisherActionView *)self actionRowView];
  v27 = [v28 leadingAnchor];
  v26 = [(PublisherActionView *)self leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:10.0];
  v33[1] = v25;
  v24 = [(PublisherActionView *)self actionRowView];
  v23 = [v24 trailingAnchor];
  v22 = [(PublisherActionView *)self trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:-10.0];
  v33[2] = v21;
  v20 = [(PublisherActionView *)self filterCarousel];
  v18 = [v20 topAnchor];
  v19 = [(PublisherActionView *)self actionRowView];
  v17 = [v19 bottomAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:16.0];
  v33[3] = v16;
  v15 = [(PublisherActionView *)self filterCarousel];
  v14 = [v15 leadingAnchor];
  v13 = [(PublisherActionView *)self leadingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v33[4] = v3;
  v4 = [(PublisherActionView *)self filterCarousel];
  v5 = [v4 trailingAnchor];
  v6 = [(PublisherActionView *)self trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v33[5] = v7;
  v8 = [(PublisherActionView *)self filterCarousel];
  v9 = [v8 bottomAnchor];
  v10 = [(PublisherActionView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v33[6] = v11;
  v12 = [NSArray arrayWithObjects:v33 count:7];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setupSubviews
{
  v3 = +[UIColor clearColor];
  [(PublisherActionView *)self setBackgroundColor:v3];

  v4 = [[MUPlaceCardActionsRowView alloc] initWithStyle:2 * (sub_10000FA08(self) == 5)];
  [(PublisherActionView *)self setActionRowView:v4];

  v5 = [(PublisherActionView *)self actionRowView];
  [v5 setPreservesSuperviewLayoutMargins:0];

  v6 = [(PublisherActionView *)self actionRowView];
  [v6 setInsetsLayoutMarginsFromSafeArea:0];

  v7 = [(PublisherActionView *)self actionRowView];
  [v7 setLayoutMargins:{0.0, 6.0, 0.0, 6.0}];

  v8 = [(PublisherActionView *)self actionRowView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(PublisherActionView *)self actionRowView];
  [(PublisherActionView *)self addSubview:v9];

  v10 = [[CollectionsFilterCarouselView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(PublisherActionView *)self setFilterCarousel:v10];

  v11 = [(PublisherActionView *)self filterCarousel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(PublisherActionView *)self filterCarousel];
  [(PublisherActionView *)self addSubview:v12];
}

- (void)configureWithActionManager:(id)a3 publishersResultFilters:(id)a4 routingDelegate:(id)a5 selectedFilterIndex:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(PublisherActionView *)self setActionManager:a3];
  [(PublisherActionView *)self createActions];
  v13 = [v10 count];
  v14 = [(PublisherActionView *)self filterCarousel];
  v15 = v14;
  if (v13 < 2)
  {

    if (v15)
    {
      v17 = [(PublisherActionView *)self actionRowView];
      v18 = [v17 bottomAnchor];
      v19 = [(PublisherActionView *)self bottomAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:-10.0];
      v23 = v20;
      v21 = [NSArray arrayWithObjects:&v23 count:1];
      [NSLayoutConstraint activateConstraints:v21];

      v22 = [(PublisherActionView *)self filterCarousel];
      [v22 removeFromSuperview];

      [(PublisherActionView *)self setFilterCarousel:0];
    }
  }

  else
  {
    [v14 configureWithContext:0 withRoutingDelegate:v11 withPublishersResultFilters:v10 withSelectedFilterIndex:v12];

    v16 = [(PublisherActionView *)self filterCarousel];
    [v16 displayFilters];
  }
}

- (PublisherActionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PublisherActionView;
  v3 = [(PublisherActionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PublisherActionView *)v3 setupSubviews];
    [(PublisherActionView *)v4 setupConstraints];
  }

  return v4;
}

@end