@interface IOHIDDeviceCreate
@end

@implementation IOHIDDeviceCreate

__n128 __IOHIDDeviceCreate_block_invoke()
{
  v0 = *(MEMORY[0x1E695E9F8] + 32);
  xmmword_1EAF1D778 = *(MEMORY[0x1E695E9F8] + 16);
  *&qword_1EAF1D788 = v0;
  result = *MEMORY[0x1E695E9F8];
  __callbackBaseSetCallbacks = *MEMORY[0x1E695E9F8];
  qword_1EAF1D788 = __IOHIDDeviceCallbackBaseDataIsEqual;
  return result;
}

@end