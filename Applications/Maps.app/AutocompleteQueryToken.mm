@interface AutocompleteQueryToken
- (_TtC4Maps22AutocompleteQueryToken)init;
- (_TtC4Maps22AutocompleteQueryToken)initWithMatchLength:(int64_t)length matchPosition:(int64_t)position isNumber:(BOOL)number matchLocation:(int64_t)location;
@end

@implementation AutocompleteQueryToken

- (_TtC4Maps22AutocompleteQueryToken)initWithMatchLength:(int64_t)length matchPosition:(int64_t)position isNumber:(BOOL)number matchLocation:(int64_t)location
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22AutocompleteQueryToken_matchLength) = length;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22AutocompleteQueryToken_matchPostion) = position;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22AutocompleteQueryToken_isNumber) = number;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22AutocompleteQueryToken_matchLocation) = location;
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