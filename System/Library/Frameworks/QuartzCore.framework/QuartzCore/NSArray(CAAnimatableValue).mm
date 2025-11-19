@interface NSArray(CAAnimatableValue)
- (uint64_t)CA_interpolateValue:()CAAnimatableValue byFraction:;
- (uint64_t)CA_interpolateValues:()CAAnimatableValue ::interpolator:;
- (void)CA_addValue:()CAAnimatableValue multipliedBy:;
@end

@implementation NSArray(CAAnimatableValue)

- (uint64_t)CA_interpolateValues:()CAAnimatableValue ::interpolator:
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = [a1 count];
  v35 = a1;
  if (v11 >= [a4 count])
  {
    v12 = a4;
  }

  else
  {
    v12 = a1;
  }

  v13 = [v12 count];
  v14 = v13;
  if (a3)
  {
    v13 = [a3 count];
    if (v14 >= v13)
    {
      v13 = [a3 count];
      v14 = v13;
    }
  }

  if (a5)
  {
    v13 = [a5 count];
    if (v14 >= v13)
    {
      v13 = [a5 count];
      v14 = v13;
    }
  }

  v15 = 8 * v14;
  if (8 * v14 > 0x1000)
  {
    v17 = malloc_type_malloc(8 * v14, 0xF5B37F36uLL);
    v21 = malloc_type_malloc(8 * v14, 0x444B89B4uLL);
    if (a3)
    {
      v20 = malloc_type_malloc(8 * v14, 0xF1AB80DBuLL);
      if (a5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = 0;
      if (a5)
      {
LABEL_16:
        v22 = malloc_type_malloc(8 * v14, 0xF33403BEuLL);
        if (v17)
        {
          goto LABEL_26;
        }

        goto LABEL_40;
      }
    }

    v22 = 0;
    if (v17)
    {
      goto LABEL_26;
    }

LABEL_40:
    if (*a6 >= 0.5)
    {
      v31 = a4;
    }

    else
    {
      v31 = v35;
    }

    goto LABEL_43;
  }

  v34 = a4;
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v33 - v16;
  bzero(&v33 - v16, 8 * v14);
  MEMORY[0x1EEE9AC00](v18);
  bzero(&v33 - v16, 8 * v14);
  if (a3)
  {
    MEMORY[0x1EEE9AC00](v19);
    v20 = &v33 - v16;
    bzero(&v33 - v16, 8 * v14);
    if (a5)
    {
      v21 = &v33 - v16;
LABEL_19:
      MEMORY[0x1EEE9AC00](v19);
      v22 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v22, 8 * v14);
      goto LABEL_25;
    }

    v22 = 0;
    v21 = &v33 - v16;
  }

  else
  {
    v20 = 0;
    v21 = &v33 - v16;
    if (a5)
    {
      goto LABEL_19;
    }

    v22 = 0;
  }

LABEL_25:
  a4 = v34;
  if (!v17)
  {
    goto LABEL_40;
  }

LABEL_26:
  if (!v21)
  {
    goto LABEL_40;
  }

  [v35 getObjects:v17 range:{0, v14}];
  [a4 getObjects:v21 range:{0, v14}];
  if (a3)
  {
    [a3 getObjects:v20 range:{0, v14}];
  }

  v34 = v21;
  v35 = v17;
  if (a5)
  {
    [a5 getObjects:v22 range:{0, v14}];
  }

  if (v14)
  {
    v24 = v34;
    v23 = v35;
    v25 = v20;
    v26 = v22;
    for (i = v14; i; --i)
    {
      if (v20)
      {
        v28 = *v25;
        if (!v22)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v28 = 0;
        if (!v22)
        {
LABEL_37:
          v29 = 0;
          goto LABEL_38;
        }
      }

      v29 = *v26;
LABEL_38:
      v30 = *v24;
      v24 += 8;
      *v23 = [*v23 CA_interpolateValues:v28 :v30 :v29 interpolator:a6];
      ++v23;
      v26 += 8;
      v25 += 8;
    }
  }

  v17 = v35;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:v14];
  v21 = v34;
LABEL_43:
  if (v15 > 0x1000 && v20)
  {
    free(v20);
  }

  if (v15 > 0x1000 && v17)
  {
    free(v17);
  }

  if (v15 > 0x1000 && v21)
  {
    free(v21);
  }

  if (v15 > 0x1000 && v22)
  {
    free(v22);
  }

  return v31;
}

- (uint64_t)CA_interpolateValue:()CAAnimatableValue byFraction:
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 count];
  if (v7 >= [a4 count])
  {
    v8 = a4;
  }

  else
  {
    v8 = a1;
  }

  v9 = [v8 count];
  v10 = v9;
  v11 = 8 * v9;
  if ((8 * v9) > 0x1000)
  {
    v12 = malloc_type_malloc(8 * v9, 0xDA889AC1uLL);
    v14 = malloc_type_malloc(v11, 0x3B143B08uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v12, v11);
    MEMORY[0x1EEE9AC00](v13);
    v14 = v12;
    bzero(v12, v11);
  }

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (a2 >= 0.5)
    {
      v16 = a4;
    }

    else
    {
      v16 = a1;
    }
  }

  else
  {
    [a1 getObjects:v12 range:{0, v10}];
    [a4 getObjects:v14 range:{0, v10}];
    if (v10)
    {
      v18 = v12;
      v19 = v14;
      v20 = v10;
      do
      {
        v21 = *v19++;
        *&v17 = a2;
        *v18 = [*v18 CA_interpolateValue:v21 byFraction:v17];
        ++v18;
        --v20;
      }

      while (v20);
    }

    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:v10];
  }

  if (v11 > 0x1000 && v14)
  {
    free(v14);
  }

  if (v11 > 0x1000 && v12)
  {
    free(v12);
  }

  return v16;
}

- (void)CA_addValue:()CAAnimatableValue multipliedBy:
{
  v6 = a1;
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 count];
  if (v7 >= [a3 count])
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v8 count];
  v10 = v9;
  v11 = 8 * v9;
  if ((8 * v9) > 0x1000)
  {
    v12 = malloc_type_malloc(8 * v9, 0x85915FE3uLL);
    v14 = malloc_type_malloc(v11, 0xB07F1511uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v12, v11);
    MEMORY[0x1EEE9AC00](v13);
    v14 = v12;
    bzero(v12, v11);
  }

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    [v6 getObjects:v12 range:{0, v10}];
    [a3 getObjects:v14 range:{0, v10}];
    if (v10)
    {
      v16 = v12;
      v17 = v14;
      v18 = v10;
      do
      {
        v19 = *v17++;
        *v16 = [*v16 CA_addValue:v19 multipliedBy:a4];
        ++v16;
        --v18;
      }

      while (v18);
    }

    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:v10];
  }

  if (v11 > 0x1000 && v14)
  {
    free(v14);
  }

  if (v11 > 0x1000 && v12)
  {
    free(v12);
  }

  return v6;
}

@end