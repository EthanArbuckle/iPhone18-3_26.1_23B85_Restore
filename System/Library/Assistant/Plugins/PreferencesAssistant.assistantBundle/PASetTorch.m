@interface PASetTorch
- (PASetTorch)initWithDictionary:(id)a3;
- (void)_performQueuedRequests;
- (void)_performWithCompletion:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performWithCompletion:(id)a3;
@end

@implementation PASetTorch

- (PASetTorch)initWithDictionary:(id)a3
{
  v10.receiver = self;
  v10.super_class = PASetTorch;
  v3 = [(PASetTorch *)&v10 initWithDictionary:a3];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("PASetTorch", v4);
    flashlightQueue = v3->_flashlightQueue;
    v3->_flashlightQueue = v5;

    if (+[AVFlashlight hasFlashlight])
    {
      v7 = objc_alloc_init(AVFlashlight);
      flashlight = v3->_flashlight;
      v3->_flashlight = v7;

      [(AVFlashlight *)v3->_flashlight addObserver:v3 forKeyPath:@"flashlightLevel" options:0 context:0];
      [(AVFlashlight *)v3->_flashlight addObserver:v3 forKeyPath:@"overheated" options:0 context:0];
      [(AVFlashlight *)v3->_flashlight addObserver:v3 forKeyPath:@"available" options:0 context:0];
    }

    else
    {
      v3->_flashlightStatusHasBeenUpdated = 1;
    }
  }

  return v3;
}

- (void)dealloc
{
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"flashlightLevel" context:0];
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"overheated" context:0];
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"available" context:0];
  v3.receiver = self;
  v3.super_class = PASetTorch;
  [(PASetTorch *)&v3 dealloc];
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  flashlightQueue = self->_flashlightQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5EBC;
  v7[3] = &unk_10598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(flashlightQueue, v7);
}

- (void)_performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PASetTorch *)self dryRun];
  v6 = AFGetFlashlightLevel();
  v7 = v6;
  if (v6)
  {
    [v6 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  if ((+[AVFlashlight hasFlashlight]& 1) == 0)
  {
    v10 = objc_alloc_init(SACommandFailed);
    [v10 setReason:@"Device does not support Flashlight"];
    v11 = &SASettingPropertyUnsupportedByDeviceErrorCode;
    goto LABEL_8;
  }

  if ([(AVFlashlight *)self->_flashlight isOverheated])
  {
    v10 = objc_alloc_init(SACommandFailed);
    [v10 setReason:@"Flashlight is overheated"];
    v11 = &SASettingTorchOverHeatErrorCode;
LABEL_8:
    [v10 setErrorCode:*v11];
    v12 = v10;
    LODWORD(v10) = 0;
    v13 = @"OFF";
    v14 = v12;
    goto LABEL_9;
  }

  if (([(AVFlashlight *)self->_flashlight isAvailable]& 1) == 0)
  {
    v10 = objc_alloc_init(SACommandFailed);
    [v10 setReason:@"Flashlight is temporarily unavailable"];
    v11 = &SASettingTorchUnavailableErrorCode;
    goto LABEL_8;
  }

  [(AVFlashlight *)self->_flashlight flashlightLevel];
  v21 = v20;
  if ([(PASetTorch *)self toggle])
  {
    v10 = v21 == 0.0;
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_25:
    v24 = 0;
    if ((((v21 != 0.0) ^ v10) & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v10 = [(PASetTorch *)self value];
  if (v5)
  {
    goto LABEL_25;
  }

LABEL_21:
  flashlight = self->_flashlight;
  if (v10)
  {
    v33 = 0;
    *&v22 = v9;
    [(AVFlashlight *)flashlight setFlashlightLevel:&v33 withError:v22];
    v24 = v33;
  }

  else
  {
    v32 = 0;
    [(AVFlashlight *)flashlight setFlashlightLevel:&v32 withError:0.0];
    v24 = v32;
    if (!v24)
    {
      [(AVFlashlight *)self->_flashlight turnPowerOff];
    }
  }

  [(AVFlashlight *)self->_flashlight flashlightLevel];
  v10 = v25 > 0.0;
  if ((v21 != 0.0) == v25 > 0.0)
  {
    if (!v24)
    {
      goto LABEL_37;
    }

    if (([(AVFlashlight *)self->_flashlight isOverheated]& 1) != 0)
    {
      v26 = &SASettingTorchOverHeatErrorCode;
      v27 = @"Flashlight is overheated";
    }

    else
    {
      if (([(AVFlashlight *)self->_flashlight isAvailable]& 1) != 0)
      {
        goto LABEL_37;
      }

      v26 = &SASettingTorchUnavailableErrorCode;
      v27 = @"Flashlight is temporarily unavailable";
    }

    v28 = objc_alloc_init(SACommandFailed);
    [v28 setReason:v27];
    [v28 setErrorCode:*v26];
    if (v28)
    {
      v12 = v28;
      v14 = v12;
      goto LABEL_39;
    }

LABEL_37:
    v29 = objc_alloc_init(SACommandFailed);
    [v29 setReason:{@"Value unchanged, No change was made"}];
    [v29 setErrorCode:SASettingValueUnchangedErrorCode];
    v12 = v29;
    v14 = v12;
    if (v12)
    {
      goto LABEL_39;
    }
  }

LABEL_38:
  v30 = objc_alloc_init(SASettingBooleanEntity);
  [v30 setValue:v10];
  v31 = [NSNumber numberWithBool:v21 != 0.0];
  [v30 setPreviousValue:v31];

  v14 = objc_alloc_init(SASettingSetBoolResponse);
  [v14 setSetting:v30];

  v12 = 0;
LABEL_39:

  if (v21 == 0.0)
  {
    v13 = @"OFF";
  }

  else
  {
    v13 = @"ON";
  }

LABEL_9:
  v15 = PALogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v16 = @"Set";
    if (v5)
    {
      v16 = @"Dry Run";
    }

    v17 = @"ON";
    if (!v10)
    {
      v17 = @"OFF";
    }

    v35 = v16;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v17;
    v18 = v9;
    v40 = 2048;
    if (!v10)
    {
      v18 = 0.0;
    }

    v41 = v18;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "########## PSSetTorch (%@ / prev: %@ / value: %@ / level: %f / %@)", buf, 0x34u);
  }

  v19 = [v14 dictionary];
  v4[2](v4, v19);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"flashlightLevel"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"available") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"overheated"))
  {
    flashlightQueue = self->_flashlightQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_6674;
    block[3] = &unk_105E8;
    block[4] = self;
    dispatch_async(flashlightQueue, block);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PASetTorch;
    [(PASetTorch *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_performQueuedRequests
{
  pendingPerformRequests = self->_pendingPerformRequests;
  if (pendingPerformRequests)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = pendingPerformRequests;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    v9 = self->_pendingPerformRequests;
    self->_pendingPerformRequests = 0;
  }
}

@end