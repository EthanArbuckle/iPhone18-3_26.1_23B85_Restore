@interface AVContentKeyRequestParams
- (AVContentKeyRequestParams)initWithInitializationData:(id)data contentIdentifier:(id)identifier keyIDFromInitializationData:(id)initializationData options:(id)options identifier:(id)a7;
- (void)dealloc;
@end

@implementation AVContentKeyRequestParams

- (AVContentKeyRequestParams)initWithInitializationData:(id)data contentIdentifier:(id)identifier keyIDFromInitializationData:(id)initializationData options:(id)options identifier:(id)a7
{
  v14.receiver = self;
  v14.super_class = AVContentKeyRequestParams;
  v12 = [(AVContentKeyRequestParams *)&v14 init];
  if (v12)
  {
    v12->_initializationData = [data copy];
    v12->_contentIdentifier = [identifier copy];
    v12->_keyIDFromInitializationData = [initializationData copy];
    v12->_options = [options copy];
    v12->_identifier = [a7 copy];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVContentKeyRequestParams;
  [(AVContentKeyRequestParams *)&v3 dealloc];
}

@end