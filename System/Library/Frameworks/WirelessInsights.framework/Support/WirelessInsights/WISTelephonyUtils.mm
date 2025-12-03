@interface WISTelephonyUtils
+ (BOOL)isRegistrationDisplayStatusInService:(id)service;
+ (BOOL)isRegistrationDisplayStatusOutOfService:(id)service;
+ (BOOL)isValidContext:(id)context;
+ (id)extractCellInfoValue:(id)value key:(id)key expectedClass:(Class)class error:(id *)error;
+ (id)getArfcnFromCellInfo:(id)info error:(id *)error;
+ (id)getBandFromCellInfo:(id)info error:(id *)error;
+ (id)getBandwidthFromCellInfo:(id)info error:(id *)error;
+ (id)getCellMonitorRATFromEnumValue:(int64_t)value;
+ (id)getGciFromCellInfo:(id)info error:(id *)error;
+ (id)getLacOrTacFromCellInfo:(id)info error:(id *)error;
+ (id)getMAVNRNSANeighborCellInfo:(id)info;
+ (id)getNSString:(const char *)string;
+ (id)getPLMNFromMCC:(id)c AndMNC:(id)nC;
+ (id)getPciFromCellInfo:(id)info error:(id *)error;
+ (id)getRATFromCellInfo:(id)info error:(id *)error;
+ (id)getRATFromCellMonitorString:(id)string;
+ (id)getServingCellInfo:(id)info;
+ (id)getServingCellInfoFromArray:(id)array;
+ (id)getShortenedRegistrationStateString:(id)string;
+ (id)sanitizedSubscriptions:(id)subscriptions;
+ (int)insightRATFromBasebandSysMode:(id)mode;
+ (void)setError:(id *)error code:(int64_t)code message:(id)message;
@end

@implementation WISTelephonyUtils

+ (BOOL)isValidContext:(id)context
{
  contextCopy = context;
  v4 = contextCopy;
  if (contextCopy)
  {
    v5 = [contextCopy slotID] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sanitizedSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = subscriptionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([WISTelephonyUtils isValidContext:v9, v12])
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v4 copy];

  return v10;
}

+ (id)getServingCellInfo:(id)info
{
  legacyInfo = [info legacyInfo];
  if (legacyInfo && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [WISTelephonyUtils getServingCellInfoFromArray:legacyInfo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getServingCellInfoFromArray:(id)array
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10010D970;
  v10 = sub_10010D980;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010D988;
  v5[3] = &unk_1002B2858;
  v5[4] = &v6;
  [array enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)extractCellInfoValue:(id)value key:(id)key expectedClass:(Class)class error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    keyCopy2 = [valueCopy objectForKey:keyCopy];
    if (keyCopy2)
    {
      if (objc_opt_isKindOfClass())
      {
        keyCopy2 = keyCopy2;
        v11 = keyCopy2;
        goto LABEL_9;
      }

      keyCopy = [NSString stringWithFormat:@"Value for key %@ is not of expected class", keyCopy];
      [WISTelephonyUtils setError:error code:0 message:keyCopy];
    }

    else
    {
      keyCopy = [NSString stringWithFormat:@"Value for key %@ is null", keyCopy];
      [WISTelephonyUtils setError:error code:0 message:keyCopy];
    }

    v11 = 0;
  }

  else
  {
    keyCopy2 = [NSString stringWithFormat:@"Cannot extract key %@, cell info is null", keyCopy];
    v11 = 0;
    [WISTelephonyUtils setError:error code:0 message:keyCopy2];
  }

LABEL_9:

  return v11;
}

+ (id)getLacOrTacFromCellInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:error];
  if (*error)
  {
    goto LABEL_2;
  }

  if ([WISTelephonyUtils isLteRat:v6]|| [WISTelephonyUtils isNrRat:v6])
  {
    v8 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorTAC expectedClass:objc_opt_class() error:error];
  }

  else
  {
    if (![WISTelephonyUtils isGSMRat:v6]&& ![WISTelephonyUtils isUMTSRat:v6])
    {
      [WISTelephonyUtils setError:error code:0 message:@"Cannot extract LAC/TAC: RAT is neither GSM, UMTS, LTE, nor NR"];
LABEL_2:
      v7 = 0;
      goto LABEL_7;
    }

    v8 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorLAC expectedClass:objc_opt_class() error:error];
  }

  v7 = v8;
