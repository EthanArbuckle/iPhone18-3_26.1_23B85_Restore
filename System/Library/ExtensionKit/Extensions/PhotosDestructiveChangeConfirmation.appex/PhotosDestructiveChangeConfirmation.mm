void sub_100001294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000012AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000012C4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    [*(a1 + 32) setDeliveryMode:2];
    v5 = +[PHImageManager defaultManager];
    v6 = *(a1 + 72);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000013A4;
    v9[3] = &unk_1000041F0;
    v9[4] = *(a1 + 48);
    [v5 requestImageForAsset:v7 targetSize:v6 contentMode:v8 options:v9 resultHandler:{*(a1 + 56), *(a1 + 64)}];
  }
}

uint64_t sub_100001D30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001D48(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    [*(a1 + 32) setDeliveryMode:2];
    v5 = +[PHImageManager defaultManager];
    v6 = *(a1 + 72);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001E8C;
    v9[3] = &unk_1000041F0;
    v9[4] = *(a1 + 48);
    [v5 requestImageForAsset:v7 targetSize:v6 contentMode:v8 options:v9 resultHandler:{*(a1 + 56), *(a1 + 64)}];
  }
}

intptr_t sub_100001E28(uint64_t a1, uint64_t a2)
{
  v3 = [PLVideoTranscoder generatePosterFrameForAVAsset:a2 maxSize:0 error:*(a1 + 48), *(a1 + 56)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}