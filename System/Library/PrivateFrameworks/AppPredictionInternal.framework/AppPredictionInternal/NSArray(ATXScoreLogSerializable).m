@interface NSArray(ATXScoreLogSerializable)
- (uint64_t)atx_writeToFile:()ATXScoreLogSerializable;
@end

@implementation NSArray(ATXScoreLogSerializable)

- (uint64_t)atx_writeToFile:()ATXScoreLogSerializable
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [a1 count];
  fwrite("[\n", 2uLL, 1uLL, a3);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    v11 = v5 - 1;
    do
    {
      v12 = 0;
      v13 = v9;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v16 + 1) + 8 * v12) atx_writeToFile:{a3, v16}];
        v9 = v13 + 1;
        if (v11 == v13)
        {
          fprintf(a3, "\n");
        }

        else
        {
          fprintf(a3, ",\n");
        }

        ++v12;
        ++v13;
      }

      while (v8 != v12);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  result = fputc(93, a3);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

@end