@interface MFRestoreModelCategoryForAllMessagesTriageInteraction
+ (id)interactionWithMessageRepository:(id)repository origin:(int64_t)origin actor:(int64_t)actor;
- (id)triageAction;
- (void)_performContinuation:(id)continuation withAlertController:(id)controller;
@end

@implementation MFRestoreModelCategoryForAllMessagesTriageInteraction

+ (id)interactionWithMessageRepository:(id)repository origin:(int64_t)origin actor:(int64_t)actor
{
  repositoryCopy = repository;
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___MFRestoreModelCategoryForAllMessagesTriageInteraction;
  v9 = objc_msgSendSuper2(&v12, "interactionWithMessageListItemSelection:undoManager:origin:actor:query:", 0, 0, origin, actor, 0);
  v10 = v9;
  if (v9)
  {
    [v9 setMessageRepository:repositoryCopy];
  }

  return v10;
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSRestoreModelCategoryForAllMessagesTriageAction alloc];
    messageRepository = [(MFRestoreModelCategoryForAllMessagesTriageInteraction *)self messageRepository];
    v6 = [v4 initWithMessageRepository:messageRepository origin:-[MFTriageInteraction origin](self actor:{"origin"), -[MFTriageInteraction actor](self, "actor")}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (void)_performContinuation:(id)continuation withAlertController:(id)controller
{
  continuationCopy = continuation;
  controllerCopy = controller;
  v7 = _EFLocalizedStringFromTable();
  [(MFTriageInteraction *)self _performContinuation:continuationCopy withAlertController:controllerCopy title:v7 shouldDismissPresentingViewController:1];
}

@end