@interface ProductReviewView
- (void)layoutSubviews;
- (void)stateChangedFor:(id)for;
@end

@implementation ProductReviewView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2C8558();
}

- (void)stateChangedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  if ([forCopy state] == &dword_0 + 1 && (v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_actionHandler)) != 0)
  {

    v5(v6);

    sub_F704(v5);
  }

  else
  {
  }
}

@end