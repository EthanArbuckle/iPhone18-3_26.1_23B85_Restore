@interface CRLCommandSetMovieValue
+ (id)movieSetValueCommandWithMovie:(id)a3 property:(unint64_t)a4 boxedValue:(id)a5;
- (_TtC8Freeform23CRLCommandSetMovieValue)init;
@end

@implementation CRLCommandSetMovieValue

+ (id)movieSetValueCommandWithMovie:(id)a3 property:(unint64_t)a4 boxedValue:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = sub_100B73F64(v7, a4, a5);

  swift_unknownObjectRelease();

  return v8;
}

- (_TtC8Freeform23CRLCommandSetMovieValue)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLCommandSetMovieValue();
  return [(CRLCommand *)&v3 init];
}

@end