@interface PDFCTLDDelegateForTables
- (int64_t)groupingConstraintForRegion1:(id)region1 region2:(id)region2;
@end

@implementation PDFCTLDDelegateForTables

- (int64_t)groupingConstraintForRegion1:(id)region1 region2:(id)region2
{
  region1Copy = region1;
  region2Copy = region2;
  v7 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v8 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_6:

  return v10;
}

@end