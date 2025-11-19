@interface GCNintendoJoyConDevicePending
@end

@implementation GCNintendoJoyConDevicePending

void __75___GCNintendoJoyConDevicePending_setDriverConnection_invalidatingPrevious___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) resultIfFinished];
  v6 = v2;
  if (v2)
  {
    v3 = objc_opt_respondsToSelector();
    v2 = v6;
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

    [v6 setDriverConnection:*(a1 + 40)];
    goto LABEL_9;
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    [v4 invalidate];
    v2 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [(_GCNintendoJoyConDevicePending *)*(a1 + 32) _onqueue_prepareDeviceWithConnection:v5];
LABEL_9:
    v2 = v6;
  }

LABEL_10:
}

void __75___GCNintendoJoyConDevicePending_setFilterConnection_invalidatingPrevious___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) resultIfFinished];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = objc_opt_respondsToSelector();
    v3 = v6;
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    [v6 setFilterConnection:*(a1 + 40)];
    goto LABEL_7;
  }

  v5 = *(a1 + 48);
  if (v5 && *(a1 + 56) == 1)
  {
    v6 = 0;
    [v5 invalidate];
LABEL_7:
    v3 = v6;
  }

LABEL_8:
}

@end