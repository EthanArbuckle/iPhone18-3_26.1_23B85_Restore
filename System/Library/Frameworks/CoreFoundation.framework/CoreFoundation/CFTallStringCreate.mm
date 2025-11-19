@interface CFTallStringCreate
@end

@implementation CFTallStringCreate

uint64_t ___CFTallStringCreate_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3, UniChar a4)
{
  v7 = *a3;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  result = CFCharacterSetIsCharacterMember(Predefined, a4);
  if (result)
  {
    v10 = 0;
    v11 = a2 + 2 * v7++;
    do
    {
      *(v11 + v10 * 2) = _CFTallStringCreate_tallCharacters[v10];
      ++v10;
      ++v7;
    }

    while (v10 != 7);
    *(v11 + 14) = 32;
  }

  *a3 = v7;
  return result;
}

@end