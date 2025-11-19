void sub_2218(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_22C8;
  v4[3] = &unk_82D0;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_22C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = +[UIColor siriui_maskingColor];
    v4 = [v1 _flatImageWithColor:v3];

    [*(a1 + 40) setImage:v4];
  }
}