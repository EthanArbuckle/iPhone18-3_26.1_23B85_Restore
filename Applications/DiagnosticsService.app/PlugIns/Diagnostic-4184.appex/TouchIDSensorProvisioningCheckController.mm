@interface TouchIDSensorProvisioningCheckController
- (void)start;
@end

@implementation TouchIDSensorProvisioningCheckController

- (void)start
{
  if (([(TouchIDSensorProvisioningCheckController *)self isCancelled]& 1) != 0 || ([TouchIDManager runTouchIDDiagnostic:4 options:&__NSDictionary0__struct], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
    if (([(TouchIDSensorProvisioningCheckController *)self isCancelled]& 1) == 0)
    {
      v4 = [v8 objectForKeyedSubscript:@"data"];
      result = [(TouchIDSensorProvisioningCheckController *)self result];
      [result setData:v4];

      v6 = [v8 objectForKeyedSubscript:@"testStatus"];
      result2 = [(TouchIDSensorProvisioningCheckController *)self result];
      [result2 setStatusCode:v6];
    }
  }

  [(TouchIDSensorProvisioningCheckController *)self setFinished:1];
}

@end