@interface ContactPronunciationValueTransformer
+ (NSArray)allowedTopLevelClasses;
- (ContactPronunciationValueTransformer)init;
@end

@implementation ContactPronunciationValueTransformer

+ (NSArray)allowedTopLevelClasses
{
  sub_3204(&unk_4F9B0, &unk_35A60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_35920;
  *(v2 + 32) = type metadata accessor for ContactPronunciation();
  sub_3204(&qword_4EA00, &qword_38160);
  v3.super.isa = sub_344F0().super.isa;

  return v3.super.isa;
}

- (ContactPronunciationValueTransformer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ContactPronunciationValueTransformer *)&v3 init];
}

@end