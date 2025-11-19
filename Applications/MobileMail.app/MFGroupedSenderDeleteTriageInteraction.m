@interface MFGroupedSenderDeleteTriageInteraction
- (id)_alertMessageForDisplayName:(id)a3 selectedBucket:(int64_t)a4 categoryMessageCount:(unint64_t)a5 totalMessageCount:(unint64_t)a6;
- (id)_alertTitleForDisplayName:(id)a3 selectedBucket:(int64_t)a4 categoryMessageCount:(unint64_t)a5 totalMessageCount:(unint64_t)a6;
- (void)_addMessageDeletionActionsForAlertController:(id)a3 triageInteraction:(id)a4 categoryMessageCount:(unint64_t)a5 continuation:(id)a6;
@end

@implementation MFGroupedSenderDeleteTriageInteraction

- (id)_alertTitleForDisplayName:(id)a3 selectedBucket:(int64_t)a4 categoryMessageCount:(unint64_t)a5 totalMessageCount:(unint64_t)a6
{
  v9 = a3;
  if (a6 == a5 || a4 == 4 || a4 == 3 || a4 == 2)
  {
    v10 = _EFLocalizedString();
    v11 = [NSString stringWithFormat:v10, v9];
  }

  else
  {
    v11 = &stru_100662A88;
  }

  return v11;
}

- (id)_alertMessageForDisplayName:(id)a3 selectedBucket:(int64_t)a4 categoryMessageCount:(unint64_t)a5 totalMessageCount:(unint64_t)a6
{
  v9 = a3;
  if (a6 == a5)
  {
    v10 = _EFLocalizedStringFromTable();
    v11 = [NSString localizedStringWithFormat:v10, a6, v9];
  }

  else
  {
    if ((a4 - 2) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = _EFLocalizedStringFromTable();
    }

    v11 = [NSString localizedStringWithFormat:v10, a5, a6, v9];
  }

  v12 = v11;

  return v12;
}

- (void)_addMessageDeletionActionsForAlertController:(id)a3 triageInteraction:(id)a4 categoryMessageCount:(unint64_t)a5 continuation:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = _EFLocalizedStringFromTable();
  v11 = [NSString localizedStringWithFormat:v10, a5];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001CEF5C;
  v19[3] = &unk_1006507D8;
  v12 = v9;
  v20 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:2 handler:v19];

  [v8 addAction:v13];
  v14 = _EFLocalizedString();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001CEF70;
  v17[3] = &unk_1006507D8;
  v15 = v12;
  v18 = v15;
  v16 = [UIAlertAction actionWithTitle:v14 style:1 handler:v17];

  [v8 addAction:v16];
}

@end