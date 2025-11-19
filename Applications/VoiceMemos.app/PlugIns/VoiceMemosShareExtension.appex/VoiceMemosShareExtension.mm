void sub_100001508(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 lastPathComponent];
    v8 = [v7 stringByDeletingPathExtension];

    v9 = +[NSFileManager defaultManager];
    v26 = 0;
    v10 = [v9 URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:&v26];
    v11 = v26;

    v12 = *(a1 + 32);
    if (v10)
    {
      v23 = v8;
      [v12 setTemporaryDirectoryURL:v10];
      v13 = [v5 lastPathComponent];
      v14 = [v10 URLByAppendingPathComponent:v13];

      v15 = +[NSFileManager defaultManager];
      v25 = 0;
      v16 = [v15 copyItemAtURL:v5 toURL:v14 error:&v25];
      v17 = v25;
      if (v16)
      {
        v24 = 0;
        [v14 getResourceValue:&v24 forKey:NSURLCreationDateKey error:0];
        v18 = v24;
        v19 = [[RCSharedAudioFileInfo alloc] initWithURL:v14 fileName:v23 creationDate:v18];
        [*(a1 + 32) setSharedAudioFileInfo:v19];

        v20 = *(a1 + 32);
        v21 = [v20 sharedAudioFileInfo];
        [v20 _didLoadFileInPlaceWithFileInfo:v21];
      }

      v8 = v23;
    }

    else
    {
      v14 = [v12 extensionContext];
      [v14 cancelRequestWithError:v11];
    }
  }

  else
  {
    v22 = [*(a1 + 32) extensionContext];
    [v22 cancelRequestWithError:v6];
  }
}

void sub_100001BF0(uint64_t a1)
{
  v2 = [*(a1 + 32) tableViewController];
  v3 = [*(a1 + 40) fileName];
  [v2 setSharedFileName:v3];

  v4 = [*(a1 + 32) doneButtonItem];
  [v4 setEnabled:1];
}

void sub_100001F2C(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  [*(a1 + 32) _removeTemporaryAudioFileIfNeeded];
  v5 = [*(a1 + 32) extensionContext];
  v6 = v5;
  if (a2)
  {
    v7 = [*(a1 + 32) extensionContext];
    v8 = [v7 inputItems];
    [v6 completeRequestReturningItems:v8 completionHandler:0];

    +[RCAnalyticsUtilities sendReceivedSharedRecording];
  }

  else
  {
    [v5 cancelRequestWithError:v9];
  }
}

void sub_10000216C(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCShareViewController _removeTemporaryAudioFileIfNeeded]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- Unable to remove file. Error = %@", &v2, 0x16u);
}