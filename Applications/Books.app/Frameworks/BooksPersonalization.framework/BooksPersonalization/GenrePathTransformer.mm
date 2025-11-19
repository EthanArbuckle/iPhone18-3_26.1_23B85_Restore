@interface GenrePathTransformer
+ (Class)transformedValueClass;
- (_TtC20BooksPersonalization20GenrePathTransformer)init;
@end

@implementation GenrePathTransformer

+ (Class)transformedValueClass
{
  sub_B7CB0(0, &qword_22B210, NSArray_ptr);

  return swift_getObjCClassFromMetadata();
}

- (_TtC20BooksPersonalization20GenrePathTransformer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenrePathTransformer();
  return [(GenrePathTransformer *)&v3 init];
}

@end