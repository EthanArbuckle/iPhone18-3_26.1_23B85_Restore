@interface ATXWatchSmartStacksSender
- (ATXWatchSmartStacksSender)init;
- (void)blendingLayerDidUpdateUICache:(id)a3;
@end

@implementation ATXWatchSmartStacksSender

- (ATXWatchSmartStacksSender)init
{
  type metadata accessor for WatchSmartStackSender();
  sub_2267A5F5C(v5);
  *(&self->super.isa + OBJC_IVAR___ATXWatchSmartStacksSender_smartStackSender) = sub_2267A5F9C(v5);
  v4.receiver = self;
  v4.super_class = ATXWatchSmartStacksSender;
  return [(ATXWatchSmartStacksSender *)&v4 init];
}

- (void)blendingLayerDidUpdateUICache:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___ATXWatchSmartStacksSender_smartStackSender);
  if (v3)
  {
    v5 = *(*v3 + 104);
    v8 = a3;
    v7 = self;
    v5(a3);
  }
}

@end