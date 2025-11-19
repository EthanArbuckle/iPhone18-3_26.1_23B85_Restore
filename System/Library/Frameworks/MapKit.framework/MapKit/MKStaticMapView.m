@interface MKStaticMapView
@end

@implementation MKStaticMapView

void __41___MKStaticMapView__startSnapshotRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && *(a1 + 40) == *(WeakRetained + 77))
  {
    *(WeakRetained + 633) = 0;
    if (v8)
    {
      [WeakRetained _handleSnapshot:?];
    }

    else
    {
      [WeakRetained _handleSnapshotError:v5];
    }
  }
}

void __36___MKStaticMapView__updateSnapshot___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[77] == *(a1 + 40))
  {
    v3 = WeakRetained;
    [WeakRetained _startSnapshotRequest];
    WeakRetained = v3;
  }
}

void __54___MKStaticMapView__displayGridWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5 && *(a1 + 48) == WeakRetained[77])
    {
      [WeakRetained _handleGridSnapshot:v5];
    }

    v4 = WeakRetained[53];
    WeakRetained[53] = 0;

    (*(*(a1 + 32) + 16))();
  }
}

@end