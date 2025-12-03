@interface CRLFindReplaceAllHelper
- (CRLFindReplaceAllHelper)initWithEditingCoordinator:(id)coordinator findString:(id)string replaceString:(id)replaceString options:(unint64_t)options;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (void)enqueueReplaceAllWithSelectionBehavior:(id)behavior modelEnumerator:(id)enumerator;
@end

@implementation CRLFindReplaceAllHelper

- (CRLFindReplaceAllHelper)initWithEditingCoordinator:(id)coordinator findString:(id)string replaceString:(id)replaceString options:(unint64_t)options
{
  coordinatorCopy = coordinator;
  stringCopy = string;
  replaceStringCopy = replaceString;
  v19.receiver = self;
  v19.super_class = CRLFindReplaceAllHelper;
  v13 = [(CRLFindReplaceAllHelper *)&v19 init];
  if (v13)
  {
    v14 = [stringCopy copy];
    findString = v13->_findString;
    v13->_findString = v14;

    v16 = [replaceStringCopy copy];
    replaceString = v13->_replaceString;
    v13->_replaceString = v16;

    v13->_options = options;
    objc_storeWeak(&v13->_editingCoordinator, coordinatorCopy);
  }

  return v13;
}

- (void)enqueueReplaceAllWithSelectionBehavior:(id)behavior modelEnumerator:(id)enumerator
{
  behaviorCopy = behavior;
  enumeratorCopy = enumerator;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [enumeratorCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v19 = behaviorCopy;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(enumeratorCopy);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 commandForReplaceAllWithProvider:self];
          if (v14)
          {
            if (!v10)
            {
              v10 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
            }

            [(CRLCommandGroup *)v10 addCommand:v14];
          }
        }
      }

      v9 = [enumeratorCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
    behaviorCopy = v19;
    if (v10)
    {
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"Replace All" value:0 table:@"UndoStrings"];
      [(CRLCommandGroup *)v10 setActionString:v16];

      editingCoordinator = [(CRLFindReplaceAllHelper *)self editingCoordinator];
      commandController = [editingCoordinator commandController];
      [commandController enqueueCommand:v10 withSelectionBehavior:v19];
    }
  }
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_editingCoordinator);

  return WeakRetained;
}

@end