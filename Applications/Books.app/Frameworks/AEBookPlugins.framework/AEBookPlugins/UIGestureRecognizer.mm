@interface UIGestureRecognizer
- (BOOL)bk_isWKSyntheticTapGestureRecognizer;
- (BOOL)matchesTarget:(Class)target andAction:(SEL)action;
- (id)retrieveAndClearSelectionRectValue;
- (void)captureSelectionRectValueForTap:(id)tap;
@end

@implementation UIGestureRecognizer

- (BOOL)matchesTarget:(Class)target andAction:(SEL)action
{
  [(UIGestureRecognizer *)self valueForKey:@"_targets"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 valueForKey:{@"_target", v14}];
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 action] == action)
        {

          v12 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (void)captureSelectionRectValueForTap:(id)tap
{
  if (tap)
  {
    objc_setAssociatedObject(self, &off_1E4880, tap, &dword_0 + 1);
  }
}

- (id)retrieveAndClearSelectionRectValue
{
  v3 = objc_getAssociatedObject(self, &off_1E4880);
  if (v3)
  {
    objc_setAssociatedObject(self, &off_1E4880, 0, &dword_0 + 1);
  }

  return v3;
}

- (BOOL)bk_isWKSyntheticTapGestureRecognizer
{
  if (qword_22D038 != -1)
  {
    sub_138068();
  }

  return objc_opt_isKindOfClass() & 1;
}

@end