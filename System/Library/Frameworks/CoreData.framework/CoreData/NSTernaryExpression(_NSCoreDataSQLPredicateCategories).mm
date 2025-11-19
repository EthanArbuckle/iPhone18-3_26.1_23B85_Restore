@interface NSTernaryExpression(_NSCoreDataSQLPredicateCategories)
- (void)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSTernaryExpression(_NSCoreDataSQLPredicateCategories)

- (void)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v15 = 0;
  v6 = [objc_msgSend(a1 "predicate")];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [objc_msgSend(a1 "trueExpression")];
  if (!v7)
  {
    v6 = 0;
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = [objc_msgSend(a1 "falseExpression")];
  if (!v8)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = [v6 mutableCopy];
  [v6 addObjectsFromArray:{objc_msgSend(v7, "allObjects")}];
  [v6 addObjectsFromArray:{objc_msgSend(v8, "allObjects")}];
  v9 = v6;
LABEL_8:
  v10 = v15;
  if (a3 && v15)
  {
    *a3 = v15;
  }

  [v5 drain];
  v11 = 0;
  v12 = v15;
  v13 = v9;
  return v6;
}

@end