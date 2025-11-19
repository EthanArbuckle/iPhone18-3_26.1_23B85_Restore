@interface TouchIDESDEventIncidenceCheckInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation TouchIDESDEventIncidenceCheckInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v9 = 0;
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 dk_numberFromKey:@"kEsdMonitorTimeout" lowerBound:&off_1000041D8 upperBound:&off_1000041F0 defaultValue:0 failed:&v9];

  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:@"kEsdMonitorTimeout"];
  }

  [(TouchIDESDEventIncidenceCheckInputs *)self setBiokitOptions:v5];
  v7 = v9;

  return (v7 & 1) == 0;
}

@end