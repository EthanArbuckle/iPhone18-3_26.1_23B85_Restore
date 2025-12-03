@interface VOTUIMapsExplorationViewController
- (void)highlightExplorationSegmentWithIndex:(int64_t)index;
- (void)loadView;
- (void)updateUIWithCenter:(CGPoint)center;
- (void)updateUIWithCenter:(CGPoint)center andExplorationSegments:(id)segments;
- (void)updateUIWithCurrentLocation:(CGPoint)location;
@end

@implementation VOTUIMapsExplorationViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(VOTUIMapsExplorationViewController *)self setView:v3];
}

- (void)updateUIWithCenter:(CGPoint)center andExplorationSegments:(id)segments
{
  y = center.y;
  x = center.x;
  segmentsCopy = segments;
  view = [(VOTUIMapsExplorationViewController *)self view];
  [view updateUIWithCenter:segmentsCopy andExplorationSegments:{x, y}];
}

- (void)updateUIWithCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  view = [(VOTUIMapsExplorationViewController *)self view];
  [view updateUIWithCenter:{x, y}];
}

- (void)updateUIWithCurrentLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [(VOTUIMapsExplorationViewController *)self view];
  [view updateUIWithCurrentLocation:{x, y}];
}

- (void)highlightExplorationSegmentWithIndex:(int64_t)index
{
  view = [(VOTUIMapsExplorationViewController *)self view];
  [view highlightExplorationSegmentWithIndex:index];
}

@end