LABEL_7:

  return v7;
}

+ (id)getBandFromCellInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorBandInfo expectedClass:objc_opt_class() error:error];
  v7 = v6;
  if (*error)
  {
    goto LABEL_2;
  }

  if ([v6 compare:&off_1002BF228] == -1)
  {
    [WISTelephonyUtils setError:error code:0 message:@"Band info is less than zero"];
LABEL_2:
    v8 = 0;
    goto LABEL_5;
  }

  v8 = v7;
LABEL_5:

  return v8;
}

+ (id)getBandwidthFromCellInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:error];
  if (*error)
  {
    v8 = 0;
    goto LABEL_25;
  }

  if (![WISTelephonyUtils isLteRat:v7]&& ![WISTelephonyUtils isNrRat:v7])
  {
    v8 = &off_1002BF228;
    goto LABEL_25;
  }

  v9 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorBandwidth expectedClass:objc_opt_class() error:error];
  v10 = v9;
  if (*error)
  {
    goto LABEL_23;
  }

  if ([v9 compare:&off_1002BF228] == -1)
  {
    v12 = @"Reported bandwidth is less than zero";
LABEL_22:
    [self setError:error code:0 message:v12];
LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

  if (![WISTelephonyUtils isLteRat:v7])
  {
    if ([WISTelephonyUtils isNrRat:v7])
    {
      v13 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorCellType expectedClass:objc_opt_class() error:error];
      if (*error)
      {
        v8 = 0;
LABEL_19:

        goto LABEL_24;
      }

      if ([WISTelephonyUtils isServingCell:v13])
      {
        v14 = v10;
LABEL_18:
        v8 = v14;
        goto LABEL_19;
      }

      if ([v13 isEqualToString:kCTCellMonitorCellTypeNeighbor])
      {
        v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 unsignedLongLongValue] / 0xF4240);
        goto LABEL_18;
      }
    }

    v12 = @"Attempting to retrieve bandwidth from NR cell that is neither serving nor neighbor";
    goto LABEL_22;
  }

  v16[0] = &off_1002BF240;
  v16[1] = &off_1002BF258;
  v17[0] = &off_1002BF988;
  v17[1] = &off_1002BF270;
  v16[2] = &off_1002BF288;
  v16[3] = &off_1002BF2B8;
  v17[2] = &off_1002BF2A0;
  v17[3] = &off_1002BF2D0;
  v16[4] = &off_1002BF2E8;
  v16[5] = &off_1002BF300;
  v17[4] = &off_1002BF258;
  v17[5] = &off_1002BF318;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:6];
  v8 = [v11 objectForKeyedSubscript:v10];

LABEL_24:
LABEL_25:

  return v8;
}

+ (id)getArfcnFromCellInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:error];
  if (*error)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ([WISTelephonyUtils isNrRat:v7])
  {
    v9 = objc_opt_class();
    v10 = &kCTCellMonitorNRARFCN;
  }

  else if ([WISTelephonyUtils isLteRat:v7]|| [WISTelephonyUtils isUMTSRat:v7])
  {
    v9 = objc_opt_class();
    v10 = &kCTCellMonitorUARFCN;
  }

  else
  {
    if (![WISTelephonyUtils isGSMRat:v7])
    {
      [self setError:error code:0 message:{@"Can only extract ARFCN for GSM, UMTS, LTE and NR cells"}];
      v8 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v9 = objc_opt_class();
    v10 = &kCTCellMonitorARFCN;
  }

  v11 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:*v10 expectedClass:v9 error:error];
  v12 = v11;
  if (!*error)
  {
    if ([v11 compare:&off_1002BF228] != -1)
    {
      v8 = v12;
      v12 = v8;
      goto LABEL_16;
    }

    [self setError:error code:0 message:@"Reported ARFCN is less than zero"];
  }

  v8 = 0;
