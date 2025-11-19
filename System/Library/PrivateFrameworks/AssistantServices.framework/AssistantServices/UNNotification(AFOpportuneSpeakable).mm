@interface UNNotification(AFOpportuneSpeakable)
- (id)speakableContent;
- (id)speakableIdentifier;
@end

@implementation UNNotification(AFOpportuneSpeakable)

- (id)speakableContent
{
  v1 = [a1 request];
  v2 = [v1 content];
  v3 = [v2 body];

  return v3;
}

- (id)speakableIdentifier
{
  v1 = [a1 request];
  v2 = [v1 identifier];

  return v2;
}

@end