@interface AXLogWithThreshold
@end

@implementation AXLogWithThreshold

void ___AXLogWithThreshold_block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [_AXLogThresholdMap objectForKey:*(a1 + 32)];
  v14 = v4;
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"repeatCount"];
    *(*(*(a1 + 48) + 8) + 24) = [v5 unsignedIntegerValue] + 1;

    v6 = [v14 objectForKeyedSubscript:@"time"];
    [v6 doubleValue];
    v8 = v7;

    v9 = v3 - v8;
    if (v3 - v8 >= *(a1 + 56))
    {
      [v14 setObject:&unk_1F0585148 forKeyedSubscript:{@"repeatCount", v9}];
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
      [v14 setObject:v13 forKeyedSubscript:@"time"];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*(*(*(a1 + 48) + 8) + 24), v9}];
      [v14 setObject:v10 forKeyedSubscript:@"repeatCount"];
    }
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    [v11 setObject:&unk_1F0585148 forKeyedSubscript:@"repeatCount"];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
    [v11 setObject:v12 forKeyedSubscript:@"time"];

    [_AXLogThresholdMap setObject:v11 forKey:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end