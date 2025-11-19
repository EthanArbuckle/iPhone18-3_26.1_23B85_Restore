@interface PSGraphViewTableCell
- (NSMutableArray)graphArray;
- (PLBatteryUIMoveableGraphView)graphView;
- (PSGraphViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIActivityIndicatorView)activityIndicator;
- (UIScrollView)scrollView;
- (void)generateGraphs;
- (void)layoutSubviews;
- (void)pinch:(id)a3;
- (void)setGraphArray:(id)a3;
- (void)setSpecifier:(id)a3;
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
    v4 = [(PSGraphViewTableCell *)self specifier];
    v5 = [v4 propertyForKey:@"GRAPH_ARRAY"];
    v6 = self->_graphArray;
    self->_graphArray = v5;

    graphArray = self->_graphArray;
  }

  return graphArray;
}

- (void)setGraphArray:(id)a3
{
  objc_storeStrong(&self->_graphArray, a3);
  v5 = a3;
  v6 = [(PSGraphViewTableCell *)self specifier];
  [v6 setProperty:self->_graphArray forKey:@"GRAPH_ARRAY"];
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
    v32 = [(PSGraphViewTableCell *)self graphView];
    [v32 setFrame:{0.0, 0.0, v30, v31}];

    v33 = [(PSGraphViewTableCell *)self graphView];
    v34 = [(PSGraphViewTableCell *)self graphArray];
    [v33 setInputData:v34];

    v35 = [(PSGraphViewTableCell *)self backgroundColor];
    v36 = [(PSGraphViewTableCell *)self graphView];
    [v36 setBackgroundColor:v35];

    v37 = [(PSGraphViewTableCell *)self backgroundColor];
    v38 = [(PSGraphViewTableCell *)self graphView];
    [v38 setGraphBackgroundColor:v37];

    labelColor = self->labelColor;
    v40 = [(PSGraphViewTableCell *)self graphView];
    [v40 setLabelColor:labelColor];

    v41 = +[UIColor tableCellBlueTextColor];
    v42 = [(PSGraphViewTableCell *)self graphView];
    [v42 setLineColor:v41];

    v43 = [(PSGraphViewTableCell *)self specifier];
    v44 = [v43 propertyForKey:@"DisplayRange"];

    if (v44 && [v44 isEqualToString:@"PLBatteryUIQueryRangeWeekKey"])
    {
      v45 = [(PSGraphViewTableCell *)self graphView];
      [v45 setDisplayRange:604800.0];
    }

    v46 = v28 + 3.0;
    [(PSGraphViewTableCell *)self frame];
    v48 = v47 + -10.0 - v28 + -3.0;
    v49 = (+[PLBatteryUIMoveableGraphView graphHeight]- 20);
    v50 = [(PSGraphViewTableCell *)self scrollView];
    [v50 setFrame:{v46, 10.0, v48, v49}];

    v51 = [(PSGraphViewTableCell *)self graphView];
    [v51 size];
    v53 = v52;
    v55 = v54;
    v56 = [(PSGraphViewTableCell *)self scrollView];
    [v56 setContentSize:{v53, v55}];

    v57 = [(PSGraphViewTableCell *)self scrollView];
    v58 = [(PSGraphViewTableCell *)self graphView];
    [v57 addSubview:v58];

    v59 = [(PSGraphViewTableCell *)self scrollView];
    [(PSGraphViewTableCell *)self addSubview:v59];

    v60 = [(PSGraphViewTableCell *)self scrollView];
    v61 = [(PSGraphViewTableCell *)self graphView];
    [v61 size];
    v63 = v62;
    v64 = [(PSGraphViewTableCell *)self scrollView];
    [v64 frame];
    [v60 setContentOffset:0 animated:{v63 - v65, 0.0}];

    self->graphViewDidChange = 0;
  }
}

- (PSGraphViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = PSGraphViewTableCell;
  v4 = [(PSGraphViewTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(PSGraphViewTableCell *)v4 setBackgroundColor:v5];

    v6 = +[UIColor blackColor];
    labelColor = v4->labelColor;
    v4->labelColor = v6;

    v8 = [(PSGraphViewTableCell *)v4 backgroundColor];
    graphColor = v4->graphColor;
    v4->graphColor = v8;

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

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = PSGraphViewTableCell;
  [(PSGraphViewTableCell *)&v9 setSpecifier:a3];
  v4 = [(PSGraphViewTableCell *)self graphArray];

  if (!v4)
  {
    self->waitingForData = 1;
    v5 = [(PSGraphViewTableCell *)self activityIndicator];
    [(PSGraphViewTableCell *)self addSubview:v5];

    v6 = [(PSGraphViewTableCell *)self activityIndicator];
    [v6 startAnimating];

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

- (void)pinch:(id)a3
{
  v33 = a3;
  if ([v33 numberOfTouches] >= 2)
  {
    v4 = [(PSGraphViewTableCell *)self graphView];
    [v33 locationOfTouch:0 inView:v4];
    v6 = v5;

    v7 = [(PSGraphViewTableCell *)self graphView];
    [v33 locationOfTouch:1 inView:v7];
    v9 = v8;

    v10 = v6 + (v9 - v6) * 0.5;
    v11 = [(PSGraphViewTableCell *)self graphView];
    [v11 size];
    v13 = v10 / v12;

    v14 = [(PSGraphViewTableCell *)self scrollView];
    [v14 contentOffset];
    v16 = v10 - v15;

    self->graphViewDidChange = 1;
    v17 = [(PSGraphViewTableCell *)self graphView];
    [v17 displayRange];
    v19 = v18;
    [v33 scale];
    v21 = v19 / v20;
    v22 = [(PSGraphViewTableCell *)self graphView];
    [v22 setDisplayRange:v21];

    v23 = [(PSGraphViewTableCell *)self graphView];
    [v23 size];
    v25 = v24;
    v27 = v26;
    v28 = [(PSGraphViewTableCell *)self scrollView];
    [v28 setContentSize:{v25, v27}];

    v29 = [(PSGraphViewTableCell *)self graphView];
    [v29 size];
    v31 = v13 * v30;

    v32 = [(PSGraphViewTableCell *)self scrollView];
    [v32 setContentOffset:0 animated:{v31 - v16, 0.0}];

    [v33 setScale:1.0];
  }
}

@end