@interface CMFitnessMachine
+ (BOOL)isAvailable;
- (CMFitnessMachine)init;
- (void)dealloc;
- (void)feedFitnessMachineData:(id)data;
@end

@implementation CMFitnessMachine

- (CMFitnessMachine)init
{
  v4.receiver = self;
  v4.super_class = CMFitnessMachine;
  v2 = [(CMFitnessMachine *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMFitnessMachineInternal);
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6F76BC;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_sync(fInternalQueue, block);

  v5.receiver = self;
  v5.super_class = CMFitnessMachine;
  [(CMFitnessMachine *)&v5 dealloc];
}

+ (BOOL)isAvailable
{
  if ((sub_19B4215D8() & 1) == 0)
  {
    sub_19B421798();
  }

  return 0;
}

- (void)feedFitnessMachineData:(id)data
{
  if (qword_1ED71D578 != -1)
  {
    dispatch_once(&qword_1ED71D578, &unk_1F0E281E0);
  }

  if (qword_1ED71D570 == 3)
  {
    v5 = objc_msgSend__internal(self, a2, data);

    MEMORY[0x1EEE66B58](v5, sel__feedFitnessMachineData_, data);
  }
}

@end