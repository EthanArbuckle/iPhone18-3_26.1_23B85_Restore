@interface ATXGlobalSmartSuppression
+ (int)decodeAssociationScoreForContext:(unint64_t)context forEncodedScore:(int)score;
+ (int)decodeGeoAssociationScoreAtGeoHashResolution:(unint64_t)resolution forEncodedScore:(int)score;
- (ATXGlobalSmartSuppression)init;
- (id)fetchContextualAssociationScoresForBundleId:(id)id;
@end

@implementation ATXGlobalSmartSuppression

- (ATXGlobalSmartSuppression)init
{
  v6.receiver = self;
  v6.super_class = ATXGlobalSmartSuppression;
  v2 = [(ATXGlobalSmartSuppression *)&v6 init];
  if (v2)
  {
    v3 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalAssociationScores"];
    associationScoresTrie = v2->_associationScoresTrie;
    v2->_associationScoresTrie = v3;
  }

  return v2;
}

- (id)fetchContextualAssociationScoresForBundleId:(id)id
{
  v3 = [(_PASCFBurstTrie *)self->_associationScoresTrie payloadForString:id];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{+[ATXGlobalSmartSuppression decodeAssociationScoreForContext:forEncodedScore:](ATXGlobalSmartSuppression, "decodeAssociationScoreForContext:forEncodedScore:", 1, v3)}];
  [v4 setObject:v5 forKeyedSubscript:@"LOIType"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{+[ATXGlobalSmartSuppression decodeAssociationScoreForContext:forEncodedScore:](ATXGlobalSmartSuppression, "decodeAssociationScoreForContext:forEncodedScore:", 2, v3)}];
  [v4 setObject:v6 forKeyedSubscript:@"PartOfWeek"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{+[ATXGlobalSmartSuppression decodeAssociationScoreForContext:forEncodedScore:](ATXGlobalSmartSuppression, "decodeAssociationScoreForContext:forEncodedScore:", 3, v3)}];
  [v4 setObject:v7 forKeyedSubscript:@"CoarseTime"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{+[ATXGlobalSmartSuppression decodeGeoAssociationScoreAtGeoHashResolution:forEncodedScore:](ATXGlobalSmartSuppression, "decodeGeoAssociationScoreAtGeoHashResolution:forEncodedScore:", 2, v3)}];
  [v4 setObject:v8 forKeyedSubscript:@"GeohashZoom7"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{+[ATXGlobalSmartSuppression decodeGeoAssociationScoreAtGeoHashResolution:forEncodedScore:](ATXGlobalSmartSuppression, "decodeGeoAssociationScoreAtGeoHashResolution:forEncodedScore:", 1, v3)}];
  [v4 setObject:v9 forKeyedSubscript:@"GeohashCoarse"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{+[ATXGlobalSmartSuppression decodeGeoAssociationScoreAtGeoHashResolution:forEncodedScore:](ATXGlobalSmartSuppression, "decodeGeoAssociationScoreAtGeoHashResolution:forEncodedScore:", 0, v3)}];
  [v4 setObject:v10 forKeyedSubscript:@"GeohashSpecific"];

  v11 = [v4 copy];

  return v11;
}

+ (int)decodeAssociationScoreForContext:(unint64_t)context forEncodedScore:(int)score
{
  result = 0;
  if (context > 1)
  {
    if (context == 2)
    {
      v9 = 1759218605 * (score % 100000);
      v6 = v9 >> 63;
      v7 = v9 >> 44;
    }

    else
    {
      if (context != 3)
      {
        return result;
      }

      v5 = 351843721 * (score % 1000000);
      v6 = v5 >> 63;
      v7 = v5 >> 45;
    }

    return v7 + v6;
  }

  if (context)
  {
    if (context == 1)
    {
      return (((33555 * (score % 10000)) >> 16) >> 9) + (((score % 10000 + ((-31981 * (score % 10000)) >> 16)) & 0x8000) >> 15);
    }
  }

  else
  {
    v8 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXGlobalSmartSuppression decodeAssociationScoreForContext:v8 forEncodedScore:?];
    }

    return 0;
  }

  return result;
}

+ (int)decodeGeoAssociationScoreAtGeoHashResolution:(unint64_t)resolution forEncodedScore:(int)score
{
  switch(resolution)
  {
    case 0uLL:
      return score % 10;
    case 1uLL:
      v6 = 103 * (score - 100 * (((1374389535 * score) >> 37) + (1374389535 * score < 0)));
      return ((v6 >> 15) & 1) + (v6 >> 10);
    case 2uLL:
      v4 = 5243 * (score - 1000 * (((274877907 * score) >> 38) + ((274877907 * score) >> 63)));
      return (v4 >> 19) + (v4 >> 31);
    default:
      return 0;
  }
}

@end