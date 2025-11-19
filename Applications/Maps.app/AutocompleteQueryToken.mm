@interface AutocompleteQueryToken
- (_TtC4Maps22AutocompleteQueryToken)init;
- (_TtC4Maps22AutocompleteQueryToken)initWithMatchLength:(int64_t)a3 matchPosition:(int64_t)a4 isNumber:(BOOL)a5 matchLocation:(int64_t)a6;
@end

@implementation AutocompleteQueryToken

- (_TtC4Maps22AutocompleteQueryToken)initWithMatchLength:(int64_t)a3 matchPosition:(int64_t)a4 isNumber:(BOOL)a5 matchLocation:(int64_t)a6
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22AutocompleteQueryToken_matchLength) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22AutocompleteQueryToken_matchPostion) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22AutocompleteQueryToken_isNumber) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22AutocompleteQueryToken_matchLocation) = a6;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AutocompleteQueryToken();
  return [(AutocompleteQueryToken *)&v7 init];
}

- (_TtC4Maps22AutocompleteQueryToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end