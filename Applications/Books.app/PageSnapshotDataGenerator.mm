@interface PageSnapshotDataGenerator
- (void)snapshotWithPageNumber:(int64_t)a3 size:(CGSize)a4 completion:(id)a5;
@end

@implementation PageSnapshotDataGenerator

- (void)snapshotWithPageNumber:(int64_t)a3 size:(CGSize)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);

  sub_1003C752C(a3, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end