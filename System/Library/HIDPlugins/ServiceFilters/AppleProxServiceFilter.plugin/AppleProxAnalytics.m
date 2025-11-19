@interface AppleProxAnalytics
- ($E2E8AC58DDA873CD7410A288503FF1B0)lastActiveStats;
- (AppleProxAnalytics)init;
- (BOOL)sendEvent:(id)a3 event:(id)a4;
- (id)_floatToNsIntegerNumber:(float)a3;
- (id)_floatToNsNumber:(float)a3;
- (void)aggregateCallEvent:(id *)a3;
- (void)dealloc;
- (void)handleActiveStatsReport:(id *)a3;
- (void)handleAtlantisProxReleaseEvent:(id *)a3;
- (void)handleCallEvent:(id *)a3;
- (void)handleCurrentReport:(id *)a3;
- (void)handleFaultsReport:(id *)a3 size:(unint64_t)a4;
- (void)handleResidencyReport:(id *)a3 size:(unint64_t)a4;
- (void)resetCallAggregations;
- (void)sendDayEvent;
- (void)setAggTimeout:(double)a3;
- (void)setQueue:(id)a3;
@end

@implementation AppleProxAnalytics

- (AppleProxAnalytics)init
{
  v6.receiver = self;
  v6.super_class = AppleProxAnalytics;
  v2 = [(AppleProxAnalytics *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_aggTimeout = 86400.0;
    [(AppleProxAnalytics *)v2 resetCallAggregations];
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  aggTimer = self->_aggTimer;
  if (aggTimer)
  {
    dispatch_source_cancel(aggTimer);
  }

  v4.receiver = self;
  v4.super_class = AppleProxAnalytics;
  [(AppleProxAnalytics *)&v4 dealloc];
}

- (void)setQueue:(id)a3
{
  objc_storeStrong(&self->_queue, a3);
  [(AppleProxAnalytics *)self aggTimeout];

  [(AppleProxAnalytics *)self setAggTimeout:?];
}

- (void)setAggTimeout:(double)a3
{
  self->_aggTimeout = a3;
  aggTimer = self->_aggTimer;
  if (aggTimer)
  {
    dispatch_source_cancel(aggTimer);
  }

  queue = self->_queue;
  if (queue)
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    v7 = self->_aggTimer;
    self->_aggTimer = v6;

    v8 = self->_aggTimer;
    v9 = dispatch_walltime(0, (self->_aggTimeout * 1000000000.0));
    dispatch_source_set_timer(v8, v9, (self->_aggTimeout * 1000000000.0), 0x3B9ACA00uLL);
    objc_initWeak(&location, self);
    v10 = self->_aggTimer;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2D00;
    v11[3] = &unk_146F0;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v10, v11);
    dispatch_resume(self->_aggTimer);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (id)_floatToNsNumber:(float)a3
{
  v5 = [NSNumber numberWithFloat:v3];

  return v5;
}

- (id)_floatToNsIntegerNumber:(float)a3
{
  v5 = [NSNumber numberWithLong:llroundf(a3), v3];

  return v5;
}

- (void)handleCallEvent:(id *)a3
{
  [(AppleProxAnalytics *)self aggregateCallEvent:?];
  v5 = LoggingProx();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a3->var0;
    var42 = a3->var42;
    *buf = 134218240;
    v78 = var0;
    v79 = 1024;
    v80 = var42;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "handleCallPacket: call duration %f release_condition=%u", buf, 0x12u);
  }

  v8 = +[NSDate now];
  [v8 timeIntervalSinceDate:self->_lastActiveStatsDate];
  v10 = v9 < 0.1;

  if (v10)
  {
    v11 = *(&self->_lastActiveStats.activeTimeSec + 1);
  }

  else
  {
    v11 = 0;
  }

  v74 = [@"com.apple.aop.prox." stringByAppendingString:@"call"];
  v75[0] = @"avg_reflect_estimate";
  v73 = [NSNumber numberWithUnsignedShort:a3->var6];
  v76[0] = v73;
  v75[1] = @"call_duration";
  *&v12 = a3->var0;
  v72 = [(AppleProxAnalytics *)self _floatToNsNumber:v12];
  v76[1] = v72;
  v75[2] = @"call_pickups";
  *&v13 = a3->var1;
  v71 = [(AppleProxAnalytics *)self _floatToNsNumber:v13];
  v76[2] = v71;
  v75[3] = @"final_temp";
  v70 = [NSNumber numberWithUnsignedShort:a3->var8];
  v76[3] = v70;
  v75[4] = @"initial_temp";
  v69 = [NSNumber numberWithUnsignedShort:a3->var7];
  v76[4] = v69;
  v75[5] = @"max_diff_temp_1s";
  v68 = [NSNumber numberWithUnsignedShort:a3->var12];
  v76[5] = v68;
  v75[6] = @"max_temp";
  v67 = [NSNumber numberWithUnsignedShort:a3->var9];
  v76[6] = v67;
  v75[7] = @"mean_abs_diff_temp_1s";
  v66 = [NSNumber numberWithUnsignedShort:a3->var14];
  v76[7] = v66;
  v75[8] = @"mean_temp";
  v65 = [NSNumber numberWithUnsignedShort:a3->var11];
  v76[8] = v65;
  v75[9] = @"min_diff_temp_1s";
  v64 = [NSNumber numberWithUnsignedShort:a3->var13];
  v76[9] = v64;
  v75[10] = @"min_in_spec";
  v63 = [NSNumber numberWithBool:a3->var20];
  v76[10] = v63;
  v75[11] = @"min_temp";
  v62 = [NSNumber numberWithUnsignedShort:a3->var10];
  v76[11] = v62;
  v75[12] = @"num_temp_samples";
  v61 = [NSNumber numberWithUnsignedInt:a3->var3];
  v76[12] = v61;
  v75[13] = @"range_temp";
  v60 = [NSNumber numberWithUnsignedShort:a3->var16];
  v76[13] = v60;
  v75[14] = @"range_temp_time";
  v59 = [NSNumber numberWithUnsignedShort:a3->var17];
  v76[14] = v59;
  v75[15] = @"std_temp";
  v58 = [NSNumber numberWithUnsignedShort:a3->var15];
  v76[15] = v58;
  v75[16] = @"temperature_range_int";
  v57 = [NSNumber numberWithUnsignedShort:a3->var18];
  v76[16] = v57;
  v75[17] = @"temperature_tracking_enabled";
  v56 = [NSNumber numberWithBool:a3->var21];
  v76[17] = v56;
  v75[18] = @"was_BH";
  v55 = [NSNumber numberWithBool:a3->var22];
  v76[18] = v55;
  v75[19] = @"was_HA";
  v54 = [NSNumber numberWithBool:a3->var23];
  v76[19] = v54;
  v75[20] = @"was_SM";
  v53 = [NSNumber numberWithBool:a3->var24];
  v76[20] = v53;
  v75[21] = @"external_releases";
  v52 = [NSNumber numberWithUnsignedShort:a3->var19];
  v76[21] = v52;
  v75[22] = @"begin_field_baseline_kcpsps";
  *&v14 = a3->var25;
  v51 = [(AppleProxAnalytics *)self _floatToNsNumber:v14];
  v76[22] = v51;
  v75[23] = @"begin_delta_baseline_kcpsps";
  *&v15 = a3->var26;
  v50 = [(AppleProxAnalytics *)self _floatToNsNumber:v15];
  v76[23] = v50;
  v75[24] = @"begin_delta_baseline_pct";
  *&v16 = a3->var27;
  v49 = [(AppleProxAnalytics *)self _floatToNsNumber:v16];
  v76[24] = v49;
  v75[25] = @"end_field_baseline_kcpsps";
  *&v17 = a3->var28;
  v48 = [(AppleProxAnalytics *)self _floatToNsNumber:v17];
  v76[25] = v48;
  v75[26] = @"end_delta_baseline_kcpsps";
  *&v18 = a3->var29;
  v47 = [(AppleProxAnalytics *)self _floatToNsNumber:v18];
  v76[26] = v47;
  v75[27] = @"end_delta_baseline_pct";
  *&v19 = a3->var30;
  v46 = [(AppleProxAnalytics *)self _floatToNsNumber:v19];
  v76[27] = v46;
  v75[28] = @"max_amb_off_head";
  *&v20 = a3->var31;
  v45 = [(AppleProxAnalytics *)self _floatToNsNumber:v20];
  v76[28] = v45;
  v75[29] = @"max_range_trigger_mm";
  *&v21 = a3->var33;
  v44 = [(AppleProxAnalytics *)self _floatToNsNumber:v21];
  v76[29] = v44;
  v75[30] = @"min_range_trigger_mm";
  *&v22 = a3->var34;
  v43 = [(AppleProxAnalytics *)self _floatToNsNumber:v22];
  v76[30] = v43;
  v75[31] = @"mean_range_trigger_mm";
  *&v23 = a3->var35;
  v42 = [(AppleProxAnalytics *)self _floatToNsNumber:v23];
  v76[31] = v42;
  v75[32] = @"max_ambient_trigger_kcpsps";
  *&v24 = a3->var36;
  v41 = [(AppleProxAnalytics *)self _floatToNsNumber:v24];
  v76[32] = v41;
  v75[33] = @"min_signal_trigger_kcpsps";
  *&v25 = a3->var37;
  v26 = [(AppleProxAnalytics *)self _floatToNsNumber:v25];
  v76[33] = v26;
  v75[34] = @"max_range_release_mm";
  *&v27 = a3->var38;
  v28 = [(AppleProxAnalytics *)self _floatToNsNumber:v27];
  v76[34] = v28;
  v75[35] = @"min_range_release_mm";
  *&v29 = a3->var39;
  v30 = [(AppleProxAnalytics *)self _floatToNsNumber:v29];
  v76[35] = v30;
  v75[36] = @"mean_range_release_mm";
  *&v31 = a3->var40;
  v32 = [(AppleProxAnalytics *)self _floatToNsNumber:v31];
  v76[36] = v32;
  v75[37] = @"max_ambient_release_kcpsps";
  *&v33 = a3->var41;
  v34 = [(AppleProxAnalytics *)self _floatToNsNumber:v33];
  v76[37] = v34;
  v75[38] = @"release_condition_v2";
  v35 = [NSNumber numberWithUnsignedChar:a3->var42];
  v76[38] = v35;
  v75[39] = @"pearl_60hz";
  v36 = [NSNumber numberWithBool:v11 != 0];
  v37 = v11;
  v38 = v36;
  v76[39] = v36;
  v75[40] = @"pearl_60hz_time_msec";
  v39 = [NSNumber numberWithUnsignedInt:v37];
  v76[40] = v39;
  v40 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:41];

  [(AppleProxAnalytics *)self sendEvent:v74 event:v40];
  if (a3->var42 == 4)
  {
    +[AppleProxNotificationTTR sendNotificationTTR];
  }
}

