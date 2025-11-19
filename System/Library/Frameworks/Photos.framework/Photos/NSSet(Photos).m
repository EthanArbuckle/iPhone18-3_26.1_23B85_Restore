@interface NSSet(Photos)
- (void)ph_enumerateIntersectionWithSet:()Photos usingBlock:;
@end

@implementation NSSet(Photos)

- (void)ph_enumerateIntersectionWithSet:()Photos usingBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 count];
  v9 = [v6 count];
  v10 = a1;
  v11 = v8 >= v9;
  if (v8 >= v9)
  {
    v12 = v6;
  }

  else
  {
    v12 = v10;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__NSSet_Photos__ph_enumerateIntersectionWithSet_usingBlock___block_invoke;
  v17[3] = &unk_1E75A3518;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  v18 = v13;
  v19 = v7;
  v14 = v7;
  v15 = v13;
  v16 = v6;
  [v12 enumerateObjectsUsingBlock:v17];
}

@end