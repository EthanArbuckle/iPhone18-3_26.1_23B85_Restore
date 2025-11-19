@interface VCTailspinUtil
+ (BOOL)tailspinDumpOutput:(int)a3 reason:(id)a4;
@end

@implementation VCTailspinUtil

+ (BOOL)tailspinDumpOutput:(int)a3 reason:(id)a4
{
  v7[3] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E59C0];
  v6[0] = *MEMORY[0x1E69E59C8];
  v6[1] = v4;
  v7[0] = a4;
  v7[1] = &unk_1F5799CD8;
  v6[2] = *MEMORY[0x1E69E59D0];
  v7[2] = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  return tailspin_dump_output_with_options_sync();
}

@end