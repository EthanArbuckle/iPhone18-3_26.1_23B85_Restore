void sub_22A4(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  if (v3 <= 4)
  {
    v4 = *(a1 + 32);
    v5 = [NSNumber numberWithUnsignedInteger:qword_4968[v3]];
    [v4 addObject:v5];
  }
}

void sub_3468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_349C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 objectForKeyedSubscript:@"Default"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}