@interface UIColorEffect
+ (id)inCallControls;
+ (id)inCallControlsButtonAvatarOnly;
+ (id)inCallControlsEmergencyCallButton;
+ (id)inCallControlsKeypadButton;
@end

@implementation UIColorEffect

+ (id)inCallControlsButtonAvatarOnly
{
  swift_getObjCClassMetadata();
  v0 = sub_2BD58(xmmword_318F0, xmmword_31900, xmmword_31910, xmmword_31920);

  return v0;
}

+ (id)inCallControls
{
  swift_getObjCClassMetadata();
  v2 = sub_2BD58(xmmword_318B0, xmmword_318C0, xmmword_318D0, xmmword_318E0);

  return v2;
}

+ (id)inCallControlsKeypadButton
{
  swift_getObjCClassMetadata();
  v2 = sub_2BC7C();

  return v2;
}

+ (id)inCallControlsEmergencyCallButton
{
  swift_getObjCClassMetadata();
  v2 = sub_2BD58(xmmword_31960, xmmword_31970, xmmword_31980, xmmword_31990);

  return v2;
}

@end