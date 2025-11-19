@interface FMBasebandMetricsController
+ (id)extractFMCellMapCongestionMetricFrom:(id)a3;
+ (id)extractFMCongestionMetricFrom:(id)a3;
- (FMBasebandMetricsController)initWithFMModel:(id)a3 withSubscribedMetrics:(id)a4;
- (FMModel)fmModel;
- (id).cxx_construct;
- (shared_ptr<FMTelemetryObserver>)observer;
- (void)dealloc;
- (void)handleIncomingMetric:(id)a3 withXPCPayload:(dict)a4;
@end

@implementation FMBasebandMetricsController

- (FMModel)fmModel
{
  WeakRetained = objc_loadWeakRetained(&self->_fmModel);

  return WeakRetained;
}

- (FMBasebandMetricsController)initWithFMModel:(id)a3 withSubscribedMetrics:(id)a4
{
  v6 = a3;
  v20 = a4;
  v29.receiver = self;
  v29.super_class = FMBasebandMetricsController;
  v7 = [(FMBasebandMetricsController *)&v29 init];
  v8 = v7;
  val = v7;
  if (v7)
  {
    [(FMBasebandMetricsController *)v7 setFmModel:v6];
    [(FMBasebandMetricsController *)v8 setQueue:dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility.BasebandMetricsController", 0)];
    if ([(FMBasebandMetricsController *)v8 queue])
    {
      v28[0] = 0;
      v28[1] = 0;
      v27 = v28;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v20;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v10)
      {
        v11 = *v24;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v23 + 1) + 8 * i);
            v14 = *(qword_1002DBE98 + 136);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(__dst) = 138412290;
              *(&__dst + 4) = v13;
              _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMBasebandMetricsController]:#D Registering for metric: %@", &__dst, 0xCu);
            }

            v15 = v13;
            v16 = [v13 UTF8String];
            v17 = strlen(v16);
            if (v17 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_100023410();
            }

            v18 = v17;
            if (v17 >= 0x17)
            {
              operator new();
            }

            v31 = v17;
            if (v17)
            {
              memmove(&__dst, v16, v17);
            }

            *(&__dst + v18) = 0;
            sub_100023844(&v27, &__dst);
            if (v31 < 0)
            {
              operator delete(__dst);
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
        }

        while (v10);
      }

      objc_initWeak(&location, val);
      sub_1000238E8();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FAB90();
  }

  return 0;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FABD0();
  }

  if ([(FMBasebandMetricsController *)self queue])
  {
    dispatch_release([(FMBasebandMetricsController *)self queue]);
  }

  v3.receiver = self;
  v3.super_class = FMBasebandMetricsController;
  [(FMBasebandMetricsController *)&v3 dealloc];
}

- (void)handleIncomingMetric:(id)a3 withXPCPayload:(dict)a4
{
  v6 = a3;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FAC0C();
  }

  v7 = *a4.var0.fObj;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  v12 = 0;
  v8 = [WISXPCUtils dictionaryFromPrimitivesXPCDict:&object error:&v12];
  v9 = v12;
  xpc_release(object);
  object = 0;
  v10 = *(qword_1002DBE98 + 136);
  if (v9 || !v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001FAC7C();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001FACE4();
    }

    v11 = [(FMBasebandMetricsController *)self fmModel];
    [v11 handleIncomingMetric:v6 withPayload:v8];
  }
}

