@interface CNAvatarPosterPairView
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation CNAvatarPosterPairView

- (void)dealloc
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModelSubscriber))
  {
    v3 = self;

    sub_199DF83AC();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CNAvatarPosterPairView();
  [(CNAvatarPosterPairView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_199AD7B14();
}

@end