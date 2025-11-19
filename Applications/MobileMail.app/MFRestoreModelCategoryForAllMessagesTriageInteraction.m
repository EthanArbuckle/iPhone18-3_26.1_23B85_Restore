@interface MFRestoreModelCategoryForAllMessagesTriageInteraction
+ (id)interactionWithMessageRepository:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5;
- (id)triageAction;
- (void)_performContinuation:(id)a3 withAlertController:(id)a4;
@end

@implementation MFRestoreModelCategoryForAllMessagesTriageInteraction

+ (id)interactionWithMessageRepository:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5
{
  v8 = a3;
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___MFRestoreModelCategoryForAllMessagesTriageInteraction;
  v9 = objc_msgSendSuper2(&v12, "interactionWithMessageListItemSelection:undoManager:origin:actor:query:", 0, 0, a4, a5, 0);
  v10 = v9;
  if (v9)
  {
    [v9 setMessageRepository:v8];
  }

  return v10;
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSRestoreModelCategoryForAllMessagesTriageAction alloc];
    v5 = [(MFRestoreModelCategoryForAllMessagesTriageInteraction *)self messageRepository];
    v6 = [v4 initWithMessageRepository:v5 origin:-[MFTriageInteraction origin](self actor:{"origin"), -[MFTriageInteraction actor](self, "actor")}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (void)_performContinuation:(id)a3 withAlertController:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = _EFLocalizedStringFromTable();
  [(MFTriageInteraction *)self _performContinuation:v8 withAlertController:v6 title:v7 shouldDismissPresentingViewController:1];
}

@end