- (void)handleResidencyReport:(id *)a3 size:(unint64_t)a4
{
  v7 = [@"com.apple.aop.prox." stringByAppendingString:@"mode_residency"];
  v8 = LoggingProx();
  v9 = a4 - 1;
  v10 = (a4 - 1) >> 2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "handleResidencyReport: %zu modes", buf, 0xCu);
  }

  if (v9 >= 4)
  {
    v11 = 0;
    v12 = &a3->var0 + 1;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    do
    {
      v17[0] = @"residency";
      v14 = [NSNumber numberWithUnsignedInt:*&v12[4 * v11], @"residency"];
      v17[1] = @"mode";
      v18[0] = v14;
      v15 = [NSNumber numberWithUnsignedLong:v11];
      v18[1] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

      [(AppleProxAnalytics *)self sendEvent:v7 event:v16];
      ++v11;
    }

    while (v13 != v11);
  }
}

- (void)handleFaultsReport:(id *)a3 size:(unint64_t)a4
{
  p_var2 = &a3->var2;
  v8 = a3->var2 + 3 > a4;
  v9 = LoggingProx();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_A330(p_var2, a4, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *p_var2;
      *buf = 67109120;
      v20 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "handleFaultsReport: %u counters", buf, 8u);
    }

    v10 = [@"com.apple.aop.prox." stringByAppendingString:@"faults"];
    if (*p_var2)
    {
      v12 = 0;
      var3 = a3->var3;
      do
      {
        v17[0] = @"fault_count";
        v14 = [NSNumber numberWithUnsignedChar:var3[v12], @"fault_count"];
        v17[1] = @"fault_type";
        v18[0] = v14;
        v15 = [NSNumber numberWithUnsignedLong:v12];
        v18[1] = v15;
        v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

        [(AppleProxAnalytics *)self sendEvent:v10 event:v16];
        ++v12;
      }

      while (v12 < *p_var2);
    }
  }
}