LABEL_16:

LABEL_17:

  return v8;
}

+ (id)getGciFromCellInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorMCC expectedClass:objc_opt_class() error:error];
  v7 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorMNC expectedClass:objc_opt_class() error:error];
  v8 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorCellId expectedClass:objc_opt_class() error:error];
  v9 = [WISTelephonyUtils getLacOrTacFromCellInfo:infoCopy error:error];
  v10 = v9;
  if (v6)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || v8 == 0 || v9 == 0)
  {
    v18 = 0;
  }

  else
  {
    stringValue = [v6 stringValue];
    stringValue2 = [v7 stringValue];
    stringValue3 = [v10 stringValue];
    stringValue4 = [v8 stringValue];
    v18 = [NSString stringWithFormat:@"%@.%@.%@.%@", stringValue, stringValue2, stringValue3, stringValue4];
  }

  return v18;
}

+ (id)getPciFromCellInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:error];
  if (*error)
  {
    goto LABEL_2;
  }

  if (![WISTelephonyUtils isLteRat:v7]&& ![WISTelephonyUtils isNrRat:v7])
  {
    [WISTelephonyUtils setError:error code:0 message:@"Cannot extract PCI: RAT is neither LTE nor NR"];
LABEL_2:
    v8 = 0;
    goto LABEL_10;
  }

  v9 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorPCI expectedClass:objc_opt_class() error:error];
  v10 = v9;
  if (!*error)
  {
    if ([v9 compare:&off_1002BF228] != -1)
    {
      v8 = v10;
      goto LABEL_9;
    }

    [self setError:error code:0 message:@"Reported PCI is less than zero"];
  }

  v8 = 0;
LABEL_9:

LABEL_10:

  return v8;
}

+ (id)getMAVNRNSANeighborCellInfo:(id)info
{
  legacyInfo = [info legacyInfo];
  if (legacyInfo && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_10010D970;
    v11 = sub_10010D980;
    v12 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010E99C;
    v6[3] = &unk_1002B2858;
    v6[4] = &v7;
    [legacyInfo enumerateObjectsUsingBlock:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getRATFromCellMonitorString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyGSM])
  {
    v5 = "GSM";
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyUMTS] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", kCTCellMonitorRadioAccessTechnologyUTRAN))
  {
    v5 = "WCDMA";
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMA1x] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", kCTCellMonitorRadioAccessTechnologyCDMAEVDO))
  {
    v5 = "CDMA";
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMAHybrid])
  {
    v5 = "HYBRID";
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyLTE])
  {
    v5 = "LTE";
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyUTRAN2])
  {
    v5 = "TDSCDMA";
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyNR])
  {
    v5 = "NR_SA";
  }

  else
  {
    v5 = "Unknown";
  }

  v6 = [self getNSString:v5];

  return v6;
}

+ (id)getShortenedRegistrationStateString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:kCTRegistrationStatusUnknown])
    {
      v6 = "Unknown";
LABEL_16:
      v7 = [self getNSString:v6];
      goto LABEL_18;
    }

    if ([v5 isEqualToString:kCTRegistrationStatusDenied])
    {
      v6 = "Denied";
      goto LABEL_16;
    }

    if ([v5 isEqualToString:kCTRegistrationStatusRegisteredHome])
    {
      v6 = "RegisteredHome";
      goto LABEL_16;
    }

    if ([v5 isEqualToString:kCTRegistrationStatusRegisteredRoaming])
    {
      v6 = "RegisteredRoaming";
      goto LABEL_16;
    }

    if ([v5 isEqualToString:kCTRegistrationStatusNotRegistered])
    {
      v6 = "NotRegistered";
      goto LABEL_16;
    }

    if ([v5 isEqualToString:kCTRegistrationStatusSearching])
    {
      v6 = "Searching";
      goto LABEL_16;
    }

    if ([v5 isEqualToString:kCTRegistrationStatusEmergencyOnly])
    {
      v6 = "EmergencyOnly";
      goto LABEL_16;
    }
  }

  v7 = 0;
