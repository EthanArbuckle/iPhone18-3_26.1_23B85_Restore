@interface BLSHFlipbookFramesHistogram
+ (BLSHFlipbookFramesHistogram)histogramWithReferenceDate:(id)a3 flipbookFrames:(id)a4;
+ (BLSHFlipbookFramesHistogram)histogramWithReferenceDate:(id)a3 iteratePresentationDatesBlock:(id)a4;
- (id)description;
- (uint64_t)initWithTotalCount:(void *)a3 averagePresentationTimeFromNow:(uint64_t)a4 medianPresentationTimeFromNow:(uint64_t)a5 presentationTimeHistogram:(uint64_t)a6 intervalUntilFirstFrame:(void *)a7 presentationDuration:(double)a8 memoryUsage:(double)a9 averageMemoryUsage:(double)a10 medianMemoryUsage:(double)a11 memoryUsageHistogram:(float)a12 lowestAPL:(float)a13 averageAPL:(float)a14 medianAPL:(float)a15 highestAPL:(uint64_t)a16 lowestAPLDimming:(int)a17 averageAPLDimming:(int)a18 medianAPLDimming:(int)a19 highestAPLDimming:(int)a20;
- (unsigned)count1to2Min;
- (unsigned)count2to3Min;
- (unsigned)count3to4Min;
- (unsigned)count4to5Min;
- (unsigned)count5to6Min;
- (unsigned)countLessThan1Min;
- (unsigned)countMoreThan6Min;
- (void)stream:(void *)a3 appendRawHistogram:(void *)a4 withLabel:(void *)a5 headingBlock:;
@end

@implementation BLSHFlipbookFramesHistogram