- (void)handleActiveStatsReport:(id *)a3
{
  v5 = +[NSDate date];
  lastActiveStatsDate = self->_lastActiveStatsDate;
  self->_lastActiveStatsDate = v5;

  v7 = *&a3->var0;
  LOBYTE(self->_lastActiveStats.pearl60HzTimeMsec) = a3->var2;
  *&self->_lastActiveStats.reportID = v7;
  v8 = LoggingProx();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(&a3->var0 + 1);
    v10 = *(&a3->var1 + 1);
    v11[0] = 67109376;
    v11[1] = v9;
    v12 = 1024;
    v13 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Active stats received: duration %u s, pearl60Hz %u msec", v11, 0xEu);
  }
}

- (void)handleCurrentReport:(id *)a3
{
  v5 = [@"com.apple.aop.prox." stringByAppendingString:@"supplyCurrent"];
  v6 = LoggingProx();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(&a3->var0 + 1);
    v8 = BYTE1(a3->var1);
    *buf = 134218240;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Current reading received - avg: %lld microamps over %u samples", buf, 0x12u);
  }

  v9 = [NSNumber numberWithLongLong:*(&a3->var0 + 1), @"average_current_ua"];
  v12[1] = @"num_current_samples";
  v13[0] = v9;
  v10 = [NSNumber numberWithUnsignedChar:BYTE1(a3->var1)];
  v13[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(AppleProxAnalytics *)self sendEvent:v5 event:v11];
}

