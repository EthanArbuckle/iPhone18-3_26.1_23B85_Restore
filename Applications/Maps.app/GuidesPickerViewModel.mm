@interface GuidesPickerViewModel
- (_TtC4Maps21GuidesPickerViewModel)init;
- (void)setIsLibrarySelected:(BOOL)a3;
- (void)setShowsAddToLibrarySection:(BOOL)a3;
- (void)set_isLibrarySelected:(BOOL)a3;
@end

@implementation GuidesPickerViewModel

- (void)setShowsAddToLibrarySection:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1003066E0(v3);
}

- (void)set_isLibrarySelected:(BOOL)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected) = a3;
  v3 = self;
  sub_10030685C();
}

- (void)setIsLibrarySelected:(BOOL)a3
{
  v4 = self;
  sub_100306BD8(a3);
}

- (_TtC4Maps21GuidesPickerViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end