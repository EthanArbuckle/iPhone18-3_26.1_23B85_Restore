@interface MOAngelControllerWrapper
- (void)didReceivePresentationRequestWithOptions:(id)options;
- (void)didReceiveUpdateRequestWithState:(unint64_t)state animated:(BOOL)animated;
- (void)shouldRefreshEvents;
- (void)willReturnAssetsForSuggestion:(MOSuggestion *)suggestion withTypes:(NSArray *)types completion:(id)completion;
- (void)willReturnAssetsForSuggestion:(MOSuggestion *)suggestion withTypes:(NSArray *)types onAssetsCallback:(id)callback;
@end

@implementation MOAngelControllerWrapper

- (void)shouldRefreshEvents
{
  selfCopy = self;
  MOAngelControllerWrapper.shouldRefreshEvents()();
}

- (void)willReturnAssetsForSuggestion:(MOSuggestion *)suggestion withTypes:(NSArray *)types completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = suggestion;
  v13[3] = types;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_65Tu;
  v16[5] = v15;
  suggestionCopy = suggestion;
  typesCopy = types;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_70Tu, v16);
}

- (void)willReturnAssetsForSuggestion:(MOSuggestion *)suggestion withTypes:(NSArray *)types onAssetsCallback:(id)callback
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(callback);
  v13 = swift_allocObject();
  v13[2] = suggestion;
  v13[3] = types;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in MOAngelControllerWrapper.willReturnAssets(for:withTypes:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTATu;
  v16[5] = v15;
  suggestionCopy = suggestion;
  typesCopy = types;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTATu, v16);
}

- (void)didReceivePresentationRequestWithOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  MOAngelControllerWrapper.didReceivePresentationRequest(with:)(optionsCopy);
}

- (void)didReceiveUpdateRequestWithState:(unint64_t)state animated:(BOOL)animated
{
  selfCopy = self;
  MOAngelControllerWrapper.didReceiveUpdateRequest(with:animated:)(state, animated);
}

@end