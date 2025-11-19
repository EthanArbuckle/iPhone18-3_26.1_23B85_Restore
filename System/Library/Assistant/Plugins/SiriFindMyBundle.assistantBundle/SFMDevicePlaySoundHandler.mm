@interface SFMDevicePlaySoundHandler
- (SFMDevicePlaySoundHandler)initWithDictionary:(id)a3;
- (SFMDevicePlaySoundHandler)initWithDictionary:(id)a3 context:(id)a4;
- (void)performWithCompletion:(id)a3;
@end

@implementation SFMDevicePlaySoundHandler

- (void)performWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_3070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1CBC(v7, v6);
  sub_3028(v7);
}

- (SFMDevicePlaySoundHandler)initWithDictionary:(id)a3
{
  if (a3)
  {
    v3 = sub_61C0();
  }

  else
  {
    v3 = 0;
  }

  return sub_2914(v3);
}

- (SFMDevicePlaySoundHandler)initWithDictionary:(id)a3 context:(id)a4
{
  if (a3)
  {
    v5 = sub_61C0();
  }

  else
  {
    v5 = 0;
  }

  swift_unknownObjectRetain();
  return sub_2A0C(v5, a4);
}

@end