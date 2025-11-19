@interface WISTelephonyUtils
+ (BOOL)isRegistrationDisplayStatusInService:(id)a3;
+ (BOOL)isRegistrationDisplayStatusOutOfService:(id)a3;
+ (BOOL)isValidContext:(id)a3;
+ (id)extractCellInfoValue:(id)a3 key:(id)a4 expectedClass:(Class)a5 error:(id *)a6;
+ (id)getArfcnFromCellInfo:(id)a3 error:(id *)a4;
+ (id)getBandFromCellInfo:(id)a3 error:(id *)a4;
+ (id)getBandwidthFromCellInfo:(id)a3 error:(id *)a4;
+ (id)getCellMonitorRATFromEnumValue:(int64_t)a3;
+ (id)getGciFromCellInfo:(id)a3 error:(id *)a4;
+ (id)getLacOrTacFromCellInfo:(id)a3 error:(id *)a4;
+ (id)getMAVNRNSANeighborCellInfo:(id)a3;
+ (id)getNSString:(const char *)a3;
+ (id)getPLMNFromMCC:(id)a3 AndMNC:(id)a4;
+ (id)getPciFromCellInfo:(id)a3 error:(id *)a4;
+ (id)getRATFromCellInfo:(id)a3 error:(id *)a4;
+ (id)getRATFromCellMonitorString:(id)a3;
+ (id)getServingCellInfo:(id)a3;
+ (id)getServingCellInfoFromArray:(id)a3;
+ (id)getShortenedRegistrationStateString:(id)a3;
+ (id)sanitizedSubscriptions:(id)a3;
+ (int)insightRATFromBasebandSysMode:(id)a3;
+ (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5;
@end

@implementation WISTelephonyUtils

+ (BOOL)isValidContext:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 slotID] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sanitizedSubscriptions:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
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

+ (id)getServingCellInfo:(id)a3
{
  v3 = [a3 legacyInfo];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [WISTelephonyUtils getServingCellInfoFromArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getServingCellInfoFromArray:(id)a3
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
  [a3 enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)extractCellInfoValue:(id)a3 key:(id)a4 expectedClass:(Class)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 objectForKey:v9];
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v10;
        v11 = v10;
        goto LABEL_9;
      }

      v12 = [NSString stringWithFormat:@"Value for key %@ is not of expected class", v9];
      [WISTelephonyUtils setError:a6 code:0 message:v12];
    }

    else
    {
      v12 = [NSString stringWithFormat:@"Value for key %@ is null", v9];
      [WISTelephonyUtils setError:a6 code:0 message:v12];
    }

    v11 = 0;
  }

  else
  {
    v10 = [NSString stringWithFormat:@"Cannot extract key %@, cell info is null", v9];
    v11 = 0;
    [WISTelephonyUtils setError:a6 code:0 message:v10];
  }

LABEL_9:

  return v11;
}

+ (id)getLacOrTacFromCellInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [WISTelephonyUtils extractCellInfoValue:v5 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:a4];
  if (*a4)
  {
    goto LABEL_2;
  }

  if ([WISTelephonyUtils isLteRat:v6]|| [WISTelephonyUtils isNrRat:v6])
  {
    v8 = [WISTelephonyUtils extractCellInfoValue:v5 key:kCTCellMonitorTAC expectedClass:objc_opt_class() error:a4];
  }

  else
  {
    if (![WISTelephonyUtils isGSMRat:v6]&& ![WISTelephonyUtils isUMTSRat:v6])
    {
      [WISTelephonyUtils setError:a4 code:0 message:@"Cannot extract LAC/TAC: RAT is neither GSM, UMTS, LTE, nor NR"];
LABEL_2:
      v7 = 0;
      goto LABEL_7;
    }

    v8 = [WISTelephonyUtils extractCellInfoValue:v5 key:kCTCellMonitorLAC expectedClass:objc_opt_class() error:a4];
  }

  v7 = v8;
LABEL_7:

  return v7;
}

