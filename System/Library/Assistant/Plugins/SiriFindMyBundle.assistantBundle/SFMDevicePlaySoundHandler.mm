@interface SFMDevicePlaySoundHandler
- (SFMDevicePlaySoundHandler)initWithDictionary:(id)dictionary;
- (SFMDevicePlaySoundHandler)initWithDictionary:(id)dictionary context:(id)context;
- (void)performWithCompletion:(id)completion;
@end

@implementation SFMDevicePlaySoundHandler

- (void)performWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1CBC(v7, v6);
  sub_3028(v7);
}

- (SFMDevicePlaySoundHandler)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    v3 = sub_61C0();
  }

  else
  {
    v3 = 0;
  }

  return sub_2914(v3);
}

- (SFMDevicePlaySoundHandler)initWithDictionary:(id)dictionary context:(id)context
{
  if (dictionary)
  {
    v5 = sub_61C0();
  }

  else
  {
    v5 = 0;
  }

  swift_unknownObjectRetain();
  return sub_2A0C(v5, context);
}

@end