@interface HKHRCardioFitnessDataSource
- (HKHRCardioFitnessDataSource)initWithHealthStore:(id)store classificationsAvailable:(BOOL)available;
- (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (void)didChangeFromOverlayWithIdentifier:(id)identifier toOverlayWithIdentifier:(id)withIdentifier;
@end

@implementation HKHRCardioFitnessDataSource

- (HKHRCardioFitnessDataSource)initWithHealthStore:(id)store classificationsAvailable:(BOOL)available
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = HKHRCardioFitnessDataSource;
  v7 = [(HKHRCardioFitnessDataSource *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_classificationsAvailable = available;
    v9 = objc_alloc(MEMORY[0x29EDC5220]);
    v10 = [objc_alloc(MEMORY[0x29EDC5218]) initWithHealthStore:storeCopy];
    v11 = [v9 initWithSignalSource:v10];
    analyticsManager = v8->_analyticsManager;
    v8->_analyticsManager = v11;
  }

  return v8;
}

- (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  if (self->_classificationsAvailable)
  {
    [MEMORY[0x29EDC4438] cardioFitnessInteractiveChartViewControllerWithDisplayDate:date applicationItems:items preferredOverlay:overlay analyticsDelegate:self restorationUserActivity:activity trendModel:model factorDisplayTypes:types additionalChartOptions:options];
  }

  else
  {
    [MEMORY[0x29EDC4438] vo2MaxInteractiveChartViewControllerWithDisplayDate:date applicationItems:items restorationUserActivity:activity trendModel:model factorDisplayTypes:types additionalChartOptions:options];
  }
  v11 = ;

  return v11;
}

- (void)didChangeFromOverlayWithIdentifier:(id)identifier toOverlayWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  analyticsManager = [(HKHRCardioFitnessDataSource *)self analyticsManager];
  v8 = [analyticsManager submitClassificationChartOverlaySelectedEventCurrentOverlay:withIdentifierCopy previousOverlay:identifierCopy];
}

@end