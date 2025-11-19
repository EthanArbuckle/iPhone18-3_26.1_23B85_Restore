@interface PearlFramesDecompressionController
- (BOOL)preCheck;
- (id)decompressPearlFrames;
- (id)updateBrunorDATFirmware;
- (id)updateSavageDATFirmware;
- (id)verifyPSD3;
- (void)cancel;
- (void)start;
- (void)teardown;
@end

@implementation PearlFramesDecompressionController

- (BOOL)preCheck
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[PearlFramesDecompressionController preCheck]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/private/var/hardware/FactoryData"];

  if ((v4 & 1) == 0)
  {
    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100002B6C(v7);
    }

    goto LABEL_9;
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:@"/private/var/hardware/Pearl"];

  if (v6)
  {
    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @"/private/var/hardware/Pearl";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is existed before decompression", &v9, 0xCu);
    }

LABEL_9:
  }

  return v4;
}

- (id)decompressPearlFrames
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PearlFramesDecompressionController decompressPearlFrames]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_10000138C;
  v21 = sub_10000139C;
  v22 = 0;
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corerepair" options:0];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairHelperProtocol];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];
  v5 = dispatch_semaphore_create(0);
  v6 = [v3 remoteObjectProxy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000013A4;
  v14[3] = &unk_1000081D0;
  p_buf = &buf;
  v7 = v3;
  v15 = v7;
  v8 = v5;
  v16 = v8;
  [v6 decompressPearlFramesWithReply:v14];

  v9 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = sub_100002A2C(0xFFFFFFFFFFFFFFF6, @"Get response timeout from corerepaird for Pearl frames decompression", 0);
    v11 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v10;
  }

  v12 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v12;
}

- (id)updateSavageDATFirmware
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PearlFramesDecompressionController updateSavageDATFirmware]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_10000138C;
  v21 = sub_10000139C;
  v22 = 0;
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corerepair" options:0];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairHelperProtocol];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];
  v5 = dispatch_semaphore_create(0);
  v6 = [v3 remoteObjectProxy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001728;
  v14[3] = &unk_1000081D0;
  p_buf = &buf;
  v7 = v3;
  v15 = v7;
  v8 = v5;
  v16 = v8;
  [v6 updateSavageDATFirmwareWithReply:v14];

  v9 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = sub_100002A2C(0xFFFFFFFFFFFFFFF6, @"Get response timeout from corerepaird for Savage update", 0);
    v11 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v10;
  }

  v12 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v12;
}

- (id)updateBrunorDATFirmware
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PearlFramesDecompressionController updateBrunorDATFirmware]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_10000138C;
  v21 = sub_10000139C;
  v22 = 0;
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corerepair" options:0];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairHelperProtocol];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];
  v5 = dispatch_semaphore_create(0);
  v6 = [v3 remoteObjectProxy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001AAC;
  v14[3] = &unk_1000081D0;
  p_buf = &buf;
  v7 = v3;
  v15 = v7;
  v8 = v5;
  v16 = v8;
  [v6 updateBrunorDATFirmwareWithReply:v14];

  v9 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = sub_100002A2C(0xFFFFFFFFFFFFFFF6, @"Get response timeout from corerepaird for Brunor update", 0);
    v11 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v10;
  }

  v12 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v12;
}

- (id)verifyPSD3
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PearlFramesDecompressionController verifyPSD3]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_10000138C;
  v21 = sub_10000139C;
  v22 = 0;
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corerepair" options:0];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairHelperProtocol];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];
  v5 = dispatch_semaphore_create(0);
  v6 = [v3 remoteObjectProxy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001E30;
  v14[3] = &unk_1000081D0;
  p_buf = &buf;
  v7 = v3;
  v15 = v7;
  v8 = v5;
  v16 = v8;
  [v6 verifyPSD3WithReply:v14];

  v9 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = sub_100002A2C(0xFFFFFFFFFFFFFFF6, @"Get response timeout from corerepaird for verify PSD3", 0);
    v11 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v10;
  }

  v12 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v12;
}

