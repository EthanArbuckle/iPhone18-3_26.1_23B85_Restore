@interface SpatialAudioQueue
- ($09AED28DA01A4B4CD63B1271B5E0322A)streamInfo;
- (BOOL)updateStreamInfo:(id)a3;
- (SpatialAudioQueue)initWithStreamInfo:(id)a3;
- (void)dealloc;
@end

@implementation SpatialAudioQueue

- (SpatialAudioQueue)initWithStreamInfo:(id)a3
{
  v3 = *&a3.var2;
  v4 = *&a3.var0;
  v10.receiver = self;
  v10.super_class = SpatialAudioQueue;
  v5 = [(SpatialAudioQueue *)&v10 init];
  if (v5)
  {
    v9[0] = 0;
    v9[1] = 0;
    sub_70AF4(v9, (v5 + 8));
    *(v5 + 76) = v4;
    *(v5 + 21) = v3;
    ++*(v5 + 18);
    v6 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = HIBYTE(v4);
      v8[1] = BYTE6(v4);
      v8[2] = BYTE5(v4);
      v8[3] = BYTE4(v4);
      v8[4] = 0;
      *buf = 67109634;
      v12 = v4;
      v13 = 1024;
      v14 = BYTE1(v3);
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[ %d ]Allocating Audio Queue channels = %d FormatID = %s", buf, 0x18u);
    }

    sub_70C40(v9);
  }

  return v5;
}

- (void)dealloc
{
  v3 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    mClientProcessID = self->_streamInfo.mClientProcessID;
    mNumChannels = self->_streamInfo.mNumChannels;
    v4.i32[0] = self->_streamInfo.mFormatID;
    v7 = vrev64_s16(*&vmovl_u8(v4));
    v9 = vuzp1_s8(v7, v7).u32[0];
    v10 = 0;
    *buf = 67109634;
    v12 = mClientProcessID;
    v13 = 1024;
    v14 = mNumChannels;
    v15 = 2080;
    v16 = &v9;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[ %d ]Releasing Audio Queue Number channels = %d FormatID = %s", buf, 0x18u);
  }

  v8.receiver = self;
  v8.super_class = SpatialAudioQueue;
  [(SpatialAudioQueue *)&v8 dealloc];
}

- (BOOL)updateStreamInfo:(id)a3
{
  v3 = *&a3.var2;
  v4 = *&a3.var0;
  v16[0] = 0;
  v16[1] = 0;
  sub_70AF4(v16, &self->queueMutex);
  if (v3)
  {
    v6 = self->_audioQueueRef + 1;
    self->_audioQueueRef = v6;
    *&self->_streamInfo.mClientProcessID = v4;
    *&self->_streamInfo.mSpatializationStatus = v3;
  }

  else
  {
    audioQueueRef = self->_audioQueueRef;
    if (audioQueueRef)
    {
      v6 = audioQueueRef - 1;
      self->_audioQueueRef = audioQueueRef - 1;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    mClientProcessID = self->_streamInfo.mClientProcessID;
    mNumChannels = self->_streamInfo.mNumChannels;
    v9.i32[0] = self->_streamInfo.mFormatID;
    v12 = vrev64_s16(*&vmovl_u8(v9));
    v14 = vuzp1_s8(v12, v12).u32[0];
    v15 = 0;
    *buf = 67109890;
    v18 = mClientProcessID;
    v19 = 1024;
    v20 = mNumChannels;
    v21 = 2080;
    v22 = &v14;
    v23 = 1024;
    v24 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Update Audio Queue PID= %d Number channels = %d FormatID = %s Ref = %d", buf, 0x1Eu);
    v6 = self->_audioQueueRef;
  }

  sub_70C40(v16);
  return v6 != 0;
}

- ($09AED28DA01A4B4CD63B1271B5E0322A)streamInfo
{
  objc_copyStruct(&v4, &self->_streamInfo, 12, 1, 0);
  v2 = v4;
  v3 = v5;
  result.var0 = v2;
  result.var1 = HIDWORD(v2);
  result.var2 = v3;
  result.var3 = BYTE1(v3);
  result.var4 = BYTE2(v3);
  result.var5 = HIBYTE(v3);
  return result;
}

@end