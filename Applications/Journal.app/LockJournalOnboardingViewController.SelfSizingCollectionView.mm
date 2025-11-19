@interface LockJournalOnboardingViewController.SelfSizingCollectionView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtCC7Journal35LockJournalOnboardingViewControllerP33_84EF73A7B3D4C51E4A38E0FC91E57CFF24SelfSizingCollectionView)initWithCoder:(id)a3;
- (_TtCC7Journal35LockJournalOnboardingViewControllerP33_84EF73A7B3D4C51E4A38E0FC91E57CFF24SelfSizingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)setContentSize:(CGSize)a3;
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

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = type metadata accessor for LockJournalOnboardingViewController.SelfSizingCollectionView();
  v16.receiver = self;
  v16.super_class = v6;
  v7 = self;
  [(LockJournalOnboardingViewController.SelfSizingCollectionView *)&v16 contentSize];
  v9 = v8;
  v11 = v10;
  v15.receiver = v7;
  v15.super_class = v6;
  [(LockJournalOnboardingViewController.SelfSizingCollectionView *)&v15 setContentSize:width, height];
  [(LockJournalOnboardingViewController.SelfSizingCollectionView *)v7 contentSize];
  if (v13 != v9 || v12 != v11)
  {
    [(LockJournalOnboardingViewController.SelfSizingCollectionView *)v7 invalidateIntrinsicContentSize];
  }
}

- (_TtCC7Journal35LockJournalOnboardingViewControllerP33_84EF73A7B3D4C51E4A38E0FC91E57CFF24SelfSizingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for LockJournalOnboardingViewController.SelfSizingCollectionView();
  return [(LockJournalOnboardingViewController.SelfSizingCollectionView *)&v10 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtCC7Journal35LockJournalOnboardingViewControllerP33_84EF73A7B3D4C51E4A38E0FC91E57CFF24SelfSizingCollectionView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LockJournalOnboardingViewController.SelfSizingCollectionView();
  v4 = a3;
  v5 = [(LockJournalOnboardingViewController.SelfSizingCollectionView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end