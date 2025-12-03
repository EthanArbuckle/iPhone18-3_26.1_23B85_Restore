@interface PSGraphViewTableCell
- (NSMutableArray)graphArray;
- (PLBatteryUIMoveableGraphView)graphView;
- (PSGraphViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIActivityIndicatorView)activityIndicator;
- (UIScrollView)scrollView;
- (void)generateGraphs;
- (void)layoutSubviews;
- (void)pinch:(id)pinch;
- (void)setGraphArray:(id)array;
- (void)setSpecifier:(id)specifier;
@end

@implementation PSGraphViewTableCell

- (UIScrollView)scrollView
{
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    v4 = objc_alloc_init(UIScrollView);
    v5 = self->_scrollView;
    self->_scrollView = v4;

    v6 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:"pinch:"];
    [(UIScrollView *)self->_scrollView addGestureRecognizer:v6];

    scrollView = self->_scrollView;
  }

  return scrollView;
}

- (PLBatteryUIMoveableGraphView)graphView
{
  graphView = self->_graphView;
  if (!graphView)
  {
    v4 = objc_alloc_init(PLBatteryUIMoveableGraphView);
    v5 = self->_graphView;
    self->_graphView = v4;

    graphView = self->_graphView;
  }

  return graphView;
}

- (UIActivityIndicatorView)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
    v5 = self->_activityIndicator;
    self->_activityIndicator = v4;

    [(UIActivityIndicatorView *)self->_activityIndicator setSize:50.0, 50.0];
    [(PSGraphViewTableCell *)self center];
    [(UIActivityIndicatorView *)self->_activityIndicator setCenter:?];
    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (NSMutableArray)graphArray
{
  graphArray = self->_graphArray;
  if (!graphArray)
  {
    specifier = [(PSGraphViewTableCell *)self specifier];
    v5 = [specifier propertyForKey:@"GRAPH_ARRAY"];
    v6 = self->_graphArray;
    self->_graphArray = v5;

    graphArray = self->_graphArray;
  }

  return graphArray;
}

- (void)setGraphArray:(id)array
{
  objc_storeStrong(&self->_graphArray, array);
  arrayCopy = array;
  specifier = [(PSGraphViewTableCell *)self specifier];
  [specifier setProperty:self->_graphArray forKey:@"GRAPH_ARRAY"];
}

- (void)generateGraphs
{
  if (self->graphViewDidChange)
  {
    v66 = objc_alloc_init(UILabel);
    [v66 setText:@"000%"];
    v3 = [UIFont systemFontOfSize:11.0];
    [v66 setFont:v3];

    [v66 sizeToFit];
    [v66 setText:@"0%"];
    [v66 setTextAlignment:2];
    [v66 setColor:self->labelColor];
    v4 = objc_alloc_init(UILabel);
    [v4 setText:@"100%"];
    v5 = [UIFont systemFontOfSize:11.0];
    [v4 setFont:v5];

    [v4 sizeToFit];
    [v4 setColor:self->labelColor];
    v6 = objc_alloc_init(UILabel);
    [v6 setText:@"000%"];
    v7 = [UIFont systemFontOfSize:11.0];
    [v6 setFont:v7];

    [v6 sizeToFit];
    [v6 setText:@"50%"];
    [v6 setTextAlignment:2];
    [v6 setColor:self->labelColor];
    [(PSGraphViewTableCell *)self frame];
    v9 = v8 + -40.0;
    [v66 size];
    v11 = v10;
    [v66 size];
    [v66 setFrame:{1.0, v9, v11, v12}];
    [v4 size];
    v14 = 10.0 - v13 * 0.5;
    [v4 size];
    v16 = v15;
    [v4 size];
    [v4 setFrame:{1.0, v14, v16, v17}];
    [v66 frame];
    v19 = v18;
    [v4 frame];
    v21 = v19 - v20;
    [v6 size];
    v23 = (v22 + v21) * 0.5;
    [v6 size];
    v25 = v24;
    [v6 size];
    [v6 setFrame:{1.0, v23, v25, v26}];
    [(PSGraphViewTableCell *)self addSubview:v66];
    [(PSGraphViewTableCell *)self addSubview:v4];
    [(PSGraphViewTableCell *)self addSubview:v6];
    [v4 size];
    v28 = v27;
    [(PSGraphViewTableCell *)self frame];
    v30 = v29 + -10.0 - v28;
    v31 = (+[PLBatteryUIMoveableGraphView graphHeight]- 20);
    graphView = [(PSGraphViewTableCell *)self graphView];
    [graphView setFrame:{0.0, 0.0, v30, v31}];

    graphView2 = [(PSGraphViewTableCell *)self graphView];
    graphArray = [(PSGraphViewTableCell *)self graphArray];
    [graphView2 setInputData:graphArray];

    backgroundColor = [(PSGraphViewTableCell *)self backgroundColor];
    graphView3 = [(PSGraphViewTableCell *)self graphView];
    [graphView3 setBackgroundColor:backgroundColor];

    backgroundColor2 = [(PSGraphViewTableCell *)self backgroundColor];
    graphView4 = [(PSGraphViewTableCell *)self graphView];
    [graphView4 setGraphBackgroundColor:backgroundColor2];

    labelColor = self->labelColor;
    graphView5 = [(PSGraphViewTableCell *)self graphView];
    [graphView5 setLabelColor:labelColor];

    v41 = +[UIColor tableCellBlueTextColor];
    graphView6 = [(PSGraphViewTableCell *)self graphView];
    [graphView6 setLineColor:v41];

    specifier = [(PSGraphViewTableCell *)self specifier];
    v44 = [specifier propertyForKey:@"DisplayRange"];

    if (v44 && [v44 isEqualToString:@"PLBatteryUIQueryRangeWeekKey"])
    {
      graphView7 = [(PSGraphViewTableCell *)self graphView];
      [graphView7 setDisplayRange:604800.0];
    }

    v46 = v28 + 3.0;
    [(PSGraphViewTableCell *)self frame];
    v48 = v47 + -10.0 - v28 + -3.0;
    v49 = (+[PLBatteryUIMoveableGraphView graphHeight]- 20);
    scrollView = [(PSGraphViewTableCell *)self scrollView];
    [scrollView setFrame:{v46, 10.0, v48, v49}];

    graphView8 = [(PSGraphViewTableCell *)self graphView];
    [graphView8 size];
    v53 = v52;
    v55 = v54;
    scrollView2 = [(PSGraphViewTableCell *)self scrollView];
    [scrollView2 setContentSize:{v53, v55}];

    scrollView3 = [(PSGraphViewTableCell *)self scrollView];
    graphView9 = [(PSGraphViewTableCell *)self graphView];
    [scrollView3 addSubview:graphView9];

    scrollView4 = [(PSGraphViewTableCell *)self scrollView];
    [(PSGraphViewTableCell *)self addSubview:scrollView4];

    scrollView5 = [(PSGraphViewTableCell *)self scrollView];
    graphView10 = [(PSGraphViewTableCell *)self graphView];
    [graphView10 size];
    v63 = v62;
    scrollView6 = [(PSGraphViewTableCell *)self scrollView];
    [scrollView6 frame];
    [scrollView5 setContentOffset:0 animated:{v63 - v65, 0.0}];

    self->graphViewDidChange = 0;
  }
}

