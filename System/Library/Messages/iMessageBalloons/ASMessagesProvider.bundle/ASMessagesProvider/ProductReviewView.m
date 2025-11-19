@interface ProductReviewView
- (void)layoutSubviews;
- (void)stateChangedFor:(id)a3;
@end

@implementation ProductReviewView

- (void)layoutSubviews
{
  v2 = self;
  sub_2C8558();
}

- (void)stateChangedFor:(id)a3
{
  v4 = a3;
  v7 = self;
  if ([v4 state] == &dword_0 + 1 && (v5 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_actionHandler)) != 0)
  {

    v5(v6);

    sub_F704(v5);
  }

  else
  {
  }
}

@end