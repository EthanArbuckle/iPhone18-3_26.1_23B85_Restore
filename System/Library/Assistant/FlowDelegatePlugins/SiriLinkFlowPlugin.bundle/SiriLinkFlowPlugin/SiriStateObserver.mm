@interface SiriStateObserver
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
@end

@implementation SiriStateObserver

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  toCopy = to;
  fromCopy = from;
  observerCopy = observer;
  selfCopy = self;
  SiriStateObserver.notifyObserver(_:didChangeStateFrom:to:)(selfCopy, fromCopy, toCopy);
}

@end