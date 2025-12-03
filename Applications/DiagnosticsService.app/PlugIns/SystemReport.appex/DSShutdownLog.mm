@interface DSShutdownLog
+ (BOOL)isValidNumber:(id)number;
+ (id)nullableBoolNumberWithNumber:(id)number;
+ (id)nullableIntegerNumberWithNumber:(id)number;
- (id)processedBatteryShutdownDataEntry:(id)entry;
- (void)addShutdownLogToArray:(id)array usingFormatter:(id)formatter;
@end

@implementation DSShutdownLog

- (void)addShutdownLogToArray:(id)array usingFormatter:(id)formatter
{
  arrayCopy = array;
  formatterCopy = formatter;
  v8 = PLQueryRegistered();
  v9 = DiagnosticLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BatteryQueryForShutdownData: %@", &v17, 0xCu);
    }

    v11 = [v8 objectForKeyedSubscript:@"BatteryShutdownData"];
    if (v11)
    {
      v10 = v11;
      if ([v11 count])
      {
        v12 = 0;
        do
        {
          v13 = [v10 objectAtIndexedSubscript:v12];
          v14 = [(DSShutdownLog *)self processedBatteryShutdownDataEntry:v13];

          if (v14)
          {
            v15 = formatterCopy[2](formatterCopy, v14);
            [arrayCopy addObject:v15];
          }

          ++v12;
        }

        while ([v10 count]> v12);
      }
    }

    else
    {
      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BatteryShutdownData is empty", &v17, 2u);
      }

      v10 = 0;
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17) = 0;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[ERROR] BatteryQueryForShutdownData returned nil", &v17, 2u);
  }
}

