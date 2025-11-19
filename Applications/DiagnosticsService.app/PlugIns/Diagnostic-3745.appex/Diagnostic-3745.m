id stringOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

id numberOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

id dictionaryOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

uint64_t sub_100001668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001680(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) isCancelled];
  if ((v4 & 1) == 0)
  {
    v5 = [[DABackupRestoreLogLine alloc] initWithLogLine:v3];
    if ([(DABackupRestoreLogLine *)v5 backupRestoreEventType]!= 1001)
    {
LABEL_14:

      goto LABEL_15;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = [DABackupRestoreEvent alloc];
    v7 = [(DABackupRestoreLogLine *)v5 date];
    v8 = [(DABackupRestoreLogLine *)v5 eventSubType];
    v9 = [(DABackupRestoreEvent *)v6 initWithDate:v7 eventSubType:v8 successfulBackup:[(DABackupRestoreLogLine *)v5 didSucceed] eventCode:[(DABackupRestoreLogLine *)v5 backupCode]];

    if ([(DABackupRestoreEvent *)v9 successfulBackup])
    {
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      if (v11)
      {
        v12 = [v11 date];
        v13 = [(DABackupRestoreEvent *)v9 date];
        [v12 timeIntervalSinceDate:v13];
        v15 = v14;

        if (v15 >= 0.0)
        {
          goto LABEL_9;
        }

        v10 = *(*(a1 + 48) + 8);
      }

      objc_storeStrong((v10 + 40), v9);
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

LABEL_9:
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    if (v17)
    {
      v18 = [v17 date];
      v19 = [(DABackupRestoreEvent *)v9 date];
      [v18 timeIntervalSinceDate:v19];
      v21 = v20;

      if (v21 >= 0.0)
      {
LABEL_13:

        goto LABEL_14;
      }

      v16 = *(*(a1 + 64) + 8);
    }

    objc_storeStrong((v16 + 40), v9);
    goto LABEL_13;
  }

LABEL_15:

  return v4;
}