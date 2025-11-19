@interface ThunderboltCountersFields
@end

@implementation ThunderboltCountersFields

void __get_ThunderboltCountersFields_block_invoke(id a1)
{
  v33 = [CAField fieldWithName:@"deviceVendorID" ioProperty:@"Device Vendor ID" valueType:objc_opt_class()];
  v34[0] = v33;
  v32 = [CAField fieldWithName:@"deviceVendorName" ioProperty:@"Device Vendor Name" valueType:objc_opt_class()];
  v34[1] = v32;
  v31 = [CAField fieldWithName:@"deviceModelID" ioProperty:@"Device Model ID" valueType:objc_opt_class()];
  v34[2] = v31;
  v30 = [CAField fieldWithName:@"deviceModelName" ioProperty:@"Device Model Name" valueType:objc_opt_class()];
  v34[3] = v30;
  v29 = [CAField fieldWithName:@"deviceModelRevision" ioProperty:@"Device Model Revision" valueType:objc_opt_class()];
  v34[4] = v29;
  v28 = [CAField fieldWithName:@"COUNTER_HS_TRAINING_START_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[5] = v28;
  v27 = [CAField fieldWithName:@"COUNTER_HS_TRAINING_START_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[6] = v27;
  v26 = [CAField fieldWithName:@"COUNTER_HS_TRAINING_SUCCESS_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[7] = v26;
  v25 = [CAField fieldWithName:@"COUNTER_HS_TRAINING_SUCCESS_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[8] = v25;
  v24 = [CAField fieldWithName:@"COUNTER_HS_TRAINING_FAILURE_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[9] = v24;
  v23 = [CAField fieldWithName:@"COUNTER_HS_TRAINING_FAILURE_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[10] = v23;
  v22 = [CAField fieldWithName:@"COUNTER_HS_TRAINING_TIMEOUT_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[11] = v22;
  v21 = [CAField fieldWithName:@"COUNTER_HS_TRAINING_TIMEOUT_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[12] = v21;
  v20 = [CAField fieldWithName:@"COUNTER_HS_RETRAINING_BURSTS_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[13] = v20;
  v19 = [CAField fieldWithName:@"COUNTER_HS_RETRAINING_BURSTS_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[14] = v19;
  v18 = [CAField fieldWithName:@"COUNTER_HS_UNEXPECTED_SYMBOL_LANE0" ioProperty:0 valueType:objc_opt_class()];
  v34[15] = v18;
  v17 = [CAField fieldWithName:@"COUNTER_HS_UNEXPECTED_SYMBOL_LANE1" ioProperty:0 valueType:objc_opt_class()];
  v34[16] = v17;
  v16 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_ALE_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[17] = v16;
  v15 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_ALE_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[18] = v15;
  v14 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_RDE_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[19] = v14;
  v13 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_RDE_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[20] = v13;
  v12 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_OSE_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[21] = v12;
  v1 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_OSE_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[22] = v1;
  v2 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_DBO_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[23] = v2;
  v3 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_DBO_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[24] = v3;
  v4 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_DBE_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[25] = v4;
  v5 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_DBE_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[26] = v5;
  v6 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_TE_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[27] = v6;
  v7 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_TE_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[28] = v7;
  v8 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_HEC_LANE_0" ioProperty:0 valueType:objc_opt_class()];
  v34[29] = v8;
  v9 = [CAField fieldWithName:@"COUNTERS_LANE_DETECTED_HEC_LANE_1" ioProperty:0 valueType:objc_opt_class()];
  v34[30] = v9;
  v10 = [NSArray arrayWithObjects:v34 count:31];
  v11 = get_ThunderboltCountersFields_thunderboltCountersFields;
  get_ThunderboltCountersFields_thunderboltCountersFields = v10;
}

id __get_ThunderboltCountersFields_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end