+ (id)extractFMCongestionMetricFrom:(id)a3
{
  v3 = a3;
  v63[0] = 0;
  v59 = [WISXPCUtils extractValueFromDict:v3 atKey:@"timestamp" ofExpectedClass:objc_opt_class() error:v63];
  v4 = v63[0];
  v62 = v4;
  v5 = [WISXPCUtils extractValueFromDict:v3 atKey:@"gci" ofExpectedClass:objc_opt_class() error:&v62];
  v6 = v62;

  v61 = v6;
  v7 = [WISXPCUtils extractValueFromDict:v3 atKey:@"subs_id" ofExpectedClass:objc_opt_class() error:&v61];
  v8 = v61;

  v60 = v8;
  v9 = [WISXPCUtils extractValueFromDict:v3 atKey:@"rat_type" ofExpectedClass:objc_opt_class() error:&v60];
  v10 = v60;

  v58 = v10;
  if (v10)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FAD68();
    }

    v11 = 0;
  }

  else
  {
    v57 = v5;
    v54 = v7;
    v51 = v9;
    v56 = [WISXPCUtils extractValueFromDict:v3 atKey:@"arfcn" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v55 = [WISXPCUtils extractValueFromDict:v3 atKey:@"rsrp_ewma" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v53 = [WISXPCUtils extractValueFromDict:v3 atKey:@"rsrq_ewma" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v52 = [WISXPCUtils extractValueFromDict:v3 atKey:@"sinr_ewma" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v50 = [WISXPCUtils extractValueFromDict:v3 atKey:@"dl_bottleneck_score_invalid" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v49 = [WISXPCUtils extractValueFromDict:v3 atKey:@"dl_bottleneck_score_no" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v48 = [WISXPCUtils extractValueFromDict:v3 atKey:@"dl_bottleneck_score_low" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v47 = [WISXPCUtils extractValueFromDict:v3 atKey:@"dl_bottleneck_score_medium" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v46 = [WISXPCUtils extractValueFromDict:v3 atKey:@"dl_bottleneck_score_high" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v45 = [WISXPCUtils extractValueFromDict:v3 atKey:@"ul_bottleneck_score_invalid" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v44 = [WISXPCUtils extractValueFromDict:v3 atKey:@"ul_bottleneck_score_no" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v43 = [WISXPCUtils extractValueFromDict:v3 atKey:@"ul_bottleneck_score_low" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v42 = [WISXPCUtils extractValueFromDict:v3 atKey:@"ul_bottleneck_score_medium" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v41 = [WISXPCUtils extractValueFromDict:v3 atKey:@"ul_bottleneck_score_high" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v40 = [WISXPCUtils extractValueFromDict:v3 atKey:@"data_stall_indicator_avs" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v39 = [WISXPCUtils extractValueFromDict:v3 atKey:@"data_stall_indicator_ul" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v38 = [WISXPCUtils extractValueFromDict:v3 atKey:@"is_subway" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v37 = [WISXPCUtils extractValueFromDict:v3 atKey:@"ps_pref" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v36 = [WISXPCUtils extractValueFromDict:v3 atKey:@"qoe_score" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v35 = [WISXPCUtils extractValueFromDict:v3 atKey:@"qoe_score_cal_duration" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v34 = [FMCongestionMetric alloc];
    v33 = [v59 unsignedLongValue];
    v32 = [v56 unsignedIntValue];
    v31 = [v55 intValue];
    v30 = [v53 intValue];
    v29 = [v52 intValue];
    v28 = [v50 unsignedIntValue];
    v27 = [v49 unsignedIntValue];
    v26 = [v48 unsignedIntValue];
    v25 = [v47 unsignedIntValue];
    v24 = [v46 unsignedIntValue];
    v23 = [v45 unsignedIntValue];
    v22 = [v44 unsignedIntValue];
    v12 = [v43 unsignedIntValue];
    v13 = [v42 unsignedIntValue];
    v14 = [v41 unsignedIntValue];
    v15 = [v40 unsignedIntValue];
    v16 = [v39 unsignedIntValue];
    v17 = [v38 unsignedIntValue];
    v18 = [FMCongestionMetric QoEScoreEnumToNumericValue:v36];
    v19 = [v35 unsignedIntValue];
    v20 = [v37 unsignedIntValue];
    v11 = -[FMCongestionMetric init:gci:arfnc:ratType:rsrp:rsrq:sinr:dlBottleneckScoreInvalid:dlBottleneckScoreNo:dlBottleneckScoreLow:dlBottleneckScoreMedium:dlBottleneckScoreHigh:ulBottleneckScoreInvalid:ulBottleneckScoreNo:ulBottleneckScoreLow:ulBottleneckScoreMedium:ulBottleneckScoreHigh:dataStallIndicatorAVS:dataStallIndicatorUL:isSubway:qoeScore:qoeDuration:psPref:subsId:](v34, "init:gci:arfnc:ratType:rsrp:rsrq:sinr:dlBottleneckScoreInvalid:dlBottleneckScoreNo:dlBottleneckScoreLow:dlBottleneckScoreMedium:dlBottleneckScoreHigh:ulBottleneckScoreInvalid:ulBottleneckScoreNo:ulBottleneckScoreLow:ulBottleneckScoreMedium:ulBottleneckScoreHigh:dataStallIndicatorAVS:dataStallIndicatorUL:isSubway:qoeScore:qoeDuration:psPref:subsId:", v33, v57, v32, v51, v31, v30, __PAIR64__(v28, v29), __PAIR64__(v26, v27), __PAIR64__(v24, v25), __PAIR64__(v22, v23), __PAIR64__(v13, v12), __PAIR64__(v15, v14), __PAIR64__(v17, v16), __PAIR64__(v19, v18), __PAIR64__([v54 unsignedIntValue], v20));

    v5 = v57;
    v7 = v54;
    v9 = v51;
  }

  return v11;
}

+ (id)extractFMCellMapCongestionMetricFrom:(id)a3
{
  v3 = a3;
  v47[0] = 0;
  v33 = [WISXPCUtils extractValueFromDict:v3 atKey:@"timestamp" ofExpectedClass:objc_opt_class() error:v47];
  v4 = v47[0];
  v46 = v4;
  v32 = [WISXPCUtils extractValueFromDict:v3 atKey:@"subs_id" ofExpectedClass:objc_opt_class() error:&v46];
  v5 = v46;

  v45 = v5;
  v31 = [WISXPCUtils extractValueFromDict:v3 atKey:@"rat_type" ofExpectedClass:objc_opt_class() error:&v45];
  v6 = v45;

  v44 = v6;
  v30 = [WISXPCUtils extractValueFromDict:v3 atKey:@"total_duration" ofExpectedClass:objc_opt_class() error:&v44];
  v7 = v44;

  v43 = v7;
  v29 = [WISXPCUtils extractValueFromDict:v3 atKey:@"conn_duration" ofExpectedClass:objc_opt_class() error:&v43];
  v8 = v43;

  v42 = v8;
  v28 = [WISXPCUtils extractValueFromDict:v3 atKey:@"gci" ofExpectedClass:objc_opt_class() error:&v42];
  v9 = v42;

  v41 = v9;
  v27 = [WISXPCUtils extractValueFromDict:v3 atKey:@"arfcn" ofExpectedClass:objc_opt_class() error:&v41];
  v10 = v41;

  v40 = v10;
  v26 = [WISXPCUtils extractValueFromDict:v3 atKey:@"band" ofExpectedClass:objc_opt_class() error:&v40];
  v11 = v40;

  v39 = v11;
  v25 = [WISXPCUtils extractValueFromDict:v3 atKey:@"pci" ofExpectedClass:objc_opt_class() error:&v39];
  v12 = v39;

  v38 = v12;
  v13 = [WISXPCUtils extractValueFromDict:v3 atKey:@"no_data_available" ofExpectedClass:objc_opt_class() error:&v38];
  v14 = v38;

  if (v13 && ([v13 BOOLValue] & 1) == 0)
  {
    v37 = v14;
    v15 = [WISXPCUtils extractValueFromDict:v3 atKey:@"data_stall_indicator_dl" ofExpectedClass:objc_opt_class() error:&v37];
    v19 = v37;

    v36 = v19;
    v16 = [WISXPCUtils extractValueFromDict:v3 atKey:@"data_stall_indicator_ul" ofExpectedClass:objc_opt_class() error:&v36];
    v20 = v36;

    v35 = v20;
    v17 = [WISXPCUtils extractValueFromDict:v3 atKey:@"l1_mitigation_cnt" ofExpectedClass:objc_opt_class() error:&v35];
    v21 = v35;

    v14 = v21;
    if (v21)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (v14)
    {
LABEL_4:
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_1001FAD68();
      }

      v18 = 0;
      goto LABEL_11;
    }
  }

  v34 = 0;
  v22 = [WISXPCUtils extractValueFromDict:v3 atKey:@"scs" ofExpectedClass:objc_opt_class() error:&v34];
  v14 = v34;
  if (v14)
  {

    v22 = 0;
  }

  v23 = [NSNumber numberWithInt:[WISTelephonyUtils insightRATFromBasebandSysMode:v31]];
  v18 = [[FMCellMapCongestionMetric alloc] initWithTimestamp:v33 subscriptionID:v32 band:v26 frequency:v27 gci:v28 pci:v25 rat:v23 scs:v22 connDuration:v29 totalDuration:v30 dlCongestionCount:v15 ulCongestionCount:v16 l1MitigationCount:v17];

LABEL_11:

  return v18;
}

- (shared_ptr<FMTelemetryObserver>)observer
{
  objc_copyCppObjectAtomic(v2, &self->_observer, sub_100023268);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end