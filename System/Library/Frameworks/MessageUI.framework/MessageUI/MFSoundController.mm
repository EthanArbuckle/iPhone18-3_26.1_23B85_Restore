@interface MFSoundController
+ (id)lazyAlertWithType:(int64_t)type topic:(id)topic;
+ (void)_playAlertWithType:(int64_t)type topic:(id)topic;
+ (void)playNewMailSoundStyle:(unint64_t)style forAccount:(id)account;
@end

@implementation MFSoundController

+ (id)lazyAlertWithType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v6 = getTLAlertConfigurationClass_softClass;
  v27 = getTLAlertConfigurationClass_softClass;
  if (!getTLAlertConfigurationClass_softClass)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __getTLAlertConfigurationClass_block_invoke;
    v22 = &unk_1E806CA38;
    v23 = &v24;
    __getTLAlertConfigurationClass_block_invoke(&v19);
    v6 = v25[3];
  }

  v7 = v6;
  _Block_object_dispose(&v24, 8);
  v8 = [[v6 alloc] initWithType:type];
  [v8 setTopic:topicCopy];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v9 = getTLAlertClass_softClass;
  v27 = getTLAlertClass_softClass;
  if (!getTLAlertClass_softClass)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __getTLAlertClass_block_invoke;
    v22 = &unk_1E806CA38;
    v23 = &v24;
    __getTLAlertClass_block_invoke(&v19);
    v9 = v25[3];
  }

  v10 = v9;
  _Block_object_dispose(&v24, 8);
  v11 = [v9 alertWithConfiguration:v8];
  v12 = MEMORY[0x1E699B7C8];
  if (v11)
  {
    globalAsyncScheduler = [MEMORY[0x1E699B978] globalAsyncScheduler];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__MFSoundController_lazyAlertWithType_topic___block_invoke;
    v17[3] = &unk_1E8070918;
    v18 = v11;
    v14 = [v12 onScheduler:globalAsyncScheduler lazyFutureWithBlock:v17];

    v15 = v18;
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MFSoundControllerErrorDomain" code:0 userInfo:0];
    v14 = [v12 futureWithError:v15];
  }

  return v14;
}

id __45__MFSoundController_lazyAlertWithType_topic___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E699B868] promise];
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__MFSoundController_lazyAlertWithType_topic___block_invoke_2;
  v10[3] = &unk_1E80708F0;
  v6 = v4;
  v11 = v6;
  [v5 playWithCompletionHandler:v10];
  v7 = [v6 future];
  v8 = [v7 result:a2];

  return v8;
}

void __45__MFSoundController_lazyAlertWithType_topic___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v6 = 0;
  }

  [*(a1 + 32) finishWithResult:v7 error:v6];
}

+ (void)_playAlertWithType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v7 = [self lazyAlertWithType:type topic:topicCopy];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __46__MFSoundController__playAlertWithType_topic___block_invoke;
  v32[3] = &unk_1E8070940;
  v9 = mEMORY[0x1E69DC668];
  v33 = v9;
  v34 = &v35;
  v10 = [v9 beginBackgroundTaskWithExpirationHandler:v32];
  v36[3] = v10;
  v11 = MEMORY[0x1E699B7D8];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __46__MFSoundController__playAlertWithType_topic___block_invoke_22;
  v29[3] = &unk_1E8070940;
  v12 = v9;
  v30 = v12;
  v31 = &v35;
  v13 = [v11 tokenWithInvocationBlock:v29];
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46__MFSoundController__playAlertWithType_topic___block_invoke_2;
  v26[3] = &unk_1E806C520;
  v15 = v7;
  v27 = v15;
  v16 = v13;
  v28 = v16;
  v17 = [mainThreadScheduler afterDelay:v26 performBlock:30.0];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v18 = getFMDFMIPManagerClass_softClass;
  v43 = getFMDFMIPManagerClass_softClass;
  if (!getFMDFMIPManagerClass_softClass)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __getFMDFMIPManagerClass_block_invoke;
    v39[3] = &unk_1E806CA38;
    v39[4] = &v40;
    __getFMDFMIPManagerClass_block_invoke(v39);
    v18 = v41[3];
  }

  v19 = v18;
  _Block_object_dispose(&v40, 8);
  sharedInstance = [v18 sharedInstance];
  lostModeIsActive = [sharedInstance lostModeIsActive];

  if (lostModeIsActive)
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MFSoundControllerErrorDomain" code:2 userInfo:0];
    v23 = MFLogGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(MFSoundController *)v22 _playAlertWithType:type topic:v23];
    }
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __46__MFSoundController__playAlertWithType_topic___block_invoke_23;
    v24[3] = &unk_1E806C570;
    v25 = v16;
    [v15 onScheduler:mainThreadScheduler always:v24];
    v22 = v25;
  }

  _Block_object_dispose(&v35, 8);
}

uint64_t __46__MFSoundController__playAlertWithType_topic___block_invoke(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_INFO, "Background task expired (play alert)", v4, 2u);
  }

  return [*(a1 + 32) endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
}

uint64_t __46__MFSoundController__playAlertWithType_topic___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);

  return [v2 invoke];
}

+ (void)playNewMailSoundStyle:(unint64_t)style forAccount:(id)account
{
  accountCopy = account;
  v7 = 0;
  v10 = accountCopy;
  if (style > 2)
  {
    if (style == 4)
    {
      v9 = MEMORY[0x1E69ADCE8];
    }

    else
    {
      if (style != 3)
      {
        goto LABEL_12;
      }

      v9 = MEMORY[0x1E69ADCF0];
    }
  }

  else
  {
    v8 = accountCopy;
    if (style == 1)
    {
      goto LABEL_10;
    }

    if (style != 2)
    {
      goto LABEL_12;
    }

    v9 = MEMORY[0x1E69ADCF8];
  }

  v8 = *v9;
LABEL_10:
  v7 = v8;
  if (v7)
  {
    [self _playAlertWithType:5 topic:v7];
  }

LABEL_12:
}

+ (void)_playAlertWithType:(os_log_t)log topic:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Not playing alert of type %ld: %@", &v3, 0x16u);
}

@end