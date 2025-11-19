@interface MFGroupedSenderDestructiveTriageInteraction
+ (id)interactionWithQuery:(id)a3 groupedSenderDisplayName:(id)a4 selectedBucket:(int64_t)a5 undoManager:(id)a6 origin:(int64_t)a7 actor:(int64_t)a8;
- (id)_alertMessageForDisplayName:(id)a3 selectedBucket:(int64_t)a4 categoryMessageCount:(unint64_t)a5 totalMessageCount:(unint64_t)a6;
- (id)_alertTitleForDisplayName:(id)a3 selectedBucket:(int64_t)a4 categoryMessageCount:(unint64_t)a5 totalMessageCount:(unint64_t)a6;
- (void)_addMessageDeletionActionsForAlertController:(id)a3 triageInteraction:(id)a4 categoryMessageCount:(unint64_t)a5 continuation:(id)a6;
- (void)_performContinuation:(id)a3 withAlertController:(id)a4;
- (void)_updateAlertController:(id)a3 triageInteraction:(id)a4 displayName:(id)a5 selectedBucket:(int64_t)a6 categoryMessageCount:(unint64_t)a7 totalMessageCount:(unint64_t)a8 continuation:(id)a9;
@end

@implementation MFGroupedSenderDestructiveTriageInteraction

+ (id)interactionWithQuery:(id)a3 groupedSenderDisplayName:(id)a4 selectedBucket:(int64_t)a5 undoManager:(id)a6 origin:(int64_t)a7 actor:(int64_t)a8
{
  v14 = a4;
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___MFGroupedSenderDestructiveTriageInteraction;
  v15 = objc_msgSendSuper2(&v17, "interactionWithQuery:undoManager:origin:actor:", a3, a6, a7, a8);
  [v15 setDisplayName:v14];
  [v15 setSelectedBucket:a5];

  return v15;
}

- (id)_alertTitleForDisplayName:(id)a3 selectedBucket:(int64_t)a4 categoryMessageCount:(unint64_t)a5 totalMessageCount:(unint64_t)a6
{
  v8 = a3;
  [(MFGroupedSenderDestructiveTriageInteraction *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFGroupedSenderDestructiveTriageInteraction _alertTitleForDisplayName:selectedBucket:categoryMessageCount:totalMessageCount:]", "MFGroupedSenderDestructiveTriageInteraction.m", 37, "0");
}

- (id)_alertMessageForDisplayName:(id)a3 selectedBucket:(int64_t)a4 categoryMessageCount:(unint64_t)a5 totalMessageCount:(unint64_t)a6
{
  v8 = a3;
  [(MFGroupedSenderDestructiveTriageInteraction *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFGroupedSenderDestructiveTriageInteraction _alertMessageForDisplayName:selectedBucket:categoryMessageCount:totalMessageCount:]", "MFGroupedSenderDestructiveTriageInteraction.m", 41, "0");
}

- (void)_addMessageDeletionActionsForAlertController:(id)a3 triageInteraction:(id)a4 categoryMessageCount:(unint64_t)a5 continuation:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [(MFGroupedSenderDestructiveTriageInteraction *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFGroupedSenderDestructiveTriageInteraction _addMessageDeletionActionsForAlertController:triageInteraction:categoryMessageCount:continuation:]", "MFGroupedSenderDestructiveTriageInteraction.m", 45, "0");
}

- (void)_updateAlertController:(id)a3 triageInteraction:(id)a4 displayName:(id)a5 selectedBucket:(int64_t)a6 categoryMessageCount:(unint64_t)a7 totalMessageCount:(unint64_t)a8 continuation:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v19 = v15;
  v25 = v19;
  v26 = self;
  v20 = v17;
  v27 = v20;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v21 = v16;
  v28 = v21;
  v22 = v18;
  v29 = v22;
  v23 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v23 performBlock:&v24];
}

- (void)_performContinuation:(id)a3 withAlertController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  v9 = [(MFTriageInteraction *)self delegate];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001CF570;
  v16 = &unk_100654200;
  v17 = self;
  v10 = v8;
  v18 = v10;
  v11 = v6;
  v19 = v11;
  v12 = v7;
  v20 = v12;
  [v9 groupedSenderMessageCountForDestructiveTriageInteraction:self completionHandler:&v13];
  [v9 updateAvatarViewControllerForTriageInteraction:self alertController:{v10, v13, v14, v15, v16, v17}];
}

@end