- (void)start
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    buf = 136315138;
    v69 = "[PearlFramesDecompressionController start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v63 = 0;
  AMSupportLogSetHandler();
  v4 = AMFDRSealingMapCopyInstanceForClass();
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    buf = 138412290;
    v69 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Savage SN from sealing map: %@", &buf, 0xCu);
  }

  v6 = AMFDRSealingManifestCopyInstanceForClass();
  v7 = handleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    buf = 138412290;
    v69 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Savage SN from sealing manifest: %@", &buf, 0xCu);
  }

  v61 = v6;
  if (v6)
  {
    if (v4 && ([v4 isEqualToString:v6] & 1) != 0)
    {
      if ([(PearlFramesDecompressionController *)self preCheck])
      {
        v8 = handleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start to decompress Pearl frames ...", &buf, 2u);
        }

        v9 = [(PearlFramesDecompressionController *)self decompressPearlFrames];
        if (!v9)
        {
          if ([CRFDRUtils isDataClassSupported:@"psd3"])
          {
            v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Diagnostic-8343"];
            v11 = [v10 BOOLForKey:@"finalPersonalizationDone"];
            v12 = handleForCategory();
            v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
            if (v11)
            {
              if (v13)
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Firmware has already been updated once", &buf, 2u);
              }

              v14 = 0;
            }

            else
            {
              if (v13)
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Start to update Brunor/Yonkers firmware ...", &buf, 2u);
              }

              v14 = 0;
              v32 = 5;
              while (1)
              {
                v33 = [(PearlFramesDecompressionController *)self updateBrunorDATFirmware];

                if (!v33)
                {
                  break;
                }

                v34 = v33;

                sleep(1u);
                v14 = v34;
                if (!--v32)
                {
LABEL_54:
                  v14 = v34;
                  goto LABEL_55;
                }
              }

              v35 = handleForCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Update Brunor/Yonkers firmware successfully", &buf, 2u);
              }

              if (v10)
              {
                [v10 setBool:1 forKey:@"finalPersonalizationDone"];
              }
            }

            v34 = 0;
            v36 = 30;
            while (1)
            {
              v37 = [(PearlFramesDecompressionController *)self verifyPSD3];

              if (!v37)
              {
                break;
              }

              v34 = v37;

              sleep(1u);
              v14 = v34;
              if (!--v36)
              {
                goto LABEL_54;
              }
            }

            v16 = handleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Verify PSD3 successfully", &buf, 2u);
            }