- (PSGraphViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = PSGraphViewTableCell;
  v4 = [(PSGraphViewTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(PSGraphViewTableCell *)v4 setBackgroundColor:v5];

    v6 = +[UIColor blackColor];
    labelColor = v4->labelColor;
    v4->labelColor = v6;

    backgroundColor = [(PSGraphViewTableCell *)v4 backgroundColor];
    graphColor = v4->graphColor;
    v4->graphColor = backgroundColor;

    graphArray = v4->_graphArray;
    v4->_graphArray = 0;

    v4->waitingForData = 0;
    v4->graphViewDidChange = 1;
    [(PSGraphViewTableCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PSGraphViewTableCell;
  [(PSGraphViewTableCell *)&v3 layoutSubviews];
  if (!self->waitingForData)
  {
    [(PSGraphViewTableCell *)self generateGraphs];
  }
}

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = PSGraphViewTableCell;
  [(PSGraphViewTableCell *)&v9 setSpecifier:specifier];
  graphArray = [(PSGraphViewTableCell *)self graphArray];

  if (!graphArray)
  {
    self->waitingForData = 1;
    activityIndicator = [(PSGraphViewTableCell *)self activityIndicator];
    [(PSGraphViewTableCell *)self addSubview:activityIndicator];

    activityIndicator2 = [(PSGraphViewTableCell *)self activityIndicator];
    [activityIndicator2 startAnimating];

    v7 = +[BatteryUsageQueryModule sharedModule];
    [v7 setGraphNames:&off_174CB0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_28B4C;
    v8[3] = &unk_1638C0;
    v8[4] = self;
    [v7 populateBatteryModelsWithCompletion:v8];
  }
}

- (void)pinch:(id)pinch
{
  pinchCopy = pinch;
  if ([pinchCopy numberOfTouches] >= 2)
  {
    graphView = [(PSGraphViewTableCell *)self graphView];
    [pinchCopy locationOfTouch:0 inView:graphView];
    v6 = v5;

    graphView2 = [(PSGraphViewTableCell *)self graphView];
    [pinchCopy locationOfTouch:1 inView:graphView2];
    v9 = v8;

    v10 = v6 + (v9 - v6) * 0.5;
    graphView3 = [(PSGraphViewTableCell *)self graphView];
    [graphView3 size];
    v13 = v10 / v12;

    scrollView = [(PSGraphViewTableCell *)self scrollView];
    [scrollView contentOffset];
    v16 = v10 - v15;

    self->graphViewDidChange = 1;
    graphView4 = [(PSGraphViewTableCell *)self graphView];
    [graphView4 displayRange];
    v19 = v18;
    [pinchCopy scale];
    v21 = v19 / v20;
    graphView5 = [(PSGraphViewTableCell *)self graphView];
    [graphView5 setDisplayRange:v21];

    graphView6 = [(PSGraphViewTableCell *)self graphView];
    [graphView6 size];
    v25 = v24;
    v27 = v26;
    scrollView2 = [(PSGraphViewTableCell *)self scrollView];
    [scrollView2 setContentSize:{v25, v27}];

    graphView7 = [(PSGraphViewTableCell *)self graphView];
    [graphView7 size];
    v31 = v13 * v30;

    scrollView3 = [(PSGraphViewTableCell *)self scrollView];
    [scrollView3 setContentOffset:0 animated:{v31 - v16, 0.0}];

    [pinchCopy setScale:1.0];
  }
}

@end