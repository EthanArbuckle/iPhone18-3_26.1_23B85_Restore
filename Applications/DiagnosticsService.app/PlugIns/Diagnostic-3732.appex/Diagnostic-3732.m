id stringOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

void sub_100001308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001358(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001370(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) isCancelled];
  if ((v4 & 1) == 0)
  {
    v5 = [[DSUsageLogLine alloc] initWithLogLine:v3];
    if ([v5 standbyTime] >= 1 && objc_msgSend(v5, "usageTime") <= 1209599)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    }

    if (![v5 isOnPower])
    {
      goto LABEL_14;
    }

    v6 = *(*(a1 + 48) + 8);
    if (*(v6 + 40))
    {
      v7 = [v5 usageTime];
      if (v7 <= [*(*(*(a1 + 48) + 8) + 40) usageTime])
      {
LABEL_10:
        v8 = *(*(a1 + 56) + 8);
        if (*(v8 + 40))
        {
          v9 = [v5 standbyTime];
          if (v9 <= [*(*(*(a1 + 56) + 8) + 40) standbyTime])
          {
            goto LABEL_14;
          }

          v8 = *(*(a1 + 56) + 8);
        }

        objc_storeStrong((v8 + 40), v5);
LABEL_14:
        v10 = [v5 date];
        [v10 timeIntervalSinceNow];
        v12 = v11;

        if (v12 >= 300.0)
        {
          if ([v5 isReset])
          {
            v13 = 64;
LABEL_19:
            objc_storeStrong((*(*(a1 + v13) + 8) + 40), v5);
            goto LABEL_20;
          }

          if ([v5 isOnPower])
          {
            v13 = 72;
            goto LABEL_19;
          }
        }

LABEL_20:

        goto LABEL_21;
      }

      v6 = *(*(a1 + 48) + 8);
    }

    objc_storeStrong((v6 + 40), v5);
    goto LABEL_10;
  }

LABEL_21:

  return v4;
}