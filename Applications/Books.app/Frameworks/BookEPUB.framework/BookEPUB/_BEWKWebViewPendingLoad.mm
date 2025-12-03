@interface _BEWKWebViewPendingLoad
+ (id)pendingLoadWithRequest:(id)request;
+ (id)pendingLoadWithRequest:(id)request response:(id)response data:(id)data;
@end

@implementation _BEWKWebViewPendingLoad

+ (id)pendingLoadWithRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(_BEWKWebViewPendingLoad);
  [(_BEWKWebViewPendingLoad *)v4 setRequest:requestCopy];

  return v4;
}

+ (id)pendingLoadWithRequest:(id)request response:(id)response data:(id)data
{
  dataCopy = data;
  responseCopy = response;
  requestCopy = request;
  v10 = objc_alloc_init(_BEWKWebViewPendingLoad);
  [(_BEWKWebViewPendingLoad *)v10 setRequest:requestCopy];

  [(_BEWKWebViewPendingLoad *)v10 setResponse:responseCopy];
  [(_BEWKWebViewPendingLoad *)v10 setData:dataCopy];

  return v10;
}

@end