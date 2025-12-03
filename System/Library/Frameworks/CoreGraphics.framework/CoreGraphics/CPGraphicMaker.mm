@interface CPGraphicMaker
+ (void)combineShapesIn:(id)in;
+ (void)makeCombinedShapesIn:(id)in;
@end

@implementation CPGraphicMaker

+ (void)makeCombinedShapesIn:(id)in
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [in childrenOfClass:objc_opt_class() into:v4];
  [CPGraphicMaker combineShapesIn:v4];
}

+ (void)combineShapesIn:(id)in
{
  [in sortUsingSelector:sel_compareInsertionOrder_];
  if ([in count] >= 2)
  {
    v4 = 2;
    while (1)
    {
      v5 = [in objectAtIndex:v4 - 2];
      v6 = [in objectAtIndex:v4 - 1];
      insertionOrder = [v5 insertionOrder];
      insertionOrder2 = [v6 insertionOrder];
      if (insertionOrder2 == insertionOrder || insertionOrder + 1 == insertionOrder2)
      {
        if ([v6 hasFill])
        {
          hasStroke = [v6 hasStroke];
        }

        else
        {
          hasStroke = 0;
        }

        hasFill = [v5 hasFill];
        hasStroke2 = [v5 hasStroke];
        hasFill2 = [v6 hasFill];
        hasStroke3 = [v6 hasStroke];
        if (hasFill && (hasStroke3 & 1) != 0)
        {
          if ((hasStroke & 1) == 0)
          {
            goto LABEL_20;
          }

          hasStroke = 1;
        }

        else if (!(hasStroke & 1 | ((hasFill2 & hasStroke2 & 1) == 0)))
        {
LABEL_20:
          [v6 left];
          v16 = v15;
          [v5 left];
          if (v16 == v17 && [v6 canCombineWith:v5])
          {
            [v5 addShape:v6];
            [in removeObjectAtIndex:v4 - 1];
          }
        }
      }

      else
      {
        hasStroke = 0;
      }

      if ([in count] > v4)
      {
        ++v4;
        if (!hasStroke)
        {
          continue;
        }
      }

      return;
    }
  }
}

@end