@interface ACXServerInstallOperation
- (id)_makeTempDirectoryWithError:(id *)a3;
- (id)_onQueue_sendCancelMessage;
- (void)_commonInit:(BOOL)a3;
- (void)_onQueue_armWatchdog;
- (void)_onQueue_callCompletion:(id)a3;
- (void)_onQueue_callProgressBlockWithPhase:(unint64_t)a3 percent:(double)a4;
- (void)_onQueue_disarmWatchdog;
- (void)_onQueue_doTransferAndInstall;
- (void)_onQueue_prepForTransferAndInstall;
- (void)_onQueue_startInstall;
- (void)beginWithCompletionBlock:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)receivedDictionaryOrData:(id)a3;
- (void)socketDidCloseWithError:(id)a3;
@end

@implementation ACXServerInstallOperation

- (void)_commonInit:(BOOL)a3
{
  v3 = a3;
  if (qword_1000A4818 != -1)
  {
    sub_10005A0B4();
  }

  if (v3)
  {
    +[ACXIDSSocketManager sharedV1SocketManager];
  }

  else
  {
    +[ACXIDSSocketManager sharedV2SocketManager];
  }
  v5 = ;
  socketManager = self->_socketManager;
  self->_socketManager = v5;

  _objc_release_x1(v5, socketManager);
}

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(ACXServerInstallOperation *)self tempDir];
  [v3 removeItemAtURL:v4 error:0];

  if ([(ACXServerInstallOperation *)self acquiredSocket])
  {
    v5 = [(ACXServerInstallOperation *)self socketManager];
    [v5 endUsingSocket];

    [(ACXServerInstallOperation *)self setAcquiredSocket:0];
  }

  v6.receiver = self;
  v6.super_class = ACXServerInstallOperation;
  [(ACXServerInstallOperation *)&v6 dealloc];
}

