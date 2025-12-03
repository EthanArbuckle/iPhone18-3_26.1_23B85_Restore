@interface APSigningRequest
+ (id)createForData:(id)data completionHandler:(id)handler;
@end

@implementation APSigningRequest

+ (id)createForData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v7 = objc_alloc_init(APSigningRequest);
  objc_msgSend_setData_(v7, v8, dataCopy, v9);

  objc_msgSend_setCompletionHandler_(v7, v10, handlerCopy, v11);

  return v7;
}

@end