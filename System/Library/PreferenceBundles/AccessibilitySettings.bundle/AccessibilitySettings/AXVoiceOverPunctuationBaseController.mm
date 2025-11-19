@interface AXVoiceOverPunctuationBaseController
- (NSArray)customPunctuationGroups;
- (NSArray)systemPunctuationGroups;
@end

@implementation AXVoiceOverPunctuationBaseController

- (NSArray)systemPunctuationGroups
{
  v2 = +[AXSSPunctuationManager sharedDatabase];
  v3 = [v2 punctuationGroups];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_28];

  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_286];

  return v5;
}

int64_t __63__AXVoiceOverPunctuationBaseController_systemPunctuationGroups__block_invoke_2(id a1, AXSSPunctuationGroup *a2, AXSSPunctuationGroup *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(AXSSPunctuationGroup *)v4 uuid];
  v7 = [v6 isEqual:AXSSVoiceOverPunctuationGroupAll];

  if (v7)
  {
    goto LABEL_2;
  }

  v9 = [(AXSSPunctuationGroup *)v4 uuid];
  if (([v9 isEqual:AXSSVoiceOverPunctuationGroupSome] & 1) == 0)
  {

LABEL_7:
    v12 = [(AXSSPunctuationGroup *)v4 uuid];
    v13 = [v12 isEqual:AXSSVoiceOverPunctuationGroupNone];

    v8 = v13;
    goto LABEL_8;
  }

  v10 = [(AXSSPunctuationGroup *)v5 uuid];
  v11 = [v10 isEqual:AXSSVoiceOverPunctuationGroupAll];

  if (v11)
  {
    goto LABEL_7;
  }

LABEL_2:
  v8 = -1;
LABEL_8:

  return v8;
}

- (NSArray)customPunctuationGroups
{
  v2 = +[AXSSPunctuationManager sharedDatabase];
  v3 = [v2 punctuationGroups];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_288];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_290];

  return v5;
}

int64_t __63__AXVoiceOverPunctuationBaseController_customPunctuationGroups__block_invoke_2(id a1, AXSSPunctuationGroup *a2, AXSSPunctuationGroup *a3)
{
  v4 = a3;
  v5 = [(AXSSPunctuationGroup *)a2 name];
  v6 = [(AXSSPunctuationGroup *)v4 name];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

@end