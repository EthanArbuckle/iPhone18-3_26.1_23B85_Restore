@interface CMActivityManager
- (BOOL)isActivityAvailable;
- (CMActivityManager)init;
- (id)activityHandler;
- (int64_t)overrideOscarSideband:(BOOL)sideband withState:(int64_t)state;
- (int64_t)simulateMotionState:(BOOL)state withState:(int64_t)withState withHint:(int64_t)hint;
- (int64_t)simulateMotionStateYouthWithState:(int64_t)state;
- (void)dealloc;
- (void)setActivityHandler:(id)handler;
@end

@implementation CMActivityManager

- (CMActivityManager)init
{
  v4.receiver = self;
  v4.super_class = CMActivityManager;
  v2 = [(CMActivityManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMActivityManagerInternal);
  }

  return v2;
}

- (void)dealloc
{
  self->_internal = 0;
  v3.receiver = self;
  v3.super_class = CMActivityManager;
  [(CMActivityManager *)&v3 dealloc];
}

- (void)setActivityHandler:(id)handler
{
  internal = self->_internal;
  v4 = *(internal + 3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6C05B4;
  v5[3] = &unk_1E7532B90;
  v5[4] = internal;
  v5[5] = handler;
  dispatch_async(v4, v5);
}

- (id)activityHandler
{
  internal = self->_internal;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428ACC;
  v11 = sub_19B429058;
  v12 = 0;
  v3 = *(internal + 3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6C0694;
  v6[3] = &unk_1E7533708;
  v6[4] = internal;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isActivityAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    sub_19B421798();
    return (sub_19B421620() >> 23) & 1;
  }

  return v2;
}

- (int64_t)overrideOscarSideband:(BOOL)sideband withState:(int64_t)state
{
  internal = self->_internal;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = *(internal + 3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C0804;
  block[3] = &unk_1E75338E8;
  block[4] = internal;
  block[5] = &v14;
  dispatch_sync(v7, block);
  v8 = v15[3];
  if (!v8)
  {
    v9 = *(internal + 6);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B6C0890;
    v11[3] = &unk_1E75343D0;
    sidebandCopy = sideband;
    v11[5] = &v14;
    v11[6] = state;
    v11[4] = internal;
    dispatch_sync(v9, v11);
    v8 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (int64_t)simulateMotionState:(BOOL)state withState:(int64_t)withState withHint:(int64_t)hint
{
  internal = self->_internal;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v9 = *(internal + 3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C0C4C;
  block[3] = &unk_1E75338E8;
  block[4] = internal;
  block[5] = &v16;
  dispatch_sync(v9, block);
  v10 = v17[3];
  if (!v10)
  {
    v11 = *(internal + 10);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B6C0CD8;
    v13[3] = &unk_1E7534420;
    stateCopy = state;
    v13[6] = withState;
    v13[7] = hint;
    v13[4] = internal;
    v13[5] = &v16;
    dispatch_sync(v11, v13);
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (int64_t)simulateMotionStateYouthWithState:(int64_t)state
{
  internal = self->_internal;
  v4 = *(internal + 3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6C0E1C;
  v6[3] = &unk_1E7533490;
  v6[4] = internal;
  v6[5] = state;
  dispatch_sync(v4, v6);
  return *(internal + 13);
}

@end