- (void)beginWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(ACXServerInstallOperation *)self isUserInitiated])
  {
    v5 = 21;
  }

  else
  {
    v5 = 17;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_get_global_queue(v5, 0);
  v8 = dispatch_queue_create_with_target_V2("com.apple.AppConduit.InstallOperationQ", v6, v7);
  [(ACXServerInstallOperation *)self setQueue:v8];

  v9 = [(ACXServerInstallOperation *)self watchAppBundleID];
  v10 = [NSString stringWithFormat:@"com.apple.appconduitd.install_active.%@", v9];

  [v10 UTF8String];
  v11 = os_transaction_create();
  [(ACXServerInstallOperation *)self setTransaction:v11];

  v12 = [(ACXServerInstallOperation *)self watchAppBundleID];
  v13 = [NSString stringWithFormat:@"com.apple.appconduitd.install.%@", v12];

  v14 = [(ACXServerInstallOperation *)self watchAppBundleID];
  v15 = [NSString stringWithFormat:@"Installation of a watch app with bundle ID %@ is in progress.", v14];

  v16 = [[ACXPowerAssertion alloc] initWithName:v13 description:v15 timeoutSeconds:0];
  [(ACXServerInstallOperation *)self setPowerAssertion:v16];

  [(ACXServerInstallOperation *)self setCompletion:v4];
  v17 = [(ACXServerInstallOperation *)self appSettingsDict];

  if (!v17)
  {
    v18 = +[NSDictionary dictionary];
    [(ACXServerInstallOperation *)self setAppSettingsDict:v18];
  }

  v19 = [(ACXServerInstallOperation *)self provisioningProfiles];

  if (!v19)
  {
    v20 = +[NSDictionary dictionary];
    [(ACXServerInstallOperation *)self setProvisioningProfiles:v20];
  }

  v21 = [(ACXServerInstallOperation *)self queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100037F58;
  v22[3] = &unk_10008CD40;
  v22[4] = self;
  sub_100005828(v21, v22);
}

- (void)cancel
{
  v3 = [(ACXServerInstallOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037FE8;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_onQueue_armWatchdog
{
  [(ACXServerInstallOperation *)self operationWatchdog];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_10005A0C8();
  }

  v3 = [(ACXServerInstallOperation *)self queue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  [(ACXServerInstallOperation *)self setOperationWatchdog:v4];

  v5 = [(ACXServerInstallOperation *)self operationWatchdog];
  v6 = dispatch_time(0, 900000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  v7 = [(ACXServerInstallOperation *)self operationWatchdog];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100038130;
  handler[3] = &unk_10008CD40;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);

  v8 = [(ACXServerInstallOperation *)self operationWatchdog];
  dispatch_resume(v8);
}

- (void)_onQueue_disarmWatchdog
{
  v3 = [(ACXServerInstallOperation *)self operationWatchdog];

  if (v3)
  {
    v4 = [(ACXServerInstallOperation *)self operationWatchdog];
    dispatch_source_cancel(v4);

    [(ACXServerInstallOperation *)self setOperationWatchdog:0];
  }
}

- (void)_onQueue_callProgressBlockWithPhase:(unint64_t)a3 percent:(double)a4
{
  if ([(ACXServerInstallOperation *)self lastPhase]> a3)
  {
    sub_10005A120();
  }

  if ([(ACXServerInstallOperation *)self lastPhase]== a3)
  {
    [(ACXServerInstallOperation *)self lastPercentComplete];
    if (v7 > a4)
    {
      sub_10005A0F4();
    }
  }

  [(ACXServerInstallOperation *)self setLastPhase:a3];
  [(ACXServerInstallOperation *)self setLastPercentComplete:a4];
  v8 = [(ACXServerInstallOperation *)self progressBlock];

  if (v8)
  {
    if (a4 > 1.0)
    {
      a4 = 1.0;
    }

    v9 = [(ACXServerInstallOperation *)self progressBlock];
    v9[2](v9, a3, a4);
  }
}

- (void)_onQueue_callCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACXServerInstallOperation *)self completion];

  if (v5)
  {
    v6 = [(ACXServerInstallOperation *)self completion];
    (v6)[2](v6, v4);

    [(ACXServerInstallOperation *)self setCompletion:0];
    [(ACXServerInstallOperation *)self setProgressBlock:0];
    [(ACXServerInstallOperation *)self setStreamingZipSender:0];
    [(ACXServerInstallOperation *)self setGotTransferDone:0];
    [(ACXServerInstallOperation *)self setGotStreamingZipComplete:0];
    [(ACXServerInstallOperation *)self setNextMessageType:0];
    if ([(ACXServerInstallOperation *)self acquiredSocket])
    {
      if (v4)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v11 = v4;
          MOLogWrite();
        }

        v7 = [(ACXServerInstallOperation *)self socketManager];
        [v7 resetSocket];
      }

      else
      {
        v8 = [(ACXServerInstallOperation *)self socketManager];
        v12 = 0;
        v9 = [v8 writeDictionary:&off_100097B20 error:&v12];
        v7 = v12;

        if ((v9 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
        {
          v11 = v7;
          MOLogWrite();
        }
      }

      v10 = [(ACXServerInstallOperation *)self socketManager];
      [v10 endUsingSocket];

      [(ACXServerInstallOperation *)self setAcquiredSocket:0];
    }

    [(ACXServerInstallOperation *)self setTransaction:0, v11];
    [(ACXServerInstallOperation *)self setPowerAssertion:0];
    [(ACXServerInstallOperation *)self _onQueue_disarmWatchdog];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (id)_makeTempDirectoryWithError:(id *)a3
{
  v5 = sub_100006434(a3);
  if (v5)
  {
    v6 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v7 = [NSString stringWithFormat:@"%@_XXXXXX", v6];
    v8 = [v5 URLByAppendingPathComponent:v7 isDirectory:0];

    v9 = sub_10000696C(v8, a3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_onQueue_sendCancelMessage
{
  v3 = [(ACXServerInstallOperation *)self socketManager];
  v10 = 0;
  v4 = [v3 writeDictionary:&off_100097B48 error:&v10];
  v5 = v10;

  if (v4)
  {
    [(ACXServerInstallOperation *)self setNextMessageType:8];
    v7 = 0;
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v9 = v5;
      MOLogWrite();
    }

    v7 = sub_1000061DC("[ACXServerInstallOperation _onQueue_sendCancelMessage]", 278, @"ACXErrorDomain", 6, v5, 0, @"Failed to send cancel message to gizmo.", v6, v9);
  }

  return v7;
}

- (void)_onQueue_prepForTransferAndInstall
{
  v46 = 0;
  [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:0 percent:0.0];
  v45 = 0;
  v3 = [(ACXServerInstallOperation *)self _makeTempDirectoryWithError:&v45];
  v4 = v45;
  [(ACXServerInstallOperation *)self setTempDir:v3];

  v5 = [(ACXServerInstallOperation *)self tempDir];

  if (!v5)
  {
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v4];
    goto LABEL_23;
  }

  v6 = [(ACXServerInstallOperation *)self installType];
  if (v6 - 1 < 2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_4;
  }

  if (v6)
  {
    v28 = [(ACXServerInstallOperation *)self installType];
    v30 = sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 346, @"ACXErrorDomain", 39, 0, 0, @"Received unknown ACXInstallType %lu", v29, v28);

    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v30];
    v4 = v30;
    goto LABEL_23;
  }

  v13 = [(ACXServerInstallOperation *)self tempDir];
  v14 = [v13 URLByAppendingPathComponent:@"Transfer"];
  [(ACXServerInstallOperation *)self setAppURL:v14];

  v47 = kMIWatchKitSnapshotOptionCreatePlaceholder;
  v15 = [NSNumber numberWithBool:[(ACXServerInstallOperation *)self installPlaceholder]];
  v48 = v15;
  v7 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

  v16 = [(ACXServerInstallOperation *)self companionAppBundleID];
  v17 = [(ACXServerInstallOperation *)self appURL];
  v8 = MobileInstallationWatchKitInstallerSnapshotWKApp();

  if (!v8)
  {
    v31 = v46;
    v32 = [(ACXServerInstallOperation *)self companionAppBundleID];
    v34 = sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 314, @"ACXErrorDomain", 7, v31, 0, @"Snapshot failed for companion bundle ID %@", v33, v32);

    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v34];
    v4 = v34;
    goto LABEL_23;
  }

  v18 = [v8 objectForKeyedSubscript:kMIWatchKitSnapshotInfoDiskUsageBytes];
  -[ACXServerInstallOperation setAppSize:](self, "setAppSize:", [v18 longLongValue]);

  if (![(ACXServerInstallOperation *)self appSize])
  {
    v35 = v46;
    v36 = [(ACXServerInstallOperation *)self companionAppBundleID];
    sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 321, @"ACXErrorDomain", 7, v35, 0, @"Snapshot for companion bundle ID %@ failed to return disk usage", v37, v36);
    v39 = LABEL_22:;

    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v39];
    v4 = v39;
    goto LABEL_23;
  }

  v19 = [v8 objectForKeyedSubscript:kCFBundleIdentifierKey];
  if (!v19)
  {
    v35 = v46;
    v36 = [(ACXServerInstallOperation *)self companionAppBundleID];
    sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 328, @"ACXErrorDomain", 7, v35, 0, @"Snapshot for companion bundle ID %@ failed to return watch app bundle ID", v38, v36);
    goto LABEL_22;
  }

  v9 = v19;
  v20 = [(ACXServerInstallOperation *)self watchAppBundleID];
  v21 = [v20 isEqualToString:v9];

  if ((v21 & 1) == 0)
  {
    v10 = v46;
    v22 = [(ACXServerInstallOperation *)self companionAppBundleID];
    v43 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v12 = sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 333, @"ACXErrorDomain", 7, v10, 0, @"Snapshot for companion bundle ID %@ returned watch bundle ID %@ instead of %@", v23, v22);

    goto LABEL_6;
  }

