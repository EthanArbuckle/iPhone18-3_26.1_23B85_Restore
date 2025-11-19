@interface ATXModeFaceLayoutInlineOnly
- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4;
@end

@implementation ATXModeFaceLayoutInlineOnly

- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4
{
  v5 = a4;
  v6 = [a3 _pas_filteredArrayWithTest:&__block_literal_global_16];
  v7 = [v6 count];
  if (v7)
  {
    [v5 setLayoutType:0];
    v8 = [v6 firstObject];
    [v5 setSubtitleComplication:v8];
  }

  return v7 != 0;
}

@end