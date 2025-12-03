@interface CNVisualIdentityPickerView.Coordinator
- (_TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator)init;
- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image;
- (void)photoPickerDidCancel:(id)cancel;
@end

@implementation CNVisualIdentityPickerView.Coordinator

- (void)photoPickerDidCancel:(id)cancel
{
  v3 = *&self->parent[OBJC_IVAR____TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator_parent + 8];
  selfCopy = self;
  v3();
}

- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image
{
  v7 = objc_allocWithZone(CNVisualIdentity);
  contactCopy = contact;
  selfCopy = self;
  initWithContact_ = [v7 initWithContact_];
  (*&selfCopy->parent[OBJC_IVAR____TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator_parent + 24])();
}

- (_TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end