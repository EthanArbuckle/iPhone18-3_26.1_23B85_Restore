@interface MCSessionStream
- (void)dealloc;
@end

@implementation MCSessionStream

- (void)dealloc
{
  [(MCResourceProgressObserver *)self->_observer invalidate];

  v3.receiver = self;
  v3.super_class = MCSessionStream;
  [(MCSessionStream *)&v3 dealloc];
}

@end