@interface AUAppleCustomViewLoader
- (_TtC12CoreAudioKit23AUAppleCustomViewLoader)init;
- (id)customViewControllerFor:(AudioComponentDescription *)a3 audioUnit:(void *)a4 v3AU:(id)a5;
@end

@implementation AUAppleCustomViewLoader

- (id)customViewControllerFor:(AudioComponentDescription *)a3 audioUnit:(void *)a4 v3AU:(id)a5
{
  componentSubType = a3->componentSubType;
  componentManufacturer = a3->componentManufacturer;
  v10 = a5;
  v11 = self;
  v12 = sub_237160C18(componentSubType, componentManufacturer, a4, a5);

  return v12;
}

- (_TtC12CoreAudioKit23AUAppleCustomViewLoader)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AUAppleCustomViewLoader();
  return [(AUAppleCustomViewLoader *)&v3 init];
}

@end