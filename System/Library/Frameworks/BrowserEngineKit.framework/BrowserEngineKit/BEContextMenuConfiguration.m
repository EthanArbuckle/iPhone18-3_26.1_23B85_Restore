@interface BEContextMenuConfiguration
- (BEContextMenuConfiguration)init;
- (BOOL)fulfillUsingConfiguration:(id)a3;
- (void)_prepareWithCompletion:(id)a3;
@end

@implementation BEContextMenuConfiguration

- (BEContextMenuConfiguration)init
{
  v3.receiver = self;
  v3.super_class = BEContextMenuConfiguration;
  return [(UIContextMenuConfiguration *)&v3 init];
}

- (void)_prepareWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[_BEBurnableBlock alloc] initWithTimeout:v4 block:0 defaultInputProvider:0.5];

  deferredCompletion = self->_deferredCompletion;
  self->_deferredCompletion = v5;
}

- (BOOL)fulfillUsingConfiguration:(id)a3
{
  v4 = [(_BEBurnableBlock *)self->_deferredCompletion performWithInput:a3];
  deferredCompletion = self->_deferredCompletion;
  self->_deferredCompletion = 0;

  return v4;
}

@end