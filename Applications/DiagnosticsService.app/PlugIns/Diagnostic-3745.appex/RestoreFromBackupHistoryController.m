@interface RestoreFromBackupHistoryController
- (void)parseLogsWithCollector:(id)a3;
- (void)start;
@end

@implementation RestoreFromBackupHistoryController

- (void)start
{
  v3 = [[DSGeneralLogCollector alloc] initWithLogIDs:&off_100004300];
  if (([(RestoreFromBackupHistoryController *)self isCancelled]& 1) == 0)
  {
    [(RestoreFromBackupHistoryController *)self parseLogsWithCollector:v3];
  }

  [(RestoreFromBackupHistoryController *)self setFinished:1];
}

- (void)parseLogsWithCollector:(id)a3
{
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100001668;
  v32 = sub_100001678;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100001668;
  v26 = sub_100001678;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001680;
  v13[3] = &unk_100004130;
  v13[4] = self;
  v13[5] = &v18;
  v13[6] = &v22;
  v13[7] = &v14;
  v13[8] = &v28;
  [v4 enumerateLogLinesWithBlock:v13];
  if (([(RestoreFromBackupHistoryController *)self isCancelled]& 1) == 0)
  {
    v5 = [(RestoreFromBackupHistoryController *)self result];
    [v5 setStatusCode:&off_100004318];

    if (*(v19 + 24) == 1)
    {
      if (!v23[5])
      {
        v6 = [(RestoreFromBackupHistoryController *)self result];
        [v6 setStatusCode:&off_100004330];
        goto LABEL_7;
      }

      if (*(v15 + 24) == 1)
      {
        v6 = [(RestoreFromBackupHistoryController *)self result];
        [v6 setStatusCode:&off_100004348];
LABEL_7:
      }
    }

    v34[0] = @"lastBackupRestoreEvent";
    v7 = [v29[5] dictionary];
    v8 = dictionaryOrNull(v7);
    v34[1] = @"lastSuccessfulBackupRestoreEvent";
    v35[0] = v8;
    v9 = [v23[5] dictionary];
    v10 = dictionaryOrNull(v9);
    v35[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v12 = [(RestoreFromBackupHistoryController *)self result];
    [v12 setData:v11];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
}

@end