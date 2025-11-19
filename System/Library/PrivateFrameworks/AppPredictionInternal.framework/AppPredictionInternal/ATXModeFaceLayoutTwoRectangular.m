@interface ATXModeFaceLayoutTwoRectangular
- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4;
@end

@implementation ATXModeFaceLayoutTwoRectangular

- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4
{
  v5 = a4;
  v6 = [a3 _pas_filteredArrayWithTest:&__block_literal_global_143];
  v7 = [v6 count];
  if (v7 >= 2)
  {
    [v5 setLayoutType:1];
    v8 = [v6 count];
    if (v8 >= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v6 subarrayWithRange:{0, v9}];
    [v5 setComplications:v10];
  }

  return v7 > 1;
}

@end