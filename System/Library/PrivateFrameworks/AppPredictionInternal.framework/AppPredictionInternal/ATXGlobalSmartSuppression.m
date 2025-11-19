@interface ATXGlobalSmartSuppression
+ (int)decodeAssociationScoreForContext:(unint64_t)a3 forEncodedScore:(int)a4;
+ (int)decodeGeoAssociationScoreAtGeoHashResolution:(unint64_t)a3 forEncodedScore:(int)a4;
- (ATXGlobalSmartSuppression)init;
- (id)fetchContextualAssociationScoresForBundleId:(id)a3;
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

- (id)fetchContextualAssociationScoresForBundleId:(id)a3
{
  v3 = [(_PASCFBurstTrie *)self->_associationScoresTrie payloadForString:a3];
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

+ (int)decodeAssociationScoreForContext:(unint64_t)a3 forEncodedScore:(int)a4
{
  result = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v9 = 1759218605 * (a4 % 100000);
      v6 = v9 >> 63;
      v7 = v9 >> 44;
    }

    else
    {
      if (a3 != 3)
      {
        return result;
      }

      v5 = 351843721 * (a4 % 1000000);
      v6 = v5 >> 63;
      v7 = v5 >> 45;
    }

    return v7 + v6;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      return (((33555 * (a4 % 10000)) >> 16) >> 9) + (((a4 % 10000 + ((-31981 * (a4 % 10000)) >> 16)) & 0x8000) >> 15);
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

+ (int)decodeGeoAssociationScoreAtGeoHashResolution:(unint64_t)a3 forEncodedScore:(int)a4
{
  switch(a3)
  {
    case 0uLL:
      return a4 % 10;
    case 1uLL:
      v6 = 103 * (a4 - 100 * (((1374389535 * a4) >> 37) + (1374389535 * a4 < 0)));
      return ((v6 >> 15) & 1) + (v6 >> 10);
    case 2uLL:
      v4 = 5243 * (a4 - 1000 * (((274877907 * a4) >> 38) + ((274877907 * a4) >> 63)));
      return (v4 >> 19) + (v4 >> 31);
    default:
      return 0;
  }
}

@end