@interface BackupHistoryController
- (void)parseLogsWithCollector:(id)a3;
- (void)start;
@end

@implementation BackupHistoryController

- (void)start
{
  v3 = [[DSGeneralLogCollector alloc] initWithLogIDs:&off_100004300];
  if (([(BackupHistoryController *)self isCancelled]& 1) == 0)
  {
    [(BackupHistoryController *)self parseLogsWithCollector:v3];
  }

  [(BackupHistoryController *)self setFinished:1];
}

- (void)parseLogsWithCollector:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100001400;
  v23 = sub_100001410;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100001400;
  v17 = sub_100001410;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001418;
  v12[3] = &unk_100004130;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = &v19;
  [v4 enumerateLogLinesWithBlock:v12];
  if (([(BackupHistoryController *)self isCancelled]& 1) == 0)
  {
    if (v20[5])
    {
      if (v14[5])
      {
        v5 = [(BackupHistoryController *)self result];
        [v5 setStatusCode:&off_100004348];
      }

      else
      {
        v5 = [(BackupHistoryController *)self result];
        [v5 setStatusCode:&off_100004330];
      }
    }

    else
    {
      v5 = [(BackupHistoryController *)self result];
      [v5 setStatusCode:&off_100004318];
    }

    v25[0] = @"lastBackupEvent";
    v6 = [v20[5] dictionary];
    if (v6)
    {
      [v20[5] dictionary];
    }

    else
    {
      +[NSNull null];
    }
    v7 = ;
    v25[1] = @"lastSuccessfulBackupEvent";
    v26[0] = v7;
    v8 = [v14[5] dictionary];
    if (v8)
    {
      [v14[5] dictionary];
    }

    else
    {
      +[NSNull null];
    }
    v9 = ;
    v26[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v11 = [(BackupHistoryController *)self result];
    [v11 setData:v10];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
}

@end