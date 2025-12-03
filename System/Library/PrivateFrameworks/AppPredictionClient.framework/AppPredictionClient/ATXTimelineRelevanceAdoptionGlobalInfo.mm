@interface ATXTimelineRelevanceAdoptionGlobalInfo
- (ATXTimelineRelevanceAdoptionGlobalInfo)init;
- (id)globalDiverseSchemaRawNumber:(id)number kind:(id)kind;
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

- (id)globalDiverseSchemaRawNumber:(id)number kind:(id)kind
{
  v4 = 0;
  if (number && kind)
  {
    globalAdoptionPlist = self->_globalAdoptionPlist;
    kindCopy = kind;
    v8 = [(NSDictionary *)globalAdoptionPlist objectForKeyedSubscript:number];
    v9 = [v8 objectForKeyedSubscript:kindCopy];

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