LABEL_25:

            v62 = 0;
            v17 = +[NSFileManager defaultManager];
            v18 = [v17 fileExistsAtPath:@"/private/var/hardware/Pearl" isDirectory:&v62];

            if (v18 && (v62 & 1) != 0)
            {
              goto LABEL_27;
            }

            v34 = sub_100002A2C(0xFFFFFFFFFFFFFFFFLL, @"Pearl frames have been decompressed, but the folder is not found", 0);
            if (!v34)
            {
              goto LABEL_27;
            }

            goto LABEL_55;
          }

          v15 = handleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Start to update Savage/Yonkers firmware ...", &buf, 2u);
          }

          v9 = [(PearlFramesDecompressionController *)self updateSavageDATFirmware];
          if (!v9)
          {
            v16 = handleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Update Savage/Yonkers firmware successfully", &buf, 2u);
            }

            v10 = 0;
            v14 = 0;
            goto LABEL_25;
          }
        }

        v34 = v9;
        v14 = 0;
        v10 = 0;
        goto LABEL_55;
      }

      v52 = @"Failed to mount hardware partition";
      v53 = -2;
    }

    else
    {
      v52 = @"Sealing map and sealing manifest Savage SN mismatch";
      v53 = -8;
    }

    v34 = sub_100002A2C(v53, v52, 0);
  }

  else
  {
    v34 = sub_100002A2C(0xFFFFFFFFFFFFFFD6, @"Failed to get Savage SN from sealing manifest", v63);
  }

  v10 = 0;
  v14 = 0;
  if (!v34)
  {
LABEL_27:
    v19 = [(PearlFramesDecompressionController *)self result];
    [v19 setStatusCode:&off_100008498];

    if (v14)
    {
      v56 = v10;
      v57 = 0;
      v20 = 0;
      v21 = 0;
LABEL_57:
      v41 = [CRUtils getInnermostNSError:v14];

      v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 code]);
      v58 = v41;
      v43 = [v41 localizedDescription];
      v66[0] = @"PearlFramesDecompressionErrorCode";
      v44 = v21;
      v55 = v21;
      if (!v21)
      {
        v44 = +[NSNull null];
      }

      v54 = v44;
      v67[0] = v44;
      v66[1] = @"PearlFramesDecompressionErrorDescription";
      v45 = v20;
      v60 = v20;
      if (!v20)
      {
        v45 = +[NSNull null];
      }

      v67[1] = v45;
      v66[2] = @"PearlFramesDecompressionSensorSerialNumber";
      v46 = v4;
      if (!v4)
      {
        v46 = +[NSNull null];
      }

      v67[2] = v46;
      v66[3] = @"PearlFramesDecompressionLastSeenErrorCode";
      v47 = v42;
      if (!v42)
      {
        v47 = +[NSNull null];
      }

      v48 = v4;
      v67[3] = v47;
      v66[4] = @"PearlFramesDecompressionLastSeenErrorDescription";
      v49 = v43;
      if (!v43)
      {
        v49 = +[NSNull null];
      }

      v67[4] = v49;
      v50 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:5];
      v51 = [(PearlFramesDecompressionController *)self result];
      [v51 setData:v50];

      if (!v43)
      {
      }

      v4 = v48;
      if (!v42)
      {
      }

      v31 = v61;
      if (!v48)
      {
      }

      v14 = v57;
      if (!v60)
      {
      }

      v24 = v55;
      if (!v55)
      {
      }

      v26 = v56;
      v30 = v60;
LABEL_78:

      goto LABEL_79;
    }

    v20 = 0;
    v64[0] = @"PearlFramesDecompressionErrorCode";
    goto LABEL_30;
  }

LABEL_55:
  v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v34 code]);
  v39 = [(PearlFramesDecompressionController *)self result];
  [v39 setStatusCode:v38];

  v40 = [CRUtils getInnermostNSError:v34];

  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v40 code]);
  v57 = v40;
  v20 = [v40 localizedDescription];
  if (v14)
  {
    v56 = v10;
    goto LABEL_57;
  }

  v64[0] = @"PearlFramesDecompressionErrorCode";
  if (!v21)
  {
    v14 = v57;
LABEL_30:
    v22 = +[NSNull null];
    v21 = 0;
    v59 = 1;
    goto LABEL_31;
  }

  v59 = 0;
  v22 = v21;
  v14 = v57;
LABEL_31:
  v58 = v22;
  v65[0] = v22;
  v64[1] = @"PearlFramesDecompressionErrorDescription";
  v23 = v20;
  if (!v20)
  {
    v23 = +[NSNull null];
  }

  v24 = v21;
  v25 = v20;
  v26 = v10;
  v65[1] = v23;
  v64[2] = @"PearlFramesDecompressionSensorSerialNumber";
  v27 = v4;
  if (!v4)
  {
    v27 = +[NSNull null];
  }

  v65[2] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:3];
  v29 = [(PearlFramesDecompressionController *)self result];
  [v29 setData:v28];

  if (!v4)
  {
  }

  v30 = v25;
  if (!v25)
  {
  }

  v31 = v61;
  if (v59)
  {
    goto LABEL_78;
  }

LABEL_79:
  [(PearlFramesDecompressionController *)self setFinished:1];
}

- (void)cancel
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[PearlFramesDecompressionController cancel]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (void)teardown
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[PearlFramesDecompressionController teardown]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

@end