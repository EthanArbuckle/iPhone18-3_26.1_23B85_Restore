@interface MKDirectionsToDrawForLane
@end

@implementation MKDirectionsToDrawForLane

id ___MKDirectionsToDrawForLane_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 direction];
  v8 = [v6 direction];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___MKDirectionsToDrawForLane_block_invoke_2;
  v17[3] = &unk_1E76C8168;
  v9 = v5;
  v18 = v9;
  v19 = *(a1 + 32);
  v10 = v6;
  v20 = v10;
  v11 = MEMORY[0x1A58E9F30](v17);
  if (v7 > 15)
  {
    if (v7 <= 63)
    {
      if (v7 == 16)
      {
        v12 = &unk_1F1611F88;
        v13 = MEMORY[0x1E695E0F0];
        goto LABEL_22;
      }

      if (v7 == 32)
      {
        v12 = &unk_1F1611FB8;
        v13 = &unk_1F1611FA0;
        goto LABEL_22;
      }
    }

    else
    {
      switch(v7)
      {
        case 64:
          v12 = &unk_1F1611FE8;
          v13 = &unk_1F1611FD0;
          goto LABEL_22;
        case 128:
          v12 = &unk_1F1612018;
          v13 = &unk_1F1612000;
          goto LABEL_22;
        case 256:
          v12 = MEMORY[0x1E695E0F0];
          v13 = &unk_1F16120F0;
          goto LABEL_22;
      }
    }
  }

  else if (v7 > 3)
  {
    if (v7 == 4)
    {
      v12 = &unk_1F16120A8;
      v13 = &unk_1F1612090;
      goto LABEL_22;
    }

    if (v7 == 8)
    {
      v12 = &unk_1F16120D8;
      v13 = &unk_1F16120C0;
      goto LABEL_22;
    }
  }

  else
  {
    if (v7 < 2)
    {
      v12 = &unk_1F1612048;
      v13 = &unk_1F1612030;
LABEL_22:
      v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
      v15 = [MEMORY[0x1E695DFD8] setWithArray:v12];
      v6 = (v11)[2](v11, v8, v14, v15);

      goto LABEL_23;
    }

    if (v7 == 2)
    {
      v12 = &unk_1F1612078;
      v13 = &unk_1F1612060;
      goto LABEL_22;
    }
  }

LABEL_23:

  return v6;
}

uint64_t ___MKDirectionsToDrawForLane_block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithInt:a2];
  v11 = [v9 containsObject:v10];

  if (v11)
  {
    v12 = -1;
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v14 = [v7 containsObject:v13];

    if ((v14 & 1) != 0 || (v15 = a1[5], a1[4] == v15))
    {
      v12 = 1;
    }

    else if (a1[6] == v15)
    {
      v12 = -1;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end