@interface HKFactorization
@end

@implementation HKFactorization

uint64_t __30___HKFactorization_unitString__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unitString];
  v6 = v5;
  if (v5)
  {
    if (a3 < 1)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      v7 = a1 + 56;
      v10 = v5;
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        [*(a1 + 40) appendString:@"·"];
        v6 = v10;
      }

      [*(a1 + 40) appendString:v6];
      if (a3 != -1)
      {
        [*(a1 + 40) appendFormat:@"^%ld", -a3];
      }
    }

    else
    {
      v7 = a1 + 48;
      v9 = v5;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        [*(a1 + 32) appendString:@"·"];
        v6 = v9;
      }

      [*(a1 + 32) appendString:v6];
      if (a3 != 1)
      {
        [*(a1 + 32) appendFormat:@"^%ld", a3];
      }
    }

    ++*(*(*v7 + 8) + 24);
  }

LABEL_13:

  return MEMORY[0x1EEE66BB8]();
}

void __24___HKFactorization_hash__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 hash];
  v7 = [v5 hash];

  *(*(*(a1 + 32) + 8) + 24) += v7 ^ v6;
}

void __36___HKFactorization_encodeWithCoder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

void __37___HKFactorization__raiseToExponent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40) * a3;
  v6 = a2;
  v7 = [v3 numberWithInteger:v5];
  [v4 setObject:v7 forKey:v6];
}

@end