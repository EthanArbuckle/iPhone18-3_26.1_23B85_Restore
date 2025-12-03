@interface AegirUpdatingController
- (void)updateConfiguration:(id)configuration withSessionInfo:(id)info completion:(id)completion;
- (void)updateDescriptors:(id)descriptors withSessionInfo:(id)info completion:(id)completion;
@end

@implementation AegirUpdatingController

- (void)updateDescriptors:(id)descriptors withSessionInfo:(id)info completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_10000A83C(0, &unk_100047C20, PRPosterDescriptor_ptr);
  v8 = sub_100034924();
  _Block_copy(v7);
  infoCopy = info;
  selfCopy = self;
  sub_10001E908(v8, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)updateConfiguration:(id)configuration withSessionInfo:(id)info completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  configurationCopy = configuration;
  infoCopy = info;
  selfCopy = self;
  sub_10001FBEC(configurationCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end