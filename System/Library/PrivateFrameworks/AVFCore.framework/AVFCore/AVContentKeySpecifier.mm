@interface AVContentKeySpecifier
+ (AVContentKeySpecifier)contentKeySpecifierForKeySystem:(AVContentKeySystem)keySystem identifier:(id)contentKeyIdentifier options:(NSDictionary *)options;
- (NSData)initializationData;
- (id)initForKeySystem:(id)system identifier:(id)identifier initializationData:(id)data options:(id)options;
- (void)dealloc;
@end

@implementation AVContentKeySpecifier

- (id)initForKeySystem:(id)system identifier:(id)identifier initializationData:(id)data options:(id)options
{
  v12.receiver = self;
  v12.super_class = AVContentKeySpecifier;
  v10 = [(AVContentKeySpecifier *)&v12 init];
  if (v10)
  {
    v10->_keySystem = [system copy];
    v10->_identifier = [identifier copy];
    v10->_options = [options copy];
    v10->_initializationData = [data copy];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVContentKeySpecifier;
  [(AVContentKeySpecifier *)&v3 dealloc];
}

+ (AVContentKeySpecifier)contentKeySpecifierForKeySystem:(AVContentKeySystem)keySystem identifier:(id)contentKeyIdentifier options:(NSDictionary *)options
{
  v5 = [[AVContentKeySpecifier alloc] initForKeySystem:keySystem identifier:contentKeyIdentifier initializationData:0 options:options];

  return v5;
}

- (NSData)initializationData
{
  v2 = [(NSData *)self->_initializationData copy];

  return v2;
}

@end