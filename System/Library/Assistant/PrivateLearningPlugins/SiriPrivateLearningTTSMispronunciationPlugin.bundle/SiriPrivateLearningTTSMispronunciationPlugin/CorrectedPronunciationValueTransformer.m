@interface CorrectedPronunciationValueTransformer
+ (NSArray)allowedTopLevelClasses;
- (CorrectedPronunciationValueTransformer)init;
@end

@implementation CorrectedPronunciationValueTransformer

+ (NSArray)allowedTopLevelClasses
{
  sub_3204(&unk_4F9B0, &unk_35A60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_35920;
  *(v2 + 32) = type metadata accessor for CorrectedPronunciation();
  sub_3204(&qword_4EA00, &qword_38160);
  v3.super.isa = sub_344F0().super.isa;

  return v3.super.isa;
}

- (CorrectedPronunciationValueTransformer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CorrectedPronunciationValueTransformer *)&v3 init];
}

@end