@interface AmbientAvatarView
- (CNContact)contact;
- (void)setContact:(id)a3;
@end

@implementation AmbientAvatarView

- (CNContact)contact
{
  v2 = AmbientAvatarView.contact.getter();

  return v2;
}

- (void)setContact:(id)a3
{
  v4 = a3;
  v5 = self;
  AmbientAvatarView.contact.setter(v4);
}

@end