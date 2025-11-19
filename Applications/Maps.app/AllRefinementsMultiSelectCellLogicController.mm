@interface AllRefinementsMultiSelectCellLogicController
- (BOOL)allowsSelectionWithViewModel:(id)a3;
- (void)didTapOnMultiSelectElement:(id)a3 selectionSequenceNumber:(id)a4;
@end

@implementation AllRefinementsMultiSelectCellLogicController

- (void)didTapOnMultiSelectElement:(id)a3 selectionSequenceNumber:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setIsSelected:{objc_msgSend(v6, "isSelected") ^ 1}];
  [v6 setSelectionSequenceNumber:v5];
}

- (BOOL)allowsSelectionWithViewModel:(id)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 elements];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v12 + 1) + 8 * i) isSelected];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = v7 < [v3 maximumNumberOfSelectableElements];
  return v10;
}

@end