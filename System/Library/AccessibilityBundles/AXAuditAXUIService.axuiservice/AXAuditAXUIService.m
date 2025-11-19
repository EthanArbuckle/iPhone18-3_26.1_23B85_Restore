void sub_10EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1104(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_144C(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _cachedAlpha];

  return [v1 setAlpha:?];
}

void sub_1AD0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  [*(a1 + 32) set];
  [v10 fill];
  v7 = 0.0;
  if (*(a1 + 72))
  {
    v7 = 2.0;
  }

  [v10 setLineWidth:*(a1 + 64) + v7];
  [v10 setLineCapStyle:1];
  [v10 setLineJoinStyle:1];
  v8 = [*(a1 + 40) _outlineColor];
  [v8 set];

  [v10 stroke];
  v9 = v10;
  if ((*(a1 + 72) & 1) == 0)
  {
    v9 = [*(a1 + 48) objectAtIndex:a3 + 1];
  }

  [v9 setLineWidth:*(a1 + 64)];
  [v9 setLineCapStyle:1];
  [v9 setLineJoinStyle:1];
  [*(a1 + 56) set];
  [v9 stroke];
  if ((*(a1 + 72) & 1) == 0)
  {
    *a4 = 1;
  }
}