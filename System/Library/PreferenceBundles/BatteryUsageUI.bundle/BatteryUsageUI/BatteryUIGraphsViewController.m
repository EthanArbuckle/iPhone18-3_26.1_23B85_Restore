@interface BatteryUIGraphsViewController
- (BOOL)validateDictionary:(id)a3;
- (BatteryUIGraphsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIActivityIndicatorView)activityIndicator;
- (void)didReceiveMemoryWarning;
- (void)reportIssue;
- (void)setUpModelingView:(id)a3;
- (void)viewDidLoad;
@end

@implementation BatteryUIGraphsViewController

- (UIActivityIndicatorView)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
    v5 = self->_activityIndicator;
    self->_activityIndicator = v4;

    [(UIActivityIndicatorView *)self->_activityIndicator setSize:50.0, 50.0];
    v6 = [(BatteryUIGraphsViewController *)self view];
    [v6 center];
    [(UIActivityIndicatorView *)self->_activityIndicator setCenter:?];

    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (BatteryUIGraphsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = BatteryUIGraphsViewController;
  v4 = [(BatteryUIGraphsViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(BatteryUIGraphsViewController *)v4 setTitle:@"Modeling Details"];
  }

  return v5;
}

- (BOOL)validateDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"ModelData"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setUpModelingView:(id)a3
{
  v5 = a3;
  if ([(BatteryUIGraphsViewController *)self validateDictionary:v5])
  {
    objc_storeStrong(&self->_currentDictionary, a3);
    v59 = v5;
    v6 = [v5 objectForKeyedSubscript:@"ModelData"];
    v7 = [UIScrollView alloc];
    v8 = [(BatteryUIGraphsViewController *)self navigationController];
    [v8 navigationBar];
    v9 = v60 = self;
    [v9 frame];
    v10 = 20.0;
    v12 = v11 + 20.0;
    v13 = [(BatteryUIGraphsViewController *)self view];
    [v13 frame];
    v15 = v14;
    v16 = [(BatteryUIGraphsViewController *)self view];
    [v16 frame];
    v18 = v17;
    v19 = [(BatteryUIGraphsViewController *)self navigationController];
    v20 = [v19 navigationBar];
    [v20 frame];
    v22 = [v7 initWithFrame:{0.0, v12, v15, v18 - v21}];
    [(BatteryUIGraphsViewController *)self setRootScrollView:v22];

    v23 = [(BatteryUIGraphsViewController *)self view];
    v24 = [(BatteryUIGraphsViewController *)self rootScrollView];
    [v23 addSubview:v24];

    v25 = self;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v6;
    v26 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 20;
      v29 = &UITableViewAutomaticDimension_ptr;
      v30 = *v63;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v63 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v62 + 1) + 8 * i);
          v33 = v29[142];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = [UILabel alloc];
            v35 = [(BatteryUIGraphsViewController *)v25 rootScrollView];
            [v35 frame];
            v37 = [v34 initWithFrame:{10.0, v28, v36 + -20.0, 20.0}];

            v38 = [v32 objectForKeyedSubscript:@"ModelGraphName"];
            [v37 setText:v38];

            [v37 frame];
            [v37 sizeThatFits:{v39, v40}];
            v41 = [(BatteryUIGraphsViewController *)v25 rootScrollView];
            [v41 addSubview:v37];

            v42 = v30;
            v43 = v29;
            v44 = [PLBatteryUIGraphViewInternal alloc];
            v45 = [(BatteryUIGraphsViewController *)v25 rootScrollView];
            [v45 frame];
            v47 = v46 + -20.0;
            v48 = +[PLBatteryUIGraphViewInternal graphHeight];
            v49 = [v32 objectForKeyedSubscript:@"ModelGraphArray"];
            v50 = [(PLBatteryUIGraphViewInternal *)v44 initWithFrame:v49 andData:10.0, (v28 + 20), v47, v48];

            v25 = v60;
            v51 = [v32 objectForKeyedSubscript:@"ModelGraphType"];
            -[PLBatteryUIGraphViewInternal setGraphType:](v50, "setGraphType:", [v51 intValue]);

            v52 = [(BatteryUIGraphsViewController *)v60 rootScrollView];
            [v52 addSubview:v50];

            v29 = v43;
            v30 = v42;
            v28 += +[PLBatteryUIGraphViewInternal graphHeight]+ 40;
          }
        }

        v27 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v27);
      v10 = v28;
    }

    v53 = [(BatteryUIGraphsViewController *)v25 rootScrollView];
    [v53 frame];
    v55 = v54;
    v56 = [(BatteryUIGraphsViewController *)v25 rootScrollView];
    [v56 setContentSize:{v55, v10}];

    v57 = [(BatteryUIGraphsViewController *)v25 rootScrollView];
    [v57 setScrollEnabled:1];

    v58 = [(BatteryUIGraphsViewController *)v25 view];
    [v58 setUserInteractionEnabled:1];

    v5 = v59;
  }
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = BatteryUIGraphsViewController;
  [(BatteryUIGraphsViewController *)&v15 viewDidLoad];
  v3 = [(BatteryUIGraphsViewController *)self view];
  v4 = [(BatteryUIGraphsViewController *)self activityIndicator];
  [v3 addSubview:v4];

  v5 = [UIBarButtonItem alloc];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [UIImage imageNamed:@"radar.png" inBundle:v6];
  v8 = [v5 initWithImage:v7 style:0 target:self action:"reportIssue"];
  v9 = [(BatteryUIGraphsViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

  v10 = [(BatteryUIGraphsViewController *)self view];
  v11 = +[UIColor whiteColor];
  [v10 setBackgroundColor:v11];

  v12 = [(BatteryUIGraphsViewController *)self activityIndicator];
  [v12 startAnimating];

  v13 = +[BatteryUsageQueryModule sharedModule];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5A64;
  v14[3] = &unk_1638C0;
  v14[4] = self;
  [v13 populateBatteryModelsWithCompletion:v14];
}

- (void)reportIssue
{
  v3 = [[BatteryUsageRadarComposeViewController alloc] initWithParentView:self andDictionary:self->_currentDictionary];
  [(BatteryUIGraphsViewController *)self setRadarController:v3];

  v4 = [(BatteryUIGraphsViewController *)self radarController];
  [v4 showRadarComposeAlert];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = BatteryUIGraphsViewController;
  [(BatteryUIGraphsViewController *)&v2 didReceiveMemoryWarning];
}

@end