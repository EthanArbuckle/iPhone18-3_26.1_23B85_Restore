@interface JSACopyLinkActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (JSACopyLinkActivity)init;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation JSACopyLinkActivity

- (NSString)activityType
{
  v2 = sub_8437C();

  return v2;
}

- (NSString)activityTitle
{
  sub_61D7C();
  if (v2)
  {
    v3 = sub_8437C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)activityImage
{
  v2 = sub_8437C();
  v3 = [objc_opt_self() systemImageNamed:v2];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = sub_845AC();
  selfCopy = self;
  v6 = sub_61E58(v4);

  return v6 & 1;
}

- (void)prepareWithActivityItems:(id)items
{
  v4 = sub_845AC();
  selfCopy = self;
  sub_61154(v4);
}

- (void)performActivity
{
  selfCopy = self;
  sub_614E4();
}

- (JSACopyLinkActivity)init
{
  *(&self->super.super.isa + OBJC_IVAR___JSACopyLinkActivity_items) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CopyLinkActivity();
  return [(JSACopyLinkActivity *)&v3 init];
}

@end