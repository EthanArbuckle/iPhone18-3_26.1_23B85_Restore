@interface AssetsJetpackFetcher
+ (_TtC18AppleMediaServices20AssetsJetpackFetcher)shared;
- (void)AMSURLSession:(AMSURLSession *)a3 task:(NSURLSessionTask *)a4 handleAuthenticateRequest:(AMSAuthenticateRequest *)a5 completion:(id)a6;
@end

@implementation AssetsJetpackFetcher

+ (_TtC18AppleMediaServices20AssetsJetpackFetcher)shared
{
  v2 = static AssetsJetpackFetcher.shared.getter();

  return v2;
}

- (void)AMSURLSession:(AMSURLSession *)a3 task:(NSURLSessionTask *)a4 handleAuthenticateRequest:(AMSAuthenticateRequest *)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_1928FB3BC(&unk_192FC6E78, v11);
}

@end