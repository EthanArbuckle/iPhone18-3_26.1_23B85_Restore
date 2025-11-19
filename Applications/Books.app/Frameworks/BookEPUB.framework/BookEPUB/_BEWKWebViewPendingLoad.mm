@interface _BEWKWebViewPendingLoad
+ (id)pendingLoadWithRequest:(id)a3;
+ (id)pendingLoadWithRequest:(id)a3 response:(id)a4 data:(id)a5;
@end

@implementation _BEWKWebViewPendingLoad

+ (id)pendingLoadWithRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_BEWKWebViewPendingLoad);
  [(_BEWKWebViewPendingLoad *)v4 setRequest:v3];

  return v4;
}

+ (id)pendingLoadWithRequest:(id)a3 response:(id)a4 data:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_BEWKWebViewPendingLoad);
  [(_BEWKWebViewPendingLoad *)v10 setRequest:v9];

  [(_BEWKWebViewPendingLoad *)v10 setResponse:v8];
  [(_BEWKWebViewPendingLoad *)v10 setData:v7];

  return v10;
}

@end