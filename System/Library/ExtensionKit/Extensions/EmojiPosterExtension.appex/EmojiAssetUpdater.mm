@interface EmojiAssetUpdater
- (void)updateConfiguration:(id)a3 completion:(id)a4;
- (void)updateDescriptors:(id)a3 completion:(id)a4;
@end

@implementation EmojiAssetUpdater

- (void)updateDescriptors:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100006580(0, &qword_100021680, PRPosterDescriptor_ptr);
  v6 = sub_100014148();
  _Block_copy(v5);
  v7 = self;
  sub_1000065C8(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)updateConfiguration:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v5[2](v5, a3, 0);

  _Block_release(v5);
}

@end