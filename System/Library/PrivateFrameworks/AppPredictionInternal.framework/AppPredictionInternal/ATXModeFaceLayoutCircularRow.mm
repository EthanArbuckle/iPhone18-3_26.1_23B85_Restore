@interface ATXModeFaceLayoutCircularRow
- (BOOL)assignComplicationsFromCandidates:(id)candidates forSuggestedFace:(id)face;
@end

@implementation ATXModeFaceLayoutCircularRow

- (BOOL)assignComplicationsFromCandidates:(id)candidates forSuggestedFace:(id)face
{
  faceCopy = face;
  v6 = [candidates _pas_filteredArrayWithTest:&__block_literal_global_85];
  v7 = [v6 count];
  if (v7 >= 4)
  {
    [faceCopy setLayoutType:2];
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
    [faceCopy setComplications:v10];
  }

  return v7 > 3;
}

@end