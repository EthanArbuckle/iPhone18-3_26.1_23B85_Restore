@interface BLSHFlipbookRenderSessionTelemetryData
- (BLSHFlipbookRenderSessionTelemetryData)initWithTimestamp:(double)a3 environmentIdentifiers:(id)a4 reasonEnded:(id)a5 sessionFramesHistogram:(id)a6 totalPreparationDuration:(double)a7 accumulatedLayoutDuration:(double)a8 accumulatedRenderDuration:(double)a9 preventedSleepDuration:(double)a10 didFailToRender:(BOOL)a11 timedOutEnvironmentCount:(unsigned int)a12;
- (id)description;
@end

@implementation BLSHFlipbookRenderSessionTelemetryData

- (BLSHFlipbookRenderSessionTelemetryData)initWithTimestamp:(double)a3 environmentIdentifiers:(id)a4 reasonEnded:(id)a5 sessionFramesHistogram:(id)a6 totalPreparationDuration:(double)a7 accumulatedLayoutDuration:(double)a8 accumulatedRenderDuration:(double)a9 preventedSleepDuration:(double)a10 didFailToRender:(BOOL)a11 timedOutEnvironmentCount:(unsigned int)a12
{
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v29.receiver = self;
  v29.super_class = BLSHFlipbookRenderSessionTelemetryData;
  v26 = [(BLSHFlipbookRenderSessionTelemetryData *)&v29 init];
  v27 = v26;
  if (v26)
  {
    v26->_timestamp = a3;
    objc_storeStrong(&v26->_environmentIdentifiers, a4);
    objc_storeStrong(&v27->_reasonEnded, a5);
    objc_storeStrong(&v27->_sessionFramesHistogram, a6);
    v27->_totalPreparationDuration = a7;
    v27->_accumulatedLayoutDuration = a8;
    v27->_accumulatedRenderDuration = a9;
    v27->_preventedSleepDuration = a10;
    v27->_didFailToRender = a11;
    v27->_timedOutEnvironmentCount = a12;
  }

  return v27;
}

- (id)description
{
  v3 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__BLSHFlipbookRenderSessionTelemetryData_description__block_invoke;
  v15[3] = &unk_27841E538;
  v4 = v3;
  v16 = v4;
  v17 = self;
  [v4 appendProem:self block:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__BLSHFlipbookRenderSessionTelemetryData_description__block_invoke_2;
  v12[3] = &unk_27841E538;
  v5 = v4;
  v13 = v5;
  v14 = self;
  [v5 appendBodySectionWithName:0 openDelimiter:@" {" closeDelimiter:@"} " block:v12];
  environmentIdentifiers = self->_environmentIdentifiers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__BLSHFlipbookRenderSessionTelemetryData_description__block_invoke_3;
  v10[3] = &unk_27841EE10;
  v11 = v5;
  v7 = v5;
  [v7 appendCollection:environmentIdentifiers withName:@"environments" itemBlock:v10];
  v8 = [v7 description];

  return v8;
}

id __53__BLSHFlipbookRenderSessionTelemetryData_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);
  v4 = BLSShortLoggingStringForContinuousMachTime();
  v5 = [v2 appendObject:v4 withName:@"done@"];

  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"reason"];
  v7 = [*(a1 + 32) bls_appendTimeInterval:@"total" withName:0 decomposeUnits:*(*(a1 + 40) + 48)];
  v8 = [*(a1 + 32) bls_appendTimeInterval:@"layout" withName:0 decomposeUnits:*(*(a1 + 40) + 56)];
  v9 = [*(a1 + 32) bls_appendTimeInterval:@"render" withName:0 decomposeUnits:*(*(a1 + 40) + 64)];
  if ([*(a1 + 40) preventedSleep])
  {
    v10 = [*(a1 + 32) bls_appendTimeInterval:@"preventedSleep" withName:0 decomposeUnits:*(*(a1 + 40) + 72)];
  }

  v11 = [*(a1 + 32) appendInteger:objc_msgSend(*(*(a1 + 40) + 24) withName:{"count"), @"env∑"}];
  result = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"failedToRender" ifEqualTo:1];
  v13 = *(*(a1 + 40) + 12);
  if (v13)
  {
    return [*(a1 + 32) appendUnsignedInt:v13 withName:@"timeouts"];
  }

  return result;
}

@end