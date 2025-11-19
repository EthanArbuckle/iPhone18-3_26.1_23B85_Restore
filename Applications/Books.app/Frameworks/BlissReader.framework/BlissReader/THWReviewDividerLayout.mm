@interface THWReviewDividerLayout
- (void)dealloc;
- (void)validate;
@end

@implementation THWReviewDividerLayout

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = THWReviewDividerLayout;
  [(THWReviewDividerLayout *)&v2 dealloc];
}

- (void)validate
{
  [(THWReviewDividerLayout *)self invalidateFrame];
  v3.receiver = self;
  v3.super_class = THWReviewDividerLayout;
  [(THWReviewDividerLayout *)&v3 validate];
}

@end