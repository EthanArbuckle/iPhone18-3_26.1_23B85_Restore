@interface FigSandboxServerXPC
@end

@implementation FigSandboxServerXPC

void __FigSandboxServerXPC_AddAssertionForPID_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  MEMORY[0x19A8D7460](gFigSandboxServerXPC_2, v1);
  v2 = gFigSandboxServerXPC_2;

  CFBagAddValue(v2, v1);
}

@end