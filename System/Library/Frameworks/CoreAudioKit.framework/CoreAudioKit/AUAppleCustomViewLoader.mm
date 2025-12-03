@interface AUAppleCustomViewLoader
- (_TtC12CoreAudioKit23AUAppleCustomViewLoader)init;
- (id)customViewControllerFor:(AudioComponentDescription *)for audioUnit:(void *)unit v3AU:(id)u;
@end

@implementation AUAppleCustomViewLoader

- (id)customViewControllerFor:(AudioComponentDescription *)for audioUnit:(void *)unit v3AU:(id)u
{
  componentSubType = for->componentSubType;
  componentManufacturer = for->componentManufacturer;
  uCopy = u;
  selfCopy = self;
  v12 = sub_237160C18(componentSubType, componentManufacturer, unit, u);

  return v12;
}

- (_TtC12CoreAudioKit23AUAppleCustomViewLoader)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AUAppleCustomViewLoader();
  return [(AUAppleCustomViewLoader *)&v3 init];
}

@end