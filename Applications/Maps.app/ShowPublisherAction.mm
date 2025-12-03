@interface ShowPublisherAction
- (ShowPublisherAction)initWithPublisherID:(unint64_t)d resultProviderID:(int)iD;
@end

@implementation ShowPublisherAction

- (ShowPublisherAction)initWithPublisherID:(unint64_t)d resultProviderID:(int)iD
{
  v7.receiver = self;
  v7.super_class = ShowPublisherAction;
  result = [(ShowPublisherAction *)&v7 init];
  if (result)
  {
    result->_publisherMUID = d;
    result->_resultProviderID = iD;
  }

  return result;
}

@end