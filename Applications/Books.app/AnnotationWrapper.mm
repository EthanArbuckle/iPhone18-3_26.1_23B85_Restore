@interface AnnotationWrapper
- (BOOL)annotationHasNote;
- (NSString)annotationUuid;
- (NSString)redactedAnnotationLocation;
- (_TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper)init;
@end

@implementation AnnotationWrapper

- (NSString)redactedAnnotationLocation
{
  v2 = *(self + OBJC_IVAR____TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper_annotationLocation + 8);
  if (v2)
  {
    selfCopy = self;

    sub_1007A23E4();

    v2 = sub_1007A2214();
  }

  return v2;
}

- (NSString)annotationUuid
{
  selfCopy = self;
  v3 = [(AnnotationWrapper *)selfCopy description];
  sub_1007A2254();

  v7._countAndFlagsBits = 1145656661;
  v7._object = 0xE400000000000000;
  sub_1007A23D4(v7);

  v4 = sub_1007A2214();

  return v4;
}

- (BOOL)annotationHasNote
{
  selfCopy = self;
  v3 = sub_100217694();

  return v3 & 1;
}

- (_TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end