- (BOOL)sendEvent:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  analyticsTestCallback = self->_analyticsTestCallback;
  if (analyticsTestCallback)
  {
    analyticsTestCallback[2](analyticsTestCallback, v6, v7);
  }

  else
  {
    AnalyticsSendEvent();
  }

  v9 = LoggingProx();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_A3BC(v6, v7, v9);
  }

  return 1;
}

- (void)aggregateCallEvent:(id *)a3
{
  var4 = a3->var4;
  if (var4)
  {
    LOWORD(v3) = a3->var6;
    self->_aggReflectEstimate = self->_aggReflectEstimate + (v3 * var4);
    self->_aggNumReflectSamples += var4;
  }

  var5 = a3->var5;
  if (var5)
  {
    self->_aggSignalOnhead = self->_aggSignalOnhead + (a3->var2 * var5);
    self->_aggNumOnheadSamples += var5;
  }

  var0 = a3->var0;
  v7 = self->_aggExternalReleases + a3->var19;
  self->_aggReleases = (a3->var1 + self->_aggReleases);
  self->_aggExternalReleases = v7;
  self->_aggSmudgeReleases += a3->var32;
  self->_aggDurationDay = var0 + self->_aggDurationDay;
  v8 = a3->var0;
  if (a3->var0 > 10.0)
  {
    ++self->_aggCallsDay;
  }

  if (v8 > 300.0)
  {
    ++self->_aggLongCallsDay;
  }

  if (a3->var22)
  {
    ++self->_aggBHCallsDay;
  }

  if (a3->var23)
  {
    ++self->_aggHACallsDay;
  }
}

- (void)resetCallAggregations
{
  *&self->_aggReflectEstimate = 0;
  self->_aggDurationDay = 0.0;
  *&self->_aggNumReflectSamples = 0u;
  *&self->_aggReleases = 0u;
  *&self->_aggSmudgeReleases = 0u;
  *&self->_aggLongCallsDay = 0u;
  self->_aggHACallsDay = 0;
}

