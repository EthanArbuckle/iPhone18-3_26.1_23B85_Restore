@interface ImageProcessingXPCServiceModel
- (void)backgroundColorForImageWithData:(id)data completion:(id)completion;
- (void)generateIconFor:(XPCMapsTransactionInsight *)for completionHandler:(id)handler;
- (void)renderThumbnailUsing:(id)using completion:(id)completion;
@end

@implementation ImageProcessingXPCServiceModel

- (void)backgroundColorForImageWithData:(id)data completion:(id)completion
{
  v6 = _Block_copy(completion);
  dataCopy = data;

  v8 = sub_1B77FF5B8();
  v10 = v9;

  _Block_copy(v6);
  sub_1B75FC4AC(v8, v10, self, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1B720A388(v8, v10);
}

- (void)renderThumbnailUsing:(id)using completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  usingCopy = using;

  sub_1B75FC648(usingCopy, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)generateIconFor:(XPCMapsTransactionInsight *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B7800DF8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B784A310;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B780BB50;
  v14[5] = v13;
  forCopy = for;

  sub_1B77E494C(0, 0, v9, &unk_1B780D8F0, v14);
}

@end