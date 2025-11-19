@interface WFShazamMediaActionView.ListeningView
+ (Class)layerClass;
- (SHListeningLayer)layer;
@end

@implementation WFShazamMediaActionView.ListeningView

+ (Class)layerClass
{
  swift_getObjCClassMetadata();
  sub_23E372770();

  return swift_getObjCClassFromMetadata();
}

- (SHListeningLayer)layer
{
  v2 = self;
  v3 = sub_23E3727E0();

  return v3;
}

@end