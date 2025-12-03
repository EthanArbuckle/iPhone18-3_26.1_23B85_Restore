@interface FMBasebandMetricsController
+ (id)extractFMCellMapCongestionMetricFrom:(id)from;
+ (id)extractFMCongestionMetricFrom:(id)from;
- (FMBasebandMetricsController)initWithFMModel:(id)model withSubscribedMetrics:(id)metrics;
- (FMModel)fmModel;
- (id).cxx_construct;
- (shared_ptr<FMTelemetryObserver>)observer;
- (void)dealloc;
- (void)handleIncomingMetric:(id)metric withXPCPayload:(dict)payload;
@end

@implementation FMBasebandMetricsController

- (FMModel)fmModel
{
  WeakRetained = objc_loadWeakRetained(&self->_fmModel);

  return WeakRetained;
}

- (FMBasebandMetricsController)initWithFMModel:(id)model withSubscribedMetrics:(id)metrics
{
  modelCopy = model;
  metricsCopy = metrics;
  v29.receiver = self;
  v29.super_class = FMBasebandMetricsController;
  v7 = [(FMBasebandMetricsController *)&v29 init];
  v8 = v7;
  val = v7;
  if (v7)
  {
    [(FMBasebandMetricsController *)v7 setFmModel:modelCopy];
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
      v9 = metricsCopy;
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
            uTF8String = [v13 UTF8String];
            v17 = strlen(uTF8String);
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
              memmove(&__dst, uTF8String, v17);
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

- (void)handleIncomingMetric:(id)metric withXPCPayload:(dict)payload
{
  metricCopy = metric;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FAC0C();
  }

  v7 = *payload.var0.fObj;
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

    fmModel = [(FMBasebandMetricsController *)self fmModel];
    [fmModel handleIncomingMetric:metricCopy withPayload:v8];
  }
}

+ (id)extractFMCongestionMetricFrom:(id)from
{
  fromCopy = from;
  v63[0] = 0;
  v59 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"timestamp" ofExpectedClass:objc_opt_class() error:v63];
  v4 = v63[0];
  v62 = v4;
  v5 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"gci" ofExpectedClass:objc_opt_class() error:&v62];
  v6 = v62;

  v61 = v6;
  v7 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"subs_id" ofExpectedClass:objc_opt_class() error:&v61];
  v8 = v61;

  v60 = v8;
  v9 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"rat_type" ofExpectedClass:objc_opt_class() error:&v60];
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
    v56 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"arfcn" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v55 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"rsrp_ewma" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v53 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"rsrq_ewma" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v52 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"sinr_ewma" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v50 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"dl_bottleneck_score_invalid" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v49 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"dl_bottleneck_score_no" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v48 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"dl_bottleneck_score_low" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v47 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"dl_bottleneck_score_medium" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v46 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"dl_bottleneck_score_high" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v45 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"ul_bottleneck_score_invalid" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v44 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"ul_bottleneck_score_no" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v43 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"ul_bottleneck_score_low" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v42 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"ul_bottleneck_score_medium" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v41 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"ul_bottleneck_score_high" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v40 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"data_stall_indicator_avs" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v39 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"data_stall_indicator_ul" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v38 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"is_subway" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v37 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"ps_pref" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v36 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"qoe_score" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v35 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"qoe_score_cal_duration" ofExpectedClass:objc_opt_class() orDefault:&off_1002BEDC0];
    v34 = [FMCongestionMetric alloc];
    unsignedLongValue = [v59 unsignedLongValue];
    unsignedIntValue = [v56 unsignedIntValue];
    intValue = [v55 intValue];
    intValue2 = [v53 intValue];
    intValue3 = [v52 intValue];
    unsignedIntValue2 = [v50 unsignedIntValue];
    unsignedIntValue3 = [v49 unsignedIntValue];
    unsignedIntValue4 = [v48 unsignedIntValue];
    unsignedIntValue5 = [v47 unsignedIntValue];
    unsignedIntValue6 = [v46 unsignedIntValue];
    unsignedIntValue7 = [v45 unsignedIntValue];
    unsignedIntValue8 = [v44 unsignedIntValue];
    unsignedIntValue9 = [v43 unsignedIntValue];
    unsignedIntValue10 = [v42 unsignedIntValue];
    unsignedIntValue11 = [v41 unsignedIntValue];
    unsignedIntValue12 = [v40 unsignedIntValue];
    unsignedIntValue13 = [v39 unsignedIntValue];
    unsignedIntValue14 = [v38 unsignedIntValue];
    v18 = [FMCongestionMetric QoEScoreEnumToNumericValue:v36];
    unsignedIntValue15 = [v35 unsignedIntValue];
    unsignedIntValue16 = [v37 unsignedIntValue];
    v11 = -[FMCongestionMetric init:gci:arfnc:ratType:rsrp:rsrq:sinr:dlBottleneckScoreInvalid:dlBottleneckScoreNo:dlBottleneckScoreLow:dlBottleneckScoreMedium:dlBottleneckScoreHigh:ulBottleneckScoreInvalid:ulBottleneckScoreNo:ulBottleneckScoreLow:ulBottleneckScoreMedium:ulBottleneckScoreHigh:dataStallIndicatorAVS:dataStallIndicatorUL:isSubway:qoeScore:qoeDuration:psPref:subsId:](v34, "init:gci:arfnc:ratType:rsrp:rsrq:sinr:dlBottleneckScoreInvalid:dlBottleneckScoreNo:dlBottleneckScoreLow:dlBottleneckScoreMedium:dlBottleneckScoreHigh:ulBottleneckScoreInvalid:ulBottleneckScoreNo:ulBottleneckScoreLow:ulBottleneckScoreMedium:ulBottleneckScoreHigh:dataStallIndicatorAVS:dataStallIndicatorUL:isSubway:qoeScore:qoeDuration:psPref:subsId:", unsignedLongValue, v57, unsignedIntValue, v51, intValue, intValue2, __PAIR64__(unsignedIntValue2, intValue3), __PAIR64__(unsignedIntValue4, unsignedIntValue3), __PAIR64__(unsignedIntValue6, unsignedIntValue5), __PAIR64__(unsignedIntValue8, unsignedIntValue7), __PAIR64__(unsignedIntValue10, unsignedIntValue9), __PAIR64__(unsignedIntValue12, unsignedIntValue11), __PAIR64__(unsignedIntValue14, unsignedIntValue13), __PAIR64__(unsignedIntValue15, v18), __PAIR64__([v54 unsignedIntValue], unsignedIntValue16));

    v5 = v57;
    v7 = v54;
    v9 = v51;
  }

  return v11;
}

