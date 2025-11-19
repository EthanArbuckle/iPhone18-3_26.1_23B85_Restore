@interface MOAngelControllerWrapper
- (void)didReceivePresentationRequestWithOptions:(id)a3;
- (void)didReceiveUpdateRequestWithState:(unint64_t)a3 animated:(BOOL)a4;
- (void)shouldRefreshEvents;
- (void)willReturnAssetsForSuggestion:(MOSuggestion *)a3 withTypes:(NSArray *)a4 completion:(id)a5;
- (void)willReturnAssetsForSuggestion:(MOSuggestion *)a3 withTypes:(NSArray *)a4 onAssetsCallback:(id)a5;
@end

@implementation MOAngelControllerWrapper

- (void)shouldRefreshEvents
{
  v2 = self;
  MOAngelControllerWrapper.shouldRefreshEvents()();
}

- (void)willReturnAssetsForSuggestion:(MOSuggestion *)a3 withTypes:(NSArray *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_70Tu, v16);
}

- (void)willReturnAssetsForSuggestion:(MOSuggestion *)a3 withTypes:(NSArray *)a4 onAssetsCallback:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTATu, v16);
}

- (void)didReceivePresentationRequestWithOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  MOAngelControllerWrapper.didReceivePresentationRequest(with:)(v4);
}

- (void)didReceiveUpdateRequestWithState:(unint64_t)a3 animated:(BOOL)a4
{
  v6 = self;
  MOAngelControllerWrapper.didReceiveUpdateRequest(with:animated:)(a3, a4);
}

@end