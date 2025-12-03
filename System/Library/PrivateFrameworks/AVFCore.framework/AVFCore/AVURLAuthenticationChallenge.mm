@interface AVURLAuthenticationChallenge
- (AVURLAuthenticationChallenge)initWithAuthenticationChallenge:(id)challenge sender:(id)sender requestInfo:(__CFDictionary *)info requestID:(unint64_t)d;
- (void)_performCancellationByClient;
- (void)dealloc;
@end

@implementation AVURLAuthenticationChallenge

- (AVURLAuthenticationChallenge)initWithAuthenticationChallenge:(id)challenge sender:(id)sender requestInfo:(__CFDictionary *)info requestID:(unint64_t)d
{
  v14.receiver = self;
  v14.super_class = AVURLAuthenticationChallenge;
  v10 = [NSURLAuthenticationChallenge initWithAuthenticationChallenge:sel_initWithAuthenticationChallenge_sender_ sender:?];
  if (v10)
  {
    v10->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:v10];
    v10->_requestID = d;
    v11 = info ? CFRetain(info) : 0;
    if ((v10->_requestInfo = v11, !challenge) || !sender || (v10->_weakReference ? (v12 = v11 == 0) : (v12 = 1), v12))
    {

      return 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  requestInfo = self->_requestInfo;
  if (requestInfo)
  {
    CFRelease(requestInfo);
  }

  v4.receiver = self;
  v4.super_class = AVURLAuthenticationChallenge;
  [(NSURLAuthenticationChallenge *)&v4 dealloc];
}

- (void)_performCancellationByClient
{
  sender = [(NSURLAuthenticationChallenge *)self sender];

  [(NSURLAuthenticationChallengeSender *)sender cancelAuthenticationChallenge:self];
}

@end