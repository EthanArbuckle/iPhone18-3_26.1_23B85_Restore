@interface BatteryDataCollectionManager
- (BatteryDataCollectionManager)init;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)systemTimeChanged;
@end

@implementation BatteryDataCollectionManager

- (BatteryDataCollectionManager)init
{
  v76.receiver = self;
  v76.super_class = BatteryDataCollectionManager;
  v2 = [(BatteryDataCollectionManager *)&v76 init];
  if (!v2)
  {
    v29 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Super init failed", buf, 2u);
    }

    return 0;
  }

  v68 = v2;
  qword_1000ACB98 = [[NSDictionary alloc] initWithObjectsAndKeys:{&off_1000A3100, @"ChemID", &off_1000A3118, @"AlgoChemID", &off_1000A3130, @"Serial", &off_1000A3148, @"WeightedRa", &off_1000A3160, @"Qmax", &off_1000A3178, @"CycleCount", &off_1000A3190, @"ISS", &off_1000A31A8, @"RaTableRaw", &off_1000A31C0, @"CellVoltage", &off_1000A31D8, @"PresentDOD", &off_1000A31F0, @"Voltage", &off_1000A3208, @"StateOfCharge", &off_1000A3220, @"ChargeAccum", &off_1000A3238, @"ResScale", &off_1000A3250, @"RSS", &off_1000A3268, @"ITMiscStatus", &off_1000A3280, @"MiscStatus", &off_1000A3298, @"TimeAtHighSoc", &off_1000A32B0, @"LowVoltageResidencyCounters", &off_1000A32C8, @"TotalOperatingTime", &off_1000A32E0, @"ChargingVoltage", &off_1000A32F8, @"VacVoltageLimit", &off_1000A3310, @"NotChargingReason", &off_1000A3328, @"AccumulatedSystemPowerIn", &off_1000A3340, @"AccumulatedSystemLoad", &off_1000A3358, @"SystemVoltageIn", &off_1000A3370, @"SystemCurrentIn", &off_1000A3388, @"FamilyCode", &off_1000A33A0, @"Watts", &__NSArray0__struct, @"Temperature", &__NSArray0__struct}];
  qword_1000ACBA0 = [[NSArray alloc] initWithObjects:{@"Qmax", @"PresentDOD", @"CellVoltage", @"RaTableRaw", 0}];
  v67 = [NSDictionary alloc];
  v137[0] = +[NSNull null];
  v137[1] = +[NSNull null];
  *v138 = [NSArray arrayWithObjects:v137 count:2];
  v136[0] = +[NSNull null];
  v136[1] = +[NSNull null];
  v139 = [NSArray arrayWithObjects:v136 count:2];
  v135[0] = +[NSNull null];
  v135[1] = +[NSNull null];
  v140 = [NSArray arrayWithObjects:v135 count:2];
  v66 = [NSArray arrayWithObjects:v138 count:3];
  v133[0] = @"DailyCollectionPeriodOverride_ms";
  v133[1] = &off_1000A2B70;
  v134[0] = [NSArray arrayWithObjects:v133 count:2];
  v132[0] = @"DailyRetentionPeriodOverride_s";
  v132[1] = &off_1000A2B88;
  v134[1] = [NSArray arrayWithObjects:v132 count:2];
  v131[0] = @"DailyCollationPeriodOverride_s";
  v131[1] = &off_1000A2BA0;
  v134[2] = [NSArray arrayWithObjects:v131 count:2];
  v3 = [NSArray arrayWithObjects:v134 count:3];
  v129[0] = @"WeeklyCollectionPeriodOverride_ms";
  v129[1] = &off_1000A2BB8;
  v130[0] = [NSArray arrayWithObjects:v129 count:2];
  v128[0] = @"WeeklyRetentionPeriodOverride_s";
  v128[1] = &off_1000A2B88;
  v130[1] = [NSArray arrayWithObjects:v128 count:2];
  v127[0] = @"WeeklyCollationPeriodOverride_s";
  v127[1] = &off_1000A2BA0;
  v130[2] = [NSArray arrayWithObjects:v127 count:2];
  v4 = [NSArray arrayWithObjects:v130 count:3];
  v125[0] = @"SBCCollectionPeriodOverride_ms";
  v125[1] = &off_1000A2BD0;
  v126[0] = [NSArray arrayWithObjects:v125 count:2];
  v124[0] = @"SBCRetentionPeriodOverride_s";
  v124[1] = &off_1000A2BE8;
  v126[1] = [NSArray arrayWithObjects:v124 count:2];
  v123[0] = @"SBCCollationPeriodOverride_s";
  v123[1] = &off_1000A2C00;
  v126[2] = [NSArray arrayWithObjects:v123 count:2];
  v5 = [NSArray arrayWithObjects:v126 count:3];
  v121[0] = +[NSNull null];
  v121[1] = +[NSNull null];
  v122[0] = [NSArray arrayWithObjects:v121 count:2];
  v120[0] = @"OBCRetentionPeriodOverride_s";
  v120[1] = &off_1000A2BE8;
  v122[1] = [NSArray arrayWithObjects:v120 count:2];
  v119[0] = @"OBCCollationPeriodOverride_s";
  v119[1] = &off_1000A2BA0;
  v122[2] = [NSArray arrayWithObjects:v119 count:2];
  v6 = [NSArray arrayWithObjects:v122 count:3];
  v117[0] = @"AMACollectionPeriodOverride_ms";
  v117[1] = &off_1000A2BD0;
  v118[0] = [NSArray arrayWithObjects:v117 count:2];
  v116[0] = +[NSNull null];
  v116[1] = +[NSNull null];
  v118[1] = [NSArray arrayWithObjects:v116 count:2];
  v115[0] = +[NSNull null];
  v115[1] = +[NSNull null];
  v118[2] = [NSArray arrayWithObjects:v115 count:2];
  v7 = [NSArray arrayWithObjects:v118 count:3];
  v113[0] = +[NSNull null];
  v113[1] = +[NSNull null];
  v114[0] = [NSArray arrayWithObjects:v113 count:2];
  v112[0] = @"SmartChargingRetentionPeriodOverride_s";
  v112[1] = &off_1000A2BE8;
  v114[1] = [NSArray arrayWithObjects:v112 count:2];
  v111[0] = @"SmartChargingCollationPeriodOverride_s";
  v111[1] = &off_1000A2BA0;
  v114[2] = [NSArray arrayWithObjects:v111 count:2];
  qword_1000ACBA8 = [v67 initWithObjectsAndKeys:{v66, @"BDC_Once", v3, @"BDC_Daily", v4, @"BDC_Weekly", v5, @"BDC_SBC", v6, @"BDC_OBC", v7, @"BDC_AMA", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v114, 3), @"BDC_SmartCharging", 0}];
  v8 = [NSDictionary alloc];
  v110[0] = @"PruningPeriodOverride_s";
  v110[1] = &off_1000A2C18;
  v9 = [NSArray arrayWithObjects:v110 count:2];
  v109[0] = @"FormatVersionOverride";
  v109[1] = @"2.9";
  v10 = [NSArray arrayWithObjects:v109 count:2];
  v108[0] = @"DataStoragePathOverride";
  v108[1] = @"/var/db/Battery/BDC";
  v11 = [NSArray arrayWithObjects:v108 count:2];
  v107[0] = @"TotalDataSizeUpperBoundOverride_kB";
  v107[1] = &off_1000A2C30;
  qword_1000ACBB0 = [v8 initWithObjectsAndKeys:{v9, @"BDC_Pruning_Period", v10, @"BDC_Data_Format_Version", v11, @"BDC_Data_Storage_Path", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v107, 2), @"TotalDataSizeUpperBound", 0}];
  qword_1000ACBD8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerd.bdc"];
  v12 = objc_autoreleasePoolPush();
  v13 = dlopen("/System/Library/PrivateFrameworks/CoreTime.framework/CoreTime", 2);
  qword_1000ACB88 = v13;
  if (v13)
  {
    off_1000ACB90 = dlsym(v13, "TMGetKernelMonotonicClock");
    if (off_1000ACB90)
    {
      [qword_1000ACBD8 doubleForKey:@"ReferenceRTCTicks"];
      v15 = v14;
      v16 = [qword_1000ACBD8 objectForKey:@"ReferenceWalltime"];
      if (v15 == 0.0 || !v16)
      {
        v30 = qword_1000AB7E8;
        v23 = v68;
        if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Reference clock unavailable. Creating new reference", buf, 2u);
        }

        sub_10000E578();
        v32 = v31;
        v33 = +[NSDate now];
        [qword_1000ACBD8 setDouble:@"ReferenceRTCTicks" forKey:v32];
        [qword_1000ACBD8 setDouble:@"LastKnownRTCTicks" forKey:v32];
        [qword_1000ACBD8 setObject:v33 forKey:@"ReferenceWalltime"];
        [qword_1000ACBD8 setObject:v33 forKey:@"LastKnownWalltime"];
        [qword_1000ACBD8 setDouble:@"RTCTicksDelta" forKey:0.0];
      }

      else
      {
        sub_10000E578();
        v18 = v17;
        [qword_1000ACBD8 doubleForKey:@"LastKnownRTCTicks"];
        v20 = v19;
        v21 = [qword_1000ACBD8 objectForKey:@"LastKnownWalltime"];
        v22 = +[NSDate now];
        v23 = v68;
        if (v20 <= 0.0)
        {
          [qword_1000ACBD8 setDouble:@"LastKnownRTCTicks" forKey:v18];
        }

        if (v18 < v20)
        {
          [qword_1000ACBD8 doubleForKey:@"RTCTicksDelta"];
          v25 = v24;
          v26 = v20 - v18 + v24;
          [v21 timeIntervalSinceDate:v22];
          v28 = v27;
          if (v27 <= 0.0)
          {
            if (v27 < 0.0)
            {
              v26 = v26 - v27;
            }
          }

          else
          {
            if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
            {
              sub_10006699C();
            }

            [qword_1000ACBD8 setBool:1 forKey:@"NeedSystemTimeUpdate"];
          }

          [qword_1000ACBD8 setDouble:@"RTCTicksDelta" forKey:v26];
          [qword_1000ACBD8 setDouble:@"LastKnownRTCTicks" forKey:v18];
          v34 = qword_1000AB7E8;
          if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
          {
            *buf = 134219264;
            *&buf[4] = v18;
            *&buf[12] = 2048;
            *&buf[14] = v15;
            *&buf[22] = 2048;
            v101 = v20;
            *v102 = 2048;
            *&v102[2] = v25;
            v103 = 2048;
            v104 = v26;
            v105 = 2048;
            v106 = v28;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "RTC reset detected. Current ticks %lf < saved ticks %lf. Last known ticks %lf, old delta %lf, new delta %lf, seconds lost since power off %lf", buf, 0x3Eu);
          }
        }
      }
    }

    else
    {
      v23 = v68;
      if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
      {
        sub_100066A04();
      }
    }
  }

  else
  {
    v23 = v68;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100066A40();
    }
  }

  objc_autoreleasePoolPop(v12);
  if ([qword_1000ACBD8 objectForKey:@"bdcEnableOverride"])
  {
    v35 = [qword_1000ACBD8 BOOLForKey:@"bdcEnableOverride"];
    v36 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v35;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "bdcEnable override %d", buf, 8u);
      if ((v35 & 1) == 0)
      {
        v36 = qword_1000AB7E8;
LABEL_75:
        sub_100066A7C(v36);
        goto LABEL_45;
      }
    }

    else if ((v35 & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  v37 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v38 = dispatch_queue_create("BDCManagerQueue", v37);
  v23->_managerQueue = v38;
  if (!v38)
  {
    sub_100066CDC();
    goto LABEL_45;
  }

  v39 = objc_autoreleasePoolPush();
  if (([objc_msgSend(qword_1000ACBD8 stringForKey:{@"DataFormatVersion", "isEqualToString:", @"2.9"}] & 1) == 0)
  {
    [qword_1000ACBD8 setObject:@"2.9" forKey:@"DataFormatVersion"];
  }

  v40 = sub_100042098();
  if (!v40 || (v41 = v40, ![v40 length]))
  {
    v45 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "NULL serial number returned by BTR", buf, 2u);
    }

    goto LABEL_44;
  }

  v42 = [qword_1000ACBD8 stringForKey:@"BatterySerialNumber"];
  if (v42)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
      {
        sub_100066AD4();
      }

      goto LABEL_49;
    }
  }

  if ([v42 isEqualToString:v41])
  {
LABEL_49:
    v44 = 0;
    goto LABEL_50;
  }

  [qword_1000ACBD8 setObject:v41 forKey:@"BatterySerialNumber"];
  v43 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Battery change detected", buf, 2u);
  }

  v44 = 1;
