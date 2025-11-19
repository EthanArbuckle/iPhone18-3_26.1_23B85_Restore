@interface BTAudioSmartRouteDevice
- (BOOL)isFormatChangeMapEmpty;
- (BTAudioSmartRouteDevice)init;
- (BTAudioSmartRouteDevice)initWithBluetoothInfo:(unsigned int)a3 deviceAddr:(id)a4;
- (void)clearFormatChangeMap;
- (void)dealloc;
- (void)setOwnership:(int)a3;
- (void)updateSession:(id)a3 isStart:(BOOL)a4 isInput:(BOOL)a5;
@end

@implementation BTAudioSmartRouteDevice

- (void)dealloc
{
  mFormatDict = self->_mFormatDict;
  if (mFormatDict)
  {
  }

  v4.receiver = self;
  v4.super_class = BTAudioSmartRouteDevice;
  [(BTAudioSmartRouteDevice *)&v4 dealloc];
}

- (BTAudioSmartRouteDevice)init
{
  v3.receiver = self;
  v3.super_class = BTAudioSmartRouteDevice;
  return [(BTAudioSmartRouteDevice *)&v3 init];
}

- (BTAudioSmartRouteDevice)initWithBluetoothInfo:(unsigned int)a3 deviceAddr:(id)a4
{
  v9.receiver = self;
  v9.super_class = BTAudioSmartRouteDevice;
  v6 = [(BTAudioSmartRouteDevice *)&v9 init];
  v6->_deviceID = a3;
  v6->_bdAddr = [[NSString alloc] initWithString:a4];
  v6->_session = 0;
  v6->_mFormatDict = objc_alloc_init(NSMutableDictionary);
  v7 = qword_D8520;
  if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = a4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Initialize Bluetooth Audio device in Route Manager %@ ", buf, 0xCu);
  }

  return v6;
}

- (void)clearFormatChangeMap
{
  mFormatDict = self->_mFormatDict;
  v4 = qword_D8520;
  v5 = os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT);
  if (mFormatDict)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = mFormatDict;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "kBluetoothAudioDevicePropertyFormat removeAllObjects %@", &v6, 0xCu);
      mFormatDict = self->_mFormatDict;
    }

    [(NSMutableDictionary *)mFormatDict removeAllObjects];
  }

  else if (v5)
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "kBluetoothAudioDevicePropertyFormat skip removeAllObjects", &v6, 2u);
  }
}

- (BOOL)isFormatChangeMapEmpty
{
  v3 = qword_D8520;
  if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
  {
    mFormatDict = self->_mFormatDict;
    v6 = 138412290;
    v7 = mFormatDict;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HFPStereo check FormatDict %@", &v6, 0xCu);
  }

  return [(NSMutableDictionary *)self->_mFormatDict count]== 0;
}

- (void)setOwnership:(int)a3
{
  if (self->_ownership == a3)
  {
    goto LABEL_9;
  }

  if ((a3 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_7;
  }

  if (a3 != 1)
  {
    v6 = qword_D8520;
    if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_ERROR))
    {
      sub_7C1AC(v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = 1;
LABEL_8:
  self->_ownership = a3;
  deviceID = self->_deviceID;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_3850C;
  v18[3] = &unk_AE158;
  v18[4] = self;
  v19 = v5;
  sub_507D8(qword_D8DF0, deviceID, v18);
LABEL_9:
  v15 = qword_D8520;
  if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
  {
    bdAddr = self->_bdAddr;
    ownership = self->_ownership;
    *buf = 138412546;
    v21 = bdAddr;
    v22 = 1024;
    v23 = ownership;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Update Ownership on  %@ -> %d", buf, 0x12u);
  }
}

- (void)updateSession:(id)a3 isStart:(BOOL)a4 isInput:(BOOL)a5
{
  v5 = a5;
  session = self->_session;
  if (a4)
  {
    if (!session)
    {
      v9 = qword_D8520;
      if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "updateSession Create Session", v23, 2u);
      }

      v10 = [[BTAudioSmartRouteSession alloc] initWithbundleID:a3];
      self->_session = v10;
      [(BTAudioSmartRouteSession *)v10 setIsOutput:0];
      [(BTAudioSmartRouteSession *)self->_session setIsInput:0];
    }

    v11 = self->_session;
    if (v5)
    {
      [(BTAudioSmartRouteSession *)v11 setIsInput:1];
    }

    else
    {
      [(BTAudioSmartRouteSession *)v11 setIsOutput:1];
    }

    v12 = qword_D8520;
    if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v13 = @"Input";
      }

      else
      {
        v13 = @"Output";
      }

      if ([(BTAudioSmartRouteSession *)self->_session isInput])
      {
        v14 = @"true";
      }

      else
      {
        v14 = @"false";
      }

      v15 = [(BTAudioSmartRouteSession *)self->_session isOutput];
      *v23 = 138413314;
      if (v15)
      {
        v16 = @"true";
      }

      else
      {
        v16 = @"false";
      }

      *&v23[4] = a3;
      v24 = 1024;
      v25 = 1;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "updateSession startIO %@ isStart %d isInput %@ SInput %@, SOutput %@", v23, 0x30u);
    }
  }

  else
  {
    if (a5)
    {
      [(BTAudioSmartRouteSession *)session setIsInput:0];
    }

    else
    {
      [(BTAudioSmartRouteSession *)session setIsOutput:0];
    }

    v17 = qword_D8520;
    if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v18 = @"Input";
      }

      else
      {
        v18 = @"Output";
      }

      if ([(BTAudioSmartRouteSession *)self->_session isInput])
      {
        v19 = @"true";
      }

      else
      {
        v19 = @"false";
      }

      v20 = [(BTAudioSmartRouteSession *)self->_session isOutput];
      *v23 = 138413314;
      if (v20)
      {
        v21 = @"true";
      }

      else
      {
        v21 = @"false";
      }

      *&v23[4] = a3;
      v24 = 1024;
      v25 = 0;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "updateSession stopIO %@ isStart %d isInput %@ SInput %@, SOutput %@", v23, 0x30u);
    }

    if (![(BTAudioSmartRouteSession *)self->_session isInput]&& ![(BTAudioSmartRouteSession *)self->_session isOutput])
    {

      v22 = qword_D8520;
      if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "updateSession Release Session", v23, 2u);
      }

      self->_session = 0;
    }
  }
}

@end