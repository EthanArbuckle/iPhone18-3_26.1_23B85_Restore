void sub_16E8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 32) + 32);
  v13 = v7;
  if (v8)
  {
    [v8 set];
    [v13 fill];
    v7 = v13;
  }

  v9 = 0.0;
  if (*(a1 + 56))
  {
    v9 = 2.0;
  }

  [v7 setLineWidth:*(a1 + 48) + v9];
  [v13 setLineCapStyle:1];
  [v13 setLineJoinStyle:1];
  v10 = +[UIColor whiteColor];
  [v10 set];

  [v13 stroke];
  v11 = v13;
  if ((*(a1 + 56) & 1) == 0)
  {
    v11 = [*(a1 + 40) objectAtIndex:a3 + 1];
  }

  [v11 setLineWidth:*(a1 + 48)];
  [v11 setLineCapStyle:1];
  [v11 setLineJoinStyle:1];
  v12 = +[UIColor blackColor];
  [v12 set];

  [v11 stroke];
  if ((*(a1 + 56) & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_18F4(id a1)
{
  qword_89E0 = objc_alloc_init(AXElementInteractionUIServer);

  _objc_release_x1();
}