LABEL_50:
  v46 = objc_opt_new();
  v23->_agents = v46;
  if (!v46)
  {
    sub_100066C7C();
LABEL_44:
    objc_autoreleasePoolPop(v39);
LABEL_45:

    return 0;
  }

  v98[0] = @"BDC_Once";
  v97[0] = @"DataGroupName";
  v97[1] = @"DataFilePath";
  v98[1] = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
  v97[2] = @"DataFormatVersion";
  v98[2] = sub_100039FB4(@"BDC_Data_Format_Version", 3u);
  v97[3] = @"DataCollectionPeriod";
  v98[3] = sub_100039FB4(@"BDC_Once", 0);
  v97[4] = @"DataRetentionPeriod";
  v98[4] = sub_100039FB4(@"BDC_Once", 1u);
  v97[5] = @"DataCollationPeriod";
  v98[5] = sub_100039FB4(@"BDC_Once", 2u);
  v97[6] = @"BatteryChanged";
  v98[6] = [NSNumber numberWithBool:v44];
  v98[7] = &__kCFBooleanTrue;
  v97[7] = @"DataCollectionOnce";
  v97[8] = @"DataNeverPrune";
  v98[8] = &__kCFBooleanTrue;
  v96[0] = @"ChemID";
  v96[1] = @"AlgoChemID";
  v97[9] = @"DataColumnNames";
  v96[2] = @"EEEE";
  v96[3] = @"YWW";
  v96[4] = @"DesignCapacity";
  v96[5] = @"GasGaugeFirmwareVersion";
  v98[9] = [NSArray arrayWithObjects:v96 count:6];
  v99[0] = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:10];
  v95[0] = @"BDC_Daily";
  v94[0] = @"DataGroupName";
  v94[1] = @"DataFilePath";
  v95[1] = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
  v94[2] = @"DataFormatVersion";
  v95[2] = sub_100039FB4(@"BDC_Data_Format_Version", 3u);
  v94[3] = @"DataCollectionPeriod";
  v95[3] = sub_100039FB4(@"BDC_Daily", 0);
  v94[4] = @"DataRetentionPeriod";
  v95[4] = sub_100039FB4(@"BDC_Daily", 1u);
  v94[5] = @"DataCollationPeriod";
  v95[5] = sub_100039FB4(@"BDC_Daily", 2u);
  v94[6] = @"BatteryChanged";
  v95[6] = [NSNumber numberWithBool:v44];
  v94[7] = @"DataColumnNames";
  v93[0] = @"WeightedRa";
  v93[1] = @"Qmax";
  v93[2] = @"CycleCount";
  v93[3] = @"NominalChargeCapacity";
  v93[4] = @"TimeAtHighSoc";
  v93[5] = @"ChargingVoltage";
  v93[6] = @"BHServiceFlags";
  v93[7] = @"BHCalibrationFlags";
  v93[8] = @"MaxCapacityPercent";
  v95[7] = [NSArray arrayWithObjects:v93 count:9];
  v99[1] = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:8];
  v92[0] = @"BDC_Weekly";
  v91[0] = @"DataGroupName";
  v91[1] = @"DataFilePath";
  v92[1] = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
  v91[2] = @"DataFormatVersion";
  v92[2] = sub_100039FB4(@"BDC_Data_Format_Version", 3u);
  v91[3] = @"DataCollectionPeriod";
  v92[3] = sub_100039FB4(@"BDC_Weekly", 0);
  v91[4] = @"DataRetentionPeriod";
  v92[4] = sub_100039FB4(@"BDC_Weekly", 1u);
  v91[5] = @"DataCollationPeriod";
  v92[5] = sub_100039FB4(@"BDC_Weekly", 2u);
  v91[6] = @"BatteryChanged";
  v92[6] = [NSNumber numberWithBool:v44];
  v91[7] = @"DataColumnNames";
  v90[0] = @"RaTableRaw";
  v90[1] = @"TotalOperatingTime";
  v90[2] = @"GasGaugeFirmwareVersion";
  v90[3] = @"LowVoltageResidencyCounters";
  v90[4] = @"BatteryAuth";
  v92[7] = [NSArray arrayWithObjects:v90 count:5];
  v99[2] = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:8];
  v89[0] = @"BDC_SBC";
  v88[0] = @"DataGroupName";
  v88[1] = @"DataFilePath";
  v89[1] = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
  v88[2] = @"DataFormatVersion";
  v89[2] = sub_100039FB4(@"BDC_Data_Format_Version", 3u);
  v88[3] = @"DataCollectionPeriod";
  v89[3] = sub_100039FB4(@"BDC_SBC", 0);
  v88[4] = @"DataRetentionPeriod";
  v89[4] = sub_100039FB4(@"BDC_SBC", 1u);
  v88[5] = @"DataCollationPeriod";
  v89[5] = sub_100039FB4(@"BDC_SBC", 2u);
  v88[6] = @"BatteryChanged";
  v89[6] = [NSNumber numberWithBool:v44];
  v89[7] = &__kCFBooleanTrue;
  v88[7] = @"DataCollectionAtSBC";
  v88[8] = @"DataColumnNames";
  v87[0] = @"PresentDOD";
  v87[1] = @"CurrentCapacity";
  v87[2] = @"IsCharging";
  v87[3] = @"Temperature";
  v87[4] = @"Amperage";
  v87[5] = @"InstantAmperage";
  v87[6] = @"Voltage";
  v87[7] = @"StateOfCharge";
  v87[8] = @"ChargeAccum";
  v87[9] = @"ResScale";
  v87[10] = @"RSS";
  v87[11] = @"ITMiscStatus";
  v87[12] = @"AccumulatedSystemLoad";
  v87[13] = @"AccumulatedSystemPowerIn";
  v87[14] = @"VirtualTemperature";
  v87[15] = @"SystemVoltageIn";
  v87[16] = @"SystemCurrentIn";
  v87[17] = @"Watts";
  v89[8] = [NSArray arrayWithObjects:v87 count:18];
  v99[3] = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:9];
  v86[0] = @"BDC_OBC";
  v85[0] = @"DataGroupName";
  v85[1] = @"DataFilePath";
  v86[1] = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
  v85[2] = @"DataFormatVersion";
  v86[2] = sub_100039FB4(@"BDC_Data_Format_Version", 3u);
  v85[3] = @"DataCollectionPeriod";
  v86[3] = sub_100039FB4(@"BDC_OBC", 0);
  v85[4] = @"DataRetentionPeriod";
  v86[4] = sub_100039FB4(@"BDC_OBC", 1u);
  v85[5] = @"DataCollationPeriod";
  v86[5] = sub_100039FB4(@"BDC_OBC", 2u);
  v85[6] = @"BatteryChanged";
  v86[6] = [NSNumber numberWithBool:v44];
  v86[7] = &__kCFBooleanTrue;
  v85[7] = @"DataCollectAtPowerSourceChange";
  v85[8] = @"DataColumnNames";
  v84[0] = @"FamilyCode";
  v84[1] = @"ExternalConnected";
  v84[2] = @"AppleRawExternalConnected";
  v84[3] = @"ChargingOverride";
  v84[4] = @"NotChargingReason";
  v84[5] = @"VacVoltageLimit";
  v86[8] = [NSArray arrayWithObjects:v84 count:6];
  v99[4] = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:9];
  v83[0] = @"BDC_AMA";
  v82[0] = @"DataGroupName";
  v82[1] = @"DataFilePath";
  v83[1] = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
  v82[2] = @"DataFormatVersion";
  v83[2] = sub_100039FB4(@"BDC_Data_Format_Version", 3u);
  v82[3] = @"DataCollectionPeriod";
  v83[3] = sub_100039FB4(@"BDC_AMA", 0);
  v82[4] = @"DataRetentionPeriod";
  v83[4] = sub_100039FB4(@"BDC_AMA", 1u);
  v82[5] = @"DataCollationPeriod";
  v83[5] = sub_100039FB4(@"BDC_AMA", 2u);
  v82[6] = @"BatteryChanged";
  v83[6] = [NSNumber numberWithBool:v44];
  v83[7] = &__kCFBooleanTrue;
  v82[7] = @"SkipCSVUsePowerlog";
  v82[8] = @"useBTM";
  v83[8] = &__kCFBooleanTrue;
  v82[9] = @"DataColumnNames";
  v81[0] = @"Voltage";
  v81[1] = @"InstantAmperage";
  v81[2] = @"ChargeAccum";
  v81[3] = @"PresentDOD";
  v81[4] = @"AlgoTemperature";
  v81[5] = @"VirtualTemperature";
  v83[9] = [NSArray arrayWithObjects:v81 count:6];
  v99[5] = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:10];
  v80[0] = @"BDC_SmartCharging";
  v79[0] = @"DataGroupName";
  v79[1] = @"DataFilePath";
  v80[1] = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
  v79[2] = @"DataFormatVersion";
  v80[2] = sub_100039FB4(@"BDC_Data_Format_Version", 3u);
  v79[3] = @"DataCollectionPeriod";
  v80[3] = sub_100039FB4(@"BDC_SmartCharging", 0);
  v79[4] = @"DataRetentionPeriod";
  v80[4] = sub_100039FB4(@"BDC_SmartCharging", 1u);
  v79[5] = @"DataCollationPeriod";
  v80[5] = sub_100039FB4(@"BDC_SmartCharging", 2u);
  v79[6] = @"BatteryChanged";
  v80[6] = [NSNumber numberWithBool:v44];
  v80[7] = &__kCFBooleanTrue;
  v79[7] = @"useSC";
  v79[8] = @"DataColumnNames";
  v78[0] = @"ChargingState";
  v78[1] = @"InflowState";
  v78[2] = @"ChargeLimit";
  v78[3] = @"CheckPoint";
  v78[4] = @"DecisionMaker";
  v78[5] = @"ModeOfOperation";
  v80[8] = [NSArray arrayWithObjects:v78 count:6];
  v99[6] = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:9];
  v47 = [NSArray arrayWithObjects:v99 count:7];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v48 = [(NSArray *)v47 countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v73;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v73 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v72 + 1) + 8 * i);
        v53 = &stru_100099F78;
        if (([objc_msgSend(v52 objectForKeyedSubscript:{@"useBTM", "BOOLValue"}] & 1) == 0)
        {
          if ([objc_msgSend(v52 objectForKeyedSubscript:{@"useSC", "BOOLValue"}])
          {
            v53 = &stru_100099F98;
          }

          else
          {
            v53 = &stru_100099FE0;
          }
        }

        v54 = [[BatteryDataCollectionAgent alloc] initWithParams:v52 collectionBlock:v53];
        if (v54)
        {
          v55 = v54;
          [(NSMutableArray *)v68->_agents addObject:v54];
        }
      }

      v49 = [(NSArray *)v47 countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v49);
  }

  [NSError _setFileNameLocalizationEnabled:0];
  v23 = v68;
  dispatch_async(v68->_managerQueue, &stru_100099D68);
  out_token = 0;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v68->_managerQueue, &stru_100099D88);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10003A38C;
  handler[3] = &unk_100099E18;
  handler[4] = v68;
  v69 = 0;
  v56 = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
  v57 = [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v56 attributes:1 error:0, &v69];
  v58 = qword_1000AB7E8;
  if ((v57 & 1) == 0)
  {
    sub_100066B10(qword_1000AB7E8, v56, &v69);
    goto LABEL_44;
  }

  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v56;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "BDC data path %@", buf, 0xCu);
  }

  v59 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v68->_managerQueue);
  v68->_pruningTimer = v59;
  if (!v59)
  {
    sub_100066C24();
    goto LABEL_44;
  }

  v60 = [(NSNull *)sub_100039FB4(@"BDC_Pruning_Period" intValue];
  dispatch_source_set_event_handler(v68->_pruningTimer, handler);
  pruningTimer = v68->_pruningTimer;
  v62 = dispatch_time(0x8000000000000000, 1000);
  dispatch_source_set_timer(pruningTimer, v62, 1000000000 * v60, 0xF4240uLL);
  v63 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v60;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Pruning timer %d s", buf, 8u);
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v68 name:"systemTimeChanged" object:NSSystemClockDidChangeNotification, 0];
  managerQueue = v68->_managerQueue;
  v138[0] = -1;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10003E37C;
  v101 = COERCE_DOUBLE(&unk_10009A000);
  *v102 = 0;
  if (notify_register_dispatch("com.apple.powerd.bdc.get_current_time", v138, managerQueue, buf) && os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_100066BB4();
  }

  objc_autoreleasePoolPop(v39);
  return v23;
}

