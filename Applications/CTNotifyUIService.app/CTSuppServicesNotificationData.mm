@interface CTSuppServicesNotificationData
- (id)_linePresentationStringForValueNumber:(id)number;
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
  callClass = [(CTSuppServicesNotificationData *)self callClass];
  v3 = callClass;
  if (!callClass)
  {
    v5 = &stru_100018670;
    goto LABEL_23;
  }

  intValue = [callClass intValue];
  v5 = &stru_100018670;
  if (intValue > 15)
  {
    if (intValue > 63)
    {
      if (intValue == 64)
      {
        v6 = @"Packet Access";
      }

      else
      {
        if (intValue != 128)
        {
          goto LABEL_23;
        }

        v6 = @"Pad Access";
      }
    }

    else if (intValue == 16)
    {
      v6 = @"Sync Data Circuit";
    }

    else
    {
      if (intValue != 32)
      {
        goto LABEL_23;
      }

      v6 = @"Async Data Circuit";
    }
  }

  else if (intValue > 3)
  {
    if (intValue == 4)
    {
      v6 = @"Fax";
    }

    else
    {
      if (intValue != 8)
      {
        goto LABEL_23;
      }

      v6 = @"SMS";
    }
  }

  else if (intValue == 1)
  {
    v6 = @"Voice";
  }

  else
  {
    if (intValue != 2)
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
  callForwardingReason = [(CTSuppServicesNotificationData *)self callForwardingReason];
  v3 = callForwardingReason;
  if (callForwardingReason && (v4 = [callForwardingReason intValue], v4 <= 5))
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
  callingLinePresentation = [(CTSuppServicesNotificationData *)self callingLinePresentation];
  v4 = [(CTSuppServicesNotificationData *)self _linePresentationStringForValueNumber:callingLinePresentation];

  return v4;
}

- (id)connectedLinePresentationString
{
  connectedLinePresentation = [(CTSuppServicesNotificationData *)self connectedLinePresentation];
  v4 = [(CTSuppServicesNotificationData *)self _linePresentationStringForValueNumber:connectedLinePresentation];

  return v4;
}

- (id)_linePresentationStringForValueNumber:(id)number
{
  numberCopy = number;
  v4 = numberCopy;
  if (numberCopy && (v5 = [numberCopy intValue], v5 <= 3))
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
  connectedLineIdRestriction = [(CTSuppServicesNotificationData *)self connectedLineIdRestriction];
  v3 = connectedLineIdRestriction;
  if (connectedLineIdRestriction && (v4 = [connectedLineIdRestriction intValue], v4 <= 2))
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
  enabled = [(CTSuppServicesNotificationData *)self enabled];
  v3 = enabled;
  if (enabled)
  {
    bOOLValue = [enabled BOOLValue];
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v6 = v5;
    if (bOOLValue)
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
  mmiProcedure = [(CTSuppServicesNotificationData *)self mmiProcedure];
  v3 = mmiProcedure;
  if (mmiProcedure && (v4 = [mmiProcedure intValue] - 1, v4 <= 4))
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
  supplementaryServiceType = [(CTSuppServicesNotificationData *)self supplementaryServiceType];
  if (!supplementaryServiceType)
  {
    goto LABEL_3;
  }

  v3 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v4 = [v3 localizedStringForKey:@"Type %d" value:&stru_100018670 table:@"SIMToolkitUI"];
  v5 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [supplementaryServiceType intValue]);

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
  callingNamePresentation = [(CTSuppServicesNotificationData *)self callingNamePresentation];
  v3 = callingNamePresentation;
  if (callingNamePresentation && (v4 = [callingNamePresentation intValue], v4 <= 2))
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
  callBarringFacility = [(CTSuppServicesNotificationData *)self callBarringFacility];
  v3 = callBarringFacility;
  if (callBarringFacility && (v4 = [callBarringFacility intValue], v4 <= 8))
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
  callingLineIdRestriction = [(CTSuppServicesNotificationData *)self callingLineIdRestriction];
  v3 = callingLineIdRestriction;
  if (callingLineIdRestriction && (v4 = [callingLineIdRestriction intValue], v4 <= 3))
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