LABEL_4:
  if ([(ACXServerInstallOperation *)self cancelled])
  {
    v10 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v12 = sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 353, @"ACXErrorDomain", 6, 0, 0, @"Operation cancelled for %@.", v11, v10);

LABEL_6:
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v12];

    v4 = v12;
    goto LABEL_23;
  }

  [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:0 percent:50.0];
  v24 = [(ACXServerInstallOperation *)self appSize];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v25 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v41 = sub_100006DA8([(ACXServerInstallOperation *)self installPlaceholder]);
    v42 = sub_100006DA8([(ACXServerInstallOperation *)self isUserInitiated]);
    v40 = v25;
    MOLogWrite();
  }

  v26 = [(ACXServerInstallOperation *)self socketManager:v40];
  v27 = [(ACXServerInstallOperation *)self queue];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100038D7C;
  v44[3] = &unk_10008DBE0;
  v44[4] = self;
  [v26 beginUsingSocketAsDelegate:self onQueue:v27 tryWiFi:v24 > 5242880 completion:v44];

LABEL_23:
}

- (void)_onQueue_doTransferAndInstall
{
  if ([(ACXServerInstallOperation *)self cancelled])
  {
    v20 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v4 = sub_1000061DC("[ACXServerInstallOperation _onQueue_doTransferAndInstall]", 387, @"ACXErrorDomain", 6, 0, 0, @"Operation cancelled for %@.", v3, v20);
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v4];
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v18 = [(ACXServerInstallOperation *)self watchAppBundleID];
      MOLogWrite();
    }

    v23[0] = &off_100097800;
    v22[0] = @"T";
    v22[1] = @"SZ";
    v5 = [NSNumber numberWithLongLong:[(ACXServerInstallOperation *)self appSize]];
    v23[1] = v5;
    v22[2] = @"WI";
    v6 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v23[2] = v6;
    v22[3] = @"P";
    v7 = [NSNumber numberWithBool:[(ACXServerInstallOperation *)self installPlaceholder]];
    v23[3] = v7;
    v22[4] = @"UI";
    v8 = [NSNumber numberWithBool:[(ACXServerInstallOperation *)self isUserInitiated]];
    v23[4] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:5];
    v10 = [v9 mutableCopy];

    v11 = [(ACXServerInstallOperation *)self requiredDeviceCapabilities];

    if (v11)
    {
      v12 = [(ACXServerInstallOperation *)self requiredDeviceCapabilities];
      [v10 setObject:v12 forKeyedSubscript:@"RC"];
    }

    v13 = [(ACXServerInstallOperation *)self socketManager];
    v21 = 0;
    v14 = [v13 writeDictionary:v10 error:&v21];
    v15 = v21;

    if (v14)
    {
      [(ACXServerInstallOperation *)self setNextMessageType:2];
      [(ACXServerInstallOperation *)self _onQueue_armWatchdog];
    }

    else
    {
      v17 = sub_1000061DC("[ACXServerInstallOperation _onQueue_doTransferAndInstall]", 405, @"ACXErrorDomain", 10, v15, 0, @"Failed to send hello message", v16, v19);
      [(ACXServerInstallOperation *)self _onQueue_callCompletion:v17];
    }
  }
}

