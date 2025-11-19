@interface LookAroundErrorStringBuilder
+ (id)buildBestErrorStringForCurrentNetworkState;
@end

@implementation LookAroundErrorStringBuilder

+ (id)buildBestErrorStringForCurrentNetworkState
{
  v2 = &stru_1016631F0;
  v3 = MKCurrentNetworkConnectionFailureDiagnosis();
  if (v3 <= 1)
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    if (v3 != 1)
    {
      goto LABEL_26;
    }

    v4 = MGGetSInt32Answer();
    v5 = +[NSBundle mainBundle];
    switch(v4)
    {
      case 3:
        v6 = @"Error_AirplaneMode_iPad [LookAround]";
        break;
      case 2:
        v6 = @"Error_AirplaneMode_iPod [LookAround]";
        break;
      case 1:
        v6 = @"Error_AirplaneMode_iPhone [LookAround]";
        break;
      default:
        v6 = @"Error_AirplaneMode_Device [LookAround]";
        break;
    }

LABEL_24:
    v7 = v5;
    goto LABEL_25;
  }

  switch(v3)
  {
    case 2:
      v7 = +[NSBundle mainBundle];
      v5 = v7;
      v6 = @"Enable Cellular Data [LookAround]";
      goto LABEL_25;
    case 3:
      v8 = MGGetSInt32Answer();
      v5 = +[NSBundle mainBundle];
      switch(v8)
      {
        case 3:
          v6 = @"Error_NoNetworkConnection_iPad [LookAround]";
          break;
        case 2:
          v6 = @"Error_NoNetworkConnection_iPod [LookAround]";
          break;
        case 1:
          v6 = @"Error_NoNetworkConnection_iPhone [LookAround]";
          break;
        default:
          v6 = @"Error_NoNetworkConnection_Device [LookAround]";
          break;
      }

      goto LABEL_24;
    case 4:
LABEL_12:
      v7 = +[NSBundle mainBundle];
      v5 = v7;
      v6 = @"LookAround PIP [General Error]";
LABEL_25:
      v2 = [v7 localizedStringForKey:v6 value:@"localized string not found" table:0];

      break;
  }

LABEL_26:

  return v2;
}

@end