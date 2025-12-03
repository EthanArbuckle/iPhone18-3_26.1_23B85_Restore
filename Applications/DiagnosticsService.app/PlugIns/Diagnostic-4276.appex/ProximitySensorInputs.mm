@interface ProximitySensorInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation ProximitySensorInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v11 = 0;
  parametersCopy = parameters;
  v5 = [parametersCopy dk_numberFromKey:@"noInputTimeout" lowerBound:&off_10000CCE0 upperBound:&off_10000CCF0 defaultValue:0 failed:&v11];
  [(ProximitySensorInputs *)self setNoInputTimeout:v5];

  v6 = [parametersCopy dk_numberFromKey:@"holdTime" lowerBound:&off_10000CCE0 upperBound:&off_10000CD00 defaultValue:&off_10000CD10 failed:&v11];
  [(ProximitySensorInputs *)self setHoldTime:v6];

  v7 = [parametersCopy dk_stringFromKey:@"upImageFileName" maxLength:256 defaultValue:&stru_10000C750 failed:&v11];
  [(ProximitySensorInputs *)self setUpImageFileName:v7];

  v8 = [parametersCopy dk_stringFromKey:@"downImageFileName" maxLength:256 defaultValue:&stru_10000C750 failed:&v11];
  [(ProximitySensorInputs *)self setDownImageFileName:v8];

  v9 = [parametersCopy dk_numberFromKey:@"assetDownloadTimeout" lowerBound:&off_10000CD20 upperBound:&off_10000CD30 defaultValue:&off_10000CD40 failed:&v11];

  [(ProximitySensorInputs *)self setAssetDownloadTimeout:v9];
  return (v11 & 1) == 0;
}

@end