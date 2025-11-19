@interface ProductReviewView
- (void)layoutSubviews;
- (void)stateChangedFor:(id)a3;
@end

@implementation ProductReviewView

- (void)layoutSubviews
{
  v2 = self;
  sub_1002F7AF4();
}

- (void)stateChangedFor:(id)a3
{
  v4 = a3;
  v7 = self;
  if ([v4 state] == 1 && (v5 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_actionHandler)) != 0)
  {

    v5(v6);

    sub_1000164A8(v5);
  }

  else
  {
  }
}

@end