+ (BLSHFlipbookFramesHistogram)histogramWithReferenceDate:(id)a3 flipbookFrames:(id)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v84 = a3;
  v5 = a4;
  v75 = [v5 count];
  v6 = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [MEMORY[0x277CBEAA8] distantPast];
  v83 = [MEMORY[0x277CBEB18] array];
  memset(v95, 0, sizeof(v95));
  v82 = [MEMORY[0x277CBEB18] array];
  memset(v94, 0, sizeof(v94));
  v81 = [MEMORY[0x277CBEB18] array];
  v79 = [MEMORY[0x277CBEB18] array];
  v80 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v5;
  v85 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
  v8 = 0;
  v9 = 0;
  if (v85)
  {
    v77 = *v90;
    v10 = 0.0;
    v11 = 0.0;
    v87 = 6;
    v12 = 3.4028e38;
    v86 = 0.0;
    v13 = 0.0;
    v14 = 3.4028e38;
    v15 = 0.0;
    do
    {
      v16 = 0;
      v17 = v7;
      v18 = v6;
      do
      {
        if (*v90 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v89 + 1) + 8 * v16);
        v20 = [v19 bls_specifier];
        v21 = [v20 presentationDate];

        v88 = [v18 earlierDate:v21];

        v7 = [v17 laterDate:v21];

        [v21 timeIntervalSinceDate:v84];
        v22 = 0.0;
        if (v23 > 0.0)
        {
          [v21 timeIntervalSinceDate:v84];
          v22 = v24;
        }

        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
        [v83 addObject:v25];

        v26 = [v80 components:64 fromDate:v84 toDate:v21 options:0];
        if ([v26 minute] < 0 || objc_msgSend(v26, "minute") <= 14)
        {
          v27 = v8;
          if ([v26 minute] < 0)
          {
            v28 = 0;
          }

          else
          {
            v28 = [v26 minute];
          }
        }

        else
        {
          v27 = v8;
          v28 = 15;
        }

        ++*(v95 + v28);
        v29 = v87;
        if (v28 > v87)
        {
          v29 = v28;
        }

        v87 = v29;
        v30 = [v19 memoryUsage];
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
        [v82 addObject:v31];

        v32 = __clz(v30 | 1) ^ 0x3F;
        if (v32 <= 0xA)
        {
          v33 = 10;
        }

        else
        {
          v33 = v32;
        }

        v34 = v33 - 10;
        if (v32 >= 0x19)
        {
          v35 = 15;
        }

        else
        {
          v35 = v34;
        }

        ++*(v94 + v35);
        if (v35 > v27)
        {
          v27 = v35;
        }

        [v19 apl];
        v37 = v36;
        v38 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        [v81 addObject:v38];

        v15 = v15 + v37;
        if (v37 < v14)
        {
          v14 = v37;
        }

        if (v37 > v13)
        {
          v13 = v37;
        }

        [v19 aplDimming];
        v8 = v27;
        v40 = v39;
        v41 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        [v79 addObject:v41];

        v86 = v86 + v40;
        if (v40 < v12)
        {
          v12 = v40;
        }

        if (v40 > v11)
        {
          v11 = v40;
        }

        v10 = v10 + v22;
        v9 += v30;

        ++v16;
        v17 = v7;
        v6 = v88;
        v18 = v88;
      }

      while (v85 != v16);
      v85 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
    }

    while (v85);
  }

  else
  {
    v11 = 0.0;
    v87 = 6;
    v12 = 3.4028e38;
    v86 = 0.0;
    v13 = 0.0;
    v14 = 3.4028e38;
    v15 = 0.0;
    v10 = 0.0;
  }

  [v7 timeIntervalSinceDate:v6];
  v74 = v42;
  [v6 timeIntervalSinceDate:v84];
  v72 = v43;
  v78 = [v83 sortedArrayUsingSelector:sel_compare_];
  [v78 bls_doubleMedian];
  v71 = v44;
  v45 = v10 / v75;
  if (!v75)
  {
    v45 = 0.0;
  }

  v69 = v45;
  v73 = [v82 sortedArrayUsingSelector:sel_compare_];
  v70 = [v73 bls_unsignedIntegerMedian];
  v46 = [v81 count];
  if (v46)
  {
    v47 = v46;
    v48 = [v81 sortedArrayUsingSelector:sel_compare_];
    [v48 bls_doubleMedian];
    v50 = v49;
    v51 = v15 / v47;
  }

  else
  {
    v13 = NAN;
    v14 = NAN;
    v51 = NAN;
    v50 = NAN;
  }

  v52 = [v79 count];
  if (v52)
  {
    v53 = v52;
    v54 = [v79 sortedArrayUsingSelector:sel_compare_];
    [v54 bls_doubleMedian];
    v56 = v55;
    v57 = v86 / v53;
  }

  else
  {
    v11 = NAN;
    v12 = NAN;
    v57 = NAN;
    v56 = NAN;
  }

  v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:v87];
  v59 = 0;
  do
  {
    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v95 + v59)];
    [v58 addObject:v60];

    ++v59;
  }

  while (v59 <= v87);
  v61 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
  for (i = 0; i <= v8; ++i)
  {
    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v94 + i)];
    [v61 addObject:v63];
  }

  v64 = [BLSHFlipbookFramesHistogram alloc];
  v66 = [(BLSHFlipbookFramesHistogram *)v64 initWithTotalCount:v75 averagePresentationTimeFromNow:v58 medianPresentationTimeFromNow:v9 presentationTimeHistogram:v9 / v75 intervalUntilFirstFrame:v70 presentationDuration:v61 memoryUsage:v69 averageMemoryUsage:v71 medianMemoryUsage:v72 memoryUsageHistogram:v74 lowestAPL:v14 averageAPL:v51 medianAPL:v50 highestAPL:v13 lowestAPLDimming:v65 averageAPLDimming:SLODWORD(v12) medianAPLDimming:SLODWORD(v57) highestAPLDimming:SLODWORD(v56), SLODWORD(v11)];

  v67 = *MEMORY[0x277D85DE8];

  return v66;
}

