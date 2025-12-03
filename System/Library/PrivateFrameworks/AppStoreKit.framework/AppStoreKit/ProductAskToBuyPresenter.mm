@interface ProductAskToBuyPresenter
- (void)handleAskToBuyRequestSent:(id)sent;
- (void)updateStatusAndNotifyIfNeeded;
@end

@implementation ProductAskToBuyPresenter

- (void)updateStatusAndNotifyIfNeeded
{

  sub_1E18AE860();
}

- (void)handleAskToBuyRequestSent:(id)sent
{
  v3 = sub_1E1AEF55C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  sub_1E18AF86C(v6);

  (*(v4 + 8))(v6, v3);
}

@end