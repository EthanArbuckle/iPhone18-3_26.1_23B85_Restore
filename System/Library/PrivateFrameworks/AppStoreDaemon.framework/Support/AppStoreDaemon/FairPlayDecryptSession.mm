@interface FairPlayDecryptSession
- (void)dealloc;
@end

@implementation FairPlayDecryptSession

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    sub_10000BA98(session);
    self->_session = 0;
  }

  v4.receiver = self;
  v4.super_class = FairPlayDecryptSession;
  [(FairPlayDecryptSession *)&v4 dealloc];
}

@end