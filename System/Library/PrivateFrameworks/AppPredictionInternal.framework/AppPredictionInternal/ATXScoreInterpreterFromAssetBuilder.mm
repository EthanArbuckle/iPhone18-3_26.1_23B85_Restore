@interface ATXScoreInterpreterFromAssetBuilder
+ (id)interpreterFromAssetFilename:(id)filename;
+ (id)scoreInterpretersForAllSubTypes;
@end

@implementation ATXScoreInterpreterFromAssetBuilder

+ (id)interpreterFromAssetFilename:(id)filename
{
  filenameCopy = filename;
  v6 = objc_alloc(MEMORY[0x277CEB3C8]);
  abGroupOverride = [MEMORY[0x277CEB2B8] abGroupOverride];
  v8 = [v6 initWithAssetsForResource:filenameCopy ofType:@"plplist" specifiedABGroup:abGroupOverride];

  abGroupContents = [v8 abGroupContents];
  if (!abGroupContents)
  {
    [(ATXScoreInterpreterFromAssetBuilder *)a2 interpreterFromAssetFilename:self, filenameCopy];
  }

  v10 = [abGroupContents objectForKeyedSubscript:@"Scorer"];
  if (!v10)
  {
    [(ATXScoreInterpreterFromAssetBuilder *)a2 interpreterFromAssetFilename:self, filenameCopy];
  }

  v11 = [[_ATXScoreInterpreter alloc] initWithParseRoot:v10];

  return v11;
}

+ (id)scoreInterpretersForAllSubTypes
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CEBCF0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__ATXScoreInterpreterFromAssetBuilder_scoreInterpretersForAllSubTypes__block_invoke;
  v25[3] = &unk_2785A1018;
  v5 = v3;
  v26 = v5;
  selfCopy = self;
  [v4 iterConsumerSubTypesWithBlock:v25];
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  allValues = [v5 allValues];
  v8 = [v6 initWithArray:allValues];

  v9 = objc_opt_new();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__ATXScoreInterpreterFromAssetBuilder_scoreInterpretersForAllSubTypes__block_invoke_2;
  v22[3] = &unk_2785A1040;
  v10 = v9;
  v23 = v10;
  selfCopy2 = self;
  [v8 enumerateObjectsUsingBlock:v22];
  v11 = objc_opt_new();
  v12 = MEMORY[0x277CEBCF0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__ATXScoreInterpreterFromAssetBuilder_scoreInterpretersForAllSubTypes__block_invoke_3;
  v18[3] = &unk_2785A1068;
  v19 = v5;
  v20 = v10;
  v21 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v5;
  [v12 iterConsumerSubTypesWithBlock:v18];
  v16 = [v13 copy];

  return v16;
}

void __70__ATXScoreInterpreterFromAssetBuilder_scoreInterpretersForAllSubTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 40) assetFilenameForSubType:a2];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a2];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

void __70__ATXScoreInterpreterFromAssetBuilder_scoreInterpretersForAllSubTypes__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 interpreterFromAssetFilename:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

void __70__ATXScoreInterpreterFromAssetBuilder_scoreInterpretersForAllSubTypes__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a2];
  v6 = [v3 objectForKeyedSubscript:v4];

  v5 = [*(a1 + 40) objectForKeyedSubscript:v6];
  [*(a1 + 48) addObject:v5];
}

+ (void)interpreterFromAssetFilename:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ATXScoreInterpreterFromAssetBuilder.m" lineNumber:35 description:{@"Nil asset contents (missing prediction model file?): '%@'", a3}];
}

+ (void)interpreterFromAssetFilename:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ATXScoreInterpreterFromAssetBuilder.m" lineNumber:37 description:{@"Could not retrieve _ATXAppPredictor information from asset dictionary in '%@'", a3}];
}

@end