@interface ProductReviewView
- (void)layoutSubviews;
- (void)stateChangedFor:(id)a3;
@end

@implementation ProductReviewView

- (void)layoutSubviews
{
  v2 = self;
  sub_1006A5DE8();
}

- (void)stateChangedFor:(id)a3
{
  v4 = a3;
  v7 = self;
  if ([v4 state] == 1 && (v5 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC8AppStore17ProductReviewView_actionHandler)) != 0)
  {

    v5(v6);

    sub_10001F63C(v5);
  }

  else
  {
  }
}

@end