@interface VOTUIElementVisualizationViewController
- (void)_updateFramesForView;
- (void)didReceiveMemoryWarning;
- (void)setElementFrames:(id)a3 labels:(id)a4 uiClasses:(id)a5;
- (void)setFramesHidden:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation VOTUIElementVisualizationViewController

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = VOTUIElementVisualizationViewController;
  [(VOTUIElementVisualizationViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setElementFrames:(id)a3 labels:(id)a4 uiClasses:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  frames = self->_frames;
  self->_frames = v8;
  v12 = v8;

  labels = self->_labels;
  self->_labels = v9;
  v14 = v9;

  uiClasses = self->_uiClasses;
  self->_uiClasses = v10;

  [(VOTUIElementVisualizationViewController *)self _updateFramesForView];
}

- (void)_updateFramesForView
{
  v3 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = self->_frames;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v39 = CGRectFromString(*(*(&v34 + 1) + 8 * v8));
        x = v39.origin.x;
        y = v39.origin.y;
        width = v39.size.width;
        height = v39.size.height;
        v13 = [(VOTUIElementVisualizationViewController *)self view];
        v14 = [v13 window];
        [v14 _convertRectFromSceneReferenceSpace:{x, y, width, height}];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v23 = [(VOTUIElementVisualizationViewController *)self view];
        [v23 convertRect:0 fromView:{v16, v18, v20, v22}];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v40.origin.x = v25;
        v40.origin.y = v27;
        v40.size.width = v29;
        v40.size.height = v31;
        v32 = NSStringFromCGRect(v40);
        [v3 addObject:v32];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v6);
  }

  v33 = [(VOTUIElementVisualizationViewController *)self view];
  [v33 setElementFrames:v3 labels:self->_labels uiClasses:self->_uiClasses];
}

- (void)viewDidLoad
{
  v3 = [[VOTUIElementVisualizationView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(VOTUIElementVisualizationViewController *)self setView:v3];

  v4.receiver = self;
  v4.super_class = VOTUIElementVisualizationViewController;
  [(VOTUIElementVisualizationViewController *)&v4 viewDidLoad];
}

- (void)setFramesHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(VOTUIElementVisualizationViewController *)self view];
  [v4 setHidden:v3];
}

@end