@interface ADLocationFetchRequest
- (ADLocationFetchRequest)initWithClientFetchRequest:(id)a3 completion:(id)a4;
@end

@implementation ADLocationFetchRequest

- (ADLocationFetchRequest)initWithClientFetchRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ADLocationFetchRequest;
  v8 = [(ADLocationFetchRequest *)&v13 init];
  if (v8)
  {
    [v6 desiredAccuracy];
    v8->_desiredAccuracy = v9;
    v8->_style = [v6 style];
    v10 = objc_retainBlock(v7);
    completion = v8->_completion;
    v8->_completion = v10;
  }

  return v8;
}

@end