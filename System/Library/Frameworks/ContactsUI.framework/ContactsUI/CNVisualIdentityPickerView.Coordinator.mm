@interface CNVisualIdentityPickerView.Coordinator
- (_TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator)init;
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
@end

@implementation CNVisualIdentityPickerView.Coordinator

- (void)photoPickerDidCancel:(id)a3
{
  v3 = *&self->parent[OBJC_IVAR____TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator_parent + 8];
  v4 = self;
  v3();
}

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v7 = objc_allocWithZone(CNVisualIdentity);
  v10 = a4;
  v8 = self;
  v9 = [v7 initWithContact_];
  (*&v8->parent[OBJC_IVAR____TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator_parent + 24])();
}

- (_TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end