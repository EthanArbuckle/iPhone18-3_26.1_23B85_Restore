@interface ODRPublicErrorMapping
+ (id)publicErrorForError:(id)error;
- (_TtC9appstored21ODRPublicErrorMapping)init;
@end

@implementation ODRPublicErrorMapping

+ (id)publicErrorForError:(id)error
{
  errorCopy = error;
  v5 = sub_10018E060(error);

  return v5;
}

- (_TtC9appstored21ODRPublicErrorMapping)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ODRPublicErrorMapping();
  return [(ODRPublicErrorMapping *)&v3 init];
}

@end