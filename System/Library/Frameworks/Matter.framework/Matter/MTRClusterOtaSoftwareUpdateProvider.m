@interface MTRClusterOtaSoftwareUpdateProvider
- (void)applyUpdateRequestWithParams:(MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)queryImageWithParams:(MTROtaSoftwareUpdateProviderClusterQueryImageParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
@end

@implementation MTRClusterOtaSoftwareUpdateProvider

- (void)queryImageWithParams:(MTROtaSoftwareUpdateProviderClusterQueryImageParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2392F0294;
  v12[3] = &unk_278A732A8;
  v13 = v10;
  v11 = v10;
  [(MTRClusterOTASoftwareUpdateProvider *)self queryImageWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)applyUpdateRequestWithParams:(MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2392F0378;
  v12[3] = &unk_278A732D0;
  v13 = v10;
  v11 = v10;
  [(MTRClusterOTASoftwareUpdateProvider *)self applyUpdateRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

@end