+ (id)extractFMCellMapCongestionMetricFrom:(id)from
{
  fromCopy = from;
  v47[0] = 0;
  v33 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"timestamp" ofExpectedClass:objc_opt_class() error:v47];
  v4 = v47[0];
  v46 = v4;
  v32 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"subs_id" ofExpectedClass:objc_opt_class() error:&v46];
  v5 = v46;

  v45 = v5;
  v31 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"rat_type" ofExpectedClass:objc_opt_class() error:&v45];
  v6 = v45;

  v44 = v6;
  v30 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"total_duration" ofExpectedClass:objc_opt_class() error:&v44];
  v7 = v44;

  v43 = v7;
  v29 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"conn_duration" ofExpectedClass:objc_opt_class() error:&v43];
  v8 = v43;

  v42 = v8;
  v28 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"gci" ofExpectedClass:objc_opt_class() error:&v42];
  v9 = v42;

  v41 = v9;
  v27 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"arfcn" ofExpectedClass:objc_opt_class() error:&v41];
  v10 = v41;

  v40 = v10;
  v26 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"band" ofExpectedClass:objc_opt_class() error:&v40];
  v11 = v40;

  v39 = v11;
  v25 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"pci" ofExpectedClass:objc_opt_class() error:&v39];
  v12 = v39;

  v38 = v12;
  v13 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"no_data_available" ofExpectedClass:objc_opt_class() error:&v38];
  v14 = v38;

  if (v13 && ([v13 BOOLValue] & 1) == 0)
  {
    v37 = v14;
    v15 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"data_stall_indicator_dl" ofExpectedClass:objc_opt_class() error:&v37];
    v19 = v37;

    v36 = v19;
    v16 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"data_stall_indicator_ul" ofExpectedClass:objc_opt_class() error:&v36];
    v20 = v36;

    v35 = v20;
    v17 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"l1_mitigation_cnt" ofExpectedClass:objc_opt_class() error:&v35];
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
  v22 = [WISXPCUtils extractValueFromDict:fromCopy atKey:@"scs" ofExpectedClass:objc_opt_class() error:&v34];
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