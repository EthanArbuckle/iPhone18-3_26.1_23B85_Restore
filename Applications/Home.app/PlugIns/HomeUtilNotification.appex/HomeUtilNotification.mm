void sub_10000182C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000186C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v27 = [WeakRetained announcementsBrowserViewController];
  v26 = [v27 view];
  v24 = [v26 topAnchor];
  v25 = [WeakRetained view];
  v23 = [v25 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v28[0] = v22;
  v21 = [WeakRetained announcementsBrowserViewController];
  v20 = [v21 view];
  v18 = [v20 leadingAnchor];
  v19 = [WeakRetained view];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v28[1] = v16;
  v15 = [WeakRetained announcementsBrowserViewController];
  v14 = [v15 view];
  v13 = [v14 trailingAnchor];
  v2 = [WeakRetained view];
  v3 = [v2 trailingAnchor];
  v4 = [v13 constraintEqualToAnchor:v3];
  v28[2] = v4;
  v5 = [WeakRetained announcementsBrowserViewController];
  v6 = [v5 view];
  v7 = [v6 bottomAnchor];
  v8 = [WeakRetained view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v28[3] = v10;
  v12 = [NSArray arrayWithObjects:v28 count:4];

  return v12;
}