- (uint64_t)initWithTotalCount:(void *)a3 averagePresentationTimeFromNow:(uint64_t)a4 medianPresentationTimeFromNow:(uint64_t)a5 presentationTimeHistogram:(uint64_t)a6 intervalUntilFirstFrame:(void *)a7 presentationDuration:(double)a8 memoryUsage:(double)a9 averageMemoryUsage:(double)a10 medianMemoryUsage:(double)a11 memoryUsageHistogram:(float)a12 lowestAPL:(float)a13 averageAPL:(float)a14 medianAPL:(float)a15 highestAPL:(uint64_t)a16 lowestAPLDimming:(int)a17 averageAPLDimming:(int)a18 medianAPLDimming:(int)a19 highestAPLDimming:(int)a20
{
  v35 = a3;
  v36 = a7;
  if (a1)
  {
    if ([v35 count] <= 6)
    {
      [BLSHFlipbookFramesHistogram initWithTotalCount:a1 averagePresentationTimeFromNow:? medianPresentationTimeFromNow:? presentationTimeHistogram:? intervalUntilFirstFrame:? presentationDuration:? memoryUsage:? averageMemoryUsage:? medianMemoryUsage:? memoryUsageHistogram:? lowestAPL:? averageAPL:? medianAPL:? highestAPL:? lowestAPLDimming:? averageAPLDimming:? medianAPLDimming:? highestAPLDimming:?];
    }

    v39.receiver = a1;
    v39.super_class = BLSHFlipbookFramesHistogram;
    v37 = objc_msgSendSuper2(&v39, sel_init);
    a1 = v37;
    if (v37)
    {
      *(v37 + 5) = a2;
      *(v37 + 6) = a8;
      *(v37 + 7) = a9;
      objc_storeStrong(v37 + 8, a3);
      *(a1 + 72) = a10;
      *(a1 + 80) = a11;
      *(a1 + 88) = a4;
      *(a1 + 96) = a5;
      *(a1 + 104) = a6;
      objc_storeStrong((a1 + 112), a7);
      *(a1 + 8) = a12;
      *(a1 + 12) = a13;
      *(a1 + 16) = a14;
      *(a1 + 20) = a15;
      *(a1 + 24) = a17;
      *(a1 + 28) = a18;
      *(a1 + 32) = a19;
      *(a1 + 36) = a20;
    }
  }

  return a1;
}

+ (BLSHFlipbookFramesHistogram)histogramWithReferenceDate:(id)a3 iteratePresentationDatesBlock:(id)a4
{
  v4 = [BLSHFlipbookFramesHistogram alloc];
  v6 = [(BLSHFlipbookFramesHistogram *)v4 initWithTotalCount:&unk_28338DF00 averagePresentationTimeFromNow:0 medianPresentationTimeFromNow:0 presentationTimeHistogram:0 intervalUntilFirstFrame:MEMORY[0x277CBEBF8] presentationDuration:0.0 memoryUsage:0.0 averageMemoryUsage:0.0 medianMemoryUsage:0.0 memoryUsageHistogram:NAN lowestAPL:NAN averageAPL:NAN medianAPL:NAN highestAPL:v5 lowestAPLDimming:2143289344 averageAPLDimming:2143289344 medianAPLDimming:2143289344 highestAPLDimming:2143289344];

  return v6;
}

