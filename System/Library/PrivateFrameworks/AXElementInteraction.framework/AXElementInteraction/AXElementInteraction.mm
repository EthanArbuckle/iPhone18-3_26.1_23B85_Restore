void _axEventHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v6 = objc_autoreleasePoolPush();
  if (a3 > 1003)
  {
    if (a3 != 1006 && a3 != 1004)
    {
      goto LABEL_8;
    }

LABEL_7:
    [v7 _handleScreenChange];
    goto LABEL_8;
  }

  if (a3 == 1000)
  {
    goto LABEL_7;
  }

  if (a3 == 1001)
  {
    [v7 _handleLayoutChange];
  }

LABEL_8:
  objc_autoreleasePoolPop(v6);
}