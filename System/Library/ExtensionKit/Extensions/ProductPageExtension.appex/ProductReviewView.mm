@interface ProductReviewView
- (void)layoutSubviews;
- (void)stateChangedFor:(id)for;
@end

@implementation ProductReviewView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005F8B18();
}

- (void)stateChangedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  if ([forCopy state] == 1 && (v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_actionHandler)) != 0)
  {

    v5(v6);

    sub_1000167E0(v5);
  }

  else
  {
  }
}

@end