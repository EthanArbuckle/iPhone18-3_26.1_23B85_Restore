@interface CTSuppServicesNotificationData
- (id)_linePresentationStringForValueNumber:(id)a3;
- (id)callBarringFacilityString;
- (id)callClassString;
- (id)callForwardingReasonString;
- (id)callingLineIDRestrictionString;
- (id)callingLinePresentationString;
- (id)callingNamePresentationString;
- (id)connectedLineIDRestrictionString;
- (id)connectedLinePresentationString;
- (id)enabledString;
- (id)mmiProcedureString;
- (id)ssServiceTypeString;
@end

@implementation CTSuppServicesNotificationData

- (id)callClassString
{
  v2 = [(CTSuppServicesNotificationData *)self callClass];
  v3 = v2;
  if (!v2)
  {
    v5 = &stru_100018670;
    goto LABEL_23;
  }

  v4 = [v2 intValue];
  v5 = &stru_100018670;
  if (v4 > 15)
  {
    if (v4 > 63)
    {
      if (v4 == 64)
      {
        v6 = @"Packet Access";
      }

      else
      {
        if (v4 != 128)
        {
          goto LABEL_23;
        }

        v6 = @"Pad Access";
      }
    }

    else if (v4 == 16)
    {
      v6 = @"Sync Data Circuit";
    }

    else
    {
      if (v4 != 32)
      {
        goto LABEL_23;
      }

      v6 = @"Async Data Circuit";
    }
  }

  else if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = @"Fax";
    }

    else
    {
      if (v4 != 8)
      {
        goto LABEL_23;
      }

      v6 = @"SMS";
    }
  }

  else if (v4 == 1)
  {
    v6 = @"Voice";
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_23;
    }

    v6 = @"Data";
  }

  v7 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v5 = [v7 localizedStringForKey:v6 value:&stru_100018670 table:@"SIMToolkitUI"];

LABEL_23:

  return v5;
}

- (id)callForwardingReasonString
{
  v2 = [(CTSuppServicesNotificationData *)self callForwardingReason];
  v3 = v2;
  if (v2 && (v4 = [v2 intValue], v4 <= 5))
  {
    v5 = *(&off_100018520 + v4);
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v7 = [v6 localizedStringForKey:v5 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  else
  {
    v7 = &stru_100018670;
  }

  return v7;
}

- (id)callingLinePresentationString
{
  v3 = [(CTSuppServicesNotificationData *)self callingLinePresentation];
  v4 = [(CTSuppServicesNotificationData *)self _linePresentationStringForValueNumber:v3];

  return v4;
}

- (id)connectedLinePresentationString
{
  v3 = [(CTSuppServicesNotificationData *)self connectedLinePresentation];
  v4 = [(CTSuppServicesNotificationData *)self _linePresentationStringForValueNumber:v3];

  return v4;
}

- (id)_linePresentationStringForValueNumber:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = [v3 intValue], v5 <= 3))
  {
    v6 = *(&off_100018550 + v5);
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v8 = [v7 localizedStringForKey:v6 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  else
  {
    v8 = &stru_100018670;
  }

  return v8;
}

- (id)connectedLineIDRestrictionString
{
  v2 = [(CTSuppServicesNotificationData *)self connectedLineIdRestriction];
  v3 = v2;
  if (v2 && (v4 = [v2 intValue], v4 <= 2))
  {
    v5 = *(&off_100018570 + v4);
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v7 = [v6 localizedStringForKey:v5 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  else
  {
    v7 = &stru_100018670;
  }

  return v7;
}

- (id)enabledString
{
  v2 = [(CTSuppServicesNotificationData *)self enabled];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v6 = v5;
    if (v4)
    {
      v7 = @"Enabled";
    }

    else
    {
      v7 = @"Disabled";
    }

    v8 = [v5 localizedStringForKey:v7 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  else
  {
    v8 = &stru_100018670;
  }

  return v8;
}

- (id)mmiProcedureString
{
  v2 = [(CTSuppServicesNotificationData *)self mmiProcedure];
  v3 = v2;
  if (v2 && (v4 = [v2 intValue] - 1, v4 <= 4))
  {
    v5 = *(&off_100018588 + v4);
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v7 = [v6 localizedStringForKey:v5 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  else
  {
    v7 = &stru_100018670;
  }

  return v7;
}

- (id)ssServiceTypeString
{
  v2 = [(CTSuppServicesNotificationData *)self supplementaryServiceType];
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v4 = [v3 localizedStringForKey:@"Type %d" value:&stru_100018670 table:@"SIMToolkitUI"];
  v5 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [v2 intValue]);

  if (!v5)
  {
LABEL_3:
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v5 = [v6 localizedStringForKey:@"No Service Specified" value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  return v5;
}

- (id)callingNamePresentationString
{
  v2 = [(CTSuppServicesNotificationData *)self callingNamePresentation];
  v3 = v2;
  if (v2 && (v4 = [v2 intValue], v4 <= 2))
  {
    v5 = *(&off_1000185B0 + v4);
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v7 = [v6 localizedStringForKey:v5 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  else
  {
    v7 = &stru_100018670;
  }

  return v7;
}

- (id)callBarringFacilityString
{
  v2 = [(CTSuppServicesNotificationData *)self callBarringFacility];
  v3 = v2;
  if (v2 && (v4 = [v2 intValue], v4 <= 8))
  {
    v5 = *(&off_1000185C8 + v4);
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v7 = [v6 localizedStringForKey:v5 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  else
  {
    v7 = &stru_100018670;
  }

  return v7;
}

- (id)callingLineIDRestrictionString
{
  v2 = [(CTSuppServicesNotificationData *)self callingLineIdRestriction];
  v3 = v2;
  if (v2 && (v4 = [v2 intValue], v4 <= 3))
  {
    v5 = *(&off_100018610 + v4);
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v7 = [v6 localizedStringForKey:v5 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  else
  {
    v7 = &stru_100018670;
  }

  return v7;
}

@end