- (void)_onQueue_startInstall
{
  [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:2 percent:0.0];
  if (![(ACXServerInstallOperation *)self gotTransferDone]|| ![(ACXServerInstallOperation *)self gotStreamingZipComplete])
  {
    sub_10005A14C();
  }

  [(ACXServerInstallOperation *)self setNextMessageType:5];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v11 = [(ACXServerInstallOperation *)self watchAppBundleID];
    MOLogWrite();
  }

  v15[0] = &off_100097818;
  v14[0] = @"T";
  v14[1] = @"SE";
  v3 = [(ACXServerInstallOperation *)self appSettingsDict];
  v15[1] = v3;
  v14[2] = @"PD";
  v4 = [(ACXServerInstallOperation *)self provisioningProfiles];
  v15[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  v6 = [(ACXServerInstallOperation *)self socketManager];
  v13 = 0;
  v7 = [v6 writeDictionary:v5 error:&v13];
  v8 = v13;

  if (v7)
  {
    [(ACXServerInstallOperation *)self _onQueue_armWatchdog];
  }

  else
  {
    v10 = sub_1000061DC("[ACXServerInstallOperation _onQueue_startInstall]", 431, @"ACXErrorDomain", 10, v8, 0, @"Failed to send do install message", v9, v12);

    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v10];
    v8 = v10;
  }
}

