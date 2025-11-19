@interface SiriStateObserver
- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5;
@end

@implementation SiriStateObserver

- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = self;
  SiriStateObserver.notifyObserver(_:didChangeStateFrom:to:)(v9, v6, v5);
}

@end