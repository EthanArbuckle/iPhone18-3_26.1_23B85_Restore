@interface GLPString
@end

@implementation GLPString

void *__deserialize_GLPString_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) + *(v2 + 260) > *(v2 + 256))
  {
    glpDeserialError(v2, 1u);
  }

  v3 = (*(*(v2 + 240) + 8))(**(v2 + 240));
  memcpy(v3, (*(*(a1 + 32) + 248) + *(*(a1 + 32) + 260)), *(a1 + 40));
  *(*(a1 + 32) + 260) += *(a1 + 40);
  return v3;
}

@end