@interface NSIndexPath(BaseBoard)
+ (id)bs_emptyPath;
- (id)bs_indexPathByAddingPrefix:()BaseBoard;
- (id)bs_nearestCommonAncestorWithIndexPath:()BaseBoard;
- (id)bs_subpathFromPosition:()BaseBoard;
- (id)bs_subpathWithRange:()BaseBoard;
- (uint64_t)bs_hasPrefix:()BaseBoard;
@end

@implementation NSIndexPath(BaseBoard)

+ (id)bs_emptyPath
{
  if (qword_1ED450098 != -1)
  {
    dispatch_once(&qword_1ED450098, &__block_literal_global_37);
  }

  v1 = _MergedGlobals_35;

  return v1;
}

- (id)bs_subpathWithRange:()BaseBoard
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3 + a4 > [a1 length])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"NSIndexPath+BaseBoard.m" lineNumber:25 description:{@"constraint violation: range.location(%lu) + range.length(%lu) <= self.length(%lu)", a3, a4, objc_msgSend(a1, "length")}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
LABEL_3:
    v8 = v12 - ((8 * [a1 length] + 15) & 0xFFFFFFFFFFFFFFF0);
    [a1 getIndexes:v8];
    v9 = [MEMORY[0x1E696AC88] indexPathWithIndexes:&v8[8 * a3] length:a4];
    goto LABEL_6;
  }

  v9 = [MEMORY[0x1E696AC88] bs_emptyPath];
LABEL_6:

  return v9;
}

- (id)bs_subpathFromPosition:()BaseBoard
{
  v5 = [a1 length];
  if (v5 <= a3)
  {
    [MEMORY[0x1E696AC88] bs_emptyPath];
  }

  else
  {
    [a1 bs_subpathWithRange:{a3, v5 - a3}];
  }
  v6 = ;

  return v6;
}

- (id)bs_indexPathByAddingPrefix:()BaseBoard
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 length];
  v6 = [a1 length] + v5;
  if (v6)
  {
    [v4 getIndexes:v9 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    [a1 getIndexes:&v9[v5] - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v7 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v9 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0) length:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AC88] bs_emptyPath];
  }

  return v7;
}

- (uint64_t)bs_hasPrefix:()BaseBoard
{
  v4 = a3;
  v5 = [v4 length];
  if (v5 <= [a1 length])
  {
    if (v5)
    {
      v7 = 0;
      v8 = v5 - 1;
      do
      {
        v9 = [a1 indexAtPosition:v7];
        v10 = v9 == [v4 indexAtPosition:v7];
        v6 = v10;
        if (!v10)
        {
          break;
        }

        v10 = v8 == v7++;
      }

      while (!v10);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bs_nearestCommonAncestorWithIndexPath:()BaseBoard
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"NSIndexPath+BaseBoard.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v6 = [a1 length];
  v7 = [v5 length];
  if (!v6 || !v7)
  {
    goto LABEL_13;
  }

  v8 = v6 >= v7 ? v7 : v6;
  v9 = v15 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  for (i = 0; ; ++i)
  {
    v11 = [a1 indexAtPosition:i];
    if (v11 != [v5 indexAtPosition:i])
    {
      break;
    }

    *&v9[8 * i] = [a1 indexAtPosition:i];
  }

  if (!i || ([MEMORY[0x1E696AC88] indexPathWithIndexes:v9 length:i], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_13:
    v12 = [MEMORY[0x1E696AC88] bs_emptyPath];
  }

  return v12;
}

@end