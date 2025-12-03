@interface MFGroupedSenderArchiveTriageInteraction
- (id)_alertMessageForDisplayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount;
- (id)_alertTitleForDisplayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount;
- (void)_addMessageDeletionActionsForAlertController:(id)controller triageInteraction:(id)interaction categoryMessageCount:(unint64_t)count continuation:(id)continuation;
@end

@implementation MFGroupedSenderArchiveTriageInteraction

- (id)_alertTitleForDisplayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount
{
  nameCopy = name;
  if (messageCount == count || bucket == 4 || bucket == 3 || bucket == 2)
  {
    v10 = _EFLocalizedString();
    nameCopy = [NSString stringWithFormat:v10, nameCopy];
  }

  else
  {
    nameCopy = &stru_100662A88;
  }

  return nameCopy;
}

- (id)_alertMessageForDisplayName:(id)name selectedBucket:(int64_t)bucket categoryMessageCount:(unint64_t)count totalMessageCount:(unint64_t)messageCount
{
  nameCopy = name;
  if (messageCount == count)
  {
    v10 = _EFLocalizedStringFromTable();
    nameCopy = [NSString localizedStringWithFormat:v10, messageCount, nameCopy];
  }

  else
  {
    if ((bucket - 2) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = _EFLocalizedStringFromTable();
    }

    nameCopy = [NSString localizedStringWithFormat:v10, count, messageCount, nameCopy];
  }

  v12 = nameCopy;

  return v12;
}

- (void)_addMessageDeletionActionsForAlertController:(id)controller triageInteraction:(id)interaction categoryMessageCount:(unint64_t)count continuation:(id)continuation
{
  controllerCopy = controller;
  continuationCopy = continuation;
  v10 = _EFLocalizedStringFromTable();
  v11 = [NSString localizedStringWithFormat:v10, count];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001CE9B8;
  v19[3] = &unk_1006507D8;
  v12 = continuationCopy;
  v20 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:2 handler:v19];

  [controllerCopy addAction:v13];
  v14 = _EFLocalizedString();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001CE9CC;
  v17[3] = &unk_1006507D8;
  v15 = v12;
  v18 = v15;
  v16 = [UIAlertAction actionWithTitle:v14 style:1 handler:v17];

  [controllerCopy addAction:v16];
}

@end