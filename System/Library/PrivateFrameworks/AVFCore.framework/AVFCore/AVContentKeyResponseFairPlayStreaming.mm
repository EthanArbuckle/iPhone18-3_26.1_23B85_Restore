@interface AVContentKeyResponseFairPlayStreaming
- (AVContentKeyResponseFairPlayStreaming)initWithKeyData:(id)data renewalDate:(id)date;
- (void)dealloc;
@end

@implementation AVContentKeyResponseFairPlayStreaming

- (AVContentKeyResponseFairPlayStreaming)initWithKeyData:(id)data renewalDate:(id)date
{
  v8.receiver = self;
  v8.super_class = AVContentKeyResponseFairPlayStreaming;
  v6 = [(AVContentKeyResponse *)&v8 initWithKeySystem:@"FairPlayStreaming"];
  if (v6)
  {
    v6->_keyData = [data copy];
    v6->_renewalDate = [date copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVContentKeyResponseFairPlayStreaming;
  [(AVContentKeyResponse *)&v3 dealloc];
}

@end