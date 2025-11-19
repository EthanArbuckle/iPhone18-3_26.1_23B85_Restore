@interface NSPredicate(_NSCoreDataSQLPredicateCategories)
- (uint64_t)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSPredicate(_NSCoreDataSQLPredicateCategories)

- (uint64_t)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF08] defaultInstance] == a1 || objc_msgSend(MEMORY[0x1E696ABE8], "defaultInstance") == a1)
  {
    v8 = MEMORY[0x1E695DFA8];
    v9 = *MEMORY[0x1E69E9840];

    return [v8 set];
  }

  else
  {
    if (a3)
    {
      v5 = *MEMORY[0x1E696A250];
      v10 = @"expression";
      v11[0] = a1;
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:v5 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
    }

    v6 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

@end