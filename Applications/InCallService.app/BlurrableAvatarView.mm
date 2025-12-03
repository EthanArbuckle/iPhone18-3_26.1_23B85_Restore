@interface BlurrableAvatarView
- (CNAvatarView)cnAvatarView;
- (CNContact)contact;
- (void)didTapWithSender:(id)sender;
- (void)layoutSubviews;
- (void)setContact:(id)contact;
- (void)setWantsBlur:(BOOL)blur;
@end

@implementation BlurrableAvatarView

- (CNContact)contact
{
  v2 = sub_1001A6074();

  return v2;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  sub_1001A60DC(contactCopy);
}

- (void)setWantsBlur:(BOOL)blur
{
  selfCopy = self;
  sub_1001A61E4(blur);
}

- (CNAvatarView)cnAvatarView
{
  v2 = sub_1001A6228();

  return v2;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001A6430();
}

- (void)didTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1001A6F14();
}

@end