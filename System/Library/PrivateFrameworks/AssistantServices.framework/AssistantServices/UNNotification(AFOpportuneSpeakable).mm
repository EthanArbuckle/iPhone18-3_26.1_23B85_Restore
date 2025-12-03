@interface UNNotification(AFOpportuneSpeakable)
- (id)speakableContent;
- (id)speakableIdentifier;
@end

@implementation UNNotification(AFOpportuneSpeakable)

- (id)speakableContent
{
  request = [self request];
  content = [request content];
  body = [content body];

  return body;
}

- (id)speakableIdentifier
{
  request = [self request];
  identifier = [request identifier];

  return identifier;
}

@end