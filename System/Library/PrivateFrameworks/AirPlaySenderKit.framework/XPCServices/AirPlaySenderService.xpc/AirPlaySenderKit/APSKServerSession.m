@interface APSKServerSession
- (APSKServerSession)init;
- (int)sendAudioDataFromXPCParams:(id)a3;
- (int)sendFrameFromXPCParams:(id)a3;
- (int)setAuthStringFromXPCParams:(id)a3;
- (int)startWithXPCParams:(id)a3;
- (void)dealloc;
- (void)handleAuthRequired:(int)a3;
- (void)handleFailure:(int)a3;
- (void)handleStartCompletion:(int)a3;
- (void)handleUpdatedDisplayWidth:(int)a3 height:(int)a4 refreshRate:(int)a5;
- (void)handleVideoStreamErrorNotification:(int)a3;
- (void)setObjectID:(unint64_t)a3 andConnection:(id)a4;
- (void)stop;
@end

@implementation APSKServerSession

- (APSKServerSession)init
{
  v4.receiver = self;
  v4.super_class = APSKServerSession;
  v2 = [(APSKServerSession *)&v4 init];
  if (v2)
  {
    v2->_lock = FigSimpleMutexCreate();
    if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_10000830C();
    }
  }

  return v2;
}

- (void)dealloc
{
  [(APSKServerSession *)self stop];
  lock = self->_lock;
  FigSimpleMutexDestroy();
  self->_lock = 0;
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_10000834C();
  }

  v4.receiver = self;
  v4.super_class = APSKServerSession;
  [(APSKServerSession *)&v4 dealloc];
}

- (void)stop
{
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_10000838C();
  }

  if (self->_senderNotifObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_senderNotifObserver];

    senderNotifObserver = self->_senderNotifObserver;
    self->_senderNotifObserver = 0;
  }

  sender = self->_sender;
  if (sender)
  {
    sub_100005724(sender);
    v6 = self->_sender;
    if (v6)
    {
      CFRelease(v6);
      self->_sender = 0;
    }
  }

  lock = self->_lock;
  FigSimpleMutexLock();
  connection = self->_connection;
  self->_connection = 0;
  self->_objectID = 0;

  v9 = self->_lock;

  FigSimpleMutexUnlock();
}

- (int)startWithXPCParams:(id)a3
{
  v4 = a3;
  v40 = 0;
  uint64 = xpc_dictionary_get_uint64(v4, off_1000142D0);
  string = xpc_dictionary_get_string(v4, off_1000142E0);
  v39 = 0;
  v7 = xpc_dictionary_get_uint64(v4, off_1000142C8);
  v8 = xpc_dictionary_get_uint64(v4, off_1000142D8);
  objc_initWeak(&location, self);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000313C;
  v36[3] = &unk_100010990;
  objc_copyWeak(&v37, &location);
  v9 = objc_retainBlock(v36);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000318C;
  v34[3] = &unk_100010990;
  objc_copyWeak(&v35, &location);
  v10 = objc_retainBlock(v34);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000031DC;
  v32[3] = &unk_100010990;
  objc_copyWeak(&v33, &location);
  v11 = objc_retainBlock(v32);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000322C;
  v30[3] = &unk_1000109B8;
  objc_copyWeak(&v31, &location);
  v26 = objc_retainBlock(v30);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100003294;
  v28[3] = &unk_1000109E0;
  objc_copyWeak(&v29, &location);
  v25 = objc_retainBlock(v28);
  v12 = FigXPCMessageCopyCFObject();
  if (v12)
  {
    goto LABEL_36;
  }

  if (!v39 || !uint64)
  {
    v12 = -6705;
    APSLogErrorAt();
    goto LABEL_40;
  }

  if (self->_sender)
  {
    v12 = -6709;
    APSLogErrorAt();
    goto LABEL_40;
  }

  sender = sub_100003BF4();
  self->_sender = sender;
  if (!sender)
  {
    v12 = -6762;
    APSLogErrorAt();
    goto LABEL_40;
  }

  if (dword_100014248 <= 50)
  {
    if (dword_100014248 != -1 || (v14 = _LogCategory_Initialize(), sender = self->_sender, v14))
    {
      v23 = self;
      v24 = sender;
      LogPrintF();
      sender = self->_sender;
    }
  }

  if (string)
  {
    v12 = sub_100004564(sender, [NSString stringWithUTF8String:string]);
    if (v12)
    {
LABEL_36:
      APSLogErrorAt();
      goto LABEL_40;
    }

    sender = self->_sender;
  }

  v12 = sub_100003DB4(sender, v9);
  if (v12)
  {
    goto LABEL_36;
  }

  v12 = sub_100003ECC(self->_sender, v11);
  if (v12)
  {
    goto LABEL_36;
  }

  if ((uint64 & 2) == 0)
  {
    goto LABEL_19;
  }

  length = 0;
  data = xpc_dictionary_get_data(v4, off_100014308, &length);
  if (!data || length != 40)
  {
    v12 = -6705;
    APSLogErrorAt();
    goto LABEL_40;
  }

  v16 = self->_sender;
  v17 = xpc_dictionary_get_BOOL(v4, off_100014300);
  v12 = sub_1000043DC(v16, data, v17);
  if (!v12)
  {
LABEL_19:
    if ((uint64 & 1) == 0)
    {
LABEL_26:
      sub_100004714(self->_sender, v39, v7, uint64, v8, v10);
      v12 = 0;
      goto LABEL_27;
    }

    v12 = FigXPCMessageCopyCFDictionary();
    if (!v12)
    {
      v12 = sub_100004254(self->_sender, v40);
      if (!v12)
      {
        v12 = sub_100003FE4(self->_sender, v26);
        if (!v12 && (!xpc_dictionary_get_BOOL(v4, off_1000142F0) || (v12 = sub_100004100(self->_sender)) == 0))
        {
          v18 = [NSNotificationCenter defaultCenter:v23];
          v19 = [v18 addObserverForName:@"APMediaSender_VideoStreamFailed" object:self->_sender queue:0 usingBlock:v25];
          senderNotifObserver = self->_senderNotifObserver;
          self->_senderNotifObserver = v19;

          goto LABEL_26;
        }
      }
    }
  }

  APSLogErrorAt();
LABEL_40:
  if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v22 = self->_sender;
  if (v22)
  {
    CFRelease(v22);
    self->_sender = 0;
  }

LABEL_27:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  return v12;
}

