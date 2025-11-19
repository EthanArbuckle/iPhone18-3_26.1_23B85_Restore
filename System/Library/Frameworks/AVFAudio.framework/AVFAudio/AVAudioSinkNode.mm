@interface AVAudioSinkNode
+ (id)pullInputBlockFromReceiverBlock:(id)a3;
- (AVAudioSinkNode)initWithReceiverBlock:(AVAudioSinkNodeReceiverBlock)block;
@end

@implementation AVAudioSinkNode

- (AVAudioSinkNode)initWithReceiverBlock:(AVAudioSinkNodeReceiverBlock)block
{
  v4 = *MEMORY[0x1E69E9840];
  [AVAudioSinkNode pullInputBlockFromReceiverBlock:block];
  operator new();
}

+ (id)pullInputBlockFromReceiverBlock:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__AVAudioSinkNode_pullInputBlockFromReceiverBlock___block_invoke;
  aBlock[3] = &unk_1E7EF59A8;
  aBlock[4] = a3;
  return _Block_copy(aBlock);
}

@end