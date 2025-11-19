@interface IMBMessagesAppViewController
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (IMBMessagesAppViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation IMBMessagesAppViewController

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100076270(v4);
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v4 = self;
  sub_100076470(a3);
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController);
  if (v5)
  {
    v7 = *&self->featureFlagArbiter[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
    v8 = *(&self->super.super.super.super.isa + OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController);
    ObjectType = swift_getObjectType();
    v10 = *(v7 + 16);
    v11 = self;
    v12 = v5;
    width = v10(ObjectType, v7, width, height);
    height = v13;
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (IMBMessagesAppViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000AC06C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000783AC(v5, v7, a4);
}

@end