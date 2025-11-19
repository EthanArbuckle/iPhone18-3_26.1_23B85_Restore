@interface MUPlaceViewController
- (double)_ma_heightForProposedWidth:(double)a3;
@end

@implementation MUPlaceViewController

- (double)_ma_heightForProposedWidth:(double)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(MUPlaceViewController *)self _systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:v3, v4];
  return v5;
}

@end