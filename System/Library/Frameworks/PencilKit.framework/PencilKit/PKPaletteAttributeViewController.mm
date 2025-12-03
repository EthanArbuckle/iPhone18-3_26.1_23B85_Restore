@interface PKPaletteAttributeViewController
- (CGSize)preferredContentSize;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPaletteAttributeViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(PKPaletteAttributeViewController *)self setDidExperienceUserInteraction:0];
  [(PKPaletteAttributeViewController *)self setDidSendDismissStatistics:0];
  v5.receiver = self;
  v5.super_class = PKPaletteAttributeViewController;
  [(PKPaletteAttributeViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PKPaletteAttributeViewController;
  [(PKPaletteAttributeViewController *)&v6 viewDidDisappear:disappear];
  if (![(PKPaletteAttributeViewController *)self didSendDismissStatistics])
  {
    v4 = +[PKStatisticsManager sharedStatisticsManager];
    toolIdentifier = [(PKPaletteAttributeViewController *)self toolIdentifier];
    [(PKPaletteAttributeViewController *)self didExperienceUserInteraction];
    [PKStatisticsManager recordToolAttributePopoverAppearedForTool:v4 hadInteraction:toolIdentifier];

    [(PKPaletteAttributeViewController *)self setDidSendDismissStatistics:1];
  }
}

- (CGSize)preferredContentSize
{
  if (_UISolariumEnabled())
  {
    v15.receiver = self;
    v15.super_class = PKPaletteAttributeViewController;
    [(PKPaletteAttributeViewController *)&v15 preferredContentSize];
    v4 = v3;
    v6 = v5;
    edgeLocation = [(PKPaletteAttributeViewController *)self edgeLocation];
    if (edgeLocation == 4 || edgeLocation == 1)
    {
      v8 = -12.0;
LABEL_9:
      v6 = v6 + v8;
      goto LABEL_10;
    }

    edgeLocation2 = [(PKPaletteAttributeViewController *)self edgeLocation];
    if (edgeLocation2 == 8 || edgeLocation2 == 2)
    {
      v4 = v4 + -12.0;
      v8 = 1.0;
      goto LABEL_9;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PKPaletteAttributeViewController;
    [(PKPaletteAttributeViewController *)&v14 preferredContentSize];
    v4 = v9;
    v6 = v10;
  }

LABEL_10:
  v12 = v4;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

@end