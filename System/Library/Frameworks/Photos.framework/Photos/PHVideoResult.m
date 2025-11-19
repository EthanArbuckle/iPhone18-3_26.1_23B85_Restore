@interface PHVideoResult
- (id)allowedInfoKeys;
- (id)videoAdjustmentData;
@end

@implementation PHVideoResult

- (id)videoAdjustmentData
{
  v2 = [(PHCompositeMediaResult *)self info];
  v3 = [v2 objectForKeyedSubscript:@"PHAdjustmentDataKey"];

  return v3;
}

- (id)allowedInfoKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PHVideoResult_allowedInfoKeys__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  if (allowedInfoKeys_onceToken_1552 != -1)
  {
    dispatch_once(&allowedInfoKeys_onceToken_1552, block);
  }

  return allowedInfoKeys_allowedKeys_1553;
}

void __32__PHVideoResult_allowedInfoKeys__block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v7.receiver = *(a1 + 32);
  v7.super_class = PHVideoResult;
  v3 = objc_msgSendSuper2(&v7, sel_allowedInfoKeys);
  v4 = [v2 initWithSet:v3];

  v8[0] = @"PHAdjustmentDataKey";
  v8[1] = @"PHImageResultTimeRangeMapperKey";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [v4 addObjectsFromArray:v5];

  v6 = allowedInfoKeys_allowedKeys_1553;
  allowedInfoKeys_allowedKeys_1553 = v4;
}

@end