- (void)sendDayEvent
{
  v3 = LoggingProx();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Send Call Day event", buf, 2u);
  }

  v25 = [@"com.apple.aop.prox." stringByAppendingString:@"call_day"];
  v27[0] = @"avg_reflect_estimate";
  aggNumReflectSamples = self->_aggNumReflectSamples;
  if (aggNumReflectSamples)
  {
    LODWORD(v4) = vcvtas_u32_f32(self->_aggReflectEstimate / aggNumReflectSamples);
  }

  else
  {
    v4 = 0;
  }

  v24 = [NSNumber numberWithUnsignedInt:v4];
  v28[0] = v24;
  v27[1] = @"avg_signal_onhead";
  *&v6 = self->_aggSignalOnhead / self->_aggNumOnheadSamples;
  v23 = [(AppleProxAnalytics *)self _floatToNsNumber:v6];
  v28[1] = v23;
  v27[2] = @"BH_calls_day";
  v22 = [NSNumber numberWithInteger:self->_aggBHCallsDay];
  v28[2] = v22;
  v27[3] = @"calls_day";
  if (self->_aggCallsDay >= 50)
  {
    aggCallsDay = 50;
  }

  else
  {
    aggCallsDay = self->_aggCallsDay;
  }

  v21 = [NSNumber numberWithInteger:aggCallsDay];
  v28[3] = v21;
  v27[4] = @"calls_day_f";
  v8 = [NSNumber numberWithInteger:self->_aggCallsDay];
  v28[4] = v8;
  v27[5] = @"duration_day";
  *&v9 = self->_aggDurationDay;
  v10 = [(AppleProxAnalytics *)self _floatToNsNumber:v9];
  v28[5] = v10;
  v27[6] = @"HA_calls_day";
  v11 = [NSNumber numberWithInteger:self->_aggHACallsDay];
  v28[6] = v11;
  v27[7] = @"long_calls_day";
  if (self->_aggLongCallsDay >= 50)
  {
    aggLongCallsDay = 50;
  }

  else
  {
    aggLongCallsDay = self->_aggLongCallsDay;
  }

  v13 = [NSNumber numberWithInteger:aggLongCallsDay];
  v28[7] = v13;
  v27[8] = @"perc_external_releases";
  LODWORD(v14) = vcvtas_u32_f32((self->_aggExternalReleases * 100.0) / self->_aggReleases);
  v15 = [NSNumber numberWithUnsignedInt:v14];
  v28[8] = v15;
  v27[9] = @"perc_smudge_releases";
  LODWORD(v16) = vcvtas_u32_f32((self->_aggSmudgeReleases * 100.0) / self->_aggReleases);
  v17 = [NSNumber numberWithUnsignedInt:v16];
  v28[9] = v17;
  v27[10] = @"long_calls_day_f";
  v18 = [NSNumber numberWithInteger:self->_aggLongCallsDay];
  v28[10] = v18;
  v27[11] = @"releases";
  v19 = [NSNumber numberWithInteger:self->_aggReleases];
  v28[11] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:12];

  [(AppleProxAnalytics *)self sendEvent:v25 event:v20];
  [(AppleProxAnalytics *)self resetCallAggregations];
}