- (void)receivedDictionaryOrData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v10 = @"Got non-dictionary message from receiver.";
    v11 = 451;
LABEL_16:
    v16 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", v11, @"ACXErrorDomain", 15, 0, 0, v10, v7, v78);
    v15 = 0;
    goto LABEL_81;
  }

  [(ACXServerInstallOperation *)self _onQueue_disarmWatchdog];
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v78 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v82 = v5;
    MOLogWrite();
  }

  v8 = [v5 objectForKeyedSubscript:{@"T", v78, v82}];
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v10 = @"Message did not have message type key set.";
    v11 = 461;
    goto LABEL_16;
  }

  v12 = [v6 unsignedCharValue];
  v13 = [v5 objectForKeyedSubscript:@"ER"];
  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v12 > 5)
  {
    if (v12 != 6)
    {
      if (v12 != 8)
      {
        if (v12 == 9)
        {
          v21 = [(ACXServerInstallOperation *)self streamingZipSender];
          [v21 cancelSending];

          if (![v15 integerValue])
          {
            v19 = @"Got connection reset without a reason";
            v20 = 694;
            v36 = 1;
            goto LABEL_78;
          }

          v17 = [v15 integerValue];
          v78 = [v15 integerValue];
          v19 = @"Got error %ld in reset from remote side";
          v20 = 692;
LABEL_41:
          v36 = v17;
LABEL_78:
          sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", v20, @"ACXErrorDomain", v36, 0, 0, v19, v18, v78);
          goto LABEL_79;
        }

        goto LABEL_38;
      }

      if ([(ACXServerInstallOperation *)self nextMessageType]!= 8)
      {
        v78 = 8;
        v82 = [(ACXServerInstallOperation *)self nextMessageType];
        v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
        v20 = 670;
        goto LABEL_77;
      }

      if ([v15 integerValue] == 6)
      {
        v40 = sub_100001B04("[ACXServerInstallOperation receivedDictionaryOrData:]", 677, @"ACXErrorDomain", 6, @"Operation canceled.", v37, v38, v39, v78);
      }

      else
      {
        if (![v15 integerValue])
        {
          v16 = 0;
LABEL_70:
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_81;
          }

          v65 = [(ACXServerInstallOperation *)self watchAppBundleID];
          v78 = v65;
          goto LABEL_98;
        }

        v62 = [v15 integerValue];
        v63 = [v15 integerValue];
        v40 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 679, @"ACXErrorDomain", v62, 0, 0, @"Got error %ld in cancel confirmed from remote side", v64, v63);
      }

      v16 = v40;
      goto LABEL_70;
    }

    if ([(ACXServerInstallOperation *)self nextMessageType]!= 5)
    {
      v78 = 5;
      v82 = [(ACXServerInstallOperation *)self nextMessageType];
      v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
      v20 = 637;
      goto LABEL_77;
    }

    if (![v15 integerValue])
    {
      v16 = 0;
      goto LABEL_95;
    }

    v27 = [v5 objectForKeyedSubscript:@"IE"];
    objc_opt_class();
    v28 = sub_100020BDC(v27);

    if (v28)
    {
      v90 = 0;
      v29 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v28 error:&v90];
      v30 = v90;
      if (v29)
      {
        v31 = [v15 integerValue];
        v16 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 647, @"ACXErrorDomain", v31, v29, 0, @"Got error in install done from remote side", v32, v78);

        if (v16)
        {
LABEL_94:

LABEL_95:
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_81;
          }

          v65 = [(ACXServerInstallOperation *)self watchAppBundleID];
          v78 = v65;
