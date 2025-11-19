@interface GetPresentationTimeRange
@end

@implementation GetPresentationTimeRange

double __remoteSampleCursor_GetPresentationTimeRange_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      result = 0.0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *dataPointerOut = *(a1 + 32);
      *(v5 + 4) = 1935896690;
    }
  }

  return result;
}

__n128 __remoteSampleCursor_GetPresentationTimeRange_block_invoke_2(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut) && (dataPointerOut & 7) == 0 && v6 > 0x197)
  {
    v4 = *(a1 + 32);
    result = *(dataPointerOut + 21);
    v5 = *(dataPointerOut + 23);
    *(v4 + 16) = *(dataPointerOut + 22);
    *(v4 + 32) = v5;
    *v4 = result;
  }

  return result;
}

@end