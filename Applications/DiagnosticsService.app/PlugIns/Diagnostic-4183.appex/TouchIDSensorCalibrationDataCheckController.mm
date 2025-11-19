@interface TouchIDSensorCalibrationDataCheckController
- (void)start;
@end

@implementation TouchIDSensorCalibrationDataCheckController

- (void)start
{
  if (([(TouchIDSensorCalibrationDataCheckController *)self isCancelled]& 1) != 0 || ([TouchIDManager runTouchIDDiagnostic:3 options:&__NSDictionary0__struct], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
    if (([(TouchIDSensorCalibrationDataCheckController *)self isCancelled]& 1) == 0)
    {
      v4 = [v8 objectForKeyedSubscript:@"data"];
      v5 = [(TouchIDSensorCalibrationDataCheckController *)self result];
      [v5 setData:v4];

      v6 = [v8 objectForKeyedSubscript:@"testStatus"];
      v7 = [(TouchIDSensorCalibrationDataCheckController *)self result];
      [v7 setStatusCode:v6];
    }
  }

  [(TouchIDSensorCalibrationDataCheckController *)self setFinished:1];
}

@end