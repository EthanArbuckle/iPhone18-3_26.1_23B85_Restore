@interface PageSnapshotDataGenerator
- (void)snapshotWithPageNumber:(int64_t)number size:(CGSize)size completion:(id)completion;
@end

@implementation PageSnapshotDataGenerator

- (void)snapshotWithPageNumber:(int64_t)number size:(CGSize)size completion:(id)completion
{
  v7 = _Block_copy(completion);
  _Block_copy(v7);

  sub_1003C752C(number, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end