LABEL_98:
          MOLogWrite();

          goto LABEL_81;
        }
      }

      else
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v78 = v30;
          MOLogWrite();
        }
      }
    }

    v71 = [v5 objectForKeyedSubscript:{@"ME", v78}];
    v89 = v28;
    objc_opt_class();
    v87 = sub_100020BDC(v71);

    v72 = [v5 objectForKeyedSubscript:@"MEX"];
    objc_opt_class();
    v86 = sub_100020BDC(v72);

    v73 = [v5 objectForKeyedSubscript:@"MED"];
    objc_opt_class();
    v74 = sub_100020BDC(v73);

    v75 = [v15 integerValue];
    v76 = [v15 integerValue];
    v83 = COERCE_DOUBLE([v86 unsignedIntValue]);
    v84 = *&v74;
    v81 = v76;
    v82 = v87;
    v28 = v89;
    v16 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 658, @"ACXErrorDomain", v75, 0, 0, @"Got error %ld in install done from remote side (MI error %@  Extended 0x%x ; Desc %@)", v77, v81);;

    goto LABEL_94;
  }

  if (v12 != 2)
  {
    if (v12 != 3)
    {
      if (v12 == 5)
      {
        if ([v15 integerValue])
        {
          v17 = [v15 integerValue];
          v78 = [v15 integerValue];
          v19 = @"Got error %ld in install progress from remote side";
          v20 = 613;
          goto LABEL_41;
        }

        if ([(ACXServerInstallOperation *)self nextMessageType]== 5)
        {
          v41 = [v5 objectForKeyedSubscript:@"PG"];
          objc_opt_class();
          v16 = sub_100020BDC(v41);

          if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
          {
            v42 = [(ACXServerInstallOperation *)self watchAppBundleID];
            [v16 doubleValue];
            v82 = v43;
            v78 = v42;
            MOLogWrite();
          }

          [v16 doubleValue];
          [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:2 percent:?];
          [(ACXServerInstallOperation *)self _onQueue_armWatchdog];
          goto LABEL_82;
        }

        v78 = 5;
        v82 = [(ACXServerInstallOperation *)self nextMessageType];
        v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
        v20 = 618;
LABEL_77:
        v36 = 14;
        goto LABEL_78;
      }

LABEL_38:
      v78 = [v15 unsignedCharValue];
      v19 = @"Got unhandled message type %hhu";
      v20 = 701;
      goto LABEL_77;
    }

    v33 = mach_absolute_time();
    v34 = [(ACXServerInstallOperation *)self transferStartTime];
    if ([v15 integerValue])
    {
      v35 = [(ACXServerInstallOperation *)self streamingZipSender];
      [v35 cancelSending];

      v17 = [v15 integerValue];
      v78 = [v15 integerValue];
      v19 = @"Got error %ld in transfer done from remote side";
      v20 = 567;
      goto LABEL_41;
    }

    if ([(ACXServerInstallOperation *)self nextMessageType]!= 3)
    {
      v78 = 3;
      v82 = [(ACXServerInstallOperation *)self nextMessageType];
      v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
      v20 = 572;
      goto LABEL_77;
    }

    LODWORD(v44) = HIDWORD(qword_1000A4820);
    v45 = ((v33 - v34) * qword_1000A4820) / v44 / 1000000000.0;
    v46 = [(ACXServerInstallOperation *)self streamingZipSender];
    v47 = [v46 bytesOutput];

    v48 = [(ACXServerInstallOperation *)self streamingZipSender];
    v88 = [v48 totalBytes];

    v49 = [(ACXServerInstallOperation *)self streamingZipSender];
    v50 = [v49 totalBytes];
    v51 = [(ACXServerInstallOperation *)self streamingZipSender];
    v52 = [v51 bytesOutput];

    v53 = qword_1000A4878;
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      goto LABEL_57;
    }

    v54 = vcvtd_n_f64_s64(v47, 0xAuLL) / v45;
    v55 = v50 / v52;
    v56 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v57 = [(ACXServerInstallOperation *)self streamingZipSender];
    v84 = v54;
    v85 = v55;
    v83 = v45;
    v78 = v56;
    v82 = [v57 bytesOutput];
    MOLogWrite();

    v53 = qword_1000A4878;
    if (qword_1000A4878)
    {
LABEL_57:
      if (*(v53 + 44) >= 7)
      {
        v58 = [(ACXServerInstallOperation *)self watchAppBundleID];
        v59 = [(ACXServerInstallOperation *)self streamingZipSender];
        v83 = vcvtd_n_f64_s64(v88, 0xAuLL) / v45;
        v78 = v58;
        v82 = [v59 totalBytes];
        MOLogWrite();
      }
    }

    if (![(ACXServerInstallOperation *)self cancelled:v78])
    {
      [(ACXServerInstallOperation *)self setGotTransferDone:1];
      if ([(ACXServerInstallOperation *)self gotStreamingZipComplete])
      {
        [(ACXServerInstallOperation *)self _onQueue_startInstall];
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      goto LABEL_83;
    }

LABEL_64:
    v60 = [(ACXServerInstallOperation *)self _onQueue_sendCancelMessage];
    if (!v60)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

  v22 = [v15 integerValue];
  if (v22)
  {
    v23 = v22;
    if (v22 != 29)
    {
      v79 = [v15 integerValue];
      sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 479, @"ACXErrorDomain", v23, 0, 0, @"Got error %ld in hello response from remote side", v61, v79);
      v60 = LABEL_79:;
LABEL_80:
      v16 = v60;
      goto LABEL_81;
    }

    v24 = [v5 objectForKeyedSubscript:@"RCF"];
    objc_opt_class();
    v25 = sub_100020BDC(v24);

    v16 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 477, @"ACXErrorDomain", 29, 0, 0, @"Got capabilities mismatch error in hello response from remote side mismatched capabilities: %@", v26, v25);;

