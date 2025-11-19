@interface LibrarySearchController.BarDelegate
- (_TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate)init;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
@end

@implementation LibrarySearchController.BarDelegate

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = (self + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  *v6 = v5;
  v6[1] = v7;
  v9 = self;

  v8 = *(&v9->super.isa + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_textDidChange);
  if (v8)
  {

    sub_100030444(v8);
    v8(v9);

    sub_100020438(v8);
  }

  else
  {
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10043EE14(v4);
}

- (_TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didBeginEditing);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didEndEditing);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_textDidChange);
  *v6 = 0;
  v6[1] = 0;
  v7 = (&self->super.isa + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didCancel);
  v8 = type metadata accessor for LibrarySearchController.BarDelegate();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(LibrarySearchController.BarDelegate *)&v10 init];
}

@end