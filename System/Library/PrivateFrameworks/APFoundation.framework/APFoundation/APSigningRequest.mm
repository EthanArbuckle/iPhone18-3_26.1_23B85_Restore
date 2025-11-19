@interface APSigningRequest
+ (id)createForData:(id)a3 completionHandler:(id)a4;
@end

@implementation APSigningRequest

+ (id)createForData:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(APSigningRequest);
  objc_msgSend_setData_(v7, v8, v6, v9);

  objc_msgSend_setCompletionHandler_(v7, v10, v5, v11);

  return v7;
}

@end