LABEL_81:
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v16, v78, v82, *&v83, *&v84];
LABEL_82:

    goto LABEL_83;
  }

  if ([(ACXServerInstallOperation *)self nextMessageType]!= 2)
  {
    v78 = 2;
    v82 = [(ACXServerInstallOperation *)self nextMessageType];
    v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
    v20 = 485;
    goto LABEL_77;
  }

  if ([(ACXServerInstallOperation *)self cancelled])
  {
    goto LABEL_64;
  }

  [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:0 percent:100.0];
  [(ACXServerInstallOperation *)self setNextMessageType:3];
  objc_initWeak(location, self);
  v66 = [(ACXServerInstallOperation *)self appURL];
  v67 = [(ACXServerInstallOperation *)self queue];
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_10003A238;
  v95[3] = &unk_10008DC08;
  objc_copyWeak(&v96, location);
  v95[4] = self;
  v68 = [ACXStreamingZipSocketSender senderForURL:v66 queue:v67 writingUsingBlock:v95];
  [(ACXServerInstallOperation *)self setStreamingZipSender:v68];

  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_10003A36C;
  v93[3] = &unk_10008DC30;
  objc_copyWeak(&v94, location);
  v69 = [(ACXServerInstallOperation *)self streamingZipSender];
  [v69 setProgressBlock:v93];

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v80 = [(ACXServerInstallOperation *)self watchAppBundleID];
    MOLogWrite();
  }

  [(ACXServerInstallOperation *)self setTransferStartTime:mach_absolute_time()];
  v70 = [(ACXServerInstallOperation *)self streamingZipSender];
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_10003A3C4;
  v91[3] = &unk_10008DC58;
  objc_copyWeak(&v92, location);
  [v70 beginSendingWithCompletionBlock:v91];

  objc_destroyWeak(&v92);
  objc_destroyWeak(&v94);
  objc_destroyWeak(&v96);
  objc_destroyWeak(location);
LABEL_83:
}

- (void)socketDidCloseWithError:(id)a3
{
  v5 = a3;
  v4 = [(ACXServerInstallOperation *)self completion];

  if (v4)
  {
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v5];
  }
}

@end