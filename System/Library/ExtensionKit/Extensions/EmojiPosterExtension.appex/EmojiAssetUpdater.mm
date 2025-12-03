@interface EmojiAssetUpdater
- (void)updateConfiguration:(id)configuration completion:(id)completion;
- (void)updateDescriptors:(id)descriptors completion:(id)completion;
@end

@implementation EmojiAssetUpdater

- (void)updateDescriptors:(id)descriptors completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_100006580(0, &qword_100021680, PRPosterDescriptor_ptr);
  v6 = sub_100014148();
  _Block_copy(v5);
  selfCopy = self;
  sub_1000065C8(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)updateConfiguration:(id)configuration completion:(id)completion
{
  v5 = _Block_copy(completion);
  v5[2](v5, configuration, 0);

  _Block_release(v5);
}

@end