@interface GuidesPickerViewModel
- (_TtC4Maps21GuidesPickerViewModel)init;
- (void)setIsLibrarySelected:(BOOL)selected;
- (void)setShowsAddToLibrarySection:(BOOL)section;
- (void)set_isLibrarySelected:(BOOL)selected;
@end

@implementation GuidesPickerViewModel

- (void)setShowsAddToLibrarySection:(BOOL)section
{
  sectionCopy = section;
  selfCopy = self;
  sub_1003066E0(sectionCopy);
}

- (void)set_isLibrarySelected:(BOOL)selected
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected) = selected;
  selfCopy = self;
  sub_10030685C();
}

- (void)setIsLibrarySelected:(BOOL)selected
{
  selfCopy = self;
  sub_100306BD8(selected);
}

- (_TtC4Maps21GuidesPickerViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end