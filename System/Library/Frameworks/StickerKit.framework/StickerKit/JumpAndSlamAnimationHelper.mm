@interface JumpAndSlamAnimationHelper
+ (JumpAndSlamAnimationHelper)shared;
+ (void)setShared:(id)a3;
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

+ (void)setShared:(id)a3
{
  v3 = qword_1ED8B3548;
  v4 = a3;
  if (v3 != -1)
  {
    v5 = v4;
    swift_once();
    v4 = v5;
  }

  qword_1ED8B42B8 = v4;

  MEMORY[0x1EEE66BB8]();
}

@end