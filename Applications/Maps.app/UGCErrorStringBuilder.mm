@interface UGCErrorStringBuilder
+ (id)buildBestErrorStringForCurrentNetworkState;
+ (id)buildFailToSubmitErrorDescription;
+ (id)buildFailToSubmitErrorTitle;
@end

@implementation UGCErrorStringBuilder

+ (id)buildFailToSubmitErrorDescription
{
  v2 = MKCurrentNetworkConnectionFailureDiagnosis() - 1;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2 >= 3)
  {
    v5 = @"Submission Generic Failure Description [UGC]";
  }

  else
  {
    v5 = @"Submission Internet Failure Description [UGC]";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

+ (id)buildFailToSubmitErrorTitle
{
  v2 = MKCurrentNetworkConnectionFailureDiagnosis() - 1;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2 >= 3)
  {
    v5 = @"Submission Generic Failure Title [UGC]";
  }

  else
  {
    v5 = @"Submission Internet Failure Title [UGC]";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

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
        v6 = @"Error_AirplaneMode_iPad [UGC]";
        break;
      case 2:
        v6 = @"Error_AirplaneMode_iPod [UGC]";
        break;
      case 1:
        v6 = @"Error_AirplaneMode_iPhone [UGC]";
        break;
      default:
        v6 = @"Error_AirplaneMode_Device [UGC]";
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
      v6 = @"Enable Cellular Data [UGC]";
      goto LABEL_25;
    case 3:
      v8 = MGGetSInt32Answer();
      v5 = +[NSBundle mainBundle];
      switch(v8)
      {
        case 3:
          v6 = @"Error_NoNetworkConnection_iPad [UGC]";
          break;
        case 2:
          v6 = @"Error_NoNetworkConnection_iPod [UGC]";
          break;
        case 1:
          v6 = @"Error_NoNetworkConnection_iPhone [UGC]";
          break;
        default:
          v6 = @"Error_NoNetworkConnection_Device [UGC]";
          break;
      }

      goto LABEL_24;
    case 4:
LABEL_12:
      v7 = +[NSBundle mainBundle];
      v5 = v7;
      v6 = @"UGC [General Error]";
LABEL_25:
      v2 = [v7 localizedStringForKey:v6 value:@"localized string not found" table:0];

      break;
  }

LABEL_26:

  return v2;
}

@end