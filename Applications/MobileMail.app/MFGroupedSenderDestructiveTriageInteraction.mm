@interface MFGroupedSenderDestructiveTriageInteraction
+ (id)interactionWithQuery:(id)query groupedSenderDisplayName:(id)name selectedBucket:(int64_t)bucket undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
- (id)_alertMessageForDisplayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount;
- (id)_alertTitleForDisplayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount;
- (void)_addMessageDeletionActionsForAlertController:(id)controller triageInteraction:(id)interaction categoryMessageCount:(unint64_t)count continuation:(id)continuation;
- (void)_performContinuation:(id)continuation withAlertController:(id)controller;
- (void)_updateAlertController:(id)controller triageInteraction:(id)interaction displayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount continuation:(id)continuation;
@end

@implementation MFGroupedSenderDestructiveTriageInteraction

+ (id)interactionWithQuery:(id)query groupedSenderDisplayName:(id)name selectedBucket:(int64_t)bucket undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___MFGroupedSenderDestructiveTriageInteraction;
  v15 = objc_msgSendSuper2(&v17, "interactionWithQuery:undoManager:origin:actor:", query, manager, origin, actor);
  [v15 setDisplayName:nameCopy];
  [v15 setSelectedBucket:bucket];

  return v15;
}

- (id)_alertTitleForDisplayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount
{
  nameCopy = name;
  [(MFGroupedSenderDestructiveTriageInteraction *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFGroupedSenderDestructiveTriageInteraction _alertTitleForDisplayName:selectedBucket:categoryMessageCount:totalMessageCount:]", "MFGroupedSenderDestructiveTriageInteraction.m", 37, "0");
}

- (id)_alertMessageForDisplayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount
{
  nameCopy = name;
  [(MFGroupedSenderDestructiveTriageInteraction *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFGroupedSenderDestructiveTriageInteraction _alertMessageForDisplayName:selectedBucket:categoryMessageCount:totalMessageCount:]", "MFGroupedSenderDestructiveTriageInteraction.m", 41, "0");
}

- (void)_addMessageDeletionActionsForAlertController:(id)controller triageInteraction:(id)interaction categoryMessageCount:(unint64_t)count continuation:(id)continuation
{
  controllerCopy = controller;
  interactionCopy = interaction;
  continuationCopy = continuation;
  [(MFGroupedSenderDestructiveTriageInteraction *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFGroupedSenderDestructiveTriageInteraction _addMessageDeletionActionsForAlertController:triageInteraction:categoryMessageCount:continuation:]", "MFGroupedSenderDestructiveTriageInteraction.m", 45, "0");
}

- (void)_updateAlertController:(id)controller triageInteraction:(id)interaction displayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount continuation:(id)continuation
{
  controllerCopy = controller;
  interactionCopy = interaction;
  nameCopy = name;
  continuationCopy = continuation;
  v19 = controllerCopy;
  v25 = v19;
  selfCopy = self;
  v20 = nameCopy;
  v27 = v20;
  bucketCopy = bucket;
  countCopy = count;
  messageCountCopy = messageCount;
  v21 = interactionCopy;
  v28 = v21;
  v22 = continuationCopy;
  v29 = v22;
  v23 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v23 performBlock:&v24];
}

- (void)_performContinuation:(id)continuation withAlertController:(id)controller
{
  continuationCopy = continuation;
  controllerCopy = controller;
  v8 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  delegate = [(MFTriageInteraction *)self delegate];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001CF570;
  v16 = &unk_100654200;
  selfCopy = self;
  v10 = v8;
  v18 = v10;
  v11 = continuationCopy;
  v19 = v11;
  v12 = controllerCopy;
  v20 = v12;
  [delegate groupedSenderMessageCountForDestructiveTriageInteraction:self completionHandler:&v13];
  [delegate updateAvatarViewControllerForTriageInteraction:self alertController:{v10, v13, v14, v15, v16, selfCopy}];
}

@end