- (unsigned)countLessThan1Min
{
  v2 = [(NSArray *)self->_presentationTimeHistogram objectAtIndex:0];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)count1to2Min
{
  v2 = [(NSArray *)self->_presentationTimeHistogram objectAtIndex:1];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)count2to3Min
{
  v2 = [(NSArray *)self->_presentationTimeHistogram objectAtIndex:2];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)count3to4Min
{
  v2 = [(NSArray *)self->_presentationTimeHistogram objectAtIndex:3];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)count4to5Min
{
  v2 = [(NSArray *)self->_presentationTimeHistogram objectAtIndex:4];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)count5to6Min
{
  v2 = [(NSArray *)self->_presentationTimeHistogram objectAtIndex:5];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)countMoreThan6Min
{
  v2 = [(NSArray *)self->_presentationTimeHistogram objectAtIndex:6];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (id)description
{
  v3 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__BLSHFlipbookFramesHistogram_description__block_invoke;
  v14[3] = &unk_27841E538;
  v4 = v3;
  v15 = v4;
  v16 = self;
  [v4 appendProem:self block:v14];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __42__BLSHFlipbookFramesHistogram_description__block_invoke_2;
  v11 = &unk_27841E538;
  v12 = self;
  v13 = v4;
  v5 = v4;
  [v5 appendBodySectionWithName:0 openDelimiter:&stru_283373E60 closeDelimiter:&stru_283373E60 block:&v8];
  v6 = [v5 description];

  return v6;
}

id __42__BLSHFlipbookFramesHistogram_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 40) withName:@"count"];
  v3 = [*(a1 + 32) bls_appendTimeInterval:@"avg∆now" withName:0 decomposeUnits:*(*(a1 + 40) + 48)];
  v4 = [*(a1 + 32) bls_appendTimeInterval:@"median∆now" withName:0 decomposeUnits:*(*(a1 + 40) + 56)];
  v5 = [*(a1 + 32) bls_appendTimeInterval:@"time∆1st" withName:0 decomposeUnits:*(*(a1 + 40) + 72)];
  v6 = [*(a1 + 32) bls_appendTimeInterval:@"interval" withName:1 decomposeUnits:*(*(a1 + 40) + 80)];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CF0978] sharedFormatter];
  v9 = [v8 stringFromByteCount:*(*(a1 + 40) + 88)];
  v10 = [v7 appendObject:v9 withName:@"totalMem"];

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CF0978] sharedFormatter];
  v13 = [v12 stringFromByteCount:*(*(a1 + 40) + 96)];
  v14 = [v11 appendObject:v13 withName:@"avgMem"];

  v15 = *(a1 + 32);
  v16 = [MEMORY[0x277CF0978] sharedFormatter];
  v17 = [v16 stringFromByteCount:*(*(a1 + 40) + 104)];
  v18 = [v15 appendObject:v17 withName:@"medianMem"];

  v19 = [*(a1 + 32) appendFloat:@"maxAPL" withName:3 decimalPrecision:*(*(a1 + 40) + 20)];
  v20 = [*(a1 + 32) appendFloat:@"avgAPL" withName:3 decimalPrecision:*(*(a1 + 40) + 12)];
  v21 = [*(a1 + 32) appendFloat:@"medianAPL" withName:3 decimalPrecision:*(*(a1 + 40) + 16)];
  v22 = [*(a1 + 32) appendFloat:@"maxDim" withName:3 decimalPrecision:*(*(a1 + 40) + 36)];
  v23 = [*(a1 + 32) appendFloat:@"avgDim" withName:3 decimalPrecision:*(*(a1 + 40) + 28)];
  return [*(a1 + 32) appendFloat:@"medianDim" withName:3 decimalPrecision:*(*(a1 + 40) + 32)];
}

void __42__BLSHFlipbookFramesHistogram_description__block_invoke_2(uint64_t a1)
{
  [(BLSHFlipbookFramesHistogram *)*(a1 + 32) stream:*(*(a1 + 32) + 64) appendRawHistogram:@"minutes" withLabel:&__block_literal_global_13 headingBlock:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 112);

  [(BLSHFlipbookFramesHistogram *)v2 stream:v3 appendRawHistogram:v4 withLabel:@"memory" headingBlock:&__block_literal_global_76_0];
}

