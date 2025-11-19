@interface ThunderboltCounters
@end

@implementation ThunderboltCounters

void __get_kCAEvent_ThunderboltCounters_block_invoke(id a1)
{
  v10[0] = @"deviceVendorID";
  v10[1] = @"deviceVendorName";
  v10[2] = @"deviceModelID";
  v10[3] = @"deviceModelName";
  v10[4] = @"deviceModelRevision";
  v10[5] = @"COUNTER_HS_TRAINING_START_LANE_0";
  v10[6] = @"COUNTER_HS_TRAINING_START_LANE_1";
  v10[7] = @"COUNTER_HS_TRAINING_SUCCESS_LANE_0";
  v10[8] = @"COUNTER_HS_TRAINING_SUCCESS_LANE_1";
  v10[9] = @"COUNTER_HS_TRAINING_FAILURE_LANE_0";
  v10[10] = @"COUNTER_HS_TRAINING_FAILURE_LANE_1";
  v10[11] = @"COUNTER_HS_TRAINING_TIMEOUT_LANE_0";
  v10[12] = @"COUNTER_HS_TRAINING_TIMEOUT_LANE_1";
  v10[13] = @"COUNTER_HS_RETRAINING_BURSTS_LANE_0";
  v10[14] = @"COUNTER_HS_RETRAINING_BURSTS_LANE_1";
  v10[15] = @"COUNTER_HS_UNEXPECTED_SYMBOL_LANE0";
  v10[16] = @"COUNTER_HS_UNEXPECTED_SYMBOL_LANE1";
  v10[17] = @"COUNTERS_LANE_DETECTED_ALE_LANE_0";
  v10[18] = @"COUNTERS_LANE_DETECTED_ALE_LANE_1";
  v10[19] = @"COUNTERS_LANE_DETECTED_RDE_LANE_0";
  v10[20] = @"COUNTERS_LANE_DETECTED_RDE_LANE_1";
  v10[21] = @"COUNTERS_LANE_DETECTED_OSE_LANE_0";
  v10[22] = @"COUNTERS_LANE_DETECTED_OSE_LANE_1";
  v10[23] = @"COUNTERS_LANE_DETECTED_DBO_LANE_0";
  v10[24] = @"COUNTERS_LANE_DETECTED_DBO_LANE_1";
  v10[25] = @"COUNTERS_LANE_DETECTED_DBE_LANE_0";
  v10[26] = @"COUNTERS_LANE_DETECTED_DBE_LANE_1";
  v10[27] = @"COUNTERS_LANE_DETECTED_TE_LANE_0";
  v10[28] = @"COUNTERS_LANE_DETECTED_TE_LANE_1";
  v10[29] = @"COUNTERS_LANE_DETECTED_HEC_LANE_0";
  v10[30] = @"COUNTERS_LANE_DETECTED_HEC_LANE_1";
  v1 = [NSArray arrayWithObjects:v10 count:31];
  if (get_ThunderboltCountersFields_onceToken != -1)
  {
    __get_kCAEvent_ThunderboltCounters_block_invoke_cold_1();
  }

  v2 = get_ThunderboltCountersFields_thunderboltCountersFields;
  if (v1)
  {
    v3 = get_ThunderboltCountersFields_thunderboltCountersFields;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __get_ThunderboltCountersFields_block_invoke_2;
    v8[3] = &unk_20670;
    v9 = v1;
    v4 = [v3 indexesOfObjectsPassingTest:v8];
    v5 = [get_ThunderboltCountersFields_thunderboltCountersFields objectsAtIndexes:v4];

    v2 = v5;
  }

  v6 = [CAEvent eventWithName:@"com.apple.peripheral.thunderbolt.counters" fields:v2];
  v7 = get_kCAEvent_ThunderboltCounters_event;
  get_kCAEvent_ThunderboltCounters_event = v6;
}

@end