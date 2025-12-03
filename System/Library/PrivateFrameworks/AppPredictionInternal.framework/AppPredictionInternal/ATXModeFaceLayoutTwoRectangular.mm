@interface ATXModeFaceLayoutTwoRectangular
- (BOOL)assignComplicationsFromCandidates:(id)candidates forSuggestedFace:(id)face;
@end

@implementation ATXModeFaceLayoutTwoRectangular

- (BOOL)assignComplicationsFromCandidates:(id)candidates forSuggestedFace:(id)face
{
  faceCopy = face;
  v6 = [candidates _pas_filteredArrayWithTest:&__block_literal_global_143];
  v7 = [v6 count];
  if (v7 >= 2)
  {
    [faceCopy setLayoutType:1];
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
    [faceCopy setComplications:v10];
  }

  return v7 > 1;
}

@end