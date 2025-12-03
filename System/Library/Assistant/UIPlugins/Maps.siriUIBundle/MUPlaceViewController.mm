@interface MUPlaceViewController
- (double)_ma_heightForProposedWidth:(double)width;
@end

@implementation MUPlaceViewController

- (double)_ma_heightForProposedWidth:(double)width
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(MUPlaceViewController *)self _systemLayoutSizeFittingSize:width withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:v3, v4];
  return v5;
}

@end