@interface SONetLogonParser
+ (id)parseNetLoginUsingData:(id)data;
@end

@implementation SONetLogonParser

+ (id)parseNetLoginUsingData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v23 = [MEMORY[0x277CBEC10] mutableCopy];
  v22[1] = v22;
  v4 = v22 - (([dataCopy length] + 15) & 0xFFFFFFFFFFFFFFF0);
  [dataCopy getBytes:v4 length:{objc_msgSend(dataCopy, "length")}];
  v5 = 0;
  v6 = 1;
  v7 = 24;
  do
  {
    if ([dataCopy length] <= v7)
    {
      v10 = &stru_285206D08;
    }

    else
    {
      v8 = v7;
      v9 = 1;
      v10 = &stru_285206D08;
      while (1)
      {
        v11 = v4[v8];
        if (!v11)
        {
          break;
        }

        if ((v11 & 0xC0) != 0)
        {
          v12 = v7 + 1;
          if (!v5)
          {
            v5 = v7 + 2;
          }

          v7 = v4[v12];
          if ([dataCopy length] < v7)
          {
            v7 = v12;
            goto LABEL_20;
          }
        }

        else
        {
          if ((v9 & 1) == 0)
          {
            v13 = [(__CFString *)v10 stringByAppendingString:@"."];

            v10 = v13;
          }

          v14 = v7 + 1;
          v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v4[v14] length:v11];
          v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
          v17 = [(__CFString *)v10 stringByAppendingString:v16];

          v7 = v14 + v11;
          v9 = 0;
          v10 = v17;
        }

        v8 = v7;
        if ([dataCopy length] <= v7)
        {
          goto LABEL_20;
        }
      }

      v18 = [MEMORY[0x277CCABB0] numberWithShort:v6];
      [v23 setObject:v10 forKeyedSubscript:v18];

      if (v5)
      {
        v7 = v5;
      }

      else
      {
        ++v7;
      }

      v5 = 0;
    }

LABEL_20:

    ++v6;
  }

  while (v6 != 9);

  v19 = *MEMORY[0x277D85DE8];
  v20 = v23;

  return v20;
}

@end