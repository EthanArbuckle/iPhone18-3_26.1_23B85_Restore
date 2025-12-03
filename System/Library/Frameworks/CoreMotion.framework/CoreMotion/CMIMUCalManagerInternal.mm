@interface CMIMUCalManagerInternal
- (CMIMUCalManagerInternal)init;
- (void)_eraseStoreForParam:(int)param;
- (void)_insertEstimate:(const SensorParameterEstimate *)estimate intervalBeforeCurrentTimeSec:(double)sec;
- (void)_insertImpact:(const DeviceImpactEvent *)impact;
- (void)_readAndLogforParam:(int)param;
- (void)_sendCommand:(CMIMUCalTestCommand *)command;
- (void)dealloc;
@end

@implementation CMIMUCalManagerInternal

- (CMIMUCalManagerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMIMUCalManagerInternal;
  v2 = [(CMIMUCalManagerInternal *)&v4 init];
  if (v2)
  {
    v2->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotion.CMIMUCalManagerPrivateQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fPrivateQueue);
  self->fPrivateQueue = 0;
  if (self->fLocationdConnection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
  v4.receiver = self;
  v4.super_class = CMIMUCalManagerInternal;
  [(CMIMUCalManagerInternal *)&v4 dealloc];
}

- (void)_sendCommand:(CMIMUCalTestCommand *)command
{
  fPrivateQueue = self->fPrivateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v4 = *&command->var0.var3[2];
  v11 = *&command->var0.var3[4];
  v5 = *&command->var1.var0;
  v12 = *&command->var0.var4;
  v13 = v5;
  v6 = *command->var0.var3;
  v8 = *&command->var0.var0;
  v9 = v6;
  v7[2] = sub_19B6640B4;
  v7[3] = &unk_1E7533C00;
  v14 = *&command->var1.var2;
  v10 = v4;
  v7[4] = self;
  dispatch_async(fPrivateQueue, v7);
}

- (void)_insertEstimate:(const SensorParameterEstimate *)estimate intervalBeforeCurrentTimeSec:(double)sec
{
  v4 = *&estimate->var3[4];
  v6[2] = *&estimate->var3[2];
  *v7 = v4;
  *&v7[10] = *(&estimate->var3[5] + 2);
  v5 = *estimate->var3;
  v6[0] = *&estimate->var0;
  v6[1] = v5;
  v9[0] = 0;
  v8 = 0;
  *(v9 + 6) = 0;
  *(&v9[1] + 6) = sec;
  objc_msgSend__sendCommand_(self, a2, v6);
}

- (void)_insertImpact:(const DeviceImpactEvent *)impact
{
  v14 = *MEMORY[0x1E69E9840];
  *&v13[16] = 0;
  v12 = 0u;
  *v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  *&v13[10] = *&impact->var0;
  *&v13[15] = *(&impact->var0 + 5);
  v4[4] = *v13;
  v5 = *&v13[16];
  memset(v4, 0, 64);
  v6 = 3;
  v7 = 0;
  v8 = 0;
  objc_msgSend__sendCommand_(self, a2, v4);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_eraseStoreForParam:(int)param
{
  v3[0] = 0;
  v3[1] = param;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 1;
  v10 = 0;
  objc_msgSend__sendCommand_(self, a2, v3);
}

- (void)_readAndLogforParam:(int)param
{
  v3[0] = 0;
  v3[1] = param;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 2;
  v10 = 0;
  objc_msgSend__sendCommand_(self, a2, v3);
}

@end