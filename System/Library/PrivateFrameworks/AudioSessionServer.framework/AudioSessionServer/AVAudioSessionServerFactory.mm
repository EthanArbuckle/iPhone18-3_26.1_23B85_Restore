@interface AVAudioSessionServerFactory
+ (id)createServerWithAudioControlQueue:(id)a3 delegate:(id)a4;
+ (id)createServerWithDelegate:(id)a3 audioControlQueue:(id)a4;
@end

@implementation AVAudioSessionServerFactory

+ (id)createServerWithAudioControlQueue:(id)a3 delegate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[AVAudioSessionServerPriv alloc] initWithAudioControlQueue:v5 delegate:v6];

  return v7;
}

+ (id)createServerWithDelegate:(id)a3 audioControlQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[AVAudioSessionServerPriv alloc] initWithAudioControlQueue:v6 delegate:v5];

  return v7;
}

@end