- (id)processedBatteryShutdownDataEntry:(id)entry
{
  entryCopy = entry;
  v4 = entryCopy;
  if (entryCopy)
  {
    v5 = [entryCopy objectForKeyedSubscript:@"BatteryShutdownTimestamp"];
    if (v5)
    {
      v6 = +[DSDateFormatter sharedFormatter];
      v7 = [v6 formatterWithType:0];
      v8 = [v7 stringFromDate:v5];

      if (v8)
      {
        v123 = [v4 objectForKeyedSubscript:@"RaTable_1"];
        v119 = numberOrNull(v123);
        v130[0] = v119;
        v116 = [v4 objectForKeyedSubscript:@"RaTable_2"];
        v113 = numberOrNull(v116);
        v130[1] = v113;
        v110 = [v4 objectForKeyedSubscript:@"RaTable_3"];
        v107 = numberOrNull(v110);
        v130[2] = v107;
        v104 = [v4 objectForKeyedSubscript:@"RaTable_4"];
        v101 = numberOrNull(v104);
        v130[3] = v101;
        v98 = [v4 objectForKeyedSubscript:@"RaTable_5"];
        v95 = numberOrNull(v98);
        v130[4] = v95;
        v92 = [v4 objectForKeyedSubscript:@"RaTable_6"];
        v89 = numberOrNull(v92);
        v130[5] = v89;
        v86 = [v4 objectForKeyedSubscript:@"RaTable_7"];
        v83 = numberOrNull(v86);
        v130[6] = v83;
        v80 = [v4 objectForKeyedSubscript:@"RaTable_8"];
        v77 = numberOrNull(v80);
        v130[7] = v77;
        v74 = [v4 objectForKeyedSubscript:@"RaTable_9"];
        v71 = numberOrNull(v74);
        v130[8] = v71;
        v68 = [v4 objectForKeyedSubscript:@"RaTable_10"];
        v65 = numberOrNull(v68);
        v130[9] = v65;
        v62 = [v4 objectForKeyedSubscript:@"RaTable_11"];
        numberOrNull(v62);
        v9 = v126 = v8;
        v130[10] = v9;
        v10 = [v4 objectForKeyedSubscript:@"RaTable_12"];
        v11 = numberOrNull(v10);
        v130[11] = v11;
        v12 = [v4 objectForKeyedSubscript:@"RaTable_13"];
        v13 = numberOrNull(v12);
        v130[12] = v13;
        v14 = [v4 objectForKeyedSubscript:@"RaTable_14"];
        v15 = numberOrNull(v14);
        v130[13] = v15;
        v16 = [v4 objectForKeyedSubscript:@"RaTable_15"];
        numberOrNull(v16);
        v17 = v122 = v5;
        v130[14] = v17;
        v125 = [NSArray arrayWithObjects:v130 count:15];

        v120 = [v4 objectForKeyedSubscript:@"DLOG_0"];
        v117 = numberOrNull(v120);
        v129[0] = v117;
        v114 = [v4 objectForKeyedSubscript:@"DLOG_1"];
        v111 = numberOrNull(v114);
        v129[1] = v111;
        v108 = [v4 objectForKeyedSubscript:@"DLOG_2"];
        v105 = numberOrNull(v108);
        v129[2] = v105;
        v102 = [v4 objectForKeyedSubscript:@"DLOG_3"];
        v99 = numberOrNull(v102);
        v129[3] = v99;
        v96 = [v4 objectForKeyedSubscript:@"DLOG_4"];
        v93 = numberOrNull(v96);
        v129[4] = v93;
        v90 = [v4 objectForKeyedSubscript:@"DLOG_5"];
        v87 = numberOrNull(v90);
        v129[5] = v87;
        v84 = [v4 objectForKeyedSubscript:@"DLOG_6"];
        v81 = numberOrNull(v84);
        v129[6] = v81;
        v78 = [v4 objectForKeyedSubscript:@"DLOG_7"];
        v75 = numberOrNull(v78);
        v129[7] = v75;
        v72 = [v4 objectForKeyedSubscript:@"DLOG_8"];
        v69 = numberOrNull(v72);
        v129[8] = v69;
        v66 = [v4 objectForKeyedSubscript:@"DLOG_9"];
        v63 = numberOrNull(v66);
        v129[9] = v63;
        v60 = [v4 objectForKeyedSubscript:@"DLOG_10"];
        v58 = numberOrNull(v60);
        v129[10] = v58;
        v56 = [v4 objectForKeyedSubscript:@"DLOG_11"];
        v54 = numberOrNull(v56);
        v129[11] = v54;
        v52 = [v4 objectForKeyedSubscript:@"DLOG_12"];
        v50 = numberOrNull(v52);
        v129[12] = v50;
        v48 = [v4 objectForKeyedSubscript:@"DLOG_13"];
        v46 = numberOrNull(v48);
        v129[13] = v46;
        v44 = [v4 objectForKeyedSubscript:@"DLOG_14"];
        v42 = numberOrNull(v44);
        v129[14] = v42;
        v40 = [v4 objectForKeyedSubscript:@"DLOG_15"];
        v18 = numberOrNull(v40);
        v129[15] = v18;
        v19 = [v4 objectForKeyedSubscript:@"DLOG_16"];
        v20 = numberOrNull(v19);
        v129[16] = v20;
        v21 = [v4 objectForKeyedSubscript:@"DLOG_17"];
        v22 = numberOrNull(v21);
        v129[17] = v22;
        v23 = [v4 objectForKeyedSubscript:@"DLOG_18"];
        v24 = numberOrNull(v23);
        v129[18] = v24;
        v25 = [v4 objectForKeyedSubscript:@"DLOG_19"];
        v26 = numberOrNull(v25);
        v129[19] = v26;
        v124 = [NSArray arrayWithObjects:v129 count:20];

        v128[0] = v126;
        v127[0] = @"timestamp";
        v127[1] = @"previousUIPercent";
        v121 = [v4 objectForKeyedSubscript:@"UISOC"];
        v118 = numberOrNull(v121);
        v128[1] = v118;
        v127[2] = @"temperature";
        v115 = [v4 objectForKeyedSubscript:@"Temperature"];
        v112 = numberOrNull(v115);
        v128[2] = v112;
        v127[3] = @"presentDepthOfDischarge";
        v109 = [v4 objectForKeyedSubscript:@"PresentDOD"];
        v106 = numberOrNull(v109);
        v128[3] = v106;
        v127[4] = @"lifeTimeMaxRa08";
        v103 = [v4 objectForKeyedSubscript:@"MaximumRa0-8"];
        v100 = numberOrNull(v103);
        v128[4] = v100;
        v127[5] = @"nominalChargeCapacity";
        v97 = [v4 objectForKeyedSubscript:@"NominalChargeCapacity"];
        v94 = numberOrNull(v97);
        v128[5] = v94;
        v127[6] = @"previousNominalChargeCapacity";
        v91 = [v4 objectForKeyedSubscript:@"NominalChargeCapacityPrevious"];
        v88 = numberOrNull(v91);
        v128[6] = v88;
        v127[7] = @"fullChargeCapacity";
        v85 = [v4 objectForKeyedSubscript:@"FullChargeCapacity"];
        v82 = numberOrNull(v85);
        v128[7] = v82;
        v127[8] = @"previousFullChargeCapacity";
        v79 = [v4 objectForKeyedSubscript:@"FullChargeCapacityPrevious"];
        v76 = numberOrNull(v79);
        v128[8] = v76;
        v127[9] = @"remainingCapacity";
        v73 = [v4 objectForKeyedSubscript:@"RemainingCapacity"];
        v70 = numberOrNull(v73);
        v128[9] = v70;
        v127[10] = @"previousRemainingCapacity";
        v67 = [v4 objectForKeyedSubscript:@"RemainingCapacityPrevious"];
        v64 = numberOrNull(v67);
        v128[10] = v64;
        v127[11] = @"cycleCount";
        v61 = [v4 objectForKeyedSubscript:@"CycleCount"];
        v59 = numberOrNull(v61);
        v128[11] = v59;
        v127[12] = @"lifetimeMaxDischargeCurrent";
        v57 = [v4 objectForKeyedSubscript:@"MaximumDischargeCurrent"];
        v55 = numberOrNull(v57);
        v128[12] = v55;
        v127[13] = @"lifetimeTimeAbove95Percent";
        v53 = [v4 objectForKeyedSubscript:@"TimeAbove95Perc"];
        v51 = numberOrNull(v53);
        v128[13] = v51;
        v127[14] = @"voltage";
        v49 = [v4 objectForKeyedSubscript:@"Voltage"];
        v47 = numberOrNull(v49);
        v128[14] = v47;
        v127[15] = @"previousVoltage";
        v45 = [v4 objectForKeyedSubscript:@"VoltagePrevious"];
        v43 = numberOrNull(v45);
        v128[15] = v43;
        v127[16] = @"current";
        v41 = [v4 objectForKeyedSubscript:@"AverageCurrent"];
        v39 = numberOrNull(v41);
        v128[16] = v39;
        v127[17] = @"previousCurrent";
        v38 = [v4 objectForKeyedSubscript:@"AverageCurrentPrevious"];
        v37 = numberOrNull(v38);
        v128[17] = v37;
        v127[18] = @"lifetimeCyclesSincePreviousQmax";
        v27 = [v4 objectForKeyedSubscript:@"CycleCountLastQmax"];
        v28 = numberOrNull(v27);
        v128[18] = v28;
        v127[19] = @"resistanceScaleValue";
        v29 = [v4 objectForKeyedSubscript:@"ResScale"];
        v30 = numberOrNull(v29);
        v128[19] = v30;
        v127[20] = @"steadyStateResistance";
        v31 = [v4 objectForKeyedSubscript:@"RSS"];
        v32 = numberOrNull(v31);
        v128[20] = v32;
        v128[21] = v125;
        v127[21] = @"rawRaData";
        v127[22] = @"averageCurrentSamples";
        v128[22] = v124;
        v127[23] = @"upoReboot";
        v33 = [v4 objectForKeyedSubscript:@"UpoReboot"];
        v34 = [DSShutdownLog nullableBoolNumberWithNumber:v33];
        v128[23] = v34;
        v35 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:24];

        v8 = v126;
        v5 = v122;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

+ (id)nullableBoolNumberWithNumber:(id)number
{
  numberCopy = number;
  if ([DSShutdownLog isValidNumber:numberCopy])
  {
    +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [numberCopy BOOLValue]);
  }

  else
  {
    +[NSNull null];
  }
  v4 = ;

  return v4;
}

+ (id)nullableIntegerNumberWithNumber:(id)number
{
  numberCopy = number;
  if ([DSShutdownLog isValidNumber:numberCopy])
  {
    +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [numberCopy integerValue]);
  }

  else
  {
    +[NSNull null];
  }
  v4 = ;

  return v4;
}

+ (BOOL)isValidNumber:(id)number
{
  if (number)
  {
    numberCopy = number;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end