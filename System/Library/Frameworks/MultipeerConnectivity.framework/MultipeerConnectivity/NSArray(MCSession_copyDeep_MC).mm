@interface NSArray(MCSession_copyDeep_MC)
- (uint64_t)copyDeep_MC;
@end

@implementation NSArray(MCSession_copyDeep_MC)

- (uint64_t)copyDeep_MC
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [self count];
  v3 = (v9 - ((8 * v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v2)
  {
    v4 = 0;
    do
    {
      v3[v4] = [objc_msgSend(self objectAtIndex:{v4), "copy"}];
      ++v4;
    }

    while (v2 != v4);
  }

  for (i = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:v3 count:v2]; v2; --v2)
  {
    v6 = *v3++;
  }

  v7 = *MEMORY[0x277D85DE8];
  return i;
}

@end