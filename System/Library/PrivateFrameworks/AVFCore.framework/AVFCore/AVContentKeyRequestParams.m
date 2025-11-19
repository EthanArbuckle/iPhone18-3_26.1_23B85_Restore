@interface AVContentKeyRequestParams
- (AVContentKeyRequestParams)initWithInitializationData:(id)a3 contentIdentifier:(id)a4 keyIDFromInitializationData:(id)a5 options:(id)a6 identifier:(id)a7;
- (void)dealloc;
@end

@implementation AVContentKeyRequestParams

- (AVContentKeyRequestParams)initWithInitializationData:(id)a3 contentIdentifier:(id)a4 keyIDFromInitializationData:(id)a5 options:(id)a6 identifier:(id)a7
{
  v14.receiver = self;
  v14.super_class = AVContentKeyRequestParams;
  v12 = [(AVContentKeyRequestParams *)&v14 init];
  if (v12)
  {
    v12->_initializationData = [a3 copy];
    v12->_contentIdentifier = [a4 copy];
    v12->_keyIDFromInitializationData = [a5 copy];
    v12->_options = [a6 copy];
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