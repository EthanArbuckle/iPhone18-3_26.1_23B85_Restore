@interface BEContextMenuConfiguration
- (BEContextMenuConfiguration)init;
- (BOOL)fulfillUsingConfiguration:(id)configuration;
- (void)_prepareWithCompletion:(id)completion;
@end

@implementation BEContextMenuConfiguration

- (BEContextMenuConfiguration)init
{
  v3.receiver = self;
  v3.super_class = BEContextMenuConfiguration;
  return [(UIContextMenuConfiguration *)&v3 init];
}

- (void)_prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[_BEBurnableBlock alloc] initWithTimeout:completionCopy block:0 defaultInputProvider:0.5];

  deferredCompletion = self->_deferredCompletion;
  self->_deferredCompletion = v5;
}

- (BOOL)fulfillUsingConfiguration:(id)configuration
{
  v4 = [(_BEBurnableBlock *)self->_deferredCompletion performWithInput:configuration];
  deferredCompletion = self->_deferredCompletion;
  self->_deferredCompletion = 0;

  return v4;
}

@end