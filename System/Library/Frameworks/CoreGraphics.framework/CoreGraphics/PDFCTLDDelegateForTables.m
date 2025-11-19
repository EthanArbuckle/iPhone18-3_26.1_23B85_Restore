@interface PDFCTLDDelegateForTables
- (int64_t)groupingConstraintForRegion1:(id)a3 region2:(id)a4;
@end

@implementation PDFCTLDDelegateForTables

- (int64_t)groupingConstraintForRegion1:(id)a3 region2:(id)a4
{
  v5 = a3;
  v6 = a4;
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