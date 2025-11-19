@interface ADSiriRequestSucceededResponseTransformer
- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5;
@end

@implementation ADSiriRequestSucceededResponseTransformer

- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ADSiriRequestSucceededResponseTransformer.m" lineNumber:24 description:{@"Request succeeded response transformer expected response of type %@, but got %@ instead; request command: %@", objc_opt_class(), v8, v9}];
  }

  v10 = objc_alloc_init(SACommandSucceeded);

  return v10;
}

@end