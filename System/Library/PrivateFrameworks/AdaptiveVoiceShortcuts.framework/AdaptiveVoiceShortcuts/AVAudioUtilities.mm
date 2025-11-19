@interface AVAudioUtilities
+ (BOOL)supportsVirtualAudioDevice;
@end

@implementation AVAudioUtilities

+ (BOOL)supportsVirtualAudioDevice
{
  if (MGGetSInt32Answer() == 1)
  {
    if (MGGetBoolAnswer())
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (MGGetSInt32Answer() != 3)
  {
    return 0;
  }

LABEL_5:

  return MGGetBoolAnswer();
}

@end