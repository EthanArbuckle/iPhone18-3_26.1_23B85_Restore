@interface WKMarketplaceKit
+ (void)requestAppInstallationWithTopOrigin:(NSURL *)origin url:(NSURL *)url completionHandler:(id)handler;
- (WKMarketplaceKit)init;
@end

@implementation WKMarketplaceKit

+ (void)requestAppInstallationWithTopOrigin:(NSURL *)origin url:(NSURL *)url completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = origin;
  v14[3] = url;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23B59D910();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B5A0058;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23B5A0060;
  v17[5] = v16;
  originCopy = origin;
  urlCopy = url;
  sub_23B56B930(0, 0, v12, &unk_23B5A0068, v17);
}

- (WKMarketplaceKit)init
{
  v3.receiver = self;
  v3.super_class = WKMarketplaceKit;
  return [(WKMarketplaceKit *)&v3 init];
}

@end