@interface LSParseLoadCommands
@end

@implementation LSParseLoadCommands

uint64_t ___LSParseLoadCommands_block_invoke(uint64_t result, int a2, int a3, int a4)
{
  v4 = *(*(result + 32) + 8);
  if (*(v4 + 24) != *(result + 56))
  {
    *(v4 + 24) = a2;
    *(*(*(result + 40) + 8) + 24) = a3;
    *(*(*(result + 48) + 8) + 24) = a4;
  }

  return result;
}

@end