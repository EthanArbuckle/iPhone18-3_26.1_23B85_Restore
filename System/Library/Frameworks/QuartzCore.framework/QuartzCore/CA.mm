@interface CA
@end

@implementation CA

void *__CA_CGPathIsRectShape_block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result[4] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (*a2 == 1)
      {
        v11 = *(*(result[6] + 8) + 24);
        v12 = *(a2 + 8);
        v14 = *v12;
        v13 = v12[1];
        if ((v11[4] == *v12) == (v11[5] == v13) || (*v11 == v14) == (v11[1] == v13))
        {
          v16 = 0;
        }

        else
        {
          v15 = v11[3];
          v16 = v14 != v11[2];
          if (v13 != v15)
          {
            v16 = 1;
          }
        }
      }

      else
      {
        v16 = 0;
        v12 = *(a2 + 8);
      }

      *(*(result[5] + 8) + 24) = v16;
      *(*(*(result[6] + 8) + 24) + 48) = *v12;
    }

    else
    {
      if (v4 == 4)
      {
        if (*a2 == 4)
        {
          v10 = 1;
        }

        else if (*a2 == 1)
        {
          v20 = *(a2 + 8);
          v21 = *v20;
          v22 = v20[1];
          v23 = *(*(result[6] + 8) + 24);
          v24 = v23[1];
          v10 = v21 == *v23;
          if (v22 != v24)
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        if (v4 != 5)
        {
          goto LABEL_37;
        }

        v10 = *a2 == 4;
      }

      *(*(result[5] + 8) + 24) = v10;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      if (*a2 == 1)
      {
        v17 = *(*(result[6] + 8) + 24);
        v18 = *(a2 + 8);
        v19 = (*v17 == *v18) ^ (v17[1] == v18[1]);
      }

      else
      {
        v19 = 0;
        v18 = *(a2 + 8);
      }

      *(*(result[5] + 8) + 24) = v19;
      *(*(*(result[6] + 8) + 24) + 16) = *v18;
    }

    else if (v4 == 2)
    {
      if (*a2 == 1)
      {
        v5 = *(*(result[6] + 8) + 24);
        v6 = *(a2 + 8);
        v7 = v6[1];
        if ((v5[2] == *v6) == (v5[3] == v7))
        {
          v9 = 0;
        }

        else
        {
          v8 = v5[1];
          v9 = *v6 != *v5;
          if (v7 != v8)
          {
            v9 = 1;
          }
        }
      }

      else
      {
        v9 = 0;
        v6 = *(a2 + 8);
      }

      *(*(result[5] + 8) + 24) = v9;
      *(*(*(result[6] + 8) + 24) + 32) = *v6;
    }
  }

  else
  {
    *(*(result[5] + 8) + 24) = *a2 == 0;
    **(*(result[6] + 8) + 24) = **(a2 + 8);
  }

LABEL_37:
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

@end