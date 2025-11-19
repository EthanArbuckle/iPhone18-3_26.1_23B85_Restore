@interface ATXModeFaceLayoutCircularRow
- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4;
@end

@implementation ATXModeFaceLayoutCircularRow

- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4
{
  v5 = a4;
  v6 = [a3 _pas_filteredArrayWithTest:&__block_literal_global_85];
  v7 = [v6 count];
  if (v7 >= 4)
  {
    [v5 setLayoutType:2];
    v8 = [v6 count];
    if (v8 >= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v6 subarrayWithRange:{0, v9}];
    [v5 setComplications:v10];
  }

  return v7 > 3;
}

@end