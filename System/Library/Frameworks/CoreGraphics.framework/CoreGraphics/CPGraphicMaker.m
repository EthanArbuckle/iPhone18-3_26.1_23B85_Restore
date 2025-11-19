@interface CPGraphicMaker
+ (void)combineShapesIn:(id)a3;
+ (void)makeCombinedShapesIn:(id)a3;
@end

@implementation CPGraphicMaker

+ (void)makeCombinedShapesIn:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [a3 childrenOfClass:objc_opt_class() into:v4];
  [CPGraphicMaker combineShapesIn:v4];
}

+ (void)combineShapesIn:(id)a3
{
  [a3 sortUsingSelector:sel_compareInsertionOrder_];
  if ([a3 count] >= 2)
  {
    v4 = 2;
    while (1)
    {
      v5 = [a3 objectAtIndex:v4 - 2];
      v6 = [a3 objectAtIndex:v4 - 1];
      v7 = [v5 insertionOrder];
      v8 = [v6 insertionOrder];
      if (v8 == v7 || v7 + 1 == v8)
      {
        if ([v6 hasFill])
        {
          v10 = [v6 hasStroke];
        }

        else
        {
          v10 = 0;
        }

        v11 = [v5 hasFill];
        v12 = [v5 hasStroke];
        v13 = [v6 hasFill];
        v14 = [v6 hasStroke];
        if (v11 && (v14 & 1) != 0)
        {
          if ((v10 & 1) == 0)
          {
            goto LABEL_20;
          }

          v10 = 1;
        }

        else if (!(v10 & 1 | ((v13 & v12 & 1) == 0)))
        {
LABEL_20:
          [v6 left];
          v16 = v15;
          [v5 left];
          if (v16 == v17 && [v6 canCombineWith:v5])
          {
            [v5 addShape:v6];
            [a3 removeObjectAtIndex:v4 - 1];
          }
        }
      }

      else
      {
        v10 = 0;
      }

      if ([a3 count] > v4)
      {
        ++v4;
        if (!v10)
        {
          continue;
        }
      }

      return;
    }
  }
}

@end