+ (id)getBandFromCellInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [WISTelephonyUtils extractCellInfoValue:v5 key:kCTCellMonitorBandInfo expectedClass:objc_opt_class() error:a4];
  v7 = v6;
  if (*a4)
  {
    goto LABEL_2;
  }

  if ([v6 compare:&off_1002BF228] == -1)
  {
    [WISTelephonyUtils setError:a4 code:0 message:@"Band info is less than zero"];
LABEL_2:
    v8 = 0;
    goto LABEL_5;
  }

  v8 = v7;
LABEL_5:

  return v8;
}

+ (id)getBandwidthFromCellInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:a4];
  if (*a4)
  {
    v8 = 0;
    goto LABEL_25;
  }

  if (![WISTelephonyUtils isLteRat:v7]&& ![WISTelephonyUtils isNrRat:v7])
  {
    v8 = &off_1002BF228;
    goto LABEL_25;
  }

  v9 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorBandwidth expectedClass:objc_opt_class() error:a4];
  v10 = v9;
  if (*a4)
  {
    goto LABEL_23;
  }

  if ([v9 compare:&off_1002BF228] == -1)
  {
    v12 = @"Reported bandwidth is less than zero";
LABEL_22:
    [a1 setError:a4 code:0 message:v12];
LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

  if (![WISTelephonyUtils isLteRat:v7])
  {
    if ([WISTelephonyUtils isNrRat:v7])
    {
      v13 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorCellType expectedClass:objc_opt_class() error:a4];
      if (*a4)
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

+ (id)getArfcnFromCellInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:a4];
  if (*a4)
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
      [a1 setError:a4 code:0 message:{@"Can only extract ARFCN for GSM, UMTS, LTE and NR cells"}];
      v8 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v9 = objc_opt_class();
    v10 = &kCTCellMonitorARFCN;
  }

  v11 = [WISTelephonyUtils extractCellInfoValue:v6 key:*v10 expectedClass:v9 error:a4];
  v12 = v11;
  if (!*a4)
  {
    if ([v11 compare:&off_1002BF228] != -1)
    {
      v8 = v12;
      v12 = v8;
      goto LABEL_16;
    }

    [a1 setError:a4 code:0 message:@"Reported ARFCN is less than zero"];
  }

  v8 = 0;
LABEL_16:

LABEL_17:

  return v8;
}

+ (id)getGciFromCellInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [WISTelephonyUtils extractCellInfoValue:v5 key:kCTCellMonitorMCC expectedClass:objc_opt_class() error:a4];
  v7 = [WISTelephonyUtils extractCellInfoValue:v5 key:kCTCellMonitorMNC expectedClass:objc_opt_class() error:a4];
  v8 = [WISTelephonyUtils extractCellInfoValue:v5 key:kCTCellMonitorCellId expectedClass:objc_opt_class() error:a4];
  v9 = [WISTelephonyUtils getLacOrTacFromCellInfo:v5 error:a4];
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
    v14 = [v6 stringValue];
    v15 = [v7 stringValue];
    v16 = [v10 stringValue];
    v17 = [v8 stringValue];
    v18 = [NSString stringWithFormat:@"%@.%@.%@.%@", v14, v15, v16, v17];
  }

  return v18;
}

+ (id)getPciFromCellInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:a4];
  if (*a4)
  {
    goto LABEL_2;
  }

  if (![WISTelephonyUtils isLteRat:v7]&& ![WISTelephonyUtils isNrRat:v7])
  {
    [WISTelephonyUtils setError:a4 code:0 message:@"Cannot extract PCI: RAT is neither LTE nor NR"];
LABEL_2:
    v8 = 0;
    goto LABEL_10;
  }

  v9 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorPCI expectedClass:objc_opt_class() error:a4];
  v10 = v9;
  if (!*a4)
  {
    if ([v9 compare:&off_1002BF228] != -1)
    {
      v8 = v10;
      goto LABEL_9;
    }

    [a1 setError:a4 code:0 message:@"Reported PCI is less than zero"];
  }

  v8 = 0;
LABEL_9:

LABEL_10:

  return v8;
}

