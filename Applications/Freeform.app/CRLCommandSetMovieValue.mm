@interface CRLCommandSetMovieValue
+ (id)movieSetValueCommandWithMovie:(id)movie property:(unint64_t)property boxedValue:(id)value;
- (_TtC8Freeform23CRLCommandSetMovieValue)init;
@end

@implementation CRLCommandSetMovieValue

+ (id)movieSetValueCommandWithMovie:(id)movie property:(unint64_t)property boxedValue:(id)value
{
  movieCopy = movie;
  swift_unknownObjectRetain();
  v8 = sub_100B73F64(movieCopy, property, value);

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