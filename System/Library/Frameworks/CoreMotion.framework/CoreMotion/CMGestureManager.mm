@interface CMGestureManager
+ (BOOL)isGestureServiceAvailable;
+ (BOOL)isGestureServiceEnabled;
- (id)gestureHandler;
- (void)dealloc;
- (void)setGestureHandler:(id)handler;
@end

@implementation CMGestureManager

- (void)dealloc
{
  internal = self->_internal;
  v4 = *(internal + 4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6BE80C;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_async(v4, block);

  self->_internal = 0;
  v5.receiver = self;
  v5.super_class = CMGestureManager;
  [(CMGestureManager *)&v5 dealloc];
}

- (void)setGestureHandler:(id)handler
{
  internal = self->_internal;
  v4 = *(internal + 4);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6BE888;
  v5[3] = &unk_1E7532B90;
  v5[4] = internal;
  v5[5] = handler;
  dispatch_async(v4, v5);
}

- (id)gestureHandler
{
  internal = self->_internal;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428ABC;
  v11 = sub_19B42904C;
  v12 = 0;
  v3 = *(internal + 4);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6BE968;
  v6[3] = &unk_1E7533708;
  v6[4] = internal;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

+ (BOOL)isGestureServiceEnabled
{
  v6 = 0;
  v3 = sub_19B706158(&v6, a2, v2);
  if (v6)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

+ (BOOL)isGestureServiceAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B423E34() >> 3) & 1;
  }

  return v2;
}

@end