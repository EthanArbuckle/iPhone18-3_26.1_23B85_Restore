@interface JumpAndSlamAnimationHelper
+ (JumpAndSlamAnimationHelper)shared;
+ (void)setShared:(id)shared;
@end

@implementation JumpAndSlamAnimationHelper

+ (JumpAndSlamAnimationHelper)shared
{
  if (qword_1ED8B3548 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8B42B8;

  return v3;
}

+ (void)setShared:(id)shared
{
  v3 = qword_1ED8B3548;
  sharedCopy = shared;
  if (v3 != -1)
  {
    v5 = sharedCopy;
    swift_once();
    sharedCopy = v5;
  }

  qword_1ED8B42B8 = sharedCopy;

  MEMORY[0x1EEE66BB8]();
}

@end