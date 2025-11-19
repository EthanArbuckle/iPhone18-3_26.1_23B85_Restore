@interface CRLFindReplaceAllHelper
- (CRLFindReplaceAllHelper)initWithEditingCoordinator:(id)a3 findString:(id)a4 replaceString:(id)a5 options:(unint64_t)a6;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (void)enqueueReplaceAllWithSelectionBehavior:(id)a3 modelEnumerator:(id)a4;
@end

@implementation CRLFindReplaceAllHelper

- (CRLFindReplaceAllHelper)initWithEditingCoordinator:(id)a3 findString:(id)a4 replaceString:(id)a5 options:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = CRLFindReplaceAllHelper;
  v13 = [(CRLFindReplaceAllHelper *)&v19 init];
  if (v13)
  {
    v14 = [v11 copy];
    findString = v13->_findString;
    v13->_findString = v14;

    v16 = [v12 copy];
    replaceString = v13->_replaceString;
    v13->_replaceString = v16;

    v13->_options = a6;
    objc_storeWeak(&v13->_editingCoordinator, v10);
  }

  return v13;
}

- (void)enqueueReplaceAllWithSelectionBehavior:(id)a3 modelEnumerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v19 = v6;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
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

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
    v6 = v19;
    if (v10)
    {
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"Replace All" value:0 table:@"UndoStrings"];
      [(CRLCommandGroup *)v10 setActionString:v16];

      v17 = [(CRLFindReplaceAllHelper *)self editingCoordinator];
      v18 = [v17 commandController];
      [v18 enqueueCommand:v10 withSelectionBehavior:v19];
    }
  }
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_editingCoordinator);

  return WeakRetained;
}

@end