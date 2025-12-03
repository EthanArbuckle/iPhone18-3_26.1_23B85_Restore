@interface AllRefinementsMultiSelectCellLogicController
- (BOOL)allowsSelectionWithViewModel:(id)model;
- (void)didTapOnMultiSelectElement:(id)element selectionSequenceNumber:(id)number;
@end

@implementation AllRefinementsMultiSelectCellLogicController

- (void)didTapOnMultiSelectElement:(id)element selectionSequenceNumber:(id)number
{
  numberCopy = number;
  elementCopy = element;
  [elementCopy setIsSelected:{objc_msgSend(elementCopy, "isSelected") ^ 1}];
  [elementCopy setSelectionSequenceNumber:numberCopy];
}

- (BOOL)allowsSelectionWithViewModel:(id)model
{
  modelCopy = model;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  elements = [modelCopy elements];
  v5 = [elements countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(elements);
        }

        v7 += [*(*(&v12 + 1) + 8 * i) isSelected];
      }

      v6 = [elements countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = v7 < [modelCopy maximumNumberOfSelectableElements];
  return v10;
}

@end