LABEL_18:

  return v7;
}

+ (BOOL)isRegistrationDisplayStatusInService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy isEqualToString:kCTRegistrationStatusRegisteredHome] & 1) != 0 || (objc_msgSend(serviceCopy, "isEqualToString:", kCTRegistrationStatusRegisteredRoaming))
  {
    v4 = 1;
  }

  else
  {
    v4 = [serviceCopy isEqualToString:kCTRegistrationStatusEmergencyOnly];
  }

  return v4;
}

+ (BOOL)isRegistrationDisplayStatusOutOfService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy isEqualToString:kCTRegistrationStatusNotRegistered])
  {
    v4 = 1;
  }

  else
  {
    v4 = [serviceCopy isEqualToString:kCTRegistrationStatusSearching];
  }

  return v4;
}

+ (id)getPLMNFromMCC:(id)c AndMNC:(id)nC
{
  cCopy = c;
  nCCopy = nC;
  v7 = objc_alloc_init(NSNumberFormatter);
  [v7 setMinimumIntegerDigits:3];
  v8 = [v7 stringFromNumber:cCopy];
  v9 = [v7 stringFromNumber:nCCopy];
  v10 = [NSString stringWithFormat:@"%@%@", v8, v9];

  return v10;
}

+ (id)getRATFromCellInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:error];
  v8 = v7;
  v9 = 0;
  if (!*error)
  {
    if (v7)
    {
      v9 = [WISTelephonyUtils getRATFromCellMonitorString:v7];
      if ([WISTelephonyUtils isLteRat:v8])
      {
        v14 = 0;
        v10 = [WISTelephonyUtils extractCellInfoValue:infoCopy key:kCTCellMonitorDeploymentType expectedClass:objc_opt_class() error:&v14];
        v11 = v14;
        if (!v11 && v10 && ([v10 isEqualToNumber:&off_1002BF228] & 1) == 0 && (objc_msgSend(v10, "isEqualToNumber:", &off_1002BF330) & 1) == 0)
        {
          v12 = [self getNSString:"NR_NSA"];

          v9 = v12;
        }
      }
    }
  }

  return v9;
}

+ (int)insightRATFromBasebandSysMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_CDMA"] & 1) != 0 || (objc_msgSend(modeCopy, "isEqualToString:", @"SYS_MODE_UMTS"))
  {
    v4 = 7;
  }

  else if ([modeCopy isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 6;
  }

  else
  {
    v4 = [modeCopy isEqualToString:@"SYS_MODE_WCDMA"];
  }

  return v4;
}

+ (id)getCellMonitorRATFromEnumValue:(int64_t)value
{
  if ((value - 1) > 7)
  {
    v3 = &kCTCellMonitorRadioAccessTechnologyUnknown;
  }

  else
  {
    v3 = *(&off_1002B2878 + value - 1);
  }

  return *v3;
}

+ (void)setError:(id *)error code:(int64_t)code message:(id)message
{
  messageCopy = message;
  v7 = +[NSMutableDictionary dictionary];
  [v7 setValue:messageCopy forKey:NSLocalizedDescriptionKey];
  v8 = [NSString stringWithUTF8String:"WISTelephonyUtils"];
  *error = [NSError errorWithDomain:v8 code:code userInfo:v7];
}

+ (id)getNSString:(const char *)string
{
  v3 = [NSString stringWithUTF8String:string];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"ERROR";
  }

  return v5;
}

@end