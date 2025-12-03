@interface AmbientAvatarView
- (CNContact)contact;
- (void)setContact:(id)contact;
@end

@implementation AmbientAvatarView

- (CNContact)contact
{
  v2 = AmbientAvatarView.contact.getter();

  return v2;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  AmbientAvatarView.contact.setter(contactCopy);
}

@end