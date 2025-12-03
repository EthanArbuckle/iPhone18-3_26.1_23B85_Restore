@interface AVAudioSessionServerFactory
+ (id)createServerWithAudioControlQueue:(id)queue delegate:(id)delegate;
+ (id)createServerWithDelegate:(id)delegate audioControlQueue:(id)queue;
@end

@implementation AVAudioSessionServerFactory

+ (id)createServerWithAudioControlQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v7 = [[AVAudioSessionServerPriv alloc] initWithAudioControlQueue:queueCopy delegate:delegateCopy];

  return v7;
}

+ (id)createServerWithDelegate:(id)delegate audioControlQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v7 = [[AVAudioSessionServerPriv alloc] initWithAudioControlQueue:queueCopy delegate:delegateCopy];

  return v7;
}

@end