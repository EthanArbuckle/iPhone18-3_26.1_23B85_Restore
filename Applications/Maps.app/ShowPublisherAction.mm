@interface ShowPublisherAction
- (ShowPublisherAction)initWithPublisherID:(unint64_t)a3 resultProviderID:(int)a4;
@end

@implementation ShowPublisherAction

- (ShowPublisherAction)initWithPublisherID:(unint64_t)a3 resultProviderID:(int)a4
{
  v7.receiver = self;
  v7.super_class = ShowPublisherAction;
  result = [(ShowPublisherAction *)&v7 init];
  if (result)
  {
    result->_publisherMUID = a3;
    result->_resultProviderID = a4;
  }

  return result;
}

@end