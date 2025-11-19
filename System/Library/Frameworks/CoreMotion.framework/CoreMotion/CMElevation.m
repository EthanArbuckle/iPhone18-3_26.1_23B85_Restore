@interface CMElevation
+ (BOOL)isElevationAvailable;
- (CMElevation)init;
- (void)dealloc;
- (void)startElevationUpdatesWithHandler:(id)a3;
- (void)stopElevationUpdates;
@end

@implementation CMElevation

- (CMElevation)init
{
  v4.receiver = self;
  v4.super_class = CMElevation;
  v2 = [(CMElevation *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMAltimeterInternal);
  }

  return v2;
}

- (void)dealloc
{
  size = self->_internal->fPressureSamples.__size_;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B776330;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(size, block);

  v4.receiver = self;
  v4.super_class = CMElevation;
  [(CMElevation *)&v4 dealloc];
}

+ (BOOL)isElevationAvailable
{
  sub_19B421798();
  sub_19B421798();

  return sub_19B43B6EC();
}

- (void)startElevationUpdatesWithHandler:(id)a3
{
  if (!a3)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CMAltimeter.mm", 1238, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B776438;
  v8[3] = &unk_1E7532B68;
  v8[4] = self;
  v8[5] = a3;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v8);
}

- (void)stopElevationUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B7764EC;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

@end