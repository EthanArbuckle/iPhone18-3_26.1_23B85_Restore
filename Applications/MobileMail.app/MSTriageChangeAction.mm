@interface MSTriageChangeAction
+ (id)mf_indicatorPreviewChangeWithAction:(int64_t)a3 interaction:(id)a4;
@end

@implementation MSTriageChangeAction

+ (id)mf_indicatorPreviewChangeWithAction:(int64_t)a3 interaction:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 > 9)
  {
    if ((a3 - 10) > 1)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (a3 == 2)
  {
LABEL_9:
    v7 = [[MSTriageChangeAction alloc] initWithChangeAction:a3 flagState:{objc_msgSend(v5, "flagState") ^ objc_msgSend(v5, "shouldOverrideFlagState")}];
    goto LABEL_15;
  }

  if (a3 != 3)
  {
    if (a3 != 6)
    {
      goto LABEL_15;
    }

    v8 = [v5 flagState];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 flagColor];
      v10 = v9 != 0;

      if ((v10 & v8 & 1) == 0)
      {
LABEL_7:
        v11 = 0;
        v12 = 0;
LABEL_13:
        v15 = [[MSTriageChangeAction alloc] initWithChangeAction:6 flagState:v12 flagColors:v11];
        goto LABEL_14;
      }
    }

    else if (!v8)
    {
      goto LABEL_7;
    }

    v11 = [[NSIndexSet alloc] initWithIndex:{+[MFFlagTriageInteraction defaultColor](MFFlagTriageInteraction, "defaultColor")}];
    v12 = 1;
    goto LABEL_13;
  }

  v13 = [MSTriageChangeAction alloc];
  v14 = [v6 hasReadLater];
  v11 = [v6 selectedDate];
  v15 = [v13 initWithChangeAction:3 flagState:v14 readLaterDate:v11];
LABEL_14:
  v7 = v15;

LABEL_15:

  return v7;
}

@end