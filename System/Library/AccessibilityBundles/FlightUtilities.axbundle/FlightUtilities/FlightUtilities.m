id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A21A0EB0 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

CGFloat UnionExcludingEmptyRects(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (!CGRectIsEmpty(*&a1))
  {
    v17.origin.x = a5;
    v17.origin.y = a6;
    v17.size.width = a7;
    v17.size.height = a8;
    if (CGRectIsEmpty(v17))
    {
      return a1;
    }

    else
    {
      v18.origin.x = a1;
      v18.origin.y = a2;
      v18.size.width = a3;
      v18.size.height = a4;
      v19.origin.x = a5;
      v19.origin.y = a6;
      v19.size.width = a7;
      v19.size.height = a8;
      *&a5 = CGRectUnion(v18, v19);
    }
  }

  return a5;
}

void sub_29BDF11D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59BA0](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}