- (void)handleAtlantisProxReleaseEvent:(id *)a3
{
  v5 = LoggingProx();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a3->var0;
    var1 = a3->var1;
    *buf = 134218240;
    v56 = var0;
    v57 = 1024;
    v58 = var1;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "handleAtlantisProxReleasesEvent: call duration %f release_condition=%u", buf, 0x12u);
  }

  v52 = [@"com.apple.aop.prox." stringByAppendingString:@"atlantis_release"];
  v53[0] = @"call_duration_in_sec";
  *&v8 = a3->var0;
  v51 = [(AppleProxAnalytics *)self _floatToNsNumber:v8];
  v54[0] = v51;
  v53[1] = @"release_condition";
  v50 = [NSNumber numberWithUnsignedChar:a3->var1];
  v54[1] = v50;
  v53[2] = @"call_begin_field_baseline_na";
  *&v9 = a3->var2;
  v49 = [(AppleProxAnalytics *)self _floatToNsNumber:v9];
  v54[2] = v49;
  v53[3] = @"call_begin_ntc_pre_degc";
  *&v10 = a3->var3;
  v48 = [(AppleProxAnalytics *)self _floatToNsIntegerNumber:v10];
  v54[3] = v48;
  v53[4] = @"call_begin_rxamb_na";
  *&v11 = a3->var4;
  v47 = [(AppleProxAnalytics *)self _floatToNsNumber:v11];
  v54[4] = v47;
  v53[5] = @"call_begin_als_lux_level";
  *&v12 = a3->var5;
  v46 = [(AppleProxAnalytics *)self _floatToNsNumber:v12];
  v54[5] = v46;
  v53[6] = @"call_end_field_baseline_na";
  *&v13 = a3->var6;
  v45 = [(AppleProxAnalytics *)self _floatToNsNumber:v13];
  v54[6] = v45;
  v53[7] = @"call_end_ntc_pre_degc";
  *&v14 = a3->var7;
  v44 = [(AppleProxAnalytics *)self _floatToNsIntegerNumber:v14];
  v54[7] = v44;
  v53[8] = @"call_end_rxamb_na";
  *&v15 = a3->var8;
  v43 = [(AppleProxAnalytics *)self _floatToNsNumber:v15];
  v54[8] = v43;
  v53[9] = @"call_end_als_lux_level";
  *&v16 = a3->var9;
  v42 = [(AppleProxAnalytics *)self _floatToNsNumber:v16];
  v54[9] = v42;
  v53[10] = @"temp_corrected_xtalk_at_release";
  *&v17 = a3->var10;
  v41 = [(AppleProxAnalytics *)self _floatToNsNumber:v17];
  v54[10] = v41;
  v53[11] = @"rxpd_at_release_na";
  *&v18 = a3->var11;
  v40 = [(AppleProxAnalytics *)self _floatToNsNumber:v18];
  v54[11] = v40;
  v53[12] = @"als_lux_level_at_release";
  *&v19 = a3->var12;
  v39 = [(AppleProxAnalytics *)self _floatToNsNumber:v19];
  v54[12] = v39;
  v53[13] = @"delta_baseline_error_na";
  *&v20 = a3->var13;
  v38 = [(AppleProxAnalytics *)self _floatToNsNumber:v20];
  v54[13] = v38;
  v53[14] = @"delta_baseline_error_pct";
  *&v21 = a3->var14;
  v22 = [(AppleProxAnalytics *)self _floatToNsNumber:v21];
  v54[14] = v22;
  v53[15] = @"delta_rxpd_at_release_na";
  *&v23 = a3->var15;
  v24 = [(AppleProxAnalytics *)self _floatToNsNumber:v23];
  v54[15] = v24;
  v53[16] = @"delta_ntc_degc";
  *&v25 = a3->var16;
  v26 = [(AppleProxAnalytics *)self _floatToNsIntegerNumber:v25];
  v54[16] = v26;
  v53[17] = @"delta_rxpd_call_end_na";
  *&v27 = a3->var17;
  v28 = [(AppleProxAnalytics *)self _floatToNsNumber:v27];
  v54[17] = v28;
  v53[18] = @"delta_rxpd_release_vs_call_end_na";
  *&v29 = a3->var18;
  v30 = [(AppleProxAnalytics *)self _floatToNsNumber:v29];
  v54[18] = v30;
  v53[19] = @"delta_rxamb_na";
  *&v31 = a3->var19;
  v32 = [(AppleProxAnalytics *)self _floatToNsNumber:v31];
  v54[19] = v32;
  v53[20] = @"delta_als_lux_end";
  *&v33 = a3->var20;
  v34 = [(AppleProxAnalytics *)self _floatToNsNumber:v33];
  v54[20] = v34;
  v53[21] = @"delta_als_lux_at_release";
  *&v35 = a3->var21;
  v36 = [(AppleProxAnalytics *)self _floatToNsNumber:v35];
  v54[21] = v36;
  v37 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:22];

  [(AppleProxAnalytics *)self sendEvent:v52 event:v37];
}

- ($E2E8AC58DDA873CD7410A288503FF1B0)lastActiveStats
{
  pearl60HzTimeMsec_low = LOBYTE(self->_lastActiveStats.pearl60HzTimeMsec);
  v3 = *&self->_lastActiveStats.reportID;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = pearl60HzTimeMsec_low;
  return result;
}

@end