- (int)setAuthStringFromXPCParams:(id)a3
{
  string = xpc_dictionary_get_string(a3, off_1000142E0);
  sender = self->_sender;
  if (sender)
  {
    if (string)
    {
      v6 = [NSString stringWithUTF8String:string];
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_100004564(sender, v6);
    if (v7)
    {
      sub_1000083CC();
    }
  }

  else
  {
    sub_1000083E0();
    return -6709;
  }

  return v7;
}

- (int)sendFrameFromXPCParams:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 0;
  cf = 0;
  if (self->_sender)
  {
    v6 = xpc_dictionary_get_value(v4, off_1000142E8);
    v7 = v6;
    if (v6)
    {
      v8 = sub_100007744(v6, &cf, &v11);
      if (v8)
      {
        v9 = v8;
        sub_1000083F4();
      }

      else
      {
        v9 = sub_1000058AC(self->_sender, cf, v11);
        if (v9)
        {
          sub_10000841C();
        }
      }
    }

    else
    {
      sub_100008444();
      v9 = -6705;
    }
  }

  else
  {
    sub_100008458();
    v7 = 0;
    v9 = -6709;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

- (int)sendAudioDataFromXPCParams:(id)a3
{
  v4 = a3;
  v5 = v4;
  v19 = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  length = 0;
  if (!self->_sender)
  {
    sub_100008494();
    v14 = -6709;
    goto LABEL_11;
  }

  data = xpc_dictionary_get_data(v4, off_100014310, &length);
  if (data)
  {
    v7 = CFDataCreate(kCFAllocatorDefault, data, length);
    CMTime = FigXPCMessageGetCMTime();
    uint64 = xpc_dictionary_get_uint64(v5, off_100014320);
    v10 = xpc_dictionary_get_BOOL(v5, off_100014328);
    if (CMTime)
    {
      v11 = sub_1000059EC(self->_sender, v7);
      goto LABEL_8;
    }

    v12 = v10;
  }

  else
  {
    v12 = 0;
    uint64 = 0;
    v7 = 0;
  }

  sender = self->_sender;
  v16 = v19;
  v17 = epoch;
  v11 = sub_100005B28(sender, v7, &v16, uint64, v12);
LABEL_8:
  v14 = v11;
  if (v11)
  {
    sub_10000846C();
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v7)
  {
LABEL_10:
    CFRelease(v7);
  }

LABEL_11:

  return v14;
}

- (void)setObjectID:(unint64_t)a3 andConnection:(id)a4
{
  v6 = a4;
  lock = self->_lock;
  FigSimpleMutexLock();
  connection = self->_connection;
  self->_connection = v6;
  self->_objectID = a3;
  v10 = v6;

  v9 = self->_lock;
  FigSimpleMutexUnlock();
}

- (void)handleAuthRequired:(int)a3
{
  lock = self->_lock;
  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v6 = FigXPCCreateBasicMessage();
    v7 = 0;
    v8 = v7;
    if (v6)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v7, off_100014338, a3);
      xpc_connection_send_message(self->_connection, v8);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = self->_lock;
  FigSimpleMutexUnlock();
  FigXPCRelease();
}

- (void)handleStartCompletion:(int)a3
{
  if (a3)
  {
    if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_8;
    }
  }

  else if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_100003950();
LABEL_8:
    LogPrintF();
  }

  lock = self->_lock;
  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v6 = FigXPCCreateBasicMessage();
    v7 = 0;
    v8 = v7;
    if (v6)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v7, off_100014330, a3);
      xpc_connection_send_message(self->_connection, v8);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = self->_lock;
  FigSimpleMutexUnlock();
  FigXPCRelease();
}

- (void)handleFailure:(int)a3
{
  if (dword_100014248 <= 100 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  lock = self->_lock;
  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v6 = FigXPCCreateBasicMessage();
    v7 = 0;
    v8 = v7;
    if (v6)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v7, off_100014330, a3);
      xpc_connection_send_message(self->_connection, v8);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = self->_lock;
  FigSimpleMutexUnlock();
  FigXPCRelease();
}

- (void)handleUpdatedDisplayWidth:(int)a3 height:(int)a4 refreshRate:(int)a5
{
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_100003950();
    LogPrintF();
  }

  lock = self->_lock;
  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v10 = FigXPCCreateBasicMessage();
    v11 = 0;
    v12 = v11;
    if (v10)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v11, off_100014340, a3);
      xpc_dictionary_set_uint64(v12, off_100014348, a4);
      xpc_dictionary_set_uint64(v12, off_100014350, a5);
      xpc_connection_send_message(self->_connection, v12);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = self->_lock;
  FigSimpleMutexUnlock();
  FigXPCRelease();
}

- (void)handleVideoStreamErrorNotification:(int)a3
{
  if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  lock = self->_lock;
  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v6 = FigXPCCreateBasicMessage();
    v7 = 0;
    v8 = v7;
    if (v6)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v7, off_100014330, a3);
      xpc_connection_send_message(self->_connection, v8);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = self->_lock;
  FigSimpleMutexUnlock();
  FigXPCRelease();
}

@end