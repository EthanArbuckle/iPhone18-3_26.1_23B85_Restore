@interface IMBMessagesAppViewController
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (IMBMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation IMBMessagesAppViewController

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_100076270(conversationCopy);
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_100076470(style);
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController);
  if (v5)
  {
    v7 = *&self->featureFlagArbiter[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
    v8 = *(&self->super.super.super.super.isa + OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController);
    ObjectType = swift_getObjectType();
    v10 = *(v7 + 16);
    selfCopy = self;
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

- (IMBMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000AC06C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000783AC(v5, v7, bundle);
}

@end