- (void)dealloc
{
  managerQueue = self->_managerQueue;
  if (managerQueue)
  {
    dispatch_release(managerQueue);
  }

  pruningTimer = self->_pruningTimer;
  if (pruningTimer)
  {
    dispatch_source_cancel(pruningTimer);
    dispatch_release(self->_pruningTimer);
  }

  if (qword_1000ACB88)
  {
    dlclose(qword_1000ACB88);
  }

  qword_1000ACB88 = 0;

  qword_1000ACBD8 = 0;
  qword_1000ACBB0 = 0;

  qword_1000ACBA8 = 0;
  qword_1000ACB98 = 0;

  qword_1000ACBA0 = 0;
  v5.receiver = self;
  v5.super_class = BatteryDataCollectionManager;
  [(BatteryDataCollectionManager *)&v5 dealloc];
}

- (void)start
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B070;
  block[3] = &unk_100099E18;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

- (void)stop
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B21C;
  block[3] = &unk_100099E18;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

- (void)systemTimeChanged
{
  v2 = +[NSDate now];
  sub_10000E578();
  v4 = v3;
  [qword_1000ACBD8 doubleForKey:@"ReferenceRTCTicks"];
  v6 = v5;
  v7 = [qword_1000ACBD8 objectForKey:@"ReferenceWalltime"];
  v8 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Current time %@", buf, 0xCu);
  }

  if (v6 == 0.0 || v7 == 0)
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_1000670F0();
    }
  }

  else
  {
    [(NSDate *)v2 timeIntervalSinceDate:v7];
    if (v10 >= 0.0)
    {
      v11 = qword_1000ACBD8;
      objc_sync_enter(qword_1000ACBD8);
      if (![qword_1000ACBD8 BOOLForKey:@"NeedSystemTimeUpdate"])
      {
        objc_sync_exit(v11);
        return;
      }

      [qword_1000ACBD8 doubleForKey:@"RTCTicksDelta"];
      v13 = v12;
      [(NSDate *)v2 timeIntervalSinceDate:sub_10000E288()];
      v15 = v14;
      if (v14 <= 0.0)
      {
        if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
        {
          sub_10006712C();
        }
      }

      else
      {
        [qword_1000ACBD8 setDouble:@"RTCTicksDelta" forKey:v13 + v14];
        [qword_1000ACBD8 setObject:v2 forKey:@"LastKnownWalltime"];
        [qword_1000ACBD8 setDouble:@"LastKnownRTCTicks" forKey:v4];
        [qword_1000ACBD8 setBool:0 forKey:@"NeedSystemTimeUpdate"];
        v16 = qword_1000AB7E8;
        if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413314;
          *&buf[4] = v2;
          v21 = 2048;
          v22 = v13;
          v23 = 2048;
          v24 = v13 + v15;
          v25 = 2048;
          v26 = v15;
          v27 = 2048;
          v28 = v4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating last known wall time to %@, old delta to %lf, new delta %lf, seconds lost %lf, last known rtc ticks %lf", buf, 0x34u);
        }
      }

      objc_sync_exit(v11);
      *buf = 0;
      v17 = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
      v18 = [(NSNull *)v17 stringByAppendingFormat:@"/%@_version%@.csv", @"BDC_Timestamps", @"1.0"];
      if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
      {
        if (![+[NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:"]
        {
          sub_100067194(v17, buf);
          return;
        }

        if (![+[NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:"]
        {
          sub_100067238();
          return;
        }

        [@"reference_rtc_ticks reference:current_rtc_ticks system:{set_system_time\n", "writeToFile:atomically:encoding:error:", v18, 1, 4, 0}time];
      }

      v19 = [NSFileHandle fileHandleForWritingAtPath:v18];
      [(NSFileHandle *)v19 seekToEndOfFile];
      -[NSFileHandle writeData:error:](v19, "writeData:error:", -[NSString dataUsingEncoding:](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%f,%@,%f,%@\n", *&v6, [v7 description], *&v4, -[NSDate description](v2, "description")), "dataUsingEncoding:", 4), 0);
      [(NSFileHandle *)v19 closeFile];
    }
  }
}

@end