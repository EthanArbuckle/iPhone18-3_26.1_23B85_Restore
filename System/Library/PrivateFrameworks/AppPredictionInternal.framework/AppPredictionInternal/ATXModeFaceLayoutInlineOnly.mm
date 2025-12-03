@interface ATXModeFaceLayoutInlineOnly
- (BOOL)assignComplicationsFromCandidates:(id)candidates forSuggestedFace:(id)face;
@end

@implementation ATXModeFaceLayoutInlineOnly

- (BOOL)assignComplicationsFromCandidates:(id)candidates forSuggestedFace:(id)face
{
  faceCopy = face;
  v6 = [candidates _pas_filteredArrayWithTest:&__block_literal_global_16];
  v7 = [v6 count];
  if (v7)
  {
    [faceCopy setLayoutType:0];
    firstObject = [v6 firstObject];
    [faceCopy setSubtitleComplication:firstObject];
  }

  return v7 != 0;
}

@end