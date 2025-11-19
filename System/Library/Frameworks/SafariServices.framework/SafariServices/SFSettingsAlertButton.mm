@interface SFSettingsAlertButton
@end

@implementation SFSettingsAlertButton

void __43___SFSettingsAlertButton_updateConstraints__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = a2;
  v5 = *(a1 + 32);
  v6 = [v37 topAnchor];
  v7 = [*(a1 + 40) topAnchor];
  v8 = [v6 constraintGreaterThanOrEqualToAnchor:v7];
  [v5 addObject:v8];

  v9 = *(a1 + 32);
  v10 = [v37 bottomAnchor];
  v11 = [*(a1 + 40) bottomAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor:v11];
  [v9 addObject:v12];

  v13 = *(a1 + 32);
  v14 = [v37 leadingAnchor];
  v15 = [*(a1 + 40) leadingAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];
  [v13 addObject:v16];

  v17 = *(a1 + 32);
  v18 = [v37 trailingAnchor];
  v19 = [*(a1 + 40) trailingAnchor];
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19];
  [v17 addObject:v20];

  if (a3)
  {
    v21 = *(a1 + 32);
    v22 = [v37 leadingAnchor];
    v23 = [*(a1 + 48) objectAtIndexedSubscript:a3 - 1];
    v24 = [v23 trailingAnchor];
    v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24 constant:16.0];
    [v21 addObject:v25];
  }

  v26 = *(a1 + 56);
  v27 = v37;
  if (v26[77] == v37 || v26[64] == v37)
  {
    v27 = v26[65];
  }

  v28 = [v27 centerYAnchor];
  v29 = [*(a1 + 56) centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *&v31 = (*(a1 + 64) - a3) + 50.0;
  [v30 setPriority:v31];
  [*(a1 + 32) addObject:v30];
  if (*(a1 + 64) == 1)
  {
    v32 = [v37 centerXAnchor];
    v33 = [*(a1 + 56) centerXAnchor];
  }

  else
  {
    if (a3)
    {
      v32 = [v37 trailingAnchor];
      [*(a1 + 40) trailingAnchor];
    }

    else
    {
      v32 = [v37 leadingAnchor];
      [*(a1 + 40) leadingAnchor];
    }
    v33 = ;
  }

  v34 = v33;
  v35 = [v32 constraintEqualToAnchor:v33];

  LODWORD(v36) = 1112276992;
  [v35 setPriority:v36];
  [*(a1 + 32) addObject:v35];
}

id __43___SFSettingsAlertButton__arrangedSubviews__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v4 = *(a1 + 32);
      v5 = 600;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 32);
      v5 = 608;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    v5 = 592;
LABEL_12:
    v2 = *(v4 + v5);
    goto LABEL_13;
  }

  v6 = 616;
  v7 = [*(*(a1 + 32) + 616) superview];
  if (!v7)
  {
    v6 = 512;
  }

  v2 = *(*(a1 + 32) + v6);

LABEL_13:

  return v2;
}

void *__43___SFSettingsAlertButton__arrangedSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = (*(*(a1 + 32) + 16))(*(a1 + 32), [a2 integerValue]);
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end