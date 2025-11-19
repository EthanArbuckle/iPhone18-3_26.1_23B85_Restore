@interface CreatePlaneMeshSource
@end

@implementation CreatePlaneMeshSource

void ____CreatePlaneMeshSource_block_invoke(uint64_t a1, double a2, float a3, float a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) >= 2)
  {
    v6 = a3;
    v7 = a4;
    v8 = 1;
    while (1)
    {
      v9 = *(a1 + 92);
      if (v9 == 3)
      {
        break;
      }

      if (v9 == 1)
      {
        *bytes = 0;
        v15 = 0x3F80000000000000;
        goto LABEL_10;
      }

      if (!*(a1 + 92))
      {
        v10 = *(a1 + 48) + v6;
        v11 = *(a1 + 72);
        v12 = __sincos_stret((*(a1 + 76) * v8) + a2);
        v13 = v10 + v11 * v12.__cosval;
        *bytes = v13;
        v14 = *(a1 + 56) + v7 + v11 * v12.__sinval;
        goto LABEL_9;
      }

LABEL_11:
      ++*(*(*(a1 + 32) + 8) + 24);
      CFDataAppendBytes(*(a1 + 64), bytes, 4 * *(a1 + 88));
      if (*(a1 + 40) <= ++v8)
      {
        return;
      }
    }

    v16 = *(a1 + 72);
    v17 = __sincos_stret((*(a1 + 76) * v8) + a2);
    v18 = *(a1 + 84);
    v19 = (v6 + v16 * v17.__cosval) / *(a1 + 80) + 0.5;
    *bytes = v19;
    v14 = 1.0 - (v7 + v16 * v17.__sinval) / v18 + -0.5;
LABEL_9:
    *&v20 = v14;
    v15 = v20;
LABEL_10:
    v22 = v15;
    goto LABEL_11;
  }
}

void ____CreatePlaneMeshSource_block_invoke_2(uint64_t a1, float a2, float a3, float a4, float a5, float a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a6 + 1.0;
  if ((a6 + 1.0) > 0.0)
  {
    v13 = a3;
    v14 = 0.0;
    v15 = 1;
    while (1)
    {
      v16 = *(a1 + 76);
      if (v16 == 3)
      {
        break;
      }

      if (v16 == 1)
      {
        *bytes = 0.0;
        v20 = 0x3F80000000000000;
        goto LABEL_10;
      }

      if (!*(a1 + 76))
      {
        v17 = *(a1 + 48);
        v18 = *(a1 + 40) + a2 + ((v14 * a4) / a6);
        *bytes = v18;
        v19 = v17 + v13 + ((v14 * a5) / a6);
        goto LABEL_9;
      }

LABEL_11:
      ++*(*(*(a1 + 32) + 8) + 24);
      CFDataAppendBytes(*(a1 + 56), bytes, 4 * *(a1 + 72));
      v14 = v15++;
      if (v7 <= v14)
      {
        return;
      }
    }

    v21 = *(a1 + 68);
    *bytes = ((((v14 * a4) / a6) + a2) / *(a1 + 64)) + 0.5;
    v19 = (1.0 - ((((v14 * a5) / a6) + a3) / v21)) + -0.5;
LABEL_9:
    v20 = LODWORD(v19);
LABEL_10:
    v23 = v20;
    goto LABEL_11;
  }
}

@end