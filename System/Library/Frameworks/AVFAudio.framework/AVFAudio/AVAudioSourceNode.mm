@interface AVAudioSourceNode
+ (id)pullInputBlockFromRenderBlock:(id)block;
@end

@implementation AVAudioSourceNode

+ (id)pullInputBlockFromRenderBlock:(id)block
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__AVAudioSourceNode_pullInputBlockFromRenderBlock___block_invoke;
  aBlock[3] = &unk_1E7EF59A8;
  aBlock[4] = block;
  return _Block_copy(aBlock);
}

uint64_t __51__AVAudioSourceNode_pullInputBlockFromRenderBlock___block_invoke(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v4 == 1)
  {
    *a2 |= 0x10u;
  }

  return result;
}

@end