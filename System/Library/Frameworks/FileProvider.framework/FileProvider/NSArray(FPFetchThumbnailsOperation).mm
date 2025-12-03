@interface NSArray(FPFetchThumbnailsOperation)
- (id)fp_shortDescriptionExpandingAtMost:()FPFetchThumbnailsOperation;
@end

@implementation NSArray(FPFetchThumbnailsOperation)

- (id)fp_shortDescriptionExpandingAtMost:()FPFetchThumbnailsOperation
{
  if ([self count] <= a3)
  {
    v9 = MEMORY[0x1E696AEC0];
    v5 = [self componentsJoinedByString:{@", "}];
    v8 = [v9 stringWithFormat:@"[%@]", v5];
  }

  else
  {
    v5 = [self subarrayWithRange:{0, a3}];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v5 componentsJoinedByString:{@", "}];
    v8 = [v6 stringWithFormat:@"[%@, (+%lu more)]", v7, objc_msgSend(self, "count") - a3];
  }

  return v8;
}

@end