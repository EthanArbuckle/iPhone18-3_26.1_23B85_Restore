@interface VOTUIMapsExplorationViewController
- (void)highlightExplorationSegmentWithIndex:(int64_t)a3;
- (void)loadView;
- (void)updateUIWithCenter:(CGPoint)a3;
- (void)updateUIWithCenter:(CGPoint)a3 andExplorationSegments:(id)a4;
- (void)updateUIWithCurrentLocation:(CGPoint)a3;
@end

@implementation VOTUIMapsExplorationViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(VOTUIMapsExplorationViewController *)self setView:v3];
}

- (void)updateUIWithCenter:(CGPoint)a3 andExplorationSegments:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(VOTUIMapsExplorationViewController *)self view];
  [v8 updateUIWithCenter:v7 andExplorationSegments:{x, y}];
}

- (void)updateUIWithCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VOTUIMapsExplorationViewController *)self view];
  [v5 updateUIWithCenter:{x, y}];
}

- (void)updateUIWithCurrentLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VOTUIMapsExplorationViewController *)self view];
  [v5 updateUIWithCurrentLocation:{x, y}];
}

- (void)highlightExplorationSegmentWithIndex:(int64_t)a3
{
  v4 = [(VOTUIMapsExplorationViewController *)self view];
  [v4 highlightExplorationSegmentWithIndex:a3];
}

@end