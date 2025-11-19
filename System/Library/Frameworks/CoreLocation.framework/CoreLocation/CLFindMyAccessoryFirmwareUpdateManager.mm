@interface CLFindMyAccessoryFirmwareUpdateManager
- (CLFindMyAccessoryFirmwareUpdateManager)initWithDelegate:(id)a3 delegateQueue:(id)a4;
- (void)abortFirmwareUpdateForDevice:(id)a3;
- (void)fetchWhetherLocalFirmwareAssetIsInUseForProductGroup:(id)a3 andProductNumber:(id)a4;
- (void)getPersonalizationInfoForDevice:(id)a3;
- (void)handleInterruption;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3;
- (void)updateFirmwareForDevice:(id)a3 withAssetURL:(id)a4;
- (void)useDefaultFirmwareAssetSourceForProductGroup:(id)a3 andProductNumber:(id)a4;
- (void)useLocalFirmwareAssetFromURL:(id)a3 forProductGroup:(id)a4 forProductNumber:(id)a5 withSandboxExtension:(id)a6;
@end

@implementation CLFindMyAccessoryFirmwareUpdateManager

- (CLFindMyAccessoryFirmwareUpdateManager)initWithDelegate:(id)a3 delegateQueue:(id)a4
{
  v9.receiver = self;
  v9.super_class = CLFindMyAccessoryFirmwareUpdateManager;
  v6 = [(CLFindMyAccessoryFirmwareUpdateManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, a3);
    if (a4)
    {
      v7->_delegateQueue = a4;
      dispatch_retain(a4);
    }

    else
    {
      v7->_delegateQueue = dispatch_queue_create("com.apple.FindMyAccessoryFirmwareUpdateManager.privateQueue", 0);
    }

    operator new();
  }

  return 0;
}

