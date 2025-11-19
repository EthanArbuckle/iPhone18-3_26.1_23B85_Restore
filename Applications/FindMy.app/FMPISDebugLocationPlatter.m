@interface FMPISDebugLocationPlatter
- (void)fidelitySegmentChanged;
- (void)handleAction;
- (void)setupSubviews;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation FMPISDebugLocationPlatter

- (void)setupSubviews
{
  v2 = self;
  sub_100501360();
}

- (void)willMoveToSuperview:(id)a3
{
  v3 = self;
  sub_10050182C();
}

- (void)fidelitySegmentChanged
{
  v2 = self;
  sub_100501568();
}

- (void)handleAction
{
  v2 = self;
  sub_10050172C();
}

@end