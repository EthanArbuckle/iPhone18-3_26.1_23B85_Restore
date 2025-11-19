@interface HKHRCardioFitnessDataSource
- (HKHRCardioFitnessDataSource)initWithHealthStore:(id)a3 classificationsAvailable:(BOOL)a4;
- (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (void)didChangeFromOverlayWithIdentifier:(id)a3 toOverlayWithIdentifier:(id)a4;
@end

@implementation HKHRCardioFitnessDataSource

- (HKHRCardioFitnessDataSource)initWithHealthStore:(id)a3 classificationsAvailable:(BOOL)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = HKHRCardioFitnessDataSource;
  v7 = [(HKHRCardioFitnessDataSource *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_classificationsAvailable = a4;
    v9 = objc_alloc(MEMORY[0x29EDC5220]);
    v10 = [objc_alloc(MEMORY[0x29EDC5218]) initWithHealthStore:v6];
    v11 = [v9 initWithSignalSource:v10];
    analyticsManager = v8->_analyticsManager;
    v8->_analyticsManager = v11;
  }

  return v8;
}

- (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  if (self->_classificationsAvailable)
  {
    [MEMORY[0x29EDC4438] cardioFitnessInteractiveChartViewControllerWithDisplayDate:a6 applicationItems:a5 preferredOverlay:a7 analyticsDelegate:self restorationUserActivity:a8 trendModel:a9 factorDisplayTypes:a10 additionalChartOptions:a11];
  }

  else
  {
    [MEMORY[0x29EDC4438] vo2MaxInteractiveChartViewControllerWithDisplayDate:a6 applicationItems:a5 restorationUserActivity:a8 trendModel:a9 factorDisplayTypes:a10 additionalChartOptions:a11];
  }
  v11 = ;

  return v11;
}

- (void)didChangeFromOverlayWithIdentifier:(id)a3 toOverlayWithIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HKHRCardioFitnessDataSource *)self analyticsManager];
  v8 = [v7 submitClassificationChartOverlaySelectedEventCurrentOverlay:v6 previousOverlay:v9];
}

@end