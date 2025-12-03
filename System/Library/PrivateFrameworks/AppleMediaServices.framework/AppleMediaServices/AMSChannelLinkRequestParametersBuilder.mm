@interface AMSChannelLinkRequestParametersBuilder
+ (void)linkRequestParametersWithGuid:(NSString *)guid linkParams:(NSString *)params productCode:(NSString *)code additionalParameters:(NSDictionary *)parameters customerID:(NSString *)d pacPromise:(id)promise completionHandler:(id)aBlock;
@end

@implementation AMSChannelLinkRequestParametersBuilder

+ (void)linkRequestParametersWithGuid:(NSString *)guid linkParams:(NSString *)params productCode:(NSString *)code additionalParameters:(NSDictionary *)parameters customerID:(NSString *)d pacPromise:(id)promise completionHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  v17 = swift_allocObject();
  v17[2] = guid;
  v17[3] = params;
  v17[4] = code;
  v17[5] = parameters;
  v17[6] = d;
  v17[7] = promise;
  v17[8] = v16;
  v17[9] = self;
  guidCopy = guid;
  paramsCopy = params;
  codeCopy = code;
  parametersCopy = parameters;
  dCopy = d;
  promiseCopy = promise;

  sub_1928FB3BC(&unk_192FC8590, v17);
}

@end