@interface BlurrableAvatarView
- (CNAvatarView)cnAvatarView;
- (CNContact)contact;
- (void)didTapWithSender:(id)a3;
- (void)layoutSubviews;
- (void)setContact:(id)a3;
- (void)setWantsBlur:(BOOL)a3;
@end

@implementation BlurrableAvatarView

- (CNContact)contact
{
  v2 = sub_1001A6074();

  return v2;
}

- (void)setContact:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001A60DC(v4);
}

- (void)setWantsBlur:(BOOL)a3
{
  v4 = self;
  sub_1001A61E4(a3);
}

- (CNAvatarView)cnAvatarView
{
  v2 = sub_1001A6228();

  return v2;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001A6430();
}

- (void)didTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001A6F14();
}

@end