+ (id)getMAVNRNSANeighborCellInfo:(id)a3
{
  v3 = [a3 legacyInfo];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
    [v3 enumerateObjectsUsingBlock:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getRATFromCellMonitorString:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kCTCellMonitorRadioAccessTechnologyGSM])
  {
    v5 = "GSM";
  }

  else if ([v4 isEqualToString:kCTCellMonitorRadioAccessTechnologyUMTS] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kCTCellMonitorRadioAccessTechnologyUTRAN))
  {
    v5 = "WCDMA";
  }

  else if ([v4 isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMA1x] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kCTCellMonitorRadioAccessTechnologyCDMAEVDO))
  {
    v5 = "CDMA";
  }

  else if ([v4 isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMAHybrid])
  {
    v5 = "HYBRID";
  }

  else if ([v4 isEqualToString:kCTCellMonitorRadioAccessTechnologyLTE])
  {
    v5 = "LTE";
  }

  else if ([v4 isEqualToString:kCTCellMonitorRadioAccessTechnologyUTRAN2])
  {
    v5 = "TDSCDMA";
  }

  else if ([v4 isEqualToString:kCTCellMonitorRadioAccessTechnologyNR])
  {
    v5 = "NR_SA";
  }

  else
  {
    v5 = "Unknown";
  }

  v6 = [a1 getNSString:v5];

  return v6;
}

+ (id)getShortenedRegistrationStateString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isEqualToString:kCTRegistrationStatusUnknown])
    {
      v6 = "Unknown";
LABEL_16:
      v7 = [a1 getNSString:v6];
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

+ (BOOL)isRegistrationDisplayStatusInService:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kCTRegistrationStatusRegisteredHome] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", kCTRegistrationStatusRegisteredRoaming))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:kCTRegistrationStatusEmergencyOnly];
  }

  return v4;
}

+ (BOOL)isRegistrationDisplayStatusOutOfService:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kCTRegistrationStatusNotRegistered])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:kCTRegistrationStatusSearching];
  }

  return v4;
}

+ (id)getPLMNFromMCC:(id)a3 AndMNC:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSNumberFormatter);
  [v7 setMinimumIntegerDigits:3];
  v8 = [v7 stringFromNumber:v5];
  v9 = [v7 stringFromNumber:v6];
  v10 = [NSString stringWithFormat:@"%@%@", v8, v9];

  return v10;
}

+ (id)getRATFromCellInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:a4];
  v8 = v7;
  v9 = 0;
  if (!*a4)
  {
    if (v7)
    {
      v9 = [WISTelephonyUtils getRATFromCellMonitorString:v7];
      if ([WISTelephonyUtils isLteRat:v8])
      {
        v14 = 0;
        v10 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorDeploymentType expectedClass:objc_opt_class() error:&v14];
        v11 = v14;
        if (!v11 && v10 && ([v10 isEqualToNumber:&off_1002BF228] & 1) == 0 && (objc_msgSend(v10, "isEqualToNumber:", &off_1002BF330) & 1) == 0)
        {
          v12 = [a1 getNSString:"NR_NSA"];

          v9 = v12;
        }
      }
    }
  }

  return v9;
}

+ (int)insightRATFromBasebandSysMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SYS_MODE_UMTS"))
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 6;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SYS_MODE_WCDMA"];
  }

  return v4;
}

+ (id)getCellMonitorRATFromEnumValue:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    v3 = &kCTCellMonitorRadioAccessTechnologyUnknown;
  }

  else
  {
    v3 = *(&off_1002B2878 + a3 - 1);
  }

  return *v3;
}

+ (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5
{
  v9 = a5;
  v7 = +[NSMutableDictionary dictionary];
  [v7 setValue:v9 forKey:NSLocalizedDescriptionKey];
  v8 = [NSString stringWithUTF8String:"WISTelephonyUtils"];
  *a3 = [NSError errorWithDomain:v8 code:a4 userInfo:v7];
}

+ (id)getNSString:(const char *)a3
{
  v3 = [NSString stringWithUTF8String:a3];
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