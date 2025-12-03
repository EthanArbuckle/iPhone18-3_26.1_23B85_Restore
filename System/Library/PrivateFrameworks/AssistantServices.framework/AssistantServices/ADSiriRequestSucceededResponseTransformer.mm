@interface ADSiriRequestSucceededResponseTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
@end

@implementation ADSiriRequestSucceededResponseTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  responseCopy = response;
  commandCopy = command;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ADSiriRequestSucceededResponseTransformer.m" lineNumber:24 description:{@"Request succeeded response transformer expected response of type %@, but got %@ instead; request command: %@", objc_opt_class(), responseCopy, commandCopy}];
  }

  v10 = objc_alloc_init(SACommandSucceeded);

  return v10;
}

@end