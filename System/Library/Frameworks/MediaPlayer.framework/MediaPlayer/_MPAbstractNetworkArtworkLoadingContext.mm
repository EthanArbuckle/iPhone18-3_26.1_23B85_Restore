@interface _MPAbstractNetworkArtworkLoadingContext
- (_MPAbstractNetworkArtworkLoadingContext)init;
@end

@implementation _MPAbstractNetworkArtworkLoadingContext

- (_MPAbstractNetworkArtworkLoadingContext)init
{
  v6.receiver = self;
  v6.super_class = _MPAbstractNetworkArtworkLoadingContext;
  v2 = [(_MPAbstractNetworkArtworkLoadingContext *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    catalogIdentifierToCompletionHandlerMap = v2->_catalogIdentifierToCompletionHandlerMap;
    v2->_catalogIdentifierToCompletionHandlerMap = dictionary;
  }

  return v2;
}

@end