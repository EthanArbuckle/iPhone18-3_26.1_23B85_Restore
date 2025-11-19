@interface ATXTimelineRelevanceAdoptionGlobalInfo
- (ATXTimelineRelevanceAdoptionGlobalInfo)init;
- (id)globalDiverseSchemaRawNumber:(id)a3 kind:(id)a4;
@end

@implementation ATXTimelineRelevanceAdoptionGlobalInfo

- (ATXTimelineRelevanceAdoptionGlobalInfo)init
{
  v6.receiver = self;
  v6.super_class = ATXTimelineRelevanceAdoptionGlobalInfo;
  v2 = [(ATXTimelineRelevanceAdoptionGlobalInfo *)&v6 init];
  if (v2)
  {
    v3 = [ATXAssets2 dictionaryFromLazyPlistForClassName:@"ATXTimelineRelevanceAdoption"];
    globalAdoptionPlist = v2->_globalAdoptionPlist;
    v2->_globalAdoptionPlist = v3;
  }

  return v2;
}

- (id)globalDiverseSchemaRawNumber:(id)a3 kind:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    globalAdoptionPlist = self->_globalAdoptionPlist;
    v7 = a4;
    v8 = [(NSDictionary *)globalAdoptionPlist objectForKeyedSubscript:a3];
    v9 = [v8 objectForKeyedSubscript:v7];

    if (v9)
    {
      v4 = [v9 objectForKeyedSubscript:@"diverseScores"];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end