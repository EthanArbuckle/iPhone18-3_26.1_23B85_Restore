@interface AMSChannelLinkRequestParametersBuilder
+ (void)linkRequestParametersWithGuid:(NSString *)a3 linkParams:(NSString *)a4 productCode:(NSString *)a5 additionalParameters:(NSDictionary *)a6 customerID:(NSString *)a7 pacPromise:(id)a8 completionHandler:(id)aBlock;
@end

@implementation AMSChannelLinkRequestParametersBuilder

+ (void)linkRequestParametersWithGuid:(NSString *)a3 linkParams:(NSString *)a4 productCode:(NSString *)a5 additionalParameters:(NSDictionary *)a6 customerID:(NSString *)a7 pacPromise:(id)a8 completionHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  v17[7] = a8;
  v17[8] = v16;
  v17[9] = a1;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;

  sub_1928FB3BC(&unk_192FC8590, v17);
}

@end