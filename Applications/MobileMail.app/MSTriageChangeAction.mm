@interface MSTriageChangeAction
+ (id)mf_indicatorPreviewChangeWithAction:(int64_t)action interaction:(id)interaction;
@end

@implementation MSTriageChangeAction

+ (id)mf_indicatorPreviewChangeWithAction:(int64_t)action interaction:(id)interaction
{
  interactionCopy = interaction;
  v6 = interactionCopy;
  v7 = 0;
  if (action > 9)
  {
    if ((action - 10) > 1)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (action == 2)
  {
LABEL_9:
    v7 = [[MSTriageChangeAction alloc] initWithChangeAction:action flagState:{objc_msgSend(interactionCopy, "flagState") ^ objc_msgSend(interactionCopy, "shouldOverrideFlagState")}];
    goto LABEL_15;
  }

  if (action != 3)
  {
    if (action != 6)
    {
      goto LABEL_15;
    }

    flagState = [interactionCopy flagState];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      flagColor = [v6 flagColor];
      v10 = flagColor != 0;

      if ((v10 & flagState & 1) == 0)
      {
LABEL_7:
        selectedDate = 0;
        v12 = 0;
LABEL_13:
        v15 = [[MSTriageChangeAction alloc] initWithChangeAction:6 flagState:v12 flagColors:selectedDate];
        goto LABEL_14;
      }
    }

    else if (!flagState)
    {
      goto LABEL_7;
    }

    selectedDate = [[NSIndexSet alloc] initWithIndex:{+[MFFlagTriageInteraction defaultColor](MFFlagTriageInteraction, "defaultColor")}];
    v12 = 1;
    goto LABEL_13;
  }

  v13 = [MSTriageChangeAction alloc];
  hasReadLater = [v6 hasReadLater];
  selectedDate = [v6 selectedDate];
  v15 = [v13 initWithChangeAction:3 flagState:hasReadLater readLaterDate:selectedDate];
LABEL_14:
  v7 = v15;

LABEL_15:

  return v7;
}

@end