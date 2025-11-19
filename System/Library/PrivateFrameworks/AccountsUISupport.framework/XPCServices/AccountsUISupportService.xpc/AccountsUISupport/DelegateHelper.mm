@interface DelegateHelper
- (_TtC27AccountsUISupportServiceLib14DelegateHelper)init;
- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 didReceiveChallenge:(NSURLAuthenticationChallenge *)a5 completionHandler:(id)a6;
- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 willPerformHTTPRedirection:(NSHTTPURLResponse *)a5 newRequest:(NSURLRequest *)a6 completionHandler:(id)a7;
@end

@implementation DelegateHelper

- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 willPerformHTTPRedirection:(NSHTTPURLResponse *)a5 newRequest:(NSURLRequest *)a6 completionHandler:(id)a7
{
  v13 = sub_100003288(&qword_100054CF8, "\n;");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_100042764();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_100044760;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_100044768;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = self;
  sub_10000EDB8(0, 0, v16, &unk_100044770, v21);
}

- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 didReceiveChallenge:(NSURLAuthenticationChallenge *)a5 completionHandler:(id)a6
{
  v11 = sub_100003288(&qword_100054CF8, "\n;");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_100042764();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100044710;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100044720;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_10000EDB8(0, 0, v14, &unk_100044730, v19);
}

- (_TtC27AccountsUISupportServiceLib14DelegateHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end