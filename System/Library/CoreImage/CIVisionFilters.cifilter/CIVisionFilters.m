uint64_t sub_CE0(__CVBuffer *a1, uint64_t a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v5 = CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (!v5)
  {
    if (PlaneCount)
    {
      if ((PlaneCount & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        for (i = 0; i != PlaneCount; ++i)
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, i);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, i);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, i);
          if (BaseAddressOfPlane && BytesPerRowOfPlane && WidthOfPlane && HeightOfPlane)
          {
            (*(a2 + 16))(a2, BaseAddressOfPlane, i, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
          }
        }
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      if (BaseAddress && BytesPerRow && Width && Height)
      {
        (*(a2 + 16))(a2, BaseAddress, 0, Width, Height, BytesPerRow);
      }
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  return v5;
}

id sub_1030(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v10 = [*(a1 + 32) baseAddress];
  [*(a1 + 32) region];
  Height = CGRectGetHeight(v14);
  result = [*(a1 + 32) bytesPerRow];
  if (Height < a5)
  {
    a5 = Height;
  }

  if (a5)
  {
    v13 = result;
    do
    {
      result = memcpy(v10, a2, v13);
      a2 += a6;
      v10 += v13;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t sub_13F0()
{
  if (qword_8578 != -1)
  {
    sub_1C98();
  }

  return qword_8570;
}

void sub_1CAC(uint64_t a1, NSObject *a2)
{
  v3 = 138543362;
  v4 = [objc_opt_class() description];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@: requires an inputImage with a finite extent.", &v3, 0xCu);
}