- (void)stream:(void *)a3 appendRawHistogram:(void *)a4 withLabel:(void *)a5 headingBlock:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v19 = a5;
  if (a1)
  {
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v35[3] = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke;
    v34[3] = &unk_27841FE38;
    v34[4] = v35;
    [v10 enumerateObjectsUsingBlock:v34];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = [v10 count] - 1;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_2;
    v32[3] = &unk_27841FE38;
    v32[4] = v33;
    [v10 enumerateObjectsWithOptions:2 usingBlock:v32];
    v12 = [v11 length];
    if (v12 <= [@"count" length])
    {
      v13 = [@"count" length];
    }

    else
    {
      v13 = [v11 length];
    }

    v14 = v13;
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%*s", v13, objc_msgSend(v11, "UTF8String")];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_4;
    v26[3] = &unk_27841FEA8;
    v16 = v10;
    v27 = v16;
    v30 = v35;
    v31 = v33;
    v17 = v19;
    v28 = v17;
    v29 = &__block_literal_global_88;
    [v9 appendCustomFormatWithName:v15 block:v26];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%*s", v14, objc_msgSend(@"count", "UTF8String")];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_6;
    v20[3] = &unk_27841FEA8;
    v24 = v35;
    v25 = v33;
    v21 = v16;
    v22 = &__block_literal_global_88;
    v23 = v17;
    [v9 appendCustomFormatWithName:v18 block:v20];

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v35, 8);
  }
}

id __42__BLSHFlipbookFramesHistogram_description__block_invoke_4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [MEMORY[0x277CF0978] sharedFormatter];
  v5 = [v4 stringFromByteCount:1 << (a3 + 10)];

  return v5;
}

uint64_t __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 unsignedIntegerValue];
  if (result)
  {
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

uint64_t __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 unsignedIntegerValue];
  if (result)
  {
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

unint64_t __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  v5 = (log10(a3) + 1.0);
  if ([v4 length] >= v5)
  {
    v5 = [v4 length];
  }

  return v5;
}

void __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 appendFormat:@"|"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_5;
  v7[3] = &unk_27841FE80;
  v11 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
}

uint64_t __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_5(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(*(*(a1 + 56) + 8) + 24) <= a3 && *(*(*(a1 + 64) + 8) + 24) >= a3)
  {
    v9 = v5;
    v7 = (*(*(a1 + 40) + 16))();
    [*(a1 + 32) appendFormat:@" %*s |", (*(*(a1 + 48) + 16))(*(a1 + 48), v7, objc_msgSend(v9, "unsignedIntegerValue")), objc_msgSend(v7, "UTF8String")];

    v6 = v9;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

void __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 appendFormat:@"|"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_7;
  v6[3] = &unk_27841FED0;
  v10 = *(a1 + 56);
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __80__BLSHFlipbookFramesHistogram_stream_appendRawHistogram_withLabel_headingBlock___block_invoke_7(void *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (*(*(a1[7] + 8) + 24) <= a3 && *(*(a1[8] + 8) + 24) >= a3)
  {
    v10 = v5;
    v6 = [v5 unsignedIntegerValue];
    v7 = a1[4];
    v8 = a1[5];
    v9 = (*(a1[6] + 16))();
    [v7 appendFormat:@" %*u |", (*(v8 + 16))(v8, v9, v6), v6];

    v5 = v10;
  }
}

- (void)initWithTotalCount:(const char *)a1 averagePresentationTimeFromNow:(uint64_t)a2 medianPresentationTimeFromNow:presentationTimeHistogram:intervalUntilFirstFrame:presentationDuration:memoryUsage:averageMemoryUsage:medianMemoryUsage:memoryUsageHistogram:lowestAPL:averageAPL:medianAPL:highestAPL:lowestAPLDimming:averageAPLDimming:medianAPLDimming:highestAPLDimming:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[presentationTimeHistogram count] > 6"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHFlipbookFramesHistogram.m";
    v16 = 1024;
    v17 = 178;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end