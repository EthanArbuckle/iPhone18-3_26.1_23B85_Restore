@interface ADLocationFetchRequest
- (ADLocationFetchRequest)initWithClientFetchRequest:(id)request completion:(id)completion;
@end

@implementation ADLocationFetchRequest

- (ADLocationFetchRequest)initWithClientFetchRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v13.receiver = self;
  v13.super_class = ADLocationFetchRequest;
  v8 = [(ADLocationFetchRequest *)&v13 init];
  if (v8)
  {
    [requestCopy desiredAccuracy];
    v8->_desiredAccuracy = v9;
    v8->_style = [requestCopy style];
    v10 = objc_retainBlock(completionCopy);
    completion = v8->_completion;
    v8->_completion = v10;
  }

  return v8;
}

@end