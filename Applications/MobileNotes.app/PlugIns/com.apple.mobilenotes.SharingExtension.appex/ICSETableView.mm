@interface ICSETableView
- (id)_axFirstLastOpaqueHeaderElementFromSection:(int64_t)a3 options:(id)a4 direction:(int64_t)a5;
- (id)accessibilityIdentifier;
- (int64_t)style;
@end

@implementation ICSETableView

- (int64_t)style
{
  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = ICSETableView;
  return [(ICSETableView *)&v4 style];
}

- (id)_axFirstLastOpaqueHeaderElementFromSection:(int64_t)a3 options:(id)a4 direction:(int64_t)a5
{
  v17.receiver = self;
  v17.super_class = ICSETableView;
  v8 = [(ICSETableView *)&v17 _axFirstLastOpaqueHeaderElementFromSection:a3 options:a4 direction:?];
  if (v8)
  {
    goto LABEL_13;
  }

  v9 = [(ICSETableView *)self numberOfRowsInSection:a3];
  if (a5 == 1)
  {
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = UIAccessibilityTraitHeader;
      do
      {
        v12 = [NSIndexPath indexPathForRow:v10 inSection:a3];
        v8 = [(ICSETableView *)self accessibilityCellForRowAtIndexPath:v12];

        if ((v11 & ~[v8 accessibilityTraits]) == 0)
        {
          goto LABEL_13;
        }
      }

      while (++v10 < [(ICSETableView *)self numberOfRowsInSection:a3]);
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (v9 < 1)
  {
    goto LABEL_12;
  }

  v13 = UIAccessibilityTraitHeader;
  v14 = v9 + 1;
  while (1)
  {
    v15 = [NSIndexPath indexPathForRow:v14 - 2 inSection:a3];
    v8 = [(ICSETableView *)self accessibilityCellForRowAtIndexPath:v15];

    if ((v13 & ~[v8 accessibilityTraits]) == 0)
    {
      break;
    }

    if (--v14 <= 1)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return v8;
}

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end