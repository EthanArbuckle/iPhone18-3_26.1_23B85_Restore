@interface NSDictionary(ATXScoreLogSerializable)
- (uint64_t)atx_writeToFile:()ATXScoreLogSerializable;
@end

@implementation NSDictionary(ATXScoreLogSerializable)

- (uint64_t)atx_writeToFile:()ATXScoreLogSerializable
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = [a1 count];
  v6 = (v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v6, 8 * v5);
  [a1 getObjects:0 andKeys:v6 count:v5];
  CFQSortArray();
  fwrite("{\n", 2uLL, 1uLL, a3);
  for (; v5; --v5)
  {
    [*v6 atx_writeToFile:a3];
    fwrite(": ", 2uLL, 1uLL, a3);
    v7 = [a1 objectForKeyedSubscript:*v6];
    [v7 atx_writeToFile:a3];

    if (v5 != 1)
    {
      fputc(44, a3);
    }

    fputc(10, a3);
    ++v6;
  }

  result = fputc(125, a3);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end