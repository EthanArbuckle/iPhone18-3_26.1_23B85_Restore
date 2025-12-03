@interface LockJournalOnboardingViewController.SelfSizingCollectionView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtCC7Journal35LockJournalOnboardingViewControllerP33_84EF73A7B3D4C51E4A38E0FC91E57CFF24SelfSizingCollectionView)initWithCoder:(id)coder;
- (_TtCC7Journal35LockJournalOnboardingViewControllerP33_84EF73A7B3D4C51E4A38E0FC91E57CFF24SelfSizingCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)setContentSize:(CGSize)size;
@end

@implementation LockJournalOnboardingViewController.SelfSizingCollectionView

- (CGSize)intrinsicContentSize
{
  [(LockJournalOnboardingViewController.SelfSizingCollectionView *)self contentSize];
  if (v2 <= 1.0)
  {
    v2 = 1.0;
  }

  v3 = UIViewNoIntrinsicMetric;
  result.height = v2;
  result.width = v3;
  return result;
}

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for LockJournalOnboardingViewController.SelfSizingCollectionView();
  [(LockJournalOnboardingViewController.SelfSizingCollectionView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = type metadata accessor for LockJournalOnboardingViewController.SelfSizingCollectionView();
  v16.receiver = self;
  v16.super_class = v6;
  selfCopy = self;
  [(LockJournalOnboardingViewController.SelfSizingCollectionView *)&v16 contentSize];
  v9 = v8;
  v11 = v10;
  v15.receiver = selfCopy;
  v15.super_class = v6;
  [(LockJournalOnboardingViewController.SelfSizingCollectionView *)&v15 setContentSize:width, height];
  [(LockJournalOnboardingViewController.SelfSizingCollectionView *)selfCopy contentSize];
  if (v13 != v9 || v12 != v11)
  {
    [(LockJournalOnboardingViewController.SelfSizingCollectionView *)selfCopy invalidateIntrinsicContentSize];
  }
}

- (_TtCC7Journal35LockJournalOnboardingViewControllerP33_84EF73A7B3D4C51E4A38E0FC91E57CFF24SelfSizingCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for LockJournalOnboardingViewController.SelfSizingCollectionView();
  return [(LockJournalOnboardingViewController.SelfSizingCollectionView *)&v10 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtCC7Journal35LockJournalOnboardingViewControllerP33_84EF73A7B3D4C51E4A38E0FC91E57CFF24SelfSizingCollectionView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LockJournalOnboardingViewController.SelfSizingCollectionView();
  coderCopy = coder;
  v5 = [(LockJournalOnboardingViewController.SelfSizingCollectionView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end