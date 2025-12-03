@interface _GCAssertingProfile
- (GCMotion)_motion;
- (NSString)name;
- (_GCAssertingProfile)initWithController:(id)controller;
- (id)productCategory;
- (id)valueChangedHandler;
- (unsigned)sampleRate;
- (void)_legacy_handleEvent:(__IOHIDEvent *)event;
- (void)setButton:(id)button pressed:(BOOL)pressed;
- (void)setButton:(id)button value:(double)value;
- (void)setController:(id)controller;
- (void)setDpad:(id)dpad x:(double)x y:(double)y;
- (void)setPlayerIndex:(int64_t)index;
- (void)set_motion:(id)set_motion;
@end

@implementation _GCAssertingProfile

- (NSString)name
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v2);
}

- (GCMotion)_motion
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v2);
}

- (void)set_motion:(id)set_motion
{
  set_motionCopy = set_motion;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v4);
}

- (_GCAssertingProfile)initWithController:(id)controller
{
  controllerCopy = controller;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v4);
}

- (void)setPlayerIndex:(int64_t)index
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v3);
}

- (void)setController:(id)controller
{
  controllerCopy = controller;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v4);
}

- (id)valueChangedHandler
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v2);
}

- (void)_legacy_handleEvent:(__IOHIDEvent *)event
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v3);
}

- (id)productCategory
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v2);
}

- (unsigned)sampleRate
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v2);
}

- (void)setDpad:(id)dpad x:(double)x y:(double)y
{
  dpadCopy = dpad;
  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v6);
}

- (void)setButton:(id)button value:(double)value
{
  buttonCopy = button;
  v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v5);
}

- (void)setButton:(id)button pressed:(BOOL)pressed
{
  buttonCopy = button;
  v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"GCNamedProfile method called on _GCAssertingProfile" userInfo:0];
  objc_exception_throw(v5);
}

@end