- (void)handleInterruption
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
  }

  v3 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Connection to locationd interrupted!!", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryFirmwareUpdateManager handleInterruption]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = *MEMORY[0x1E696A578];
  v10 = @"Connection to locationd interrupted!";
  v7 = [v6 initWithDomain:@"kCLErrorDomainPrivate" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryFirmwareUpdateManager:self didFailWithError:v7 forDevice:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3
{
  var0 = a3.var0;
  v71 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
  }

  v5 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CLConnectionMessage::name(*var0);
    if (*(v6 + 23) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *v6;
    }

    *buf = 136315138;
    v66 = v7;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "Got Reply: message: %s", buf, 0xCu);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
    }

    v9 = CLConnectionMessage::name(*var0);
    if (*(v9 + 23) < 0)
    {
      v10 = *v9;
    }

    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v16);
  v18 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E747E0];
  v19 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74840];
  v20 = CLConnectionMessage::name(*var0);
  if (!std::string::compare(v20, "DurianManagement/DidFetchPersonalizationInformation"))
  {
    v28 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74960];
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
    }

    v29 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [objc_msgSend(v18 "UUIDString")];
      v31 = "Failed";
      *buf = 136315650;
      v66 = v30;
      if (!v19)
      {
        v31 = "Success";
      }

      v67 = 2080;
      v68 = v31;
      v69 = 2112;
      v70 = v28;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "informing client -- did retreive personalization info for device: %s - %s with info: %@", buf, 0x20u);
    }

    v32 = sub_19B87DD40();
    if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
      }

      [objc_msgSend(v18 "UUIDString")];
      v33 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    [objc_loadWeak(&self->_delegate) findMyAccessoryFirmwareUpdateManager:self personalizationRequestForDevice:v18 completedWithInfo:v28 andError:v19];
  }

  else
  {
    v21 = CLConnectionMessage::name(*var0);
    if (!std::string::compare(v21, "DurianManagement/DidUpdateFirmware"))
    {
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
      }

      v34 = qword_1EAFE4700;
      if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [objc_msgSend(v18 "UUIDString")];
        v36 = "Failed";
        if (!v19)
        {
          v36 = "Succeeded";
        }

        *buf = 136315394;
        v66 = v35;
        v67 = 2080;
        v68 = v36;
        _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEFAULT, "informing client -- firmware update for device: %s - %s", buf, 0x16u);
      }

      v37 = sub_19B87DD40();
      if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
        }

        [objc_msgSend(v18 "UUIDString")];
        v38 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      [objc_loadWeak(&self->_delegate) findMyAccessoryFirmwareUpdateManager:self firmwareUpdateRequestForDevice:v18 completedWithError:v19];
    }

    else
    {
      v22 = CLConnectionMessage::name(*var0);
      if (!std::string::compare(v22, "DurianManagement/DidUseLocalAssetRequest"))
      {
        v39 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74F60];
        v40 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74F80];
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
        }

        v41 = qword_1EAFE4700;
        if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v39 UTF8String];
          v43 = [v40 UTF8String];
          v44 = "Failed";
          *buf = 136315650;
          v66 = v42;
          v67 = 2080;
          if (!v19)
          {
            v44 = "Succeeded";
          }

          v68 = v43;
          v69 = 2080;
          v70 = v44;
          _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_DEFAULT, "informing client -- use local asset request for product group: %s, product number: %s - %s", buf, 0x20u);
        }

        v45 = sub_19B87DD40();
        if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
          }

          [v39 UTF8String];
          [v40 UTF8String];
          v46 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v46);
          if (v46 != buf)
          {
            free(v46);
          }
        }

        [objc_loadWeak(&self->_delegate) findMyAccessoryFirmwareUpdateManager:self useLocalAssetRequestForProductGroup:v39 andProductNumber:v40 completedWithError:v19];
      }

      else
      {
        v23 = CLConnectionMessage::name(*var0);
        if (!std::string::compare(v23, "DurianManagement/DidUseDefaultAssetRequest"))
        {
          v47 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74F60];
          v48 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74F80];
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
          }

          v49 = qword_1EAFE4700;
          if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [v47 UTF8String];
            v51 = [v48 UTF8String];
            *buf = 136315650;
            if (v19)
            {
              v52 = "Failed";
            }

            else
            {
              v52 = "Succeeded";
            }

            v66 = v50;
            v67 = 2080;
            v68 = v51;
            v69 = 2080;
            v70 = v52;
            _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEFAULT, "informing client -- use default asset request for product group: %s, product number: %s - %s", buf, 0x20u);
          }

          v53 = sub_19B87DD40();
          if (*(v53 + 160) > 1 || *(v53 + 164) > 1 || *(v53 + 168) > 1 || *(v53 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46C8 != -1)
            {
              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
            }

            [v47 UTF8String];
            [v48 UTF8String];
            v54 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v54);
            if (v54 != buf)
            {
              free(v54);
            }
          }

          [objc_loadWeak(&self->_delegate) findMyAccessoryFirmwareUpdateManager:self useDefaultAssetRequestForProductGroup:v47 andProductNumber:v48 completedWithError:v19];
        }

        else
        {
          v24 = CLConnectionMessage::name(*var0);
          if (!std::string::compare(v24, "DurianManagement/DidFetchWhetherLocalFirmwareAssetIsInUse"))
          {
            v55 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74F60];
            v56 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74F80];
            v57 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74FC0), "BOOLValue"}];
            if (qword_1EAFE46C8 != -1)
            {
              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
            }

            v58 = qword_1EAFE4700;
            if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
            {
              if (v57)
              {
                v59 = "IN USE";
              }

              else
              {
                v59 = "NOT IN USE";
              }

              v60 = [v55 UTF8String];
              v61 = [v56 UTF8String];
              *buf = 136315650;
              v66 = v59;
              v67 = 2080;
              v68 = v60;
              v69 = 2080;
              v70 = v61;
              _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_DEFAULT, "informing client -- local firmware asset is %s for product group: %s, product number: %s", buf, 0x20u);
            }

            v62 = sub_19B87DD40();
            if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46C8 != -1)
              {
                dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
              }

              [v55 UTF8String];
              [v56 UTF8String];
              v63 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v63);
              if (v63 != buf)
              {
                free(v63);
              }
            }

            [objc_loadWeak(&self->_delegate) findMyAccessoryFirmwareUpdateManager:self didFetchWhetherLocalFirmwareAssetIsInUseForProductGroup:v55 andProductNumber:v56 withResult:v57];
          }

          else
          {
            if (qword_1EAFE46C8 != -1)
            {
              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
            }

            v25 = qword_1EAFE4700;
            if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLFindMyAccessoryFirmwareUpdateManager - Unknown Message - ignoring", buf, 2u);
            }

            v26 = sub_19B87DD40();
            if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46C8 != -1)
              {
                dispatch_once(&qword_1EAFE46C8, &unk_1F0E6EA50);
              }

              v27 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryFirmwareUpdateManager handleMessage:]", "CoreLocation: %s\n", v27);
              if (v27 != buf)
              {
                free(v27);
              }
            }
          }
        }
      }
    }
  }

  v64 = *MEMORY[0x1E69E9840];
}

- (void)getPersonalizationInfoForDevice:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)updateFirmwareForDevice:(id)a3 withAssetURL:(id)a4
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6[0] = 0x1F0E747E0;
  v6[1] = 0x1F0E74980;
  v7[0] = a3;
  v7[1] = a4;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  sub_19B890E08();
}

- (void)abortFirmwareUpdateForDevice:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)useLocalFirmwareAssetFromURL:(id)a3 forProductGroup:(id)a4 forProductNumber:(id)a5 withSandboxExtension:(id)a6
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
LABEL_3:
      if (a5)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (a5)
  {
LABEL_4:
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_9:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_5:
    v12[0] = 0x1F0E74F40;
    v12[1] = 0x1F0E74F60;
    v13[0] = a3;
    v13[1] = a4;
    v12[2] = 0x1F0E74F80;
    v12[3] = 0x1F0E74FA0;
    v13[2] = a5;
    v13[3] = a6;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    sub_19B890E08();
  }

LABEL_8:
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (a6)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

- (void)useDefaultFirmwareAssetSourceForProductGroup:(id)a3 andProductNumber:(id)a4
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_3:
  v8[0] = 0x1F0E74F60;
  v8[1] = 0x1F0E74F80;
  v9[0] = a3;
  v9[1] = a4;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  sub_19B890E08();
}

- (void)fetchWhetherLocalFirmwareAssetIsInUseForProductGroup:(id)a3 andProductNumber:(id)a4
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_3:
  v8[0] = 0x1F0E74F60;
  v8[1] = 0x1F0E74F80;
  v9[0] = a3;
  v9[1] = a4;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  sub_19B890E08();
}

@end