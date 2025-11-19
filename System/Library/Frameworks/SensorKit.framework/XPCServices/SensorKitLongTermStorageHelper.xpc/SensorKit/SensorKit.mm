id sub_100000FE4(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v65.receiver = a1;
  v65.super_class = RDDefaults;
  v3 = objc_msgSendSuper2(&v65, "init");
  if (v3)
  {
    v4 = @"SegmentSizeBytes";
    *(v3 + 3) = a2;
    v70[0] = @"Enabled";
    v70[1] = @"SegmentSizeBytes";
    v71[0] = &off_100011D50;
    v71[1] = &off_100011D68;
    v71[2] = &off_100011D80;
    v70[2] = @"MetadataSizeBytes";
    v70[3] = @"MaxAllowedMappedPages";
    v71[3] = [NSNumber numberWithUnsignedInteger:0x2000000 / NSPageSize()];
    v71[4] = &off_100011F48;
    v70[4] = @"SegmentResizeFactor";
    v70[5] = @"SegmentPaddingFactor";
    v71[5] = &off_100011F58;
    v71[6] = &off_100011D98;
    v70[6] = @"ArchiverBufferSizeBytes";
    v70[7] = @"ArchiveCompressionEnabled";
    v71[7] = &__kCFBooleanFalse;
    v71[8] = &off_100011DB0;
    v70[8] = @"ProtectionClass";
    v70[9] = @"DataProtectionLengthSeconds";
    v71[9] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_7_DAYS];
    v70[10] = @"TombstoneDataRetentionLengthSeconds";
    v71[10] = [NSNumber numberWithLongLong:60 * XPC_ACTIVITY_INTERVAL_1_DAY];
    v70[11] = @"KeyProtectionLengthSeconds";
    v64 = 2 * XPC_ACTIVITY_INTERVAL_7_DAYS;
    v71[11] = [NSNumber numberWithLongLong:?];
    v71[12] = &__kCFBooleanFalse;
    v70[12] = @"Curated";
    v70[13] = @"DatastoreVersion";
    v71[13] = &off_100011DC8;
    v70[14] = @"UpdateCompanionIntervalSeconds";
    v71[14] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR];
    v70[15] = @"PrepareArchivesIntervalSeconds";
    v71[15] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
    v71[16] = &__kCFBooleanFalse;
    v70[16] = @"PrepareArchivesCPUIntensive";
    v70[17] = @"PrepareArchivesDiskIntensive";
    v71[17] = &__kCFBooleanFalse;
    v70[18] = @"HoldingPeriod";
    v71[18] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_DAY];
    v70[19] = @"SyncCompanionStateToGizmoInterval";
    v71[19] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_30_MIN];
    v70[20] = @"ResourceSendTimeout";
    v71[20] = [NSNumber numberWithLongLong:3 * XPC_ACTIVITY_INTERVAL_1_DAY];
    v71[21] = &__kCFBooleanTrue;
    v70[21] = @"AnalyticsEnabled";
    v70[22] = @"ResendArchivesDelay";
    v71[22] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_15_MIN];
    v70[23] = @"ReminderAlertThresholdSecs";
    v71[23] = [NSNumber numberWithLongLong:30 * XPC_ACTIVITY_INTERVAL_1_DAY];
    v71[24] = &off_100011DE0;
    v70[24] = @"SendResourcePriority";
    v70[25] = @"FirstReminderAlertThresholdSecs";
    v71[25] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_DAY];
    v70[26] = @"ArchiveResendThresholdSecs";
    v71[26] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR + 3 * XPC_ACTIVITY_INTERVAL_1_DAY];
    v71[27] = &off_100012010;
    v70[27] = @"LegacyResearchStudyBundleIDs";
    v70[28] = @"LegacyResearchStudyEntitlement";
    v71[28] = @"com.apple.SensorAndUsageData";
    v70[29] = @"PreferWifiAssertionDurationSecs";
    v71[29] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_15_MIN];
    v71[30] = &off_100011F68;
    v70[30] = @"StateCacheSendDebounceIntervalSecs";
    v70[31] = @"AdditionalDiagnosticsEnabled";
    v71[31] = &__kCFBooleanFalse;
    v70[32] = @"TimeSyncSendDebounceIntervalSecs";
    v71[32] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR];
    v71[33] = &off_100011DF8;
    v70[33] = @"PendingMessageResendLimit";
    v70[34] = @"TimeSyncMessageTimeoutSecs";
    v71[34] = &off_100011F78;
    v71[35] = &off_100011E10;
    v70[35] = @"MaxArchiveBytes";
    v70[36] = @"CacheDeleteAgeLimit";
    v68[0] = [&off_100011E28 stringValue];
    v69[0] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_7_DAYS];
    v68[1] = [&off_100011E40 stringValue];
    v69[1] = [NSNumber numberWithLongLong:?];
    v68[2] = [&off_100011E58 stringValue];
    v69[2] = [NSNumber numberWithLongLong:5 * XPC_ACTIVITY_INTERVAL_1_DAY];
    v68[3] = [&off_100011E70 stringValue];
    v69[3] = [NSNumber numberWithLongLong:3 * XPC_ACTIVITY_INTERVAL_1_DAY];
    v68[4] = [&off_100011E88 stringValue];
    v69[4] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
    v71[36] = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:5];
    v70[37] = @"RTCResetTimestampThresholdSecs";
    v71[37] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
    v71[38] = &off_100011EA0;
    v70[38] = @"FaceMetricsReminderWeekday";
    v70[39] = @"FaceMetricsReminderHour";
    v71[39] = &off_100011EB8;
    v71[40] = &off_100011ED0;
    v70[40] = @"FaceMetricsReminderMinute";
    v70[41] = @"SegmentFillDurationSecs";
    v70[42] = @"SegmentSizeMinimumFactor";
    v71[41] = &off_100011EE8;
    v71[42] = &off_100011F88;
    if ([@"com.apple.SensorKit.motion.gyroscope" length])
    {
      v4 = [@"com.apple.SensorKit.motion.gyroscope" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[43] = v4;
    v71[43] = &off_100011F00;
    v5 = [@"com.apple.SensorKit.motion.accelerometer" length];
    v6 = @"SegmentSizeBytes";
    if (v5)
    {
      v6 = [@"com.apple.SensorKit.motion.accelerometer" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[44] = v6;
    v71[44] = &off_100011F00;
    v7 = [@"com.apple.SensorKit.pedometer.data" length];
    v8 = @"SegmentSizeBytes";
    if (v7)
    {
      v8 = [@"com.apple.SensorKit.pedometer.data" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[45] = v8;
    v71[45] = &off_100011F00;
    v9 = [@"com.apple.SensorKit.ambientPressure" length];
    v10 = @"SegmentSizeBytes";
    if (v9)
    {
      v10 = [@"com.apple.SensorKit.ambientPressure" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[46] = v10;
    v71[46] = &off_100011F00;
    v11 = [@"com.apple.private.SensorKit.elevation" length];
    v12 = @"SegmentSizeBytes";
    if (v11)
    {
      v12 = [@"com.apple.private.SensorKit.elevation" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[47] = v12;
    v71[47] = &off_100011F00;
    v13 = [@"com.apple.SensorKit.odometer" length];
    v14 = @"SegmentSizeBytes";
    if (v13)
    {
      v14 = [@"com.apple.SensorKit.odometer" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[48] = v14;
    v71[48] = &off_100011F00;
    v15 = [@"com.apple.SensorKit.pedometer.data" length];
    v16 = @"SegmentPaddingFactor";
    if (v15)
    {
      v16 = [@"com.apple.SensorKit.pedometer.data" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
    }

    v70[49] = v16;
    v71[49] = &off_100011F48;
    v17 = [@"com.apple.SensorKit.heart.rate" length];
    v18 = @"SegmentPaddingFactor";
    if (v17)
    {
      v18 = [@"com.apple.SensorKit.heart.rate" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
    }

    v70[50] = v18;
    v71[50] = &off_100011F48;
    v19 = [@"com.apple.SensorKit.odometer" length];
    v20 = @"SegmentPaddingFactor";
    if (v19)
    {
      v20 = [@"com.apple.SensorKit.odometer" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
    }

    v70[51] = v20;
    v71[51] = &off_100011F48;
    v21 = [@"com.apple.SensorKit.als" length];
    v22 = @"SegmentSizeBytes";
    if (v21)
    {
      v22 = [@"com.apple.SensorKit.als" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[52] = v22;
    v71[52] = &off_100011F00;
    v23 = [@"com.apple.SensorKit.onWristState" length];
    v24 = @"SegmentSizeBytes";
    if (v23)
    {
      v24 = [@"com.apple.SensorKit.onWristState" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[53] = v24;
    v71[53] = &off_100011D98;
    v25 = [@"com.apple.SensorKit.PPG" length];
    v26 = @"SegmentSizeBytes";
    if (v25)
    {
      v26 = [@"com.apple.SensorKit.PPG" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[54] = v26;
    v71[54] = &off_100011F00;
    v27 = [@"com.apple.SensorKit.PPG" length];
    v28 = @"MaxAllowedMappedPages";
    if (v27)
    {
      v28 = [@"com.apple.SensorKit.PPG" stringByAppendingFormat:@".%@", @"MaxAllowedMappedPages"];
    }

    v70[55] = v28;
    v71[55] = [NSNumber numberWithUnsignedInteger:0x3200000 / NSPageSize()];
    v29 = [@"com.apple.SensorKit.visits" length];
    v30 = @"SegmentSizeBytes";
    if (v29)
    {
      v30 = [@"com.apple.SensorKit.visits" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[56] = v30;
    v71[56] = &off_100011D98;
    v31 = [@"com.apple.private.SensorKit.pedometer.stridecalibration" length];
    v32 = @"SegmentSizeBytes";
    if (v31)
    {
      v32 = [@"com.apple.private.SensorKit.pedometer.stridecalibration" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[57] = v32;
    v71[57] = &off_100011D98;
    v33 = [@"com.apple.SensorKit.faceMetrics" length];
    v34 = @"SegmentSizeBytes";
    if (v33)
    {
      v34 = [@"com.apple.SensorKit.faceMetrics" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[58] = v34;
    v71[58] = &off_100011F00;
    v35 = [@"com.apple.SensorKit.faceMetrics" length];
    v36 = @"HoldingPeriod";
    if (v35)
    {
      v36 = [@"com.apple.SensorKit.faceMetrics" stringByAppendingFormat:@".%@", @"HoldingPeriod"];
    }

    v70[59] = v36;
    v71[59] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_7_DAYS + XPC_ACTIVITY_INTERVAL_1_DAY / 2];
    v37 = [@"com.apple.SensorKit.faceMetrics" length];
    v38 = @"DataProtectionLengthSeconds";
    if (v37)
    {
      v38 = [@"com.apple.SensorKit.faceMetrics" stringByAppendingFormat:@".%@", @"DataProtectionLengthSeconds"];
    }

    v70[60] = v38;
    v71[60] = [NSNumber numberWithLongLong:v64];
    v39 = [@"com.apple.SensorKit.faceMetrics" length];
    v40 = @"CacheDeleteAgeLimit";
    if (v39)
    {
      v40 = [@"com.apple.SensorKit.faceMetrics" stringByAppendingFormat:@".%@", @"CacheDeleteAgeLimit"];
    }

    v70[61] = v40;
    v66[0] = [&off_100011E28 stringValue];
    v67[0] = [NSNumber numberWithLongLong:v64];
    v66[1] = [&off_100011E40 stringValue];
    v67[1] = [NSNumber numberWithLongLong:6 * XPC_ACTIVITY_INTERVAL_1_DAY + XPC_ACTIVITY_INTERVAL_7_DAYS];
    v66[2] = [&off_100011E58 stringValue];
    v67[2] = [NSNumber numberWithLongLong:5 * XPC_ACTIVITY_INTERVAL_1_DAY + XPC_ACTIVITY_INTERVAL_7_DAYS];
    v66[3] = [&off_100011E70 stringValue];
    v67[3] = [NSNumber numberWithLongLong:3 * XPC_ACTIVITY_INTERVAL_1_DAY + XPC_ACTIVITY_INTERVAL_7_DAYS];
    v66[4] = [&off_100011E88 stringValue];
    v67[4] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
    v71[61] = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:5];
    v41 = [@"com.apple.SensorKit.ECG" length];
    v42 = @"MetadataSizeBytes";
    if (v41)
    {
      v42 = [@"com.apple.SensorKit.ECG" stringByAppendingFormat:@".%@", @"MetadataSizeBytes"];
    }

    v70[62] = v42;
    v71[62] = &off_100011F18;
    v43 = [@"com.apple.SensorKit.speechMetrics.telephony" length];
    v44 = @"SegmentSizeBytes";
    if (v43)
    {
      v44 = [@"com.apple.SensorKit.speechMetrics.telephony" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[63] = v44;
    v71[63] = &off_100011F30;
    v45 = [@"com.apple.SensorKit.soundDetection.telephony" length];
    v46 = @"SegmentSizeBytes";
    if (v45)
    {
      v46 = [@"com.apple.SensorKit.soundDetection.telephony" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[64] = v46;
    v71[64] = &off_100011F30;
    v47 = [@"com.apple.SensorKit.speechEmotion.telephony" length];
    v48 = @"SegmentSizeBytes";
    if (v47)
    {
      v48 = [@"com.apple.SensorKit.speechEmotion.telephony" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[65] = v48;
    v71[65] = &off_100011F30;
    v49 = [@"com.apple.SensorKit.speechMetrics.telephony" length];
    v50 = @"SegmentPaddingFactor";
    if (v49)
    {
      v50 = [@"com.apple.SensorKit.speechMetrics.telephony" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
    }

    v70[66] = v50;
    v71[66] = &off_100011F98;
    v51 = [@"com.apple.SensorKit.soundDetection.telephony" length];
    v52 = @"SegmentPaddingFactor";
    if (v51)
    {
      v52 = [@"com.apple.SensorKit.soundDetection.telephony" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
    }

    v70[67] = v52;
    v71[67] = &off_100011F98;
    v53 = [@"com.apple.SensorKit.speechEmotion.telephony" length];
    v54 = @"SegmentPaddingFactor";
    if (v53)
    {
      v54 = [@"com.apple.SensorKit.speechEmotion.telephony" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
    }

    v70[68] = v54;
    v71[68] = &off_100011F98;
    v55 = [@"com.apple.SensorKit.mediaEvents" length];
    v56 = @"SegmentSizeBytes";
    if (v55)
    {
      v56 = [@"com.apple.SensorKit.mediaEvents" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[69] = v56;
    v71[69] = &off_100011F00;
    v57 = [@"com.apple.SensorKit.mediaEvents" length];
    v58 = @"SegmentPaddingFactor";
    if (v57)
    {
      v58 = [@"com.apple.SensorKit.mediaEvents" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
    }

    v70[70] = v58;
    v71[70] = &off_100011F98;
    v59 = [@"com.apple.SensorKit.deviceUsageReport" length];
    v60 = @"SegmentSizeBytes";
    if (v59)
    {
      v60 = [@"com.apple.SensorKit.deviceUsageReport" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
    }

    v70[71] = v60;
    v71[71] = &off_100011F00;
    v61 = [@"com.apple.SensorKit.deviceUsageReport" length];
    v62 = @"SegmentSizeMinimumFactor";
    if (v61)
    {
      v62 = [@"com.apple.SensorKit.deviceUsageReport" stringByAppendingFormat:@".%@", @"SegmentSizeMinimumFactor"];
    }

    v70[72] = v62;
    v71[72] = &off_100011FA8;
    [*(v3 + 3) registerDefaults:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v71, v70, 73)}];
  }

  return v3;
}

id sub_100001E5C(uint64_t a1, void *a2, void *a3)
{
  v5 = [a3 componentsSeparatedByString:@"."];
  v6 = [v5 count];
  do
  {
    if (!v6)
    {
      break;
    }

    v7 = [objc_msgSend(v5 subarrayWithRange:{0, v6), "componentsJoinedByString:", @"."}];
    v8 = a2;
    if ([v7 length])
    {
      v8 = [v7 stringByAppendingFormat:@".%@", a2];
    }

    if ([*(a1 + 24) objectForKey:v8])
    {
      return v8;
    }

    --v6;
  }

  while (![objc_msgSend(v5 objectAtIndexedSubscript:{v6), "isEqualToString:", @"tombstones"}]);
  return a2;
}

uint64_t sub_100001F4C(uint64_t result)
{
  if (result)
  {
    v1 = [*(result + 24) integerForKey:{sub_100001E5C(result, @"Enabled", 0)}];
    return v1 & ~(v1 >> 63) & 1;
  }

  return result;
}

unint64_t sub_100001F9C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 24) integerForKey:{sub_100001E5C(result, @"Enabled", 0)}];
    if ((v2 & ~(v2 >> 63) & 4) != 0)
    {
      return 1;
    }

    else
    {
      v3 = [*(v1 + 24) integerForKey:{sub_100001E5C(v1, @"Enabled", 0)}];
      return ((v3 & ~(v3 >> 62)) >> 1) & 1;
    }
  }

  return result;
}

void *sub_100002024(void *result, void *a2)
{
  if (result)
  {
    v2 = result[3];
    v3 = sub_100001E5C(result, @"HoldingPeriod", a2);

    return [v2 integerForKey:v3];
  }

  return result;
}

id *sub_100002074(id *result)
{
  if (result)
  {
    return [result[3] BOOLForKey:@"AdditionalDiagnosticsEnabled"];
  }

  return result;
}

id *sub_1000022D8(id *result)
{
  if (result)
  {
    v1 = [result[3] objectForKey:@"CursorHMACKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id *sub_100002330(id *result, uint64_t a2)
{
  if (result)
  {
    return [result[3] setObject:a2 forKey:@"CursorHMACKey"];
  }

  return result;
}

void start()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.SensorKitLongTermStorageHelper.main", v0);
  v2 = objc_autoreleasePoolPush();
  v3 = [[SensorKitLongTermStorageHelper alloc] initWithQueue:v1];
  objc_autoreleasePoolPop(v2);
  [(SensorKitLongTermStorageHelper *)v3 resume];
  dispatch_main();
}

NSBundle *sub_1000023B4(uint64_t a1, _OWORD *a2)
{
  objc_opt_self();
  v3 = a2[1];
  v12[0] = *a2;
  v12[1] = v3;
  result = sub_100004A48(NSURL, v12);
  if (result)
  {
    v5 = result;
    v6 = _CFBundleCopyBundleURLForExecutableURL();
    if (v6)
    {
      v7 = v6;
      result = [NSBundle bundleWithURL:v6];
      if (result)
      {
        return result;
      }

      if (qword_100016968 != -1)
      {
        dispatch_once(&qword_100016968, &stru_100010428);
      }

      v8 = qword_100016960;
      if (!os_log_type_enabled(qword_100016960, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      LODWORD(v12[0]) = 138543362;
      *(v12 + 4) = v7;
      v9 = "Could not create bundle for bundle URL %{public}@";
      v10 = v8;
    }

    else
    {
      if (qword_100016968 != -1)
      {
        dispatch_once(&qword_100016968, &stru_100010428);
      }

      v11 = qword_100016960;
      if (!os_log_type_enabled(qword_100016960, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      LODWORD(v12[0]) = 138543362;
      *(v12 + 4) = v5;
      v9 = "Could not get bundle URL for executable URL %{public}@";
      v10 = v11;
    }

    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, v12, 0xCu);
    return 0;
  }

  return result;
}

void *sub_10000261C(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = SRCursor;
  v5 = objc_msgSendSuper2(&v7, "init");
  if (v5)
  {
    v5[1] = [a2 copy];
    v5[2] = [a3 copy];
  }

  return v5;
}

uint64_t sub_100003460(uint64_t result, void *a2, id *a3, void *a4, void *a5)
{
  if (result)
  {
    v9 = result;
    v10 = [a4 bundleIdForConnection:result];
    if (![a2 bundleIdentifier])
    {
      [a2 setBundleIdentifier:v10];
    }

    if ([a2 bundleIdentifier])
    {
      if (([objc_msgSend(a2 "bundleIdentifier")] & 1) != 0 || (result = sub_1000036E4(v9, @"com.apple.private.sensorkit.auth.request.arbitrary_bundle", 0, 0, 0, a3, a4, a5), result))
      {
        result = sub_1000036E4(v9, @"com.apple.sensorkit.reader.allow", [a2 sensor], objc_msgSend(a2, "bundleIdentifier"), @"com.apple.private.sensorkit.export.allow-all", a3, a4, a5);
        if (result)
        {
          if ([a2 conformsToProtocol:&OBJC_PROTOCOL___SRRequestRecording] && objc_msgSend(objc_msgSend(a2, "sensorConfiguration"), "count"))
          {
            v11 = [a2 sensor];

            return sub_1000036E4(v9, @"com.apple.SensorKit.reader.sensor-configuration.allow", v11, 0, 0, a3, a4, a5);
          }

          else
          {
            return 1;
          }
        }
      }
    }

    else
    {
      if (a5)
      {
        *a5 = +[SRError authorizationError];
      }

      if (qword_100016980 != -1)
      {
        dispatch_once(&qword_100016980, &stru_100010448);
      }

      v12 = qword_100016988;
      result = os_log_type_enabled(qword_100016988, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v13 = 138543874;
        v14 = v9;
        v15 = 1026;
        v16 = [v9 processIdentifier];
        v17 = 2114;
        v18 = a2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Connection %{public}@ from pid %{public}d rejected because no bundle identifier could be found for this connection. Request: %{public}@", &v13, 0x1Cu);
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_1000036E4(void *a1, void *a2, void *a3, void *a4, uint64_t a5, id *a6, void *a7, void *a8)
{
  if ((sub_100001F4C(a6) & 1) == 0)
  {
    if (!a8)
    {
      return 0;
    }

    v23 = 4098;
LABEL_20:
    v22 = [SRError authorizationErrorWithStatus:v23];
    goto LABEL_21;
  }

  if ((sub_100001F9C(a6) & 1) == 0)
  {
    if (!a8)
    {
      return 0;
    }

    v23 = 4097;
    goto LABEL_20;
  }

  v16 = [a3 sr_sensorByDeletingDeletionRecord];
  if ((sub_100003A50(a1, a2, v16, a7) & 1) == 0)
  {
    if (a8)
    {
      *a8 = +[SRError invalidEntitlementError];
    }

    if (qword_100016980 != -1)
    {
      dispatch_once(&qword_100016980, &stru_100010448);
    }

    v25 = qword_100016988;
    result = os_log_type_enabled(qword_100016988, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v27 = 138543874;
    v28 = a1;
    v29 = 1026;
    LODWORD(v30[0]) = [a1 processIdentifier];
    WORD2(v30[0]) = 2114;
    *(v30 + 6) = a2;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Connection %{public}@ from pid %{public}d rejected for lacking entitlement for %{public}@", &v27, 0x1Cu);
    return 0;
  }

  if ([a2 isEqualToString:@"com.apple.private.sensorkit.diagnostics.allow"] && (sub_100003A50(a1, @"com.apple.private.sensorkit.debugging.allow", v16, a7) & 1) == 0 && (sub_100002074(a6) & 1) == 0)
  {
    if (qword_100016980 != -1)
    {
      dispatch_once(&qword_100016980, &stru_100010448);
    }

    v26 = qword_100016988;
    if (os_log_type_enabled(qword_100016988, OS_LOG_TYPE_ERROR))
    {
      v27 = 138543618;
      v28 = a1;
      v29 = 1026;
      LODWORD(v30[0]) = [a1 processIdentifier];
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Connection %{public}@ from pid %{public}d rejected because additional diagnostics are not enabled", &v27, 0x12u);
      if (a8)
      {
        goto LABEL_33;
      }
    }

    else if (a8)
    {
LABEL_33:
      v22 = +[SRError invalidEntitlementError];
      goto LABEL_21;
    }

    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v17 = [a7 isAuthorizedForSensor:v16 bundleIdentifier:a4];
  v18 = objc_autoreleasePoolPush();
  v19 = [a7 valueForEntitlement:a5 connection:a1];
  objc_autoreleasePoolPop(v18);
  result = 1;
  if ((v17 & 1) == 0 && !v19)
  {
    if (qword_100016980 != -1)
    {
      dispatch_once(&qword_100016980, &stru_100010448);
    }

    v21 = qword_100016988;
    if (os_log_type_enabled(qword_100016988, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543618;
      v28 = a4;
      v29 = 2114;
      v30[0] = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ isn't authorized for %{public}@", &v27, 0x16u);
    }

    if (a8)
    {
      v22 = +[SRError authorizationError];
LABEL_21:
      v24 = v22;
      result = 0;
      *a8 = v24;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100003A50(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 isEqualToString:@"com.apple.sensorkit.reader.allow"];
  if ([a1 _sr_hasEntitlement:a2 sensor:a3 valueProvider:a4])
  {
    return 1;
  }

  if (v8)
  {
    v10 = @"com.apple.developer.sensorkit.reader.allow";
  }

  else
  {
    v10 = 0;
  }

  return [a1 _sr_hasEntitlement:v10 sensor:a3 valueProvider:a4];
}

const __CFString *sub_100003E9C(uint64_t a1)
{
  if (a1 < 4096)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          return 0;
        }

        v3 = [NSBundle bundleForClass:objc_opt_class()];
        v4 = @"SRErrorNoAuthorization";
      }

      else
      {
        v3 = [NSBundle bundleForClass:objc_opt_class()];
        v4 = @"SRErrorInvalidEntitlement";
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          v3 = [NSBundle bundleForClass:objc_opt_class()];
          v4 = @"SRErrorDataInaccessible";
          break;
        case 3:
          v3 = [NSBundle bundleForClass:objc_opt_class()];
          v4 = @"SRErrorFetchRequestInvalid";
          break;
        case 4:
          v3 = [NSBundle bundleForClass:objc_opt_class()];
          v4 = @"SRErrorPromptDeclined";
          break;
        default:
          return 0;
      }
    }

    return [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_100011248 table:0];
  }

  else
  {
    if (!os_variant_has_internal_content())
    {
      return 0;
    }

    if (a1 > 12288)
    {
      if (a1 > 12295)
      {
        if ((a1 - 20480) >= 5)
        {
          if (a1 == 12296)
          {
            return @"Provided sample is from the future";
          }

          if (a1 == 0x4000)
          {
            return @"Sensor Configuration is invalid";
          }
        }

        return 0;
      }

      if (a1 <= 12291)
      {
        if (a1 == 12289)
        {
          return @"Writer Not Authorized";
        }

        else if (a1 == 12290)
        {
          return @"Writer Input was invalid";
        }

        else
        {
          return @"No available memory mapped to write sample";
        }
      }

      else if (a1 > 12293)
      {
        if (a1 == 12294)
        {
          return @"Framework datastore state is invalid";
        }

        else
        {
          return @"Writer does not have explicit authorization";
        }
      }

      else if (a1 == 12292)
      {
        return @"Provided sample is out of order from previous samples";
      }

      else
      {
        return @"Provided sample is too large";
      }
    }

    else
    {
      if (a1 <= 8195)
      {
        if (a1 >= 0x2000)
        {
          if (a1 > 8193)
          {
            if (a1 == 8194)
            {
              return @"Internal Error";
            }

            else
            {
              return @"Prompt Busy";
            }
          }

          else if (a1 == 0x2000)
          {
            return @"No space available to write samples";
          }

          else
          {
            return @"Connection Not Found";
          }
        }

        switch(a1)
        {
          case 4096:
            return @"Required app is not installed";
          case 4097:
            return @"Required onboarding not completed";
          case 4098:
            return @"Global setting not enabled";
        }

        return 0;
      }

      if (a1 <= 8198)
      {
        if (a1 == 8196)
        {
          return @"Prompt is cancelled";
        }

        if (a1 != 8197)
        {
          return @"No device identifier could be found";
        }

        return 0;
      }

      if (a1 > 8200)
      {
        if (a1 == 8201)
        {
          return @"No new authorization groups were requested";
        }

        if (a1 == 12288)
        {
          return @"Writer Not Monitoring";
        }

        return 0;
      }

      if (a1 == 8199)
      {
        return @"Time synchronization state is invalid";
      }

      else
      {
        return @"The requested bundle authorization is being requested for could not be found";
      }
    }
  }
}

NSString *sub_100004280(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"SRErrorNoAuthorizationRecovery";
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    v1 = @"SRErrorDataInaccessibleRecovery";
  }

  v2 = [NSBundle bundleForClass:objc_opt_class()];

  return [(NSBundle *)v2 localizedStringForKey:v1 value:&stru_100011248 table:0];
}

SRAbsoluteTime SRAbsoluteTimeFromContinuousTime(uint64_t cont)
{
  if (qword_1000169E8 != -1)
  {
    dispatch_once(&qword_1000169E8, &stru_100010500);
  }

  if (qword_1000169F0 >= cont)
  {
    v2 = -1.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = *&qword_1000169F8 + 0.0;
  TMConvertTicksToSeconds();
  return v3 + v4 * v2;
}

void sub_100004988(id a1)
{
  v1 = mach_continuous_time();
  TMGetKernelMonotonicClock();
  qword_1000169F8 = v2;
  qword_1000169F0 = v1 + ((mach_continuous_time() - v1) >> 1);
}

NSURL *sub_100004A48(uint64_t a1, _OWORD *a2)
{
  objc_opt_self();
  bzero(buffer, 0x400uLL);
  v3 = a2[1];
  *v10.val = *a2;
  *&v10.val[4] = v3;
  if (proc_pidpath_audittoken(&v10, buffer, 0x400u) <= 0)
  {
    if (qword_1000169A0 != -1)
    {
      dispatch_once(&qword_1000169A0, &stru_100010520);
    }

    v9 = qword_100016998;
    if (!os_log_type_enabled(qword_100016998, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 68157954;
    LODWORD(v12[0]) = 32;
    WORD2(v12[0]) = 2096;
    *(v12 + 6) = a2;
    v6 = "Cannot determine path for audit token %.*P";
    v7 = v9;
    v8 = 18;
    goto LABEL_13;
  }

  result = [NSURL fileURLWithPath:[NSString stringWithUTF8String:buffer]];
  if (result)
  {
    return result;
  }

  if (qword_1000169A0 != -1)
  {
    dispatch_once(&qword_1000169A0, &stru_100010520);
  }

  v5 = qword_100016998;
  if (os_log_type_enabled(qword_100016998, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v12[0] = buffer;
    v6 = "Could not create URL for path %{public}s";
    v7 = v5;
    v8 = 12;
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
  }

  return 0;
}

SRSensorDescription *sub_100004F0C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a2 sr_sensorByDeletingDeletionRecord];
  v5 = [(NSURL *)v4 isEqualToString:a2];
  v6 = [*(a1 + 8) objectForKey:v4];
  if (!v6)
  {
    v25 = v5;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = *(a1 + 16);
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v27;
      *&v9 = 138543362;
      v24 = v9;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v14 = [(NSURL *)v4 stringByAppendingPathExtension:@"plist", v24];
        if (!v14)
        {
          break;
        }

        v15 = [NSURL fileURLWithPath:v14 isDirectory:0 relativeToURL:v13];
        v30 = 0;
        v16 = [NSDictionary dictionaryWithContentsOfURL:v15 error:&v30];
        if (v16)
        {
          v6 = [[SRSensorDescription alloc] initWithDictionary:v16];
          v17 = [(SRSensorDescription *)v6 name];
          [*(a1 + 8) setObject:v6 forKey:v17];
          if ([(SRSensorDescription *)v6 legacyName])
          {
            [*(a1 + 8) setObject:v6 forKey:{-[SRSensorDescription legacyName](v6, "legacyName")}];
          }

          v18 = qword_1000169A8;
          if (os_log_type_enabled(qword_1000169A8, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v33 = v17;
            v34 = 2114;
            v35 = v6;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Cached description for %{public}@, %{public}@", buf, 0x16u);
          }

          if (v6)
          {
            goto LABEL_27;
          }
        }

        else if ([-[SRSensorDescription domain](v30 "domain")] && -[SRSensorDescription code](v30, "code") == 260)
        {
          v19 = qword_1000169A8;
          if (os_log_type_enabled(qword_1000169A8, OS_LOG_TYPE_INFO))
          {
            *buf = v24;
            v33 = v15;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@ not found", buf, 0xCu);
          }
        }

        else
        {
          v20 = qword_1000169A8;
          if (os_log_type_enabled(qword_1000169A8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v33 = v15;
            v34 = 2114;
            v35 = v30;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to parse %{public}@ because %{public}@", buf, 0x16u);
          }
        }

        if (v10 == ++v12)
        {
          v10 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      v21 = qword_1000169A8;
      if (os_log_type_enabled(qword_1000169A8, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 16);
        *buf = 138543618;
        v33 = v4;
        v34 = 2114;
        v35 = v23;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to find description for %{public}@ in %{public}@", buf, 0x16u);
      }
    }

    v6 = 0;
LABEL_27:
    v5 = v25;
  }

  if ((v6 == 0) | v5 & 1)
  {
    return v6;
  }

  return [SRSensorDescription sensorDescriptionForDeletionRecordFromDescription:v6];
}

uint64_t sub_100005374()
{
  objc_opt_self();
  result = qword_1000169B0;
  if (!qword_1000169B0)
  {
    objc_opt_self();
    if (qword_1000169C0 != -1)
    {
      dispatch_once(&qword_1000169C0, &stru_100010540);
    }

    return qword_1000169B8;
  }

  return result;
}

void *sub_1000056F8(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [SRSensorDescriptionEnumerator alloc];
    if (v2)
    {
      v4.receiver = v2;
      v4.super_class = SRSensorDescriptionEnumerator;
      v3 = objc_msgSendSuper2(&v4, "init");
      if (v3)
      {
        v3[1] = v1;
      }
    }

    else
    {
      v3 = 0;
    }

    return v3;
  }

  return result;
}

void sub_100005D98(id a1)
{
  v1 = qword_1000169C8;
  if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Client connection has invalidated.", v2, 2u);
  }
}

id sub_1000067C4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v15 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No samples returned, marking fetch as complete", &v21, 2u);
    }

    v16 = a1[6];
    v17 = [SRError sr_errorWithUnderlying:a5];
    goto LABEL_12;
  }

  if (([a2 conformsToProtocol:&OBJC_PROTOCOL___SRSampling] & 1) == 0)
  {
    v18 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_FAULT))
    {
      v19 = objc_opt_class();
      v21 = 138543362;
      v22 = NSStringFromClass(v19);
      _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%{public}@ does not conform to SRSampling", &v21, 0xCu);
    }

    v16 = a1[6];
    v17 = [SRError errorWithCode:8194];
LABEL_12:
    (*(v16 + 16))(v16, 0, 1, 0, v17, NAN);
    return 0;
  }

  v10 = mach_continuous_time();
  v11 = SRAbsoluteTimeFromContinuousTime(v10);
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];

  return [v12 handleReplyForRequest:v13 withSamples:a2 timestamp:a3 token:a4 state:a5 error:v14 reply:v11];
}

id sub_100006BD4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v15 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No samples returned, marking fetch as complete", &v21, 2u);
    }

    v16 = a1[6];
    v17 = [SRError sr_errorWithUnderlying:a5];
    goto LABEL_12;
  }

  if (([a2 conformsToProtocol:&OBJC_PROTOCOL___SRSampling] & 1) == 0)
  {
    v18 = qword_1000169C8;
    if (os_log_type_enabled(qword_1000169C8, OS_LOG_TYPE_FAULT))
    {
      v19 = objc_opt_class();
      v21 = 138543362;
      v22 = NSStringFromClass(v19);
      _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%{public}@ does not conform to SRSampling", &v21, 0xCu);
    }

    v16 = a1[6];
    v17 = [SRError errorWithCode:8194];
LABEL_12:
    (*(v16 + 16))(v16, 0, 1, 0, v17, NAN);
    return 0;
  }

  v10 = mach_continuous_time();
  v11 = SRAbsoluteTimeFromContinuousTime(v10);
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];

  return [v12 handleReplyForRequest:v13 withSamples:a2 timestamp:a3 token:a4 state:a5 error:v14 reply:v11];
}

uint64_t sub_100007310(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000169D0;
  if (os_log_type_enabled(qword_1000169D0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), &__NSDictionary0__struct, [SRError errorWithCode:8193]);
}

uint64_t sub_1000074CC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000169D0;
  if (os_log_type_enabled(qword_1000169D0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [SRError errorWithCode:8193]);
}

uint64_t sub_100007684(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000169D0;
  if (os_log_type_enabled(qword_1000169D0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [SRError errorWithCode:8193]);
}

uint64_t sub_100007760(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [NSURL fileURLWithPath:a2];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t sub_100007888(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000169D0;
  if (os_log_type_enabled(qword_1000169D0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), &__NSDictionary0__struct, [SRError errorWithCode:8193]);
}

uint64_t sub_100007A44(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000169D0;
  if (os_log_type_enabled(qword_1000169D0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), &__NSDictionary0__struct, [SRError errorWithCode:8193]);
}

uint64_t sub_100007BD0(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000169D0;
  if (os_log_type_enabled(qword_1000169D0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [SRError errorWithCode:8193]);
}

uint64_t sub_100007D38(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000169D0;
  if (os_log_type_enabled(qword_1000169D0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to connect to daemon because %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), &__NSArray0__struct, [SRError errorWithCode:8193]);
}

NSURL *sub_1000086C4(NSURL *result)
{
  if (result)
  {
    v4 = 0u;
    v5 = 0u;
    [(NSURL *)result auditToken];
    *buf = v4;
    v7 = v5;
    result = [sub_1000023B4(NSBundle bundleIdentifier];
    if (!result)
    {
      *buf = v4;
      v7 = v5;
      result = sub_100004A48(NSURL, buf);
      if (result)
      {
        v1 = result;
        v2 = CFBundleCopyInfoDictionaryForURL(result);
        if (v2)
        {
          return [(__CFDictionary *)v2 objectForKeyedSubscript:@"CFBundleIdentifier"];
        }

        else
        {
          if (qword_1000169E0 != -1)
          {
            dispatch_once(&qword_1000169E0, &stru_100010648);
          }

          v3 = qword_1000169D8;
          if (os_log_type_enabled(qword_1000169D8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v1;
            _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not get embedded info plist for executable %{public}@", buf, 0xCu);
          }

          return 0;
        }
      }
    }
  }

  return result;
}