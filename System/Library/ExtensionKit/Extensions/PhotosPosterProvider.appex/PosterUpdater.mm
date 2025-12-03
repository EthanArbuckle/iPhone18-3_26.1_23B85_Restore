@interface PosterUpdater
- (void)updateSuggestionDescriptors:(NSArray *)descriptors forConfiguration:(PRPosterConfiguration *)configuration withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion;
@end

@implementation PosterUpdater

- (void)updateSuggestionDescriptors:(NSArray *)descriptors forConfiguration:(PRPosterConfiguration *)configuration withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = descriptors;
  v11[3] = configuration;
  v11[4] = info;
  v11[5] = v10;
  v11[6] = self;
  descriptorsCopy = descriptors;
  configurationCopy = configuration;
  infoCopy = info;
  selfCopy = self;

  sub_10001179C(&unk_1000357B8, v11);
}

@end