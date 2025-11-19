void sub_167988(id a1)
{
  v3[0] = &off_275128;
  v3[1] = &off_275140;
  v4[0] = @"none";
  v4[1] = @"wrong-type";
  v3[2] = &off_275158;
  v3[3] = &off_275170;
  v4[2] = @"null-value";
  v4[3] = @"cyclic-dependency";
  v3[4] = &off_275188;
  v3[5] = &off_2751A0;
  v4[4] = @"out-of-bounds";
  v4[5] = @"invalid-property";
  v3[6] = &off_2751B8;
  v3[7] = &off_2751D0;
  v4[6] = @"undefined-constant";
  v4[7] = @"undefined-function";
  v3[8] = &off_2751E8;
  v3[9] = &off_275200;
  v4[8] = @"undefined-style";
  v4[9] = @"undefined-binding";
  v3[10] = &off_275218;
  v3[11] = &off_275230;
  v4[10] = @"undefined-element";
  v4[11] = @"undefined-globals";
  v3[12] = &off_275248;
  v3[13] = &off_275260;
  v4[12] = @"undefined-component";
  v4[13] = @"undefined-method";
  v3[14] = &off_275278;
  v3[15] = &off_275290;
  v4[14] = @"invalid-root";
  v4[15] = @"invalid-syntax";
  v3[16] = &off_2752A8;
  v3[17] = &off_2752C0;
  v4[16] = @"obsolete-syntax";
  v4[17] = @"unexpected-element";
  v3[18] = &off_2752D8;
  v3[19] = &off_2752F0;
  v4[18] = @"illegal-operator-on-type";
  v4[19] = @"expected-single-content-box";
  v3[20] = &off_275308;
  v3[21] = &off_275320;
  v4[20] = @"expected-start-color";
  v4[21] = @"expected-end-color";
  v3[22] = &off_275338;
  v3[23] = &off_275350;
  v4[22] = @"exception";
  v4[23] = @"unzip-exception";
  v3[24] = &off_275368;
  v3[25] = &off_275380;
  v4[24] = @"divide-by-zero";
  v4[25] = @"invalid-transform";
  v3[26] = &off_275398;
  v3[27] = &off_2753B0;
  v4[26] = @"invalid-float";
  v4[27] = @"invalid-params";
  v3[28] = &off_2753C8;
  v3[29] = &off_2753E0;
  v4[28] = @"invalid-instruction";
  v4[29] = @"invalid-action";
  v3[30] = &off_2753F8;
  v3[31] = &off_275410;
  v4[30] = @"invalid-offset-kind";
  v4[31] = @"invalid-size";
  v3[32] = &off_275428;
  v3[33] = &off_275440;
  v4[32] = @"invalid-enumeration";
  v4[33] = @"invalid-state";
  v3[34] = &off_275458;
  v3[35] = &off_275470;
  v4[34] = @"not-indexed";
  v4[35] = @"not-keyed";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:36];
  v2 = qword_2E67F8;
  qword_2E67F8 = v1;
}

void sub_168060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_16807C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v33 = a3;
  v32 = a5;
  v8 = [a2 layoutAncestor];
  if (v8)
  {
    do
    {
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      v9 = [v8 layoutAncestor];

      v8 = v9;
    }

    while (v9);
  }

  v10 = v8;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained pressedScale];
  v12 = v11;
  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 touchInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = objc_loadWeakRetained((a1 + 40));
  v23 = [v22 identifier];
  v24 = *(a1 + 32);
  v25 = [v10 box];

  v26 = [v25 identifier];
  v27 = *(a1 + 48);
  v28 = objc_loadWeakRetained((a1 + 40));
  v29 = +[TUIPageControlView renderModelWithStateToRenderModel:pressScale:touchInsets:identifier:pointer:scrollIdentifier:kind:hiddenWhenUnavailable:](TUIPageControlView, "renderModelWithStateToRenderModel:pressScale:touchInsets:identifier:pointer:scrollIdentifier:kind:hiddenWhenUnavailable:", v33, v23, v24, v26, v27, [v28 hiddenWhenUnavailable], v12, v15, v17, v19, v21);

  [v29 setAnimationGroups:v32];

  return v29;
}

void sub_168264(id a1)
{
  v1 = qword_2E6808;
  qword_2E6808 = &off_275A30;
}

void sub_168600(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 16) viewModelWithIndex:a2];
  v5 = [*(*(a1 + 32) + 24) viewModelWithIndex:a2];
  v6 = [v4 identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 identifier];
  }

  v9 = v8;

  v10 = TUIRenderModelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithUnsignedInteger:a2];
    v12 = [v9 tui_identifierToString];
    v13 = [v9 tui_identifierDescribeForDebuggingWithPackage:*(a1 + 40)];
    v14 = 138412802;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "viewIndex:%@ identifier:%@ debug:\n%@", &v14, 0x20u);
  }
}

void sub_168860(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSIndexPath tui_indexPathForRow:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

id sub_169708(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = [WeakRetained navigationItem];
  v4 = [v3 title];
  v5 = v4;
  v6 = @"Untitled";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = objc_opt_new();
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_169AA4;
  v36[3] = &unk_2633E0;
  v9 = *(a1 + 40);
  v36[4] = *(a1 + 32);
  v37 = v9;
  v10 = [UIAction actionWithTitle:@"Capture feed..." image:0 identifier:0 handler:v36];
  [v8 addObject:v10];

  v11 = objc_opt_new();
  v12 = [*(*(a1 + 32) + 16) sections];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_169BDC;
  v32[3] = &unk_263408;
  v13 = v11;
  v33 = v13;
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  [v12 enumerateObjectsUsingBlock:v32];

  if ([v13 count])
  {
    v16 = [UIMenu menuWithTitle:@"Errors" image:0 identifier:0 options:1 children:v13];
    [v8 addObject:v16];
  }

  v17 = objc_opt_new();
  v18 = [*(*(a1 + 32) + 16) sections];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_169DA4;
  v27[3] = &unk_2634A8;
  v28 = *(a1 + 40);
  v19 = v7;
  v20 = *(a1 + 32);
  v29 = v19;
  v30 = v20;
  v21 = v17;
  v31 = v21;
  [v18 enumerateObjectsUsingBlock:v27];

  if ([v21 count])
  {
    v22 = [UIMenu menuWithTitle:@"Entries" image:0 identifier:0 options:1 children:v21];
    [v8 addObject:v22];
  }

  v23 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[fid:%lu] %@", [v23 feedId], v19);

  if ([v8 count])
  {
    v25 = [UIMenu menuWithTitle:v24 children:v8];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void sub_169AA4(uint64_t a1)
{
  v2 = [TUIFeedCaptureController alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v4 = [WeakRetained navigationItem];
  v5 = [v4 title];
  v6 = [(TUIFeedCaptureController *)v2 initWithEntry:0 title:v5];

  [*(a1 + 40) dismissMenu];
  v7 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v8 = [v7 layoutController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_169BD0;
  v10[3] = &unk_25DCA0;
  v10[4] = *(a1 + 32);
  v11 = v6;
  v9 = v6;
  [v8 captureWithController:v9 completion:v10];
}

void sub_169BDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 errors];
  v5 = [v4 count];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 entry];
    v8 = [v7 templateURL];
    v9 = [v8 lastPathComponent];
    v10 = [v3 errors];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: Errors (%lu)", v9, [v10 count]);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_169D68;
    v15[3] = &unk_262560;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v16 = v12;
    v17 = v13;
    v18 = v3;
    v14 = [UIAction actionWithTitle:v11 image:0 identifier:0 handler:v15];
    [v6 addObject:v14];
  }
}

id sub_169D68(uint64_t a1)
{
  [*(a1 + 32) dismissMenu];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _showErrorsForSection:v3];
}

void sub_169DA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v7 = [v5 entry];
  v8 = [v7 templateURL];
  v9 = [v8 URLByDeletingPathExtension];
  v10 = [v9 lastPathComponent];

  v11 = [NSString stringWithFormat:@"Capture entry ..."];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_16A164;
  v38[3] = &unk_263430;
  v39 = *(a1 + 32);
  v12 = v5;
  v40 = v12;
  v41 = *(a1 + 40);
  v13 = v10;
  v14 = *(a1 + 48);
  v42 = v13;
  v43 = v14;
  v15 = [UIAction actionWithTitle:v11 image:0 identifier:0 handler:v38];
  [v6 addObject:v15];

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 24));
  v17 = [WeakRetained debugDelegate];
  LOBYTE(v10) = objc_opt_respondsToSelector();

  if (v10)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_16A29C;
    v37[3] = &unk_263458;
    v37[4] = *(a1 + 48);
    v37[5] = a3;
    v18 = [UIAction actionWithTitle:@"Update section" image:0 identifier:0 handler:v37];
    [v6 addObject:v18];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_16A320;
  v33[3] = &unk_262560;
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v34 = v19;
  v35 = v20;
  v21 = v12;
  v36 = v21;
  v22 = [UIAction actionWithTitle:@"Dump model tree" image:0 identifier:0 handler:v33];
  [v6 addObject:v22];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_16A49C;
  v29[3] = &unk_262560;
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  v30 = v23;
  v31 = v24;
  v32 = v21;
  v25 = v21;
  v26 = [UIAction actionWithTitle:@"Dump layout tree" image:0 identifier:0 handler:v29];
  [v6 addObject:v26];

  v27 = *(a1 + 56);
  v28 = [UIMenu menuWithTitle:v13 children:v6];
  [v27 addObject:v28];
}

void sub_16A164(uint64_t a1)
{
  [*(a1 + 32) dismissMenu];
  v2 = [TUIFeedCaptureController alloc];
  v3 = [*(a1 + 40) entry];
  v4 = [NSString stringWithFormat:@"%@-%@", *(a1 + 48), *(a1 + 56)];
  v5 = [(TUIFeedCaptureController *)v2 initWithEntry:v3 title:v4];

  WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 24));
  v7 = [WeakRetained layoutController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_16A290;
  v9[3] = &unk_25DCA0;
  v9[4] = *(a1 + 64);
  v10 = v5;
  v8 = v5;
  [v7 captureWithController:v8 completion:v9];
}

void sub_16A29C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = [WeakRetained debugDelegate];
  v3 = [NSIndexSet indexSetWithIndex:*(a1 + 40)];
  [v2 updateSectionsWithIndices:v3];
}

void sub_16A320(uint64_t a1)
{
  [*(a1 + 32) dismissMenu];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v3 = [WeakRetained layoutController];
  v4 = [*(a1 + 48) entry];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_16A3EC;
  v5[3] = &unk_263480;
  v5[4] = *(a1 + 40);
  [v3 dumpModelTreeForEntry:v4 completion:v5];
}

void sub_16A3EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_16A490;
    v5[3] = &unk_25DCA0;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_16A49C(uint64_t a1)
{
  [*(a1 + 32) dismissMenu];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v3 = [WeakRetained layoutController];
  v4 = [*(a1 + 48) entry];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_16A568;
  v5[3] = &unk_263480;
  v5[4] = *(a1 + 40);
  [v3 dumpLayoutTreeForEntry:v4 completion:v5];
}

void sub_16A568(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_16A60C;
    v5[3] = &unk_25DCA0;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_16AA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_16AA60(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 errors];
  v7 = [v6 count];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

id sub_16AE70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (!v3)
  {
    v4 = [_TUIFeedSectionDebug alloc];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    WeakRetained = objc_loadWeakRetained((v5 + 16));
    v8 = [WeakRetained feedOverlayDebugViewController];
    v9 = [(_TUIFeedSectionDebug *)v4 initWithRenderModel:v6 hostingViewController:v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    *(v10 + 8) = v9;

    v12 = [*(*(a1 + 32) + 8) button];
    [*(a1 + 32) addSubview:v12];
    [v12 sizeToFit];

    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
  }

  v13 = *(v2 + 24);

  return [v3 setRenderModel:v13];
}

void sub_16BBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TUIRenderModelIdentifierInterest;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_16BCBC(void *a1)
{
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v2)
  {
    v3 = *v6;
    do
    {
      v4 = 0;
      do
      {
        if (*v6 != v3)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v5 + 1) + 8 * v4) invalidate];
        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
    }

    while (v2);
  }
}

void *sub_16BFF8(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_16C0C4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

__n128 *sub_16C560(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_4050();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      sub_701F4(a1, v16);
    }

    v30 = 0;
    v31 = 8 * (v13 >> 3);
    v32 = v31;
    sub_16E19C(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *a3;
    v6[1].n128_u64[0] = a3[1].n128_u64[0];
    *v6 = v17;
    a1[1] = v6 + 24;
  }

  else
  {
    v8 = (__src + 24);
    if (v6 < 0x18)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = &v6[1].n128_i8[8];
      v10 = *(v6 - 24);
      v6[1].n128_u64[0] = v6[-1].n128_u64[1];
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1].n128_i8[8], __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 24;
    if (v25)
    {
      v26 = 0;
    }

    v27 = a3 + v26;
    v28 = *v27;
    v4[1].n128_u64[0] = *(v27 + 2);
    *v4 = v28;
  }

  return v4;
}

void sub_16C73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_16CCDC(void *a1, void *a2)
{
  v7 = a2;
  [v7 computedTransformedSize];
  *(*(a1[4] + 8) + 24) = v3 + *(*(a1[4] + 8) + 24);
  *(*(a1[5] + 8) + 24) = fmax(*(*(a1[5] + 8) + 24), v4);
  v5 = *(*(a1[6] + 8) + 24);
  [v7 computedHeightAbovePivot];
  *(*(a1[6] + 8) + 24) = fmax(v5, v6);
}

void sub_16CFF4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_16D2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_16D474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_16E19C(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      sub_701F4(a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
    v8 = v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2);
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2), v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = (v5 + 24 * v7);
    a1[2] = &v8[v9];
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  a1[2] = (a1[2] + 24);
  return result;
}

void sub_16ECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, char a26)
{
  sub_639A8(&a26);

  _Unwind_Resume(a1);
}

void sub_16F4F4(id a1)
{
  v12 = kCTFontUIFontDesignTrait;
  v13 = kCTFontUIFontDesignSerif;
  v1 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = kCTFontTraitsAttribute;
  v11 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v3 = CTFontDescriptorCreateWithAttributes(v2);
  if (!v3 || (v4 = v3, (v5 = CTFontCreateWithFontDescriptor(v3, 14.0, 0)) == 0))
  {
    objc_exception_throw([[NSException alloc] initWithName:@"TUIMissingFonts" reason:@"Can't create font for Serif-UI-Text-Regular" userInfo:0]);
  }

  v6 = v5;
  v7 = CTFontCopySupportedLanguages(v5);
  CFRelease(v6);
  CFRelease(v4);
  v8 = [NSSet setWithArray:v7];
  v9 = qword_2E6818;
  qword_2E6818 = v8;
}

void sub_16F6F0(id a1)
{
  v12[0] = @"ultralight";
  v1 = [NSNumber numberWithDouble:UIFontWeightUltraLight];
  v13[0] = v1;
  v12[1] = @"thin";
  v2 = [NSNumber numberWithDouble:UIFontWeightThin];
  v13[1] = v2;
  v12[2] = @"light";
  v3 = [NSNumber numberWithDouble:UIFontWeightLight];
  v13[2] = v3;
  v12[3] = @"regular";
  v4 = [NSNumber numberWithDouble:UIFontWeightRegular];
  v13[3] = v4;
  v12[4] = @"medium";
  v5 = [NSNumber numberWithDouble:UIFontWeightMedium];
  v13[4] = v5;
  v12[5] = @"semibold";
  v6 = [NSNumber numberWithDouble:UIFontWeightSemibold];
  v13[5] = v6;
  v12[6] = @"bold";
  v7 = [NSNumber numberWithDouble:UIFontWeightBold];
  v13[6] = v7;
  v12[7] = @"heavy";
  v8 = [NSNumber numberWithDouble:UIFontWeightHeavy];
  v13[7] = v8;
  v12[8] = @"black";
  v9 = [NSNumber numberWithDouble:UIFontWeightBlack];
  v13[8] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:9];
  v11 = qword_2E6828;
  qword_2E6828 = v10;
}

__CFString *sub_16FAFC(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (a3)
  {
    if ([v5 isEqualToString:@"SerifUIText-Bold"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"SerifUIText-Heavy"))
    {
      goto LABEL_4;
    }

    if ([v6 isEqualToString:@"SerifUIText-Semibold"])
    {
LABEL_6:
      v7 = @"System-Semibold";
      goto LABEL_26;
    }

    if ([v6 isEqualToString:@"SerifUIText-Regular"])
    {
LABEL_8:
      v7 = @"System-Regular";
      goto LABEL_26;
    }

    if ([v6 isEqualToString:@"SerifUIText-Medium"])
    {
LABEL_10:
      v7 = @"System-Medium";
      goto LABEL_26;
    }

    if ([v6 isEqualToString:@"SerifUIText-Bold"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"BooksSerif-Bold") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"BooksSerif-Heavy"))
    {
      goto LABEL_4;
    }

    if ([v6 isEqualToString:@"BooksSerif-Semibold"])
    {
      goto LABEL_6;
    }

    if ([v6 isEqualToString:@"BooksSerif-Regular"])
    {
      goto LABEL_8;
    }

    if ([v6 isEqualToString:@"BooksSerif-Medium"])
    {
      goto LABEL_10;
    }

    if ([v6 isEqualToString:@"BooksSerif-Bold"])
    {
LABEL_4:
      v7 = @"System-Bold";
LABEL_26:
      *a2 = 0x7FF8000000000000;
      goto LABEL_28;
    }

    if ((([v6 hasPrefix:@"SerifUIText"] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"SerifUIDisplay") & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"BooksSerif")) && _TUIDeviceHasInternalInstall())
    {
      v11 = [NSException alloc];
      v12 = [NSString stringWithFormat:@"postscriptName=%@", v6];
      v13 = [v11 initWithName:@"TUIFontException" reason:v12 userInfo:0];
      v14 = v13;

      objc_exception_throw(v13);
    }
  }

  if (![v6 hasPrefix:@"BooksSerif-"] || (objc_msgSend(v6, "substringFromIndex:", objc_msgSend(@"BooksSerif-", "length")), v8 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@", @"SystemSerif-", v8), v7 = objc_claimAutoreleasedReturnValue(), v8, *a2 = 0x7FF8000000000000, !v7))
  {
    if ([v6 hasPrefix:@"SFProRounded-"])
    {
      v9 = [v6 substringFromIndex:{objc_msgSend(@"SFProRounded-", "length")}];
      v7 = [NSString stringWithFormat:@"%@%@", @"SystemRounded-", v9];

      goto LABEL_26;
    }

    v7 = 0;
  }

LABEL_28:

  return v7;
}

BOOL sub_16FDF8()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 preferredLocalizations];
  v2 = [v1 firstObject];

  v3 = [TUIFontSpec determineUseFontFallbackFromLanguage:v2];
  return v3;
}

TUI::Graph::Ordering *TUI::Graph::Ordering::Ordering(TUI::Graph::Ordering *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = (a2 + 63) >> 6;
  v5 = 8 * v4 * (a2 + 2);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v6 = malloc_type_malloc(v5, 0x100004000313F17uLL);
  *(this + 3) = v6;
  bzero(v6, v5);
  if (a2)
  {
    v7 = 0;
    v8 = *(this + 1);
    do
    {
      v9 = *(this + 2);
      v10 = *(this + 3) + 8 * v7 * v4;
      if (v8 >= v9)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *this) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_4050();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *this) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_171DFC(this, v14);
        }

        v15 = 24 * v11;
        *v15 = a2;
        *(v15 + 8) = v10;
        *(v15 + 16) = 0;
        v16 = *this;
        v17 = *(this + 1);
        v18 = 24 * v11 + *this - v17;
        if (*this != v17)
        {
          v19 = v15 + *this - v17;
          do
          {
            v20 = *v16;
            *(v19 + 16) = v16[2];
            *v19 = v20;
            v19 += 24;
            v16 += 3;
          }

          while (v16 != v17);
          v16 = *this;
        }

        v8 = (v15 + 24);
        *this = v18;
        *(this + 1) = v15 + 24;
        *(this + 2) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = a2;
        v8[1] = v10;
        v8[2] = 0;
        v8 += 3;
      }

      *(this + 1) = v8;
      ++v7;
    }

    while (v7 != a2);
  }

  v21 = (*(this + 3) + 8 * v4 * a2);
  *(this + 6) = a2;
  *(this + 7) = v21;
  __pattern8 = -1;
  memset_pattern8(v21, &__pattern8, (8 * a2 + 504) >> 6);
  v22 = *(this + 3) + 8 * (v4 + v4 * a2);
  *(this + 4) = a2;
  *(this + 5) = v22;
  return this;
}

void sub_171A64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TUI::Graph::Ordering::~Ordering(void **this)
{
  free(this[3]);
  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

uint64_t *TUI::Graph::Ordering::addEdge(uint64_t *this, uint64_t a2, unint64_t a3)
{
  v3 = *this;
  v4 = a3 >> 6;
  v5 = *(*this + 24 * a2 + 8);
  v6 = *(v5 + 8 * (a3 >> 6));
  v7 = 1 << a3;
  if ((v6 & (1 << a3)) == 0)
  {
    *(v5 + 8 * v4) = v6 | v7;
    v8 = v3 + 24 * a3;
    v9 = *(v8 + 16);
    *(v8 + 16) = v9 + 1;
    if (!v9)
    {
      v10 = this[7];
      v11 = *(v10 + 8 * v4);
      if ((v11 & v7) != 0)
      {
        *(v10 + 8 * v4) = v11 & ~v7;
      }
    }
  }

  return this;
}

void TUI::Graph::Ordering::solve(TUI::Graph::Ordering *this@<X0>, const void **a2@<X8>)
{
  v2 = a2;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 6);
  for (i = v3 + 63; v3 + 63 >= 0x40; v2 = v38)
  {
    v6 = 0;
    v7 = i >> 6;
    for (j = *(this + 7); ; ++j)
    {
      v9 = *j;
      if (*j)
      {
        break;
      }

      v6 -= 64;
      if (!--v7)
      {
        return;
      }
    }

    v10 = __clz(__rbit64(v9));
    v11 = v10 - v6;
    if (v10 - v6 >= v3)
    {
      break;
    }

    if ((v9 & (1 << v10)) != 0)
    {
      *j = v9 & ~(1 << v10);
    }

    v13 = v2[1];
    v12 = v2[2];
    if (v13 >= v12)
    {
      v15 = *v2;
      v16 = v13 - *v2;
      v17 = v16 >> 3;
      v18 = (v16 >> 3) + 1;
      if (v18 >> 61)
      {
        sub_4050();
      }

      v19 = v12 - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFF8;
      v21 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        sub_65004(v2, v21);
      }

      *(8 * v17) = v11;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      v22 = *v2;
      *v2 = 0;
      v2[1] = v14;
      v2[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = v11;
      v14 = (v13 + 8);
    }

    v38 = v2;
    v2[1] = v14;
    v23 = (*this + 24 * v11);
    v24 = *v23 + 63;
    if (v24 >= 0x40)
    {
      v25 = 0;
      v26 = v24 >> 6;
      do
      {
        v27 = *(v23[1] + 8 * v25);
        v43 = 0;
        v44 = 0;
        v45 = 0;
        __p = 0;
        v41 = 0;
        v42 = 0;
        if (v27)
        {
          v28 = 0;
          do
          {
            v29 = __clz(__rbit64(v27));
            v30 = v29 + v28;
            v31 = v29 + v28 + (v25 << 6);
            v32 = *this + 24 * v31;
            v33 = *(v32 + 16) - 1;
            *(v32 + 16) = v33;
            if (!v33)
            {
              v34 = v31 >> 6;
              v35 = *(this + 7);
              v36 = *(v35 + 8 * v34);
              if ((v36 & (1 << v30)) == 0)
              {
                *(v35 + 8 * v34) = v36 | (1 << v30);
              }
            }

            v39 = v29 + 1;
            sub_171E54(&v43, &v39);
            v37 = v27 >> v29;
            v27 = v37 >> 1;
            v39 = v37 >> 1;
            sub_171E54(&__p, &v39);
            v28 = v30 + 1;
          }

          while (v37 >= 2);
          if (__p)
          {
            v41 = __p;
            operator delete(__p);
          }

          if (v43)
          {
            v44 = v43;
            operator delete(v43);
          }
        }

        ++v25;
      }

      while (v25 != v26);
    }

    v3 = *(this + 6);
    i = v3 + 63;
  }
}

void sub_171DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_171DFC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_171E54(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_4050();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_65004(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_172544(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1725B4(id a1)
{
  v4[0] = @"accepts-drop";
  v4[1] = @"allow-group-blending";
  v4[2] = @"allow-hanging-punctuation";
  v4[3] = @"allow-shrink-to-fit";
  v4[4] = @"anchor-offset";
  v4[5] = @"anchor-position";
  v4[6] = @"ax-button";
  v4[7] = @"ax-default";
  v4[8] = @"ax-disabled";
  v4[9] = @"ax-enable";
  v4[10] = @"ax-heading";
  v4[11] = @"ax-hint";
  v4[12] = @"ax-identifier";
  v4[13] = @"ax-image";
  v4[14] = @"ax-label";
  v4[15] = @"ax-toggle";
  v4[16] = @"ax-touch-container";
  v4[17] = @"ax-value";
  v4[18] = @"background-color";
  v4[19] = @"behavior";
  v4[20] = @"binding";
  v4[21] = @"blend-mode";
  v4[22] = @"border-color";
  v4[23] = @"border-width";
  v4[24] = @"bottom";
  v4[25] = @"button-role";
  v4[26] = @"calculation-mode";
  v4[27] = @"cancel-text";
  v4[28] = @"chart-type";
  v4[29] = @"clips-to-bounds";
  v4[30] = @"color";
  v4[31] = @"columns";
  v4[32] = @"continuous-corners";
  v4[33] = @"corner-radius";
  v4[34] = @"crossfades-contents";
  v4[35] = @"curve";
  v4[36] = @"deceleration-rate";
  v4[37] = @"delay";
  v4[38] = @"direction";
  v4[39] = @"duration";
  v4[40] = @"dynamic-unique-id";
  v4[41] = @"enable-background-for-highlight-preview";
  v4[42] = @"enable-shadow-for-highlight-preview";
  v4[43] = @"enabled";
  v4[44] = @"end-color";
  v4[45] = @"end-position";
  v4[46] = @"estimated-height";
  v4[47] = @"estimated-height-above-pivot";
  v4[48] = @"estimated-width";
  v4[49] = @"fallback-color";
  v4[50] = @"fetch-delta";
  v4[51] = @"fetch-initial";
  v4[52] = @"fetch-padding";
  v4[53] = @"fetch-window";
  v4[54] = @"fill-mode";
  v4[55] = @"filter";
  v4[56] = @"font";
  v4[57] = @"halign";
  v4[58] = @"hcompressed";
  v4[59] = @"h";
  v4[60] = @"hflip-for-rtl";
  v4[61] = @"hide-ellipses";
  v4[62] = @"hspacing";
  v4[63] = @"html-tags";
  v4[64] = @"impression-data";
  v4[65] = @"insets";
  v4[66] = @"instance";
  v4[67] = @"ih";
  v4[68] = @"iw";
  v4[69] = @"kind";
  v4[70] = @"layer-contents-gravity";
  v4[71] = @"layout-direction";
  v4[72] = @"layout-mode";
  v4[73] = @"leading";
  v4[74] = @"line-balancing";
  v4[75] = @"live-transform";
  v4[76] = @"mask-color";
  v4[77] = @"max-lines";
  v4[78] = @"max-scale";
  v4[79] = @"min-lines";
  v4[80] = @"min-scale";
  v4[81] = @"n";
  v4[82] = @"name";
  v4[83] = @"menu-is-primary";
  v4[84] = @"item-type";
  v4[85] = @"observe-trigger";
  v4[86] = @"observe-trigger-delay";
  v4[87] = @"observe-trigger-value";
  v4[88] = @"on";
  v4[89] = @"opacity";
  v4[90] = @"param";
  v4[91] = @"parameters";
  v4[92] = @"play-state";
  v4[93] = @"prefers-no-platter";
  v4[94] = @"pressed-scale";
  v4[95] = @"progress";
  v4[96] = @"progress-id";
  v4[97] = @"mode";
  v4[98] = @"paused";
  v4[99] = @"rasterize";
  v4[100] = @"rating";
  v4[101] = @"ref-id";
  v4[102] = @"ref-instance";
  v4[103] = @"render-model";
  v4[104] = @"render-outsets";
  v4[105] = @"render-transform";
  v4[106] = @"resource-instance";
  v4[107] = @"resource-kind";
  v4[108] = @"resource-load";
  v4[109] = @"resource-options";
  v4[110] = @"return-key-type";
  v4[111] = @"role";
  v4[112] = @"run-list";
  v4[113] = @"scale";
  v4[114] = @"select-index";
  v4[115] = @"shadow-color";
  v4[116] = @"shadow-offset";
  v4[117] = @"shadow-opacity";
  v4[118] = @"shadow-radius";
  v4[119] = @"should-hyphenate";
  v4[120] = @"show-cancel-button";
  v4[121] = @"spacing";
  v4[122] = @"start-at-end";
  v4[123] = @"start-color";
  v4[124] = @"start-position";
  v4[125] = @"startTime";
  v4[126] = @"style";
  v4[127] = @"text";
  v4[128] = @"text-alignment";
  v4[129] = @"timing";
  v4[130] = @"tint";
  v4[131] = @"title";
  v4[132] = @"top";
  v4[133] = @"touch-outsets";
  v4[134] = @"trailing";
  v4[135] = @"transform";
  v4[136] = @"trigger";
  v4[137] = @"trigger-offset";
  v4[138] = @"v";
  v4[139] = @"valign";
  v4[140] = @"vcompressed";
  v4[141] = @"vpivot";
  v4[142] = @"vspacing";
  v4[143] = @"w";
  v4[144] = @"z-index";
  v1 = [NSArray arrayWithObjects:v4 count:145];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6838;
  qword_2E6838 = v2;
}

void sub_172F40(id a1)
{
  v4[0] = @"ax-adjustable";
  v4[1] = @"ax-button";
  v4[2] = @"ax-disabled";
  v4[3] = @"ax-enable";
  v4[4] = @"ax-heading";
  v4[5] = @"ax-hint";
  v4[6] = @"ax-identifier";
  v4[7] = @"ax-image";
  v4[8] = @"ax-label";
  v4[9] = @"ax-toggle";
  v4[10] = @"ax-touch-container";
  v4[11] = @"ax-value";
  v1 = [NSArray arrayWithObjects:v4 count:12];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6848;
  qword_2E6848 = v2;
}

void sub_173138(uint64_t a1)
{
  v1 = [*(a1 + 32) globallySupportedAttributes];
  v5[0] = @"anchor-position";
  v5[1] = @"allow-group-blending";
  v5[2] = @"allow-hanging-punctuation";
  v5[3] = @"allow-shrink-to-fit";
  v5[4] = @"background-color";
  v5[5] = @"border-color";
  v5[6] = @"border-width";
  v5[7] = @"bottom";
  v5[8] = @"clips-to-bounds";
  v5[9] = @"color";
  v5[10] = @"columns";
  v5[11] = @"continuous-corners";
  v5[12] = @"corner-radius";
  v5[13] = @"direction";
  v5[14] = @"enabled";
  v5[15] = @"end-color";
  v5[16] = @"fallback-color";
  v5[17] = @"fetch-delta";
  v5[18] = @"fetch-initial";
  v5[19] = @"fetch-padding";
  v5[20] = @"fetch-window";
  v5[21] = @"filter";
  v5[22] = @"font";
  v5[23] = @"halign";
  v5[24] = @"h";
  v5[25] = @"hflip-for-rtl";
  v5[26] = @"hide-ellipses";
  v5[27] = @"hspacing";
  v5[28] = @"html-tags";
  v5[29] = @"insets";
  v5[30] = @"ih";
  v5[31] = @"iw";
  v5[32] = @"chart-type";
  v5[33] = @"layout-direction";
  v5[34] = @"layout-mode";
  v5[35] = @"leading";
  v5[36] = @"line-balancing";
  v5[37] = @"live-transform";
  v5[38] = @"mask-color";
  v5[39] = @"max-lines";
  v5[40] = @"max-scale";
  v5[41] = @"min-lines";
  v5[42] = @"min-scale";
  v5[43] = @"pressed-scale";
  v5[44] = @"rasterize";
  v5[45] = @"rating";
  v5[46] = @"ref-id";
  v5[47] = @"ref-instance";
  v5[48] = @"render-model";
  v5[49] = @"render-outsets";
  v5[50] = @"role";
  v5[51] = @"shadow-color";
  v5[52] = @"shadow-offset";
  v5[53] = @"shadow-opacity";
  v5[54] = @"shadow-radius";
  v5[55] = @"spacing";
  v5[56] = @"start-color";
  v5[57] = @"text-alignment";
  v5[58] = @"top";
  v5[59] = @"touch-outsets";
  v5[60] = @"trailing";
  v5[61] = @"valign";
  v5[62] = @"vspacing";
  v5[63] = @"w";
  v5[64] = @"z-index";
  v2 = [NSArray arrayWithObjects:v5 count:65];
  v3 = [v1 setByAddingAttributesFromArray:v2];
  v4 = qword_2E6858;
  qword_2E6858 = v3;
}

void sub_173638(uint64_t a1)
{
  v1 = [*(a1 + 32) globallySupportedAttributes];
  v5[0] = @"color";
  v5[1] = @"font";
  v5[2] = @"layout-direction";
  v5[3] = @"live-transform";
  v5[4] = @"ref-id";
  v5[5] = @"ref-instance";
  v2 = [NSArray arrayWithObjects:v5 count:6];
  v3 = [v1 setByAddingAttributesFromArray:v2];
  v4 = qword_2E6868;
  qword_2E6868 = v3;
}

void sub_1737FC(uint64_t a1)
{
  v1 = [*(a1 + 32) globallySupportedAttributes];
  v5[0] = @"anchor-offset";
  v5[1] = @"anchor-position";
  v5[2] = @"bottom";
  v5[3] = @"h";
  v5[4] = @"impression-data";
  v5[5] = @"layout-direction";
  v5[6] = @"leading";
  v5[7] = @"live-transform";
  v5[8] = @"ref-id";
  v5[9] = @"ref-instance";
  v5[10] = @"render-model";
  v5[11] = @"render-outsets";
  v5[12] = @"render-transform";
  v5[13] = @"role";
  v5[14] = @"top";
  v5[15] = @"trailing";
  v5[16] = @"transform";
  v5[17] = @"w";
  v5[18] = @"z-index";
  v2 = [NSArray arrayWithObjects:v5 count:19];
  v3 = [v1 setByAddingAttributesFromArray:v2];
  v4 = qword_2E6878;
  qword_2E6878 = v3;
}

void sub_173A78(uint64_t a1)
{
  v1 = [*(a1 + 32) globallySupportedAttributes];
  v5[0] = @"anchor-offset";
  v5[1] = @"anchor-position";
  v5[2] = @"bottom";
  v5[3] = @"h";
  v5[4] = @"impression-data";
  v5[5] = @"ih";
  v5[6] = @"iw";
  v5[7] = @"layout-direction";
  v5[8] = @"leading";
  v5[9] = @"live-transform";
  v5[10] = @"ref-id";
  v5[11] = @"ref-instance";
  v5[12] = @"render-model";
  v5[13] = @"render-outsets";
  v5[14] = @"render-transform";
  v5[15] = @"role";
  v5[16] = @"top";
  v5[17] = @"trailing";
  v5[18] = @"transform";
  v5[19] = @"w";
  v5[20] = @"z-index";
  v2 = [NSArray arrayWithObjects:v5 count:21];
  v3 = [v1 setByAddingAttributesFromArray:v2];
  v4 = qword_2E6888;
  qword_2E6888 = v3;
}

uint64_t sub_173EE4(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

id TUI::Package::Location::Entry::description(TUI::Package::Location::Entry *this, const TUI::Package::Buffer *a2)
{
  v4 = TUI::Package::Location::Entry::pathURL(this, a2);
  v5 = [v4 lastPathComponent];
  v6 = TUI::Package::Location::Entry::xpathString(this, a2);
  v7 = [NSString stringWithFormat:@"%@ %@", v5, v6];

  return v7;
}

id TUI::Package::Location::Entry::pathURL(unsigned __int16 *a1, void *a2)
{
  v2 = *a1;
  if (a2[14] > v2 && (v4 = a2[13]) != 0)
  {
    v5 = [NSString stringWithUTF8String:v4 + *(a2[15] + 4 * v2)];
    v6 = [NSURL URLWithString:v5 relativeToURL:*a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id TUI::Package::Location::Entry::xpathString(uint64_t a1, void *a2)
{
  v4 = *(a1 + 4);
  if (a2[11] > v4 && (v5 = a2[10]) != 0)
  {
    v6 = [NSString stringWithUTF8String:v5 + *(a2[12] + 4 * v4), v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double TUI::Package::Decoder::Decoder(TUI::Package::Decoder *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 12) = 1065353216;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 12) = 1065353216;
  return result;
}

uint64_t TUI::Package::Decoder::Decoder(uint64_t this, char *a2, unint64_t a3)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = 0u;
  v3 = (this + 16);
  *(this + 32) = 0u;
  *(this + 48) = 1065353216;
  if (a3 >= 0x10)
  {
    v4 = a3;
    v5 = 16;
    v28 = (this + 16);
    v29 = this;
    do
    {
      v6 = *&a2[v5 - 16];
      v33 = v6;
      v8 = *&a2[v5 - 8];
      v7 = *&a2[v5 - 4];
      if (!v8)
      {
        goto LABEL_7;
      }

      if (v4 >= v8)
      {
        v4 = *&a2[v5 - 8];
      }

      if (*(this + 8) >= (v7 + v8))
      {
        v9 = *this + v8;
      }

      else
      {
LABEL_7:
        v9 = 0;
      }

      v10 = *&a2[v5 - 12];
      v11 = sub_176C64(v3, &v33);
      v12 = v11;
      if (v11)
      {
        v13 = v11[4];
        v14 = v11[5];
        if (v13 >= v14)
        {
          v18 = v11[3];
          v19 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v18) >> 3);
          v20 = v19 + 1;
          if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_4050();
          }

          v21 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v18) >> 3);
          if (2 * v21 > v20)
          {
            v20 = 2 * v21;
          }

          if (v21 >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            sub_176D18((v11 + 3), v22);
          }

          v23 = 24 * v19;
          *v23 = v6;
          *(v23 + 4) = v10;
          *(v23 + 8) = v8;
          *(v23 + 12) = v7;
          *(v23 + 16) = v9;
          v15 = 24 * v19 + 24;
          v24 = v11[3];
          v25 = v11[4] - v24;
          v26 = v23 - v25;
          memcpy((v23 - v25), v24, v25);
          v27 = v12[3];
          v12[3] = v26;
          v12[4] = v15;
          v12[5] = 0;
          if (v27)
          {
            operator delete(v27);
          }

          v3 = v28;
        }

        else
        {
          *v13 = v6;
          *(v13 + 4) = v10;
          *(v13 + 8) = v8;
          *(v13 + 12) = v7;
          v15 = v13 + 24;
          *(v13 + 16) = v9;
        }

        v12[4] = v15;
      }

      else
      {
        v35[0] = v6;
        v35[1] = v10;
        v35[2] = v8;
        v35[3] = v7;
        v36 = v9;
        v32 = 0;
        v31 = 0uLL;
        sub_176FC8(&v31, v35, &v37, 1uLL);
        v34 = &v33;
        v16 = sub_176D70(v3, &v33);
        v17 = v16[3];
        if (v17)
        {
          v16[4] = v17;
          operator delete(v17);
          v16[3] = 0;
          v16[4] = 0;
          v16[5] = 0;
        }

        *(v16 + 3) = v31;
        v16[5] = v32;
      }

      v5 += 16;
      this = v29;
    }

    while (v5 <= v4);
  }

  return this;
}

uint64_t *TUI::Package::Decoder::sectionWithTag@<X0>(TUI::Package::Decoder *this@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = bswap32(a2);
  result = sub_176C64(this + 2, &v9);
  if (result)
  {
    v7 = result[3];
    v8 = result[4];
    while (v7 != v8)
    {
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      if (*(a4 + 4) == a3)
      {
        return result;
      }

      v7 += 24;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void TUI::Package::Decoder::swap(TUI::Package::Decoder *this, TUI::Package::Decoder *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  *a2 = v2;
  *(a2 + 1) = v3;
  sub_28FD0(this + 16, a2 + 16);
}

BOOL TUI::Package::SymbolsSection::decodeIntoSymtab(TUI::Package::SymbolsSection *this, const TUI::Package::Section *a2, int a3, TUI::Symbol::Tab *a4)
{
  if (*(a2 + 3) < 4u || *(a2 + 1) != a3)
  {
    return 0;
  }

  v8 = *this;
  v9 = 2 * v8 + 4;
  TUI::Symbol::Tab::beginSymbolLoading(a4);
  if (v8)
  {
    v10 = 4;
    v11 = v8;
    v21 = v8;
    do
    {
      v12 = *(a2 + 3);
      if (v10 >= v12 || v12 <= v9)
      {
        break;
      }

      v14 = memchr(this + v9, 0, v12 - v9);
      if (!v14)
      {
        break;
      }

      v15 = *(this + v10);
      if (v8 <= v15)
      {
        break;
      }

      v16 = v14;
      v17 = strlen(this + v9);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_6768();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      v23 = v17;
      if (v17)
      {
        memmove(&__dst, this + v9, v17);
      }

      *(&__dst + v18) = 0;
      Symbol = TUI::Symbol::Tab::loadSymbol(a4, v15, &__dst);
      LODWORD(v8) = v21;
      if (v23 < 0)
      {
        operator delete(__dst);
      }

      if ((Symbol & 1) == 0)
      {
        break;
      }

      v10 += 2;
      v9 = v16 + 1 - this;
      --v11;
    }

    while (v11);
  }

  return v9 == *(a2 + 3) && TUI::Symbol::Tab::endSymbolLoading(a4);
}

void sub_1759E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TUI::Package::NamespacesSection::decodeIntoSymtab(TUI::Package::NamespacesSection *this, const TUI::Package::Section *a2, int a3, TUI::Symbol::Tab *a4)
{
  v4 = a4;
  TUI::Symbol::Tab::beginNSLoading(a4);
  v8 = *(a2 + 3);
  if (v8 < 4 || *(a2 + 1) != a3)
  {
    return 0;
  }

  v10 = *this;
  if (v10)
  {
    v11 = 0;
    v37 = this + 4;
    v38 = this + 2;
    v12 = 4;
    v35 = a2;
    v36 = v4;
    v33 = *this;
    v34 = this;
    while (1)
    {
      v13 = v12 + 4;
      v14 = *(a2 + 3);
      if (v12 + 4 > v14)
      {
        break;
      }

      v15 = *(this + v12);
      if (v10 <= v15)
      {
        break;
      }

      v16 = *&v38[v12];
      if (v13 + 2 * v16 <= v14)
      {
        __src = 0;
        v40 = 0;
        v41 = 0;
        if (v16)
        {
          v17 = 0;
          v18 = -4 - v12;
          v19 = &v37[v12];
          do
          {
            v20 = *v19;
            if (v17 >= v41)
            {
              v21 = __src;
              v22 = v17 - __src;
              v23 = (v17 - __src) >> 1;
              if (v23 <= -2)
              {
                sub_4050();
              }

              if (v41 - __src <= v23 + 1)
              {
                v24 = v23 + 1;
              }

              else
              {
                v24 = v41 - __src;
              }

              if (v41 - __src >= 0x7FFFFFFFFFFFFFFELL)
              {
                v25 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v24;
              }

              if (v25)
              {
                sub_6780(&__src, v25);
              }

              v26 = (v17 - __src) >> 1;
              v27 = (2 * v23);
              v28 = (2 * v23 - 2 * v26);
              *v27 = v20;
              v17 = (v27 + 1);
              memcpy(v28, v21, v22);
              v29 = __src;
              __src = v28;
              v40 = v17;
              v41 = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            else
            {
              *v17 = v20;
              v17 += 2;
            }

            v40 = v17;
            v18 -= 2;
            v19 += 2;
            --v16;
          }

          while (v16);
          v13 = -v18;
          a2 = v35;
          v4 = v36;
          v10 = v33;
          this = v34;
        }

        NS = TUI::Symbol::Tab::loadNS(v4, v15, &__src);
        if (__src)
        {
          v40 = __src;
          operator delete(__src);
        }

        v31 = ++v11 == v10 ? 0 : NS;
        v12 = v13;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_37;
    }

    v13 = v12;
LABEL_37:
    v8 = *(a2 + 3);
  }

  else
  {
    v13 = 4;
  }

  if (v13 == v8)
  {
    return TUI::Symbol::Tab::endNSLoading(v4);
  }

  else
  {
    return 0;
  }
}

void sub_175C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TUI::Package::Section::decodeStrings@<X0>(uint64_t this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(this + 16);
  if (v3)
  {
    if (*(this + 4) == a2)
    {
      *a3 = v3;
      a3[1] = *v3;
      a3[2] = v3 + 1;
    }
  }

  return this;
}

StringsSection *TUI::Package::Buffer::Buffer(StringsSection *this, NSURL *a2, const TUI::Package::Decoder *a3)
{
  v5 = a2;
  this->base = v5;
  bzero(&this->count, 0x208uLL);
  TUI::Package::Decoder::sectionWithTag(a3, 0x696E7362u, 2, &v73);
  if (v74 && DWORD1(v73) == 2)
  {
    v6 = HIDWORD(v73) >> 1;
    this->count = v74;
    this->offsets = v6;
    v7 = 2;
    v8 = 2;
  }

  else
  {
    this->count = 0;
    this->offsets = 0;
    TUI::Package::Decoder::sectionWithTag(a3, 0x696E7362u, 0, &v73);
    v8 = 0;
    v9 = v74;
    v10 = HIDWORD(v73) >> 1;
    if (v74 == 0 || DWORD1(v73) != 0)
    {
      v9 = 0;
      v10 = 0;
    }

    this->count = v9;
    this->offsets = v10;
    v7 = 1;
  }

  TUI::Package::Decoder::sectionWithTag(a3, 0x666C7462u, v8, &v73);
  v11 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v12 = HIDWORD(v73) >> 2;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  this[1].base = v11;
  this[1].count = v12;
  TUI::Package::Decoder::sectionWithTag(a3, 0x696E7462u, v8, &v73);
  v13 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v14 = HIDWORD(v73) >> 2;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  this[1].offsets = v13;
  this[2].base = v14;
  TUI::Package::Decoder::sectionWithTag(a3, 0x73747262u, v8, &v73);
  v15 = 0;
  if (v74)
  {
    v16 = 0;
    v17 = 0;
    if (DWORD1(v73) == v8)
    {
      v17 = (v74 + 4);
      v16 = *v74;
      v15 = v74;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  this[2].count = v15;
  this[2].offsets = v16;
  this[3].base = v17;
  TUI::Package::Decoder::sectionWithTag(a3, 0x78707462u, v8, &v73);
  v18 = 0;
  if (v74)
  {
    v19 = 0;
    v20 = 0;
    if (DWORD1(v73) == v8)
    {
      v20 = (v74 + 4);
      v19 = *v74;
      v18 = v74;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  this[3].count = v18;
  this[3].offsets = v19;
  this[4].base = v20;
  TUI::Package::Decoder::sectionWithTag(a3, 0x70746862u, v8, &v73);
  v21 = 0;
  if (v74)
  {
    v22 = 0;
    v23 = 0;
    if (DWORD1(v73) == v8)
    {
      v23 = (v74 + 4);
      v22 = *v74;
      v21 = v74;
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  this[4].count = v21;
  this[4].offsets = v22;
  this[5].base = v23;
  TUI::Package::Decoder::sectionWithTag(a3, 0x6C6F6362u, v7, &v73);
  v24 = v74;
  if (v74 != 0 && DWORD1(v73) == v7)
  {
    v25 = HIDWORD(v73) >> 3;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  this[5].count = v24;
  this[5].offsets = v25;
  TUI::Package::Decoder::sectionWithTag(a3, 0x72656662u, v8, &v73);
  v26 = 0;
  if (v74)
  {
    v27 = 0;
    if (DWORD1(v73) == v8)
    {
      v27 = HIDWORD(v73) / 0xCuLL;
      v26 = v74;
    }
  }

  else
  {
    v27 = 0;
  }

  this[6].base = v26;
  this[6].count = v27;
  TUI::Package::Decoder::sectionWithTag(a3, 0x61726762u, v8, &v73);
  v28 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v29 = HIDWORD(v73) >> 3;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  this[6].offsets = v28;
  this[7].base = v29;
  TUI::Package::Decoder::sectionWithTag(a3, 0x64656662u, v8, &v73);
  v30 = 0;
  if (v74)
  {
    v31 = 0;
    if (DWORD1(v73) == v8)
    {
      v31 = HIDWORD(v73) / 0xCuLL;
      v30 = v74;
    }
  }

  else
  {
    v31 = 0;
  }

  this[7].count = v30;
  this[7].offsets = v31;
  TUI::Package::Decoder::sectionWithTag(a3, 0x70726D62u, v8, &v73);
  v32 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v33 = HIDWORD(v73) >> 3;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  this[8].base = v32;
  this[8].count = v33;
  TUI::Package::Decoder::sectionWithTag(a3, 0x656C6D62u, v7, &v73);
  v34 = 0;
  if (v74)
  {
    v35 = 0;
    if (DWORD1(v73) == v7)
    {
      v35 = HIDWORD(v73) / 0x1CuLL;
      v34 = v74;
    }
  }

  else
  {
    v35 = 0;
  }

  this[8].offsets = v34;
  this[9].base = v35;
  TUI::Package::Decoder::sectionWithTag(a3, 0x61747662u, v8, &v73);
  v36 = 0;
  if (v74)
  {
    v37 = 0;
    if (DWORD1(v73) == v8)
    {
      v37 = HIDWORD(v73) / 0xCuLL;
      v36 = v74;
    }
  }

  else
  {
    v37 = 0;
  }

  this[9].count = v36;
  this[9].offsets = v37;
  TUI::Package::Decoder::sectionWithTag(a3, 0x61746962u, v8, &v73);
  v38 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v39 = HIDWORD(v73) >> 3;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  this[10].base = v38;
  this[10].count = v39;
  TUI::Package::Decoder::sectionWithTag(a3, 0x656E756Du, v8, &v73);
  v40 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v41 = HIDWORD(v73) >> 4;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  this[10].offsets = v40;
  this[11].base = v41;
  TUI::Package::Decoder::sectionWithTag(a3, 0x61746E62u, v8, &v73);
  v42 = 0;
  if (v74)
  {
    v43 = 0;
    v44 = 0;
    if (DWORD1(v73) == v8)
    {
      v44 = (v74 + 4);
      v43 = *v74;
      v42 = v74;
    }
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  this[19].base = v42;
  this[19].count = v43;
  this[19].offsets = v44;
  TUI::Package::Decoder::sectionWithTag(a3, 0x656C6E62u, v8, &v73);
  v45 = 0;
  if (v74)
  {
    v46 = 0;
    v47 = 0;
    if (DWORD1(v73) == v8)
    {
      v47 = (v74 + 4);
      v46 = *v74;
      v45 = v74;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  this[18].base = v45;
  this[18].count = v46;
  this[18].offsets = v47;
  TUI::Package::Decoder::sectionWithTag(a3, 0x726F6F74u, v8, &v73);
  v48 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v49 = HIDWORD(v73) >> 3;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  this[11].count = v48;
  this[11].offsets = v49;
  TUI::Package::Decoder::sectionWithTag(a3, 0x636D7062u, v8, &v73);
  v50 = 0;
  if (v74)
  {
    v51 = 0;
    if (DWORD1(v73) == v8)
    {
      v51 = HIDWORD(v73) / 0x2CuLL;
      v50 = v74;
    }
  }

  else
  {
    v51 = 0;
  }

  this[12].base = v50;
  this[12].count = v51;
  TUI::Package::Decoder::sectionWithTag(a3, 0x6E746962u, v8, &v73);
  v52 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v53 = HIDWORD(v73) >> 3;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  this[12].offsets = v52;
  this[13].base = v53;
  TUI::Package::Decoder::sectionWithTag(a3, 0x6D746864u, v8, &v73);
  v54 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v55 = HIDWORD(v73) >> 4;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  this[13].count = v54;
  this[13].offsets = v55;
  TUI::Package::Decoder::sectionWithTag(a3, 0x6E616D62u, v8, &v73);
  v56 = v74;
  if (v74 != 0 && DWORD1(v73) == v8)
  {
    v57 = HIDWORD(v73) >> 2;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  this[14].base = v56;
  this[14].count = v57;
  TUI::Package::Decoder::sectionWithTag(a3, 0x676C6262u, 3, &v73);
  v58 = 0;
  if (v74)
  {
    v59 = 0;
    if (DWORD1(v73) == 3)
    {
      v59 = HIDWORD(v73) / 0xCuLL;
      v58 = v74;
    }
  }

  else
  {
    v59 = 0;
  }

  this[14].offsets = v58;
  this[15].base = v59;
  TUI::Package::Decoder::sectionWithTag(a3, 0x676C626Fu, 3, &v73);
  v60 = 0;
  if (v74 && DWORD1(v73) == 3)
  {
    v61 = 0;
    if (HIDWORD(v73) == 8)
    {
      v60 = *v74;
      v61 = *(v74 + 4);
    }
  }

  else
  {
    v61 = 0;
  }

  this[16].offsets = v60;
  this[17].base = v61;
  TUI::Package::Decoder::sectionWithTag(a3, 0x676C6272u, v8, &v73);
  v62 = 0;
  if (v74 && DWORD1(v73) == v8)
  {
    v63 = 0;
    if (HIDWORD(v73) == 8)
    {
      v62 = *v74;
      v63 = *(v74 + 4);
    }
  }

  else
  {
    v63 = 0;
  }

  this[16].base = v62;
  this[16].count = v63;
  TUI::Package::Decoder::sectionWithTag(a3, 0x636D7072u, v8, &v73);
  v64 = 0;
  if (v74 && DWORD1(v73) == v8)
  {
    v65 = 0;
    if (HIDWORD(v73) == 8)
    {
      v64 = *v74;
      v65 = *(v74 + 4);
    }
  }

  else
  {
    v65 = 0;
  }

  this[17].count = v64;
  this[17].offsets = v65;
  TUI::Package::Decoder::sectionWithTag(a3, 0x636C7369u, v8, &v73);
  v66 = 0;
  if (v74)
  {
    v67 = 0;
    if (DWORD1(v73) == v8)
    {
      v67 = HIDWORD(v73) / 0x1CuLL;
      v66 = v74;
    }
  }

  else
  {
    v67 = 0;
  }

  this[15].count = v66;
  this[15].offsets = v67;
  TUI::Package::Attribute::NameMapper::NameMapper(&v73, this + 19);
  v68 = v74;
  v69 = *&this[20].base;
  v70 = *&this[20].offsets;
  *&this[20].base = v73;
  *&this[20].offsets = v68;
  v73 = v69;
  v74 = v70;
  v71 = *&this[21].count;
  *&this[21].count = v75;
  v75 = v71;
  TUI::Package::Attribute::NameMapper::~NameMapper(&v73);

  return this;
}

void sub_1765C8(_Unwind_Exception *a1)
{
  TUI::Package::Attribute::NameMapper::~NameMapper((v1 + 60));

  _Unwind_Resume(a1);
}

double TUI::Package::Attribute::NameMapper::NameMapper(TUI::Package::Attribute::NameMapper *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void TUI::Package::Buffer::~Buffer(id *this)
{
  TUI::Package::Attribute::NameMapper::~NameMapper((this + 60));
}

{
  TUI::Package::Attribute::NameMapper::~NameMapper((this + 60));
}

unint64_t TUI::Package::Buffer::findAttribute(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = a1[63];
  v4 = 0xFFFFLL;
  if (a2 >= ((a1[64] - v3) >> 1) || ((v5 = *(v3 + 2 * a2), v5 != 0xFFFF) ? (v6 = (a3 & 0xFFFF00000000) == 0) : (v6 = 1), v6))
  {
    v7 = 0;
  }

  else
  {
    v9 = a3;
    v10 = a3 + WORD2(a3);
    if (a3 >= v10)
    {
      v7 = 0;
      v4 = 0xFFFFLL;
    }

    else
    {
      v4 = 0xFFFFLL;
      while (1)
      {
        if (a1[31] <= (v9 + v10) >> 1 || (v11 = (v9 + v10) >> 1, (v12 = (a1[30] + 8 * v11)) == 0))
        {
LABEL_21:
          v7 = 0;
          return v4 | v7;
        }

        v13 = *v12;
        if (v13 == v5)
        {
          break;
        }

        if (v13 < v5)
        {
          v14 = v11 + 1;
        }

        else
        {
          v14 = v9;
        }

        if (v5 >= v13)
        {
          v9 = v14;
        }

        else
        {
          v10 = (v9 + v10) >> 1;
        }

        if (v9 >= v10)
        {
          goto LABEL_21;
        }
      }

      v15 = a1[60];
      if (v5 >= (a1[61] - v15) >> 1)
      {
        v4 = 0xFFFFLL;
      }

      else
      {
        v4 = *(v15 + 2 * v5);
      }

      v7 = v12[1] << 16;
    }
  }

  return v4 | v7;
}

uint64_t TUI::Package::Buffer::globalsWithName(uint64_t a1, int a2)
{
  v2 = *(a1 + 384);
  v3 = *(a1 + 392) + v2 - 1;
  if (v3 < v2)
  {
    return 0;
  }

  HIDWORD(v5) = a2;
  LODWORD(v5) = a2;
  v4 = v5 >> 16;
  while (1)
  {
    v6 = (v3 + v2) / 2;
    v7 = (*(a1 + 304) + 8 * v6);
    HIDWORD(v9) = *v7;
    LODWORD(v9) = *v7;
    v8 = v9 >> 16;
    if (v4 >= v8)
    {
      break;
    }

    v3 = v6 - 1;
LABEL_7:
    if (v2 > v3)
    {
      return 0;
    }
  }

  if (v4 > v8)
  {
    v2 = v6 + 1;
    goto LABEL_7;
  }

  v10 = v7[1];
  if (*(a1 + 360) > v10)
  {
    return *(a1 + 352) + 12 * v10;
  }

  return 0;
}

uint64_t TUI::Package::Buffer::componentWithName(uint64_t a1, int a2)
{
  v2 = *(a1 + 416);
  v3 = *(a1 + 424) + v2 - 1;
  if (v3 < v2)
  {
    return 0;
  }

  HIDWORD(v5) = a2;
  LODWORD(v5) = a2;
  v4 = v5 >> 16;
  while (1)
  {
    v6 = (v3 + v2) / 2;
    v7 = (*(a1 + 304) + 8 * v6);
    HIDWORD(v9) = *v7;
    LODWORD(v9) = *v7;
    v8 = v9 >> 16;
    if (v4 >= v8)
    {
      break;
    }

    v3 = v6 - 1;
LABEL_7:
    if (v2 > v3)
    {
      return 0;
    }
  }

  if (v4 > v8)
  {
    v2 = v6 + 1;
    goto LABEL_7;
  }

  v10 = v7[1];
  if (*(a1 + 296) > v10)
  {
    return *(a1 + 288) + 44 * v10;
  }

  return 0;
}

uint64_t TUI::Package::Buffer::nameForComponent(void *a1, uint64_t a2)
{
  result = TUINameNil;
  v4 = a1[37];
  if (v4)
  {
    v4 = a1[36];
  }

  v5 = (a2 - v4) / 0x2CuLL;
  if (v5 < a1[53])
  {
    v6 = a1[52] + v5;
    if (a1[39] > v6)
    {
      v7 = (a1[38] + 8 * v6);
      if (v7)
      {
        return *v7;
      }
    }
  }

  return result;
}

uint64_t TUI::Package::Buffer::renderMethodForComponent(void *a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 28);
  v4 = v3 + *(a2 + 4) - 1;
  if (v4 < v3)
  {
    return 0;
  }

  HIDWORD(v6) = a3;
  LODWORD(v6) = a3;
  v5 = v6 >> 16;
  while (1)
  {
    v7 = (v4 + v3) / 2;
    v8 = (a1[38] + 8 * v7);
    HIDWORD(v10) = *v8;
    LODWORD(v10) = *v8;
    v9 = v10 >> 16;
    if (v5 >= v9)
    {
      break;
    }

    v4 = v7 - 1;
LABEL_8:
    if (v3 > v4)
    {
      return 0;
    }
  }

  if (v5 > v9)
  {
    v3 = v7 + 1;
    goto LABEL_8;
  }

  v11 = v8[1];
  if (a1[41] > v11)
  {
    return a1[40] + 16 * v11;
  }

  return 0;
}

uint64_t TUI::Package::Buffer::renderBodyForComponent(uint64_t a1, uint64_t a2)
{
  if (a2 && (v2 = *(a2 + 24), *(a1 + 328) > v2))
  {
    return *(a1 + 320) + 16 * v2;
  }

  else
  {
    return 0;
  }
}

uint64_t TUI::Package::Buffer::findName(uint64_t a1, int a2, unint64_t *a3)
{
  v3 = a3[1] + *a3;
  if (*a3 >= v3)
  {
    return -1;
  }

  HIDWORD(v5) = a2;
  LODWORD(v5) = a2;
  v4 = v5 >> 16;
  v6 = *a3;
  while (1)
  {
    v7 = (v6 + v3) >> 1;
    if (*(*(a1 + 336) + 4 * v7) == a2)
    {
      break;
    }

    HIDWORD(v8) = *(*(a1 + 336) + 4 * v7);
    LODWORD(v8) = HIDWORD(v8);
    if (v4 >= (v8 >> 16))
    {
      v6 = v7 + 1;
    }

    else
    {
      v3 = (v6 + v3) >> 1;
    }

    if (v6 >= v3)
    {
      return -1;
    }
  }

  return v7 - *a3;
}

TUI::Package::Attribute::NameMapper *TUI::Package::Attribute::NameMapper::NameMapper(TUI::Package::Attribute::NameMapper *this, const StringsSection *a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  count = a2->count;
  v21 = -1;
  sub_EC934(this + 3, count, &v21);
  if (a2->count)
  {
    v5 = 0;
    do
    {
      if (a2->base)
      {
        v6 = [[NSString alloc] initWithUTF8String:&a2->base[a2->offsets[v5]]];
        v7 = [TUIAttributeRegistry lookupAttributeWithName:v6];
      }

      else
      {
        v7 = 0xFFFF;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8)
      {
        v11 = *this;
        v12 = v9 - *this;
        v13 = v12 >> 1;
        if (v12 >> 1 <= -2)
        {
          sub_4050();
        }

        v14 = v8 - v11;
        if (v14 <= v13 + 1)
        {
          v15 = v13 + 1;
        }

        else
        {
          v15 = v14;
        }

        v16 = v14 >= 0x7FFFFFFFFFFFFFFELL;
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v16)
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_6780(this, v17);
        }

        *(2 * v13) = v7;
        v10 = 2 * v13 + 2;
        memcpy(0, v11, v12);
        v18 = *this;
        *this = 0;
        *(this + 1) = v10;
        *(this + 2) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v9 = v7;
        v10 = (v9 + 1);
      }

      *(this + 1) = v10;
      v19 = a2->count;
      if (v7 != 0xFFFF && v19 > v7)
      {
        *(*(this + 3) + 2 * v7) = v5;
      }

      ++v5;
    }

    while (v5 < v19);
  }

  return this;
}

void sub_176BE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void TUI::Package::Attribute::NameMapper::~NameMapper(TUI::Package::Attribute::NameMapper *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t *sub_176C64(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_176D18(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t *sub_176D70(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_176FC8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_177048(result, a4);
  }

  return result;
}

void sub_17702C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_177048(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_176D18(a1, a2);
  }

  sub_4050();
}

void sub_1777D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_177844(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_2E6898 = [v1 BOOLForKey:@"TUIDisableKeepNonVolatileImagesOnBackground"] ^ 1;
}

void sub_177C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TUIImageLayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_1781D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[4])
  {
    return [result updateContentAllowCrossfade:1];
  }

  return result;
}

void sub_178A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TUIImageBoxLayout;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_178E04(_Unwind_Exception *a1)
{
  v8 = v4;

  _Unwind_Resume(a1);
}

void sub_17CD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_17CD90(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) addObject:{@", "}];
  }

  v3 = *(a1 + 32);
  v4 = [v5 description];
  [v3 addObject:v4];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void *TUIAnimationCollectionViewAnimationForView(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a4;
  v17 = [v13 indexPath];
  v34 = v11;
  v18 = [v11 viewModelForIndexPath:v17];
  v19 = [v18 identifier];
  v35 = v14;
  v20 = v15;
  LOBYTE(v15) = [v16 containsObject:v19];

  v21 = v12;
  if (v15)
  {
    v22 = @"appearing";
  }

  else if ([v20 containsObject:v19])
  {
    v22 = @"disappearing";
  }

  else if ([v35 containsObject:v19])
  {
    v22 = @"update";
  }

  else
  {
    v22 = @"default";
  }

  v23 = v13;

  v24 = v22;
  v25 = [v18 animationRenderModels];
  v26 = [v25 groupPhases];
  v27 = [v26 objectForKeyedSubscript:@"default"];

  v28 = [v27 phaseRenderModels];
  v29 = [v28 objectForKeyedSubscript:v24];

  if ([v29 count])
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_17DD68;
    v36[3] = &unk_2636E8;
    v37 = v29;
    v30 = v34;
    v38 = v34;
    v39 = v21;
    v40 = v23;
    v41 = v17;
    v31 = objc_retainBlock(v36);
  }

  else
  {
    v31 = 0;
    v30 = v34;
  }

  v32 = objc_retainBlock(v31);

  return v32;
}

void sub_17DD68(id *a1, void *a2)
{
  v49 = a2;
  v3 = dispatch_group_create();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v73 objects:v92 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v74;
    v50 = v78;
    v51 = v86;
    v53 = a1;
    v54 = v3;
    v52 = *v74;
    do
    {
      v7 = 0;
      v55 = v5;
      do
      {
        if (*v74 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v73 + 1) + 8 * v7);
        v9 = [v8 models];
        if ([v9 count])
        {
          UIAnimationDragCoefficient();
          v11 = v10;
          dispatch_group_enter(v3);
          [v8 duration];
          v13 = v12 * v11;
          [v8 delay];
          v15 = v14 * v11;
          v16 = [v8 options];
          v68[0] = _NSConcreteStackBlock;
          v68[1] = 3221225472;
          v68[2] = sub_17E37C;
          v68[3] = &unk_25EB18;
          v69 = v9;
          v70 = a1[5];
          v71 = a1[8];
          v72 = a1[6];
          v66[0] = _NSConcreteStackBlock;
          v66[1] = 3221225472;
          v66[2] = sub_17E5E4;
          v66[3] = &unk_2636C0;
          v67 = v3;
          [UIView animateKeyframesWithDuration:v16 | 0xE20 delay:v68 options:v66 animations:v13 completion:v15];

          goto LABEL_18;
        }

        v17 = v8;
        v18 = [v17 from];
        if (v18 || ([v17 to], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          v45 = [v17 models];
          v46 = [v45 count];

          if (v46)
          {
            TUIReusableSubviewApplyLayoutAttributes(a1[6], a1[7]);
            goto LABEL_18;
          }
        }

        v63 = v9;
        v19 = a1[6];
        v20 = a1[7];
        v21 = a1[5];
        v59 = v19;
        v22 = v20;
        v23 = v17;
        v61 = v3;
        v24 = [v22 indexPath];
        v25 = [v23 from];
        v62 = v23;
        v26 = [v23 to];
        v27 = [v25 keyPaths];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = [v26 keyPaths];
        }

        v30 = v29;

        v31 = [v26 keyPaths];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = [v25 keyPaths];
        }

        v34 = v33;

        v85[0] = _NSConcreteStackBlock;
        v85[1] = 3221225472;
        v86[0] = sub_17FAC8;
        v86[1] = &unk_2637B0;
        v87 = v25;
        v35 = v21;
        v88 = v35;
        v36 = v24;
        v89 = v36;
        v37 = v59;
        v90 = v37;
        v91 = v30;
        v60 = v25;
        v58 = v30;
        v38 = objc_retainBlock(v85);
        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v78[0] = sub_17FBF8;
        v78[1] = &unk_2637D8;
        v79 = v26;
        v80 = v35;
        v81 = v36;
        v82 = v22;
        v83 = v37;
        v84 = v34;
        v57 = v26;
        v39 = v35;
        v40 = v36;
        v41 = v22;
        v42 = v37;
        v43 = v34;
        v44 = objc_retainBlock(v77);
        sub_17FCB4(v39, v62, v61, v38, v44);

        a1 = v53;
        v3 = v54;
        v5 = v55;
        v6 = v52;
        v9 = v63;
LABEL_18:

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v47 = [obj countByEnumeratingWithState:&v73 objects:v92 count:16];
      v5 = v47;
    }

    while (v47);
  }

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_17E5EC;
  v64[3] = &unk_25DE58;
  v65 = v49;
  v48 = v49;
  TUIDispatchGroupNotifyViaRunloopIfMain(v3, &_dispatch_main_q, v64);
}

void sub_17E37C(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v7 = objc_opt_class();
        v8 = [v6 renderModel];
        v9 = TUIDynamicCast(v7, v8);

        v10 = [*(a1 + 40) layoutAttributesForViewModel:v9 atIndexPath:*(a1 + 48) withLiveTransformResolver:0];
        [v6 stepStartTime];
        v12 = v11;
        [v6 stepDuration];
        v14 = v13;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_17E588;
        v17[3] = &unk_25E7C0;
        v18 = *(a1 + 56);
        v19 = v10;
        v20 = v6;
        v15 = v10;
        [UIView addKeyframeWithRelativeStartTime:v17 relativeDuration:v12 animations:v14];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }
}

void sub_17E588(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) keyPaths];
  TUIReusableRenderViewApplyLayoutAttributesWithKeyNames(v1, v2, v3);
}

uint64_t sub_17E5EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

const __CFString *TUIAnimationAnimationPhaseForSectionView(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = [a2 renderModel];
  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  v15 = fabs(CGRectGetHeight(v23));
  [v6 frame];
  v16 = fabs(CGRectGetHeight(v24));
  v17 = @"update";
  v18 = @"default";
  v19 = @"appearing";
  if ((a3 & 8) != 0)
  {
    v19 = @"default";
  }

  if (v16 >= 2.22044605e-16)
  {
    v20 = (a3 & 0x10) == 0;
  }

  else
  {
    v17 = v19;
    v20 = 0;
  }

  if (v20)
  {
    v18 = @"disappearing";
  }

  if (v15 < 2.22044605e-16)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  return v21;
}

void *_TUIAnimationForSectionViewInPhase(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 isEqualToString:@"appearing"])
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_17EAB4;
    v41[3] = &unk_25DCA0;
    v8 = &v42;
    v9 = v6;
    v42 = v9;
    v10 = &v43;
    v43 = v5;
    v11 = objc_retainBlock(v41);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_17EBA0;
    v39[3] = &unk_25DE30;
    v40 = v9;
    v12 = objc_retainBlock(v39);

LABEL_3:
    v13 = 0;
    goto LABEL_6;
  }

  if (![v7 isEqualToString:@"disappearing"])
  {
    if (![v7 isEqualToString:@"update"])
    {
      v13 = 0;
      v12 = 0;
      v11 = 0;
      goto LABEL_11;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_17ECC0;
    v27[3] = &unk_25DCA0;
    v8 = &v28;
    v28 = v6;
    v10 = &v29;
    v29 = v5;
    v12 = objc_retainBlock(v27);
    v11 = 0;
    goto LABEL_3;
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_17EBAC;
  v36[3] = &unk_25DCA0;
  v8 = &v37;
  v14 = v6;
  v37 = v14;
  v10 = &v38;
  v15 = v5;
  v38 = v15;
  v12 = objc_retainBlock(v36);
  [v15 frame];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_17EC2C;
  v30[3] = &unk_263710;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v31 = v14;
  v13 = objc_retainBlock(v30);

  v11 = 0;
LABEL_6:

  if (v12)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_17ED04;
    v23[3] = &unk_263760;
    v11 = v11;
    v24 = v11;
    v12 = v12;
    v25 = v12;
    v13 = v13;
    v26 = v13;
    v20 = objc_retainBlock(v23);

    goto LABEL_12;
  }

LABEL_11:
  v20 = 0;
LABEL_12:
  v21 = objc_retainBlock(v20);

  return v21;
}

void sub_17EAB4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_17EB5C;
  v2[3] = &unk_25DCA0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  [UIView performWithoutAnimation:v2];
}

id sub_17EB5C(uint64_t a1)
{
  TUISectionViewApplyRenderModelSection(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

id sub_17EBAC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 transform];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v3 = [*(a1 + 32) layer];
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  [v3 setAffineTransform:v5];

  return [*(a1 + 32) setAlpha:0.0];
}

void sub_17EC2C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) renderModel];
    [v3 frame];
    v15.origin.x = v4;
    v15.origin.y = v5;
    v15.size.width = v6;
    v15.size.height = v7;
    v8 = CGRectEqualToRect(*(a1 + 40), v15);

    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 32);

      [v13 setFrame:{v9, v10, v11, v12}];
    }
  }
}

void sub_17ECC0(uint64_t a1)
{
  [*(a1 + 40) frame];
  [*(a1 + 32) setFrame:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  TUISectionViewApplyRenderModelSection(v2, v3);
}

void sub_17ED04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_17EE64;
  v12[3] = &unk_263738;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13 = v4;
  v14 = v7;
  v8 = v4;
  [UIView animateWithDuration:0 delay:v6 options:v12 animations:0.0 completion:0.0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_17EEAC;
  v10[3] = &unk_25DE58;
  v11 = v3;
  v9 = v3;
  TUIDispatchGroupNotifyViaRunloopIfMain(v8, &_dispatch_main_q, v10);
}

void sub_17EE64(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t sub_17EEAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void *TUIAnimationCollectionViewAnimationForSectionView(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 renderModel];
  v8 = v7;
  if (v7 == v5)
  {
  }

  else
  {
    v9 = +[TUIFeedView areFeedUpdatesAnimated];

    if (v9)
    {
      v10 = TUIAnimationAnimationPhaseForSectionView(v5, v6, a3);
      v11 = [v5 animationRenderModels];
      v12 = [v11 groupPhases];
      v13 = [v12 objectForKeyedSubscript:@"default"];

      v14 = [v13 phaseRenderModels];
      v15 = [v14 objectForKeyedSubscript:v10];

      if ([v15 count])
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_17F0B4;
        v19[3] = &unk_263788;
        v20 = v10;
        v21 = v6;
        v22 = v5;
        v23 = v15;
        v16 = objc_retainBlock(v19);
      }

      else
      {
        v16 = _TUIAnimationForSectionViewInPhase(v5, v6, v10);
      }

      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_9:
  v17 = objc_retainBlock(v16);

  return v17;
}

void sub_17F0B4(id *a1, void *a2)
{
  v51 = a2;
  v3 = dispatch_group_create();
  if ([a1[4] isEqualToString:@"appearing"])
  {
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_17F768;
    v76[3] = &unk_25DCA0;
    v77 = a1[5];
    v78 = a1[6];
    [UIView performWithoutAnimation:v76];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = a1[7];
  v4 = [obj countByEnumeratingWithState:&v72 objects:v89 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v73;
    v52 = v80;
    v53 = v85;
    v55 = a1;
    v56 = v3;
    v54 = *v73;
    do
    {
      v7 = 0;
      v57 = v5;
      do
      {
        if (*v73 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v72 + 1) + 8 * v7);
        v9 = [v8 models];
        if ([v9 count])
        {
          UIAnimationDragCoefficient();
          v11 = v10;
          dispatch_group_enter(v3);
          [v8 duration];
          v13 = v12 * v11;
          [v8 delay];
          v15 = v14 * v11;
          v16 = [v8 options];
          v69[0] = _NSConcreteStackBlock;
          v69[1] = 3221225472;
          v69[2] = sub_17F858;
          v69[3] = &unk_25DCA0;
          v70 = v9;
          v71 = a1[5];
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_17FAA4;
          v67[3] = &unk_2636C0;
          v68 = v3;
          [UIView animateKeyframesWithDuration:v16 | 0xE20 delay:v69 options:v67 animations:v13 completion:v15];

          goto LABEL_20;
        }

        v17 = v8;
        v18 = [v17 from];
        if (v18 || ([v17 to], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          v43 = [v17 models];
          v44 = [v43 count];

          if (v44)
          {
            v45 = [v17 to];
            v46 = [v45 renderModel];
            v47 = a1[5];
            v48 = [v45 keyPaths];
            sub_17F774(v46, v47, v48);

            goto LABEL_20;
          }
        }

        v19 = a1[6];
        v60 = a1[5];
        v20 = v17;
        v64 = v3;
        v63 = v19;
        v21 = [v20 from];
        v22 = [v20 to];
        v23 = [v21 keyPaths];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = [v22 keyPaths];
        }

        v26 = v25;

        v27 = [v22 keyPaths];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = [v21 keyPaths];
        }

        v30 = v29;

        v31 = objc_opt_class();
        [v21 renderModel];
        v32 = v62 = v21;
        v33 = TUIDynamicCast(v31, v32);

        v34 = objc_opt_class();
        v35 = [v22 renderModel];
        v36 = TUIDynamicCast(v34, v35);

        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v85[0] = sub_17FEF8;
        v85[1] = &unk_25E7C0;
        v86 = v33;
        v37 = v60;
        v87 = v37;
        v88 = v26;
        v61 = v33;
        v59 = v26;
        v38 = objc_retainBlock(v84);
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v80[0] = sub_17FFCC;
        v80[1] = &unk_25E7C0;
        v81 = v36;
        v82 = v37;
        v83 = v30;
        v39 = v36;
        v40 = v37;
        v41 = v30;
        v42 = objc_retainBlock(v79);
        sub_17FCB4(v63, v20, v64, v38, v42);

        a1 = v55;
        v3 = v56;
        v6 = v54;
        v5 = v57;
LABEL_20:

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v49 = [obj countByEnumeratingWithState:&v72 objects:v89 count:16];
      v5 = v49;
    }

    while (v49);
  }

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_17FAAC;
  v65[3] = &unk_25DE58;
  v66 = v51;
  v50 = v51;
  TUIDispatchGroupNotifyViaRunloopIfMain(v3, &_dispatch_main_q, v65);
}

void sub_17F774(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    [v5 alpha];
    [v6 setAlpha:?];
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if ([v7 containsObject:@"alpha"])
  {
    [v5 alpha];
    [v6 setAlpha:?];
  }

  if ([v8 containsObject:@"transform"])
  {
    if (v5)
    {
LABEL_6:
      [v5 transform];
LABEL_9:
      v9[0] = v10;
      v9[1] = v11;
      v9[2] = v12;
      [v6 setTransform:v9];
      goto LABEL_10;
    }

LABEL_8:
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

LABEL_10:
}

void sub_17F858(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        v7 = objc_opt_class();
        v8 = [v6 renderModel];
        v9 = TUIDynamicCast(v7, v8);

        [v6 stepStartTime];
        v11 = v10;
        [v6 stepDuration];
        v13 = v12;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_17FA48;
        v16[3] = &unk_25E7C0;
        v17 = v9;
        v18 = *(a1 + 40);
        v19 = v6;
        v14 = v9;
        [UIView addKeyframeWithRelativeStartTime:v16 relativeDuration:v11 animations:v13];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }
}

void sub_17FA48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) keyPaths];
  sub_17F774(v1, v2, v3);
}

uint64_t sub_17FAAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_17FAC8(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) renderModel];
  v4 = TUIDynamicCast(v2, v3);

  if (v4)
  {
    v5 = [*(a1 + 40) layoutAttributesForViewModel:v4 atIndexPath:*(a1 + 48) withLiveTransformResolver:0];
    if (v5)
    {
      v6 = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_17FBE8;
      v8[3] = &unk_25E7C0;
      v9 = *(a1 + 56);
      v10 = v6;
      v11 = *(a1 + 64);
      v7 = v6;
      [UIView performWithoutAnimation:v8];
    }
  }
}

void sub_17FBF8(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) renderModel];
  v5 = TUIDynamicCast(v2, v3);

  if (!v5 || ([*(a1 + 40) layoutAttributesForViewModel:v5 atIndexPath:*(a1 + 48) withLiveTransformResolver:0], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = *(a1 + 56);
  }

  TUIReusableRenderViewApplyLayoutAttributesWithKeyNames(*(a1 + 64), v4, *(a1 + 72));
}

void sub_17FCB4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    dispatch_group_enter(v11);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_17FEE8;
  v32[3] = &unk_2636C0;
  v14 = v11;
  v33 = v14;
  v15 = objc_retainBlock(v32);
  v31 = 0.0;
  v29 = 0u;
  v30 = 0u;
  if (v10)
  {
    [v10 timing];
  }

  v16 = [v10 options];
  UIAnimationDragCoefficient();
  v18 = v17;
  if (v12)
  {
    v12[2](v12);
  }

  v19 = v18;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v29, TUISpringTimingParametersZero), vceqq_f64(v30, unk_24CEC0)))) & 1) != 0 && v31 == 0.0)
  {
    [v10 duration];
    v21 = v20 * v19;
    [v10 delay];
    [UIView animateWithDuration:v16 | 0x260 delay:v13 options:v15 animations:v21 completion:v22 * v19];
  }

  else
  {
    v27[0] = v29;
    v27[1] = v30;
    v28 = v31;
    v23 = TUISpringTimingCalculateDampingRatio(v27);
    [v10 duration];
    v25 = v24 * v19;
    [v10 delay];
    [UIView animateWithDuration:v16 | 0x260 delay:v13 usingSpringWithDamping:v15 initialSpringVelocity:v25 options:v26 * v19 animations:v23 completion:v30.f64[1]];
  }
}

void sub_17FEE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void sub_17FEF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_17FFBC;
    v3[3] = &unk_25E7C0;
    v4 = v1;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    [UIView performWithoutAnimation:v3];
  }
}

void TUISectionViewApplyRenderModelSection(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v6 = [v3 layer];
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  [v6 setAffineTransform:v10];

  if (v5)
  {
    [v5 config];
    v7 = v9;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [v3 layer];
  [v8 setZPosition:v7];

  [v5 frame];
  [v3 setFrame:?];
  [v5 alpha];
  [v3 setAlpha:?];
}

void TUIReusableSubviewApplyLayoutAttributes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v4 center];
  [v3 setCenter:?];
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  [v4 size];
  v10 = v9;
  v12 = v11;
  v13 = [v3 shouldResetBoundsOriginWhenApplyingLayoutAttributes];
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (!v13)
  {
    y = v8;
    x = v6;
  }

  [v3 setBounds:{x, y, v10, v12}];
  [v4 alpha];
  [v3 setAlpha:?];
  v16 = [v4 zIndex];
  v17 = [v3 layer];
  [v17 setZPosition:v16];

  if (v4)
  {
    [v4 transform];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
  }

  v18 = [v3 layer];
  v19[0] = v20;
  v19[1] = v21;
  v19[2] = v22;
  [v18 setAffineTransform:v19];

  [v3 setLayoutAttributes:v4];
  [v3 applyLayoutAttributes:v4];
}

void TUIReusableRenderViewApplyLayoutAttributes(void *a1, void *a2)
{
  v3 = a2;
  v6 = a1;
  v4 = [v3 zIndex];
  v5 = [v6 layer];
  [v5 setZPosition:v4];

  [v6 setLayoutAttributes:v3];
}

void TUIReusableRenderViewApplyLayoutAttributesWithKeyNames(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    if ([v7 containsObject:@"center"])
    {
      [v6 center];
      [v5 setCenter:?];
    }

    if (([v8 containsObject:@"bounds"] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [v6 center];
    [v5 setCenter:?];
  }

  [v5 bounds];
  v10 = v9;
  v12 = v11;
  [v6 size];
  v14 = v13;
  v16 = v15;
  v17 = [v5 shouldResetBoundsOriginWhenApplyingLayoutAttributes];
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (!v17)
  {
    y = v12;
    x = v10;
  }

  [v5 setBounds:{x, y, v14, v16}];
  if (!v8)
  {
    [v6 alpha];
    [v5 setAlpha:?];
    if (v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_10:
  if ([v8 containsObject:@"alpha"])
  {
    [v6 alpha];
    [v5 setAlpha:?];
  }

  if ([v8 containsObject:@"transform"])
  {
    if (v6)
    {
LABEL_14:
      [v6 transform];
LABEL_17:
      v20 = [v5 layer];
      v21[0] = v22;
      v21[1] = v23;
      v21[2] = v24;
      [v20 setAffineTransform:v21];

      goto LABEL_18;
    }

LABEL_16:
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    goto LABEL_17;
  }

LABEL_18:
  [v5 applyLayoutAttributes:v6];
}

id TUIPlatformAncestorOfClass(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [v3 superview];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v5 = v3;
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

id TUIPlatformAncestorOfClassAndProtocol(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = v4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    while ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 conformsToProtocol:v5])
    {
      v9 = [v8 superview];

      v8 = v9;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v10 = v8;
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

uint64_t TUISwooshUseUnboundedScroll()
{
  if (qword_2E68B0 != -1)
  {
    sub_19C060();
  }

  return byte_2E68A8;
}

void sub_180CFC(id a1)
{
  if (_UISolariumEnabled())
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    byte_2E68A8 = [v1 BOOLForKey:@"TUIForceBoundedScroll"] ^ 1;
  }

  else
  {
    byte_2E68A8 = 0;
  }
}

void TUIPlatformRenderInContext(CGContext *a1, void *a2)
{
  v3 = a2;
  UIGraphicsPushContext(a1);
  if (v3)
  {
    v3[2]();
  }

  UIGraphicsPopContext();
}

id sub_181130(uint64_t a1)
{
  v1 = [*(a1 + 32) newUIMenuElement];

  return v1;
}

id sub_181344(uint64_t a1)
{
  v1 = [*(a1 + 32) newUIMenuElement];

  return v1;
}

BOOL sub_1818CC(id a1, id a2)
{
  v2 = [a2 _accessibilityViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_182560(uint64_t a1, CGContextRef c)
{
  CGContextScaleCTM(c, 1.0, -1.0);
  CGContextTranslateCTM(c, 0.0, -*(a1 + 56));
  CGContextSaveGState(c);
  CGContextClipToMask(c, *(a1 + 64), [*(a1 + 32) CGImage]);
  CGContextSetBlendMode(c, kCGBlendModeMultiply);
  CGContextSetFillColorWithColor(c, [*(a1 + 40) CGColor]);
  CGContextFillRect(c, *(a1 + 64));

  CGContextRestoreGState(c);
}

uint64_t sub_182618(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_183C78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 removeInterest];
  [v4 removeObserver:*(a1 + 32)];
}

void sub_185630(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 removeInterest];
  [v4 removeObserver:*(a1 + 32)];
}

void sub_18572C(uint64_t a1)
{
  v2 = [*(a1 + 32) renderModel];
  v3 = [v2 imageModelIDToResource];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1858B4;
  v13[3] = &unk_25DDC0;
  v14 = *(a1 + 40);
  v4 = [v3 keysOfEntriesPassingTest:v13];
  v5 = [v4 allObjects];

  if ([v5 count])
  {
    v6 = [*(a1 + 32) renderModel];
    v7 = [v6 imageModelIDToResource];
    v8 = [v7 objectsForKeys:v5 notFoundMarker:*(a1 + 40)];

    v9 = [NSDictionary dictionaryWithObjects:v8 forKeys:v5];
    v10 = [*(a1 + 32) control];
    v11 = [v10 tui_menu];
    [v11 loadImagesFromResourceMap:v9];

    v12 = [*(a1 + 32) control];
    [v12 menuDataDidUpdate];
  }
}

id sub_186044(uint64_t a1)
{
  [*(a1 + 32) updateFromState];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

id sub_186170(uint64_t a1)
{
  [*(a1 + 32) updateFromState];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void sub_186330(uint64_t a1)
{
  v2 = [*(a1 + 32) feedControllerHost];
  v3 = [v2 contextMenuConfigurationProvider];
  v4 = *(*(a1 + 32) + 152);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1863FC;
  v5[3] = &unk_263930;
  v6 = *(a1 + 40);
  [v3 menuElementsWithData:v4 completion:v5];
}

void sub_1863FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_186494;
  v6[3] = &unk_263820;
  v7 = v3;
  v5 = v3;
  [v4 updateVisibleMenuWithBlock:v6];
}

id sub_186494(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TUIControlView menuWithChildren:*(a1 + 32)];
  v5 = [[NSMutableArray alloc] initWithObjects:{v4, 0}];
  if ([v5 count])
  {
    while (1)
    {
      v6 = objc_opt_class();
      v7 = [v5 firstObject];
      v8 = TUIDynamicCast(v6, v7);

      [v5 removeObjectAtIndex:0];
      v9 = [v8 identifier];
      v10 = [v3 identifier];
      v11 = [v9 isEqual:v10];

      if (v11)
      {
        break;
      }

      if (v8)
      {
        v12 = [v8 children];
        v13 = [v12 count];

        if (v13)
        {
          v14 = [v8 children];
          [v5 addObjectsFromArray:v14];
        }
      }

      if (![v5 count])
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v8 = v3;
  }

  return v8;
}

void sub_186B90(id a1)
{
  v3[0] = &off_275518;
  v3[1] = &off_275548;
  v4[0] = &off_275530;
  v4[1] = &off_275560;
  v3[2] = &off_275578;
  v3[3] = &off_275590;
  v4[2] = &off_275560;
  v4[3] = &off_2755A8;
  v3[4] = &off_2755C0;
  v3[5] = &off_2755F0;
  v4[4] = &off_2755D8;
  v4[5] = &off_275608;
  v3[6] = &off_275620;
  v4[6] = &off_275638;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
  v2 = qword_2E68B8;
  qword_2E68B8 = v1;
}

void sub_186D24(id a1)
{
  v3[0] = &off_275518;
  v3[1] = &off_275548;
  v4[0] = &off_275530;
  v4[1] = &off_275560;
  v3[2] = &off_275590;
  v3[3] = &off_2755C0;
  v4[2] = &off_275650;
  v4[3] = &off_275668;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_2E68C8;
  qword_2E68C8 = v1;
}

void sub_186E68(id a1)
{
  v3[0] = @"default";
  v3[1] = @"highlighted";
  v4[0] = &off_275518;
  v4[1] = &off_275548;
  v3[2] = @"disabled";
  v4[2] = &off_275590;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_2E68D8;
  qword_2E68D8 = v1;
}

void sub_186FC0(id a1)
{
  v3[0] = &off_275518;
  v3[1] = &off_275548;
  v4[0] = &off_275530;
  v4[1] = &off_275560;
  v3[2] = &off_275590;
  v4[2] = &off_275650;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_2E68E8;
  qword_2E68E8 = v1;
}

void sub_18723C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_18725C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock((*(a1 + 32) + 144));
    v5 = WeakRetained[19];
    WeakRetained[19] = 0;

    os_unfair_lock_unlock((*(a1 + 32) + 144));
    v6 = [WeakRetained renderModel];
    v7 = [v6 actionHandler];
    v8 = objc_loadWeakRetained((a1 + 40));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1873E8;
    v9[3] = &unk_263A00;
    v9[4] = *(a1 + 32);
    v9[5] = WeakRetained;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = v3;
    [v7 invoke:@"context-menu" view:v8 point:v9 completion:{*(a1 + 48), *(a1 + 56)}];

    objc_destroyWeak(&v11);
  }

  else
  {
    (*(v3 + 2))(v3, &__NSArray0__struct);
  }
}

void sub_1873E8(uint64_t a1, void *a2)
{
  v4 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 144));
  objc_storeStrong((*(a1 + 40) + 152), a2);
  os_unfair_lock_unlock((*(a1 + 32) + 144));
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_18758C;
  v10 = &unk_2639D8;
  objc_copyWeak(&v13, (a1 + 56));
  v5 = v4;
  v11 = v5;
  v12 = *(a1 + 48);
  v6 = &v7;
  if ([NSThread isMainThread:v7])
  {
    v9(v6);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_187888;
    block[3] = &unk_25DE58;
    v15 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_destroyWeak(&v13);
}

void sub_18758C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained feedControllerHost];
  v3 = [v2 contextMenuConfigurationProvider];
  v4 = [v3 menuElementsWithData:*(a1 + 32)];
  v5 = v4;
  v6 = &__NSArray0__struct;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  (*(*(a1 + 40) + 16))();
}

id sub_187648(uint64_t a1)
{
  v4 = *(a1 + 32);
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIControlView menuWithChildren:v1];

  return v2;
}

void sub_187898(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

NSString *TUILengthDescription(uint64_t a1, unint64_t a2)
{
  v2 = HIWORD(a2) & 7;
  v3 = @"I";
  if (v2 != 1 && v2 != 4)
  {
    v3 = &stru_264550;
  }

  if ((a2 & 0x6000000000000) == 0x2000000000000)
  {
    v5 = @"a";
  }

  else
  {
    v5 = &stru_264550;
  }

  if ((v2 - 5) >= 2)
  {
    v6 = &stru_264550;
  }

  else
  {
    v6 = @"i";
  }

  return [NSString stringWithFormat:@"<TUILength v=%f min=%f max=%f prio=%d %@%@%@>", *&a1, *(&a1 + 1), *&a2, ((a2 >> 16) >> 16), v3, v5, v6];
}

uint64_t TUILengthWithDelta(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *&a1 + a3;
  v6 = v5;
  v7 = *(&a1 + 1) + a3;
  v8 = v7;
  if (v6 <= -3.40282347e38)
  {
    v9 = -3.4028e38;
  }

  else
  {
    v9 = v6;
    if (v6 >= 3.40282347e38)
    {
      v9 = 3.4028e38;
    }
  }

  v14[1] = v3;
  v14[2] = v4;
  *&v13 = v9;
  if (v8 <= -3.40282347e38)
  {
    v11 = -8388609;
LABEL_11:
    v10 = *&v11;
    goto LABEL_12;
  }

  if (v8 >= 3.40282347e38)
  {
    v11 = 2139095039;
    goto LABEL_11;
  }

  v10 = v8;
LABEL_12:
  *(&v13 + 1) = v10;
  HIDWORD(v14[0]) = WORD2(a2);
  bzero(v14 + 6, 2uLL);
  return v13;
}

unint64_t TUILengthCombine(float *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    v10 = vneg_f32(0x3F0000003FLL);
    v8 = NAN;
  }

  else
  {
    v2 = &a1[4 * a2];
    v3 = NAN;
    v4 = NAN;
    v5 = NAN;
    do
    {
      v6 = fmaxf(v5, *a1);
      v5 = v6;
      v4 = fmaxf(v4, a1[1]);
      v7 = fminf(v3, a1[2]);
      v3 = v7;
      a1 += 4;
    }

    while (a1 < v2);
    v10 = __PAIR64__(LODWORD(v4), LODWORD(v6));
    v8 = fmaxf(v7, v4);
  }

  v11 = LODWORD(v8);
  bzero(&v11 + 6, 2uLL);
  return v10;
}

uint64_t TUILengthSum(unint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    v3 = 0;
    LODWORD(v11) = 0;
LABEL_9:
    HIDWORD(v11) = 2143289344;
    goto LABEL_10;
  }

  v2 = 0;
  v3 = 0;
  v4 = a1 + 16 * a2;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 4);
    v2 |= 1u;
    v7 = fmax(v9, fmin(v8, *a1)) + v7;
    v6 = v9 + v6;
    v5 = v8 + v5;
    if (v3 <= *(a1 + 12))
    {
      v3 = *(a1 + 12);
    }

    a1 += 16;
  }

  while (a1 < v4);
  *&v11 = v7;
  if ((v2 & 1) == 0)
  {
    goto LABEL_9;
  }

  *(&v11 + 1) = v6;
LABEL_10:
  HIDWORD(v12) = v3;
  bzero(&v12 + 6, 2uLL);
  return v11;
}

unint64_t TUILengthCombineSpecifiedAndIntrinsic(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIDWORD(a1);
  if ((a4 >> 16) >> 16 > SWORD2(a2))
  {
    v5 = fmaxf(*(&a3 + 1), *(&a1 + 1));
    LODWORD(a1) = fmaxf(v5, fminf(fminf(v5, *&a2), *&a3));
    v4 = LODWORD(v5);
  }

  return a1 | (v4 << 32);
}

double TUILengthValueWithDefault(uint64_t a1, uint64_t a2, double a3)
{
  if ((a2 & 0x7000000000000uLL) > 0x2000000000000)
  {
    a3 = *&a1;
  }

  return fmax(fmin(a3, *&a2), *(&a1 + 1));
}

unint64_t TUILengthByScaling(uint64_t a1, uint64_t a2, double a3)
{
  if ((a2 & 0x7000000000000uLL) >= 0x2000000000001)
  {
    *&v3 = *&a1 * a3;
    v4 = v3;
  }

  else
  {
    v4 = a1;
  }

  *&v5 = *(&a1 + 1) * a3;
  return v4 | (v5 << 32);
}

uint64_t sub_188438(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 24) optimizeUpdatesForTransactionGroup:v3] && objc_msgSend(*(*(a1 + 32) + 24), "applyUpdatesForTransactionGroup:", v3))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1884FC;
    v6[3] = &unk_25EC30;
    v6[4] = *(a1 + 32);
    [v3 appendUpdateBlock:v6];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1884FC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) value];
  if ([v2 isObject])
  {
    v5 = *(a1 + 32);
    v3 = [NSArray arrayWithObjects:&v5 count:1];
    v4 = [v2 callWithArguments:v3];
  }
}

void sub_188698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1886B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_188E70(uint64_t a1)
{
  v2 = [*(a1 + 32) control];
  v3 = [*(a1 + 32) _textForControlUsingRenderModel:*(a1 + 40)];
  [v2 setText:v3];

  v4 = [*(a1 + 32) control];
  [v4 layoutIfNeeded];
}

void sub_189854(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"fetch-window";
  v6[1] = @"fetch-initial";
  v6[2] = @"fetch-delta";
  v6[3] = @"fetch-padding";
  v6[4] = @"dynamic-unique-id";
  v3 = [NSArray arrayWithObjects:v6 count:5];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E68F8;
  qword_2E68F8 = v4;
}

void sub_189AF0(id a1)
{
  v4[0] = @"select";
  v4[1] = @"dynamic-unique-id";
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6908;
  qword_2E6908 = v2;
}

void sub_18AFE0(id a1)
{
  v1 = qword_2E6918;
  qword_2E6918 = &off_275A58;
}

void sub_18B090(id a1)
{
  v1 = qword_2E6928;
  qword_2E6928 = &off_275A80;
}

void sub_18B140(id a1)
{
  v1 = qword_2E6938;
  qword_2E6938 = &off_275AA8;
}

void sub_18B1F0(id a1)
{
  v1 = qword_2E6948;
  qword_2E6948 = &off_275AD0;
}

void sub_18B2A0(id a1)
{
  v1 = qword_2E6958;
  qword_2E6958 = &off_275AF8;
}

void sub_18B350(id a1)
{
  v1 = qword_2E6968;
  qword_2E6968 = &off_275B20;
}

void sub_18B400(id a1)
{
  v1 = qword_2E6978;
  qword_2E6978 = &off_275B48;
}

void sub_18B4A0(id a1)
{
  v3[0] = @"plusL";
  v3[1] = @"plusD";
  v4[0] = kCAFilterPlusL;
  v4[1] = kCAFilterPlusD;
  v3[2] = @"subtractS";
  v3[3] = @"subtractD";
  v4[2] = kCAFilterSubtractS;
  v4[3] = kCAFilterSubtractD;
  v3[4] = @"multi";
  v3[5] = @"minimum";
  v4[4] = kCAFilterMultiply;
  v4[5] = kCAFilterMinimum;
  v3[6] = @"maximum";
  v3[7] = @"normal";
  v4[6] = kCAFilterMaximum;
  v4[7] = kCAFilterNormalBlendMode;
  v3[8] = @"multiply";
  v3[9] = @"screen";
  v4[8] = kCAFilterMultiplyBlendMode;
  v4[9] = kCAFilterScreenBlendMode;
  v3[10] = @"overlay";
  v3[11] = @"darken";
  v4[10] = kCAFilterOverlayBlendMode;
  v4[11] = kCAFilterDarkenBlendMode;
  v3[12] = @"lighten";
  v3[13] = @"colorDodge";
  v4[12] = kCAFilterLightenBlendMode;
  v4[13] = kCAFilterColorDodgeBlendMode;
  v3[14] = @"colorBurn";
  v3[15] = @"softLight";
  v4[14] = kCAFilterColorBurnBlendMode;
  v4[15] = kCAFilterSoftLightBlendMode;
  v3[16] = @"hardLight";
  v3[17] = @"difference";
  v4[16] = kCAFilterHardLightBlendMode;
  v4[17] = kCAFilterDifferenceBlendMode;
  v3[18] = @"exclusion";
  v3[19] = @"subtract";
  v4[18] = kCAFilterExclusionBlendMode;
  v4[19] = kCAFilterSubtractBlendMode;
  v3[20] = @"divide";
  v3[21] = @"linearBurn";
  v4[20] = kCAFilterDivideBlendMode;
  v4[21] = kCAFilterLinearBurnBlendMode;
  v3[22] = @"linearDodge";
  v3[23] = @"linearLight";
  v4[22] = kCAFilterLinearDodgeBlendMode;
  v4[23] = kCAFilterLinearLightBlendMode;
  v3[24] = @"pinLight";
  v3[25] = @"darkenSourceOver";
  v4[24] = kCAFilterPinLightBlendMode;
  v4[25] = kCAFilterDarkenSourceOver;
  v3[26] = @"lightenSourceOver";
  v3[27] = @"hue";
  v4[26] = kCAFilterLightenSourceOver;
  v4[27] = kCAFilterHueBlendMode;
  v3[28] = @"saturation";
  v3[29] = @"color";
  v4[28] = kCAFilterSaturationBlendMode;
  v4[29] = kCAFilterColorBlendMode;
  v3[30] = @"luminosity";
  v3[31] = @"gaussianBlur";
  v4[30] = kCAFilterLuminosityBlendMode;
  v4[31] = kCAFilterGaussianBlur;
  v3[32] = @"variableBlur";
  v4[32] = kCAFilterVariableBlur;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:33];
  v2 = qword_2E6988;
  qword_2E6988 = v1;
}

void sub_18B8D4(id a1)
{
  v1 = qword_2E6998;
  qword_2E6998 = &off_275B70;
}

void sub_18B984(id a1)
{
  v1 = qword_2E69A8;
  qword_2E69A8 = &off_275B98;
}

void sub_18BA3C(id a1)
{
  v1 = qword_2E69B8;
  qword_2E69B8 = &off_275BC0;
}

void sub_18BAEC(id a1)
{
  v1 = qword_2E69C8;
  qword_2E69C8 = &off_275BE8;
}

void sub_18BBC0(id a1)
{
  v3[0] = @"center";
  v3[1] = @"top";
  v4[0] = kCAGravityCenter;
  v4[1] = kCAGravityTop;
  v3[2] = @"bottom";
  v3[3] = @"left";
  v4[2] = kCAGravityBottom;
  v4[3] = kCAGravityLeft;
  v3[4] = @"right";
  v3[5] = @"top-left";
  v4[4] = kCAGravityRight;
  v4[5] = kCAGravityTopLeft;
  v3[6] = @"top-right";
  v3[7] = @"bottom-left";
  v4[6] = kCAGravityTopRight;
  v4[7] = kCAGravityBottomLeft;
  v3[8] = @"bottom-right";
  v3[9] = @"scale-to-fill";
  v4[8] = kCAGravityBottomRight;
  v4[9] = kCAGravityResize;
  v3[10] = @"scale-aspect-fit";
  v3[11] = @"scale-aspect-fill";
  v4[10] = kCAGravityResizeAspect;
  v4[11] = kCAGravityResizeAspectFill;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
  v2 = qword_2E69D8;
  qword_2E69D8 = v1;
}

void sub_18BDEC(id a1)
{
  v1 = qword_2E69E8;
  qword_2E69E8 = &off_275C10;
}

void sub_18BEC0(id a1)
{
  v3[0] = @"resize";
  v3[1] = @"resize-aspect";
  v4[0] = AVLayerVideoGravityResize;
  v4[1] = AVLayerVideoGravityResizeAspect;
  v3[2] = @"resize-aspect-fill";
  v4[2] = AVLayerVideoGravityResizeAspectFill;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_2E69F8;
  qword_2E69F8 = v1;
}

void sub_18C018(id a1)
{
  v1 = qword_2E6A08;
  qword_2E6A08 = &off_275C38;
}

void sub_18C0C8(id a1)
{
  v1 = qword_2E6A18;
  qword_2E6A18 = &off_275C60;
}

UIScrollViewDecelerationRate TUIBoxDecelerationRateFromString(void *a1)
{
  v1 = [a1 isEqualToString:@"fast"];
  v2 = &UIScrollViewDecelerationRateFast;
  if (!v1)
  {
    v2 = &UIScrollViewDecelerationRateNormal;
  }

  return *v2;
}

id TUIBoxChildrenWithProtocolAndRole(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = objc_opt_new();
  [v5 appendLayoutChildrenToArray:v7];
  v8 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_18C5F4;
  v14[3] = &unk_263CD8;
  v9 = v6;
  v15 = v9;
  v17 = a3;
  v10 = v8;
  v16 = v10;
  [v7 enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v10;

  return v10;
}

void sub_18C5F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((!*(a1 + 32) || [v3 conformsToProtocol:?]) && objc_msgSend(v3, "role") == *(a1 + 48))
  {
    [*(a1 + 40) addObject:v3];
  }
}

id TUIAncestorBoxFromModel(void *a1)
{
  v1 = a1;
  v2 = [v1 parentModel];

  if (v2)
  {
    do
    {
      if ([v2 modelKind] == &dword_0 + 1)
      {
        break;
      }

      v3 = [v2 parentModel];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

void sub_18C71C(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v1 URLForResource:@"TUIBox" withExtension:@"ppkg"];
  v6 = 0;
  v3 = [NSData dataWithContentsOfURL:v2 options:8 error:&v6];
  v4 = v6;
  v5 = qword_2E6A28;
  qword_2E6A28 = v3;
}

void sub_18DCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18DD1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained tableView];
  [v2 deselectRowAtIndexPath:*(a1 + 32) animated:0];

  v3 = [WeakRetained presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_18DF58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRelease();
    if (v2 == Strong)
    {
      goto LABEL_6;
    }
  }

  else if (!Strong)
  {
    return swift_unknownObjectRelease();
  }

  sub_18EED0();
LABEL_6:
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_18DFFC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18E058()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_18E0D0(Strong);
  return swift_unknownObjectRelease();
}

void sub_18E0D0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_unknownObjectRelease();
    if (v3 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  sub_18EED0();
}

void (*sub_18E144(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_factory;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18E1DC;
}

void sub_18E1DC(void **a1, char a2)
{
  v3 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      swift_unknownObjectRelease();
      if (Strong)
      {
        v8 = v6 == Strong;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        goto LABEL_23;
      }
    }

    else if (!Strong)
    {
      goto LABEL_24;
    }

    sub_18EED0();
LABEL_23:
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  if (v5)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (Strong)
    {
      v7 = v6 == Strong;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_24;
    }

    swift_unknownObjectRetain();
  }

  sub_18EED0();
LABEL_19:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_24:
  swift_unknownObjectRelease();

  free(v3);
}

char *sub_18E2E8(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_contentView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_model] = 0;
  v10 = &v4[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  v10[1] = v11;
  v4[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_needsSubviewsUpdate] = 0;
  v4[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_usedOverrides] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for TUIBackgroundExtensionView();
  v12 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v12 bounds];
  v17 = [objc_allocWithZone(_UIBackgroundExtensionView) initWithFrame:{v13, v14, v15, v16}];
  [v17 setAutoresizingMask:18];
  [v17 setContentView:*&v12[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_contentView]];
  [v12 addSubview:v17];

  return v12;
}

id sub_18E528(void *a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for TUIBackgroundExtensionView();
  result = objc_msgSendSuper2(&v11, "applyLayoutAttributes:", a1);
  if (a1)
  {
    result = [a1 renderModel];
    if (result)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4 && [v4 submodel])
      {
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          v6 = v5;
          [a1 outsets];
          sub_18EDAC(v6, v7, v8, v9, v10);
        }

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_18E78C(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for TUIBackgroundExtensionView();
  if (!objc_msgSendSuper2(&v13, "descendentViewWithIdentifier:", a1))
  {
    v3 = [v1 tui_hostedSubviewsMap];
    if (v3)
    {
      v4 = v3;
      sub_18F3EC(&qword_2E58C0);
      v5 = sub_19C4D8();

      v6 = 0;
      v7 = 1 << *(v5 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v5 + 64);
      v10 = (v7 + 63) >> 6;
      while (v9)
      {
        v11 = v6;
LABEL_12:
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        if ([*(*(v5 + 56) + ((v11 << 9) | (8 * v12))) descendentViewWithIdentifier:a1])
        {

          return;
        }
      }

      while (1)
      {
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v11 >= v10)
        {

          return;
        }

        v9 = *(v5 + 64 + 8 * v11);
        ++v6;
        if (v9)
        {
          v6 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_18E970(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_19C518();
  }

  else
  {
    v4 = 0;
  }

  v18.receiver = v2;
  v18.super_class = type metadata accessor for TUIBackgroundExtensionView();
  v5 = objc_msgSendSuper2(&v18, "descendentViewWithRefId:", v4);

  if (!v5)
  {
    v6 = [v2 tui_hostedSubviewsMap];
    if (v6)
    {
      v7 = v6;
      sub_18F3EC(&qword_2E58C0);
      v8 = sub_19C4D8();

      v9 = 0;
      v10 = 1 << *(v8 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v8 + 64);
      v13 = (v10 + 63) >> 6;
      while (v12)
      {
LABEL_16:
        v17 = *(*(v8 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v12)))));
        if (a2)
        {
          v14 = sub_19C518();
        }

        else
        {
          v14 = 0;
        }

        v12 &= v12 - 1;
        v15 = [v17 descendentViewWithRefId:v14];

        if (v15)
        {

          return;
        }
      }

      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v13)
        {

          return;
        }

        v12 = *(v8 + 64 + 8 * v16);
        ++v9;
        if (v12)
        {
          v9 = v16;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_18EBD0(id a1)
{
  if (a1)
  {
    [a1 addObject:v1];
  }

  v3 = [v1 tui_hostedSubviewsMap];
  if (v3)
  {
    v4 = v3;
    sub_18F3EC(&qword_2E58C0);
    v5 = sub_19C4D8();

    v6 = 0;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 64);
    v10 = (v7 + 63) >> 6;
    if (v9)
    {
      while (1)
      {
        v11 = v6;
LABEL_12:
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        [*(*(v5 + 56) + ((v11 << 9) | (8 * v12))) appendRenderOverrideObservers:a1];
        if (!v9)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *(v5 + 64 + 8 * v11);
      ++v6;
      if (v9)
      {
        v6 = v11;
        goto LABEL_12;
      }
    }
  }
}

void sub_18EDAC(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = *&v5[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_model];
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && (v8.f64[0] = a2, v8.f64[1] = a3, v9.f64[0] = a4, v9.f64[1] = a5, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v5[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets], v8), vceqq_f64(*&v5[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets + 16], v9)))) & 1) != 0))
  {
    if (v5[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_usedOverrides] == 1)
    {
      v5[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_needsSubviewsUpdate] = 1;

      [v5 setNeedsLayout];
    }
  }

  else
  {
    *&v5[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_model] = a1;
    v10 = a1;

    v11 = &v5[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets];
    *v11 = a2;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a5;

    sub_18EED0();
  }
}

void sub_18EED0()
{
  sub_18F3EC(&qword_2E5988);
  v1 = (__chkstk_darwin)();
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v39 - v5;
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v41 = 0;
  v9 = *&v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_model];
  if (v9 && (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v11 = v10;
    v40 = v9;
    v12 = [v0 feedControllerHost];
    if (v12 && (v13 = [v12 renderOverrideProvider], swift_unknownObjectRelease(), v13) && (v14 = objc_msgSend(v13, "renderOverrides"), swift_unknownObjectRelease(), v14) && (sub_18F3EC(&unk_2E59F0), v15 = sub_19C5C8(), v14, v15))
    {
      v16 = [v0 tui_querySectionUUID];
      if (v16)
      {
        v17 = v16;
        sub_19C3D8();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      v35 = sub_19C3E8();
      (*(*(v35 - 8) + 56))(v6, v18, 1, v35);
      sub_18FE84(v6, v8);
      v36 = [v0 tui_querySectionUID];
      if (v36)
      {
        v37 = v36;
        sub_19C548();
        v23 = v38;
      }

      else
      {
        v23 = 0;
      }

      v25 = *&v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets];
      v26 = *&v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets + 8];
      v27 = *&v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets + 16];
      v28 = *&v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets + 24];
      sub_18F3EC(&unk_2E59F0);
      isa = sub_19C5B8().super.isa;
    }

    else
    {
      v22 = sub_19C3E8();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
      v23 = 0;
      isa = 0;
      v25 = *&v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets];
      v26 = *&v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets + 8];
      v27 = *&v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets + 16];
      v28 = *&v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets + 24];
    }

    sub_18FDAC(v8, v3);
    v29 = sub_19C3E8();
    v30 = *(v29 - 8);
    v31 = 0;
    if ((*(v30 + 48))(v3, 1, v29) != 1)
    {
      v31 = sub_19C3C8().super.isa;
      (*(v30 + 8))(v3, v29);
    }

    if (v23)
    {
      v32 = sub_19C518();
    }

    else
    {
      v32 = 0;
    }

    v33 = v40;
    v34 = [v40 configureSubviewsWithFactory:v11 outsets:v0 host:isa overrides:&v41 usedOverrides:v31 UUID:v32 uid:{v25, v26, v27, v28}];

    swift_unknownObjectRelease();
    sub_18FE1C(v8);
    v21 = v41;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = [Strong subviewPool];
      swift_unknownObjectRelease();
      if (v20)
      {
        [v20 prepareToReuseHost:v0];
      }
    }

    v21 = 0;
  }

  v0[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_usedOverrides] = v21;
}

uint64_t sub_18F3EC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id TUIBackgroundExtensionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUIBackgroundExtensionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_18F650(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18F65C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F67C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_18F6BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_18F6C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F6E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_18F774(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_18F7D4()
{
  sub_19C548();
  v0 = sub_19C598();

  return v0;
}

uint64_t sub_18F810()
{
  sub_19C548();
  sub_19C568();
}

Swift::Int sub_18F864()
{
  sub_19C548();
  sub_19C838();
  sub_19C568();
  v0 = sub_19C858();

  return v0;
}

uint64_t sub_18F8E0(uint64_t a1, id *a2)
{
  result = sub_19C528();
  *a2 = 0;
  return result;
}

uint64_t sub_18F958(uint64_t a1, id *a2)
{
  v3 = sub_19C538();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18F9D8@<X0>(void *a1@<X8>)
{
  sub_19C548();
  v2 = sub_19C518();

  *a1 = v2;
  return result;
}

void *sub_18FA1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18FA38()
{
  v0 = sub_19C548();
  v2 = v1;
  if (v0 == sub_19C548() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_19C7C8();
  }

  return v5 & 1;
}

uint64_t sub_18FAC0@<X0>(void *a1@<X8>)
{
  v2 = sub_19C518();

  *a1 = v2;
  return result;
}

uint64_t sub_18FB08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19C548();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18FB34(uint64_t a1)
{
  v2 = sub_18FC34(&qword_2E5978);
  v3 = sub_18FC34(&qword_2E5980);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_18FC34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TUITriggerName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_18FCAC()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_model) = 0;
  v2 = (v0 + OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets);
  v3 = *&UIEdgeInsetsZero.bottom;
  *v2 = *&UIEdgeInsetsZero.top;
  v2[1] = v3;
  *(v0 + OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_needsSubviewsUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_usedOverrides) = 0;
  sub_19C768();
  __break(1u);
}

uint64_t sub_18FDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F3EC(&qword_2E5988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18FE1C(uint64_t a1)
{
  v2 = sub_18F3EC(&qword_2E5988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18FE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F3EC(&qword_2E5988);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall TUIEnvironment.isSanitizedTraitCollectionEqual(to:)(TUIEnvironment_optional *to)
{
  if (!to)
  {
    return to;
  }

  v2 = to;
  v3 = [v1 sanitizedTraitCollection];
  v4 = [(TUIEnvironment_optional *)v2 sanitizedTraitCollection];
  v5 = v4;
  if (!v3)
  {

    if (!v5)
    {
      LOBYTE(to) = 1;
      return to;
    }

    goto LABEL_9;
  }

  if (!v4)
  {

LABEL_9:
    LOBYTE(to) = 0;
    return to;
  }

  sub_190294();
  if ((sub_19C698() & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = [v6 BOOLForKey:@"TUILogEnvironmentChanges"];

    if (v7)
    {
      v8 = v5;
      v9 = sub_1902E0();

      v10 = v9[2];
      v11 = &_swiftEmptyArrayStorage;
      if (v10)
      {
        sub_192ADC(0, v10, 0);
        v11 = &_swiftEmptyArrayStorage;
        v12 = (v9 + 5);
        do
        {
          v13 = sub_19C468();
          v32 = v11;
          v16 = v11[2];
          v15 = v11[3];
          if (v16 >= v15 >> 1)
          {
            v31 = v13;
            v18 = v14;
            sub_192ADC((v15 > 1), v16 + 1, 1);
            v14 = v18;
            v13 = v31;
            v11 = v32;
          }

          v11[2] = v16 + 1;
          v17 = &v11[2 * v16];
          *(v17 + 4) = v13;
          *(v17 + 5) = v14;
          v12 += 16;
          --v10;
        }

        while (v10);
      }

      v32 = v11;
      sub_18F3EC(&qword_2E5A80);
      sub_1941E0(&qword_2E5A88, &qword_2E5A80);
      v19 = sub_19C4F8();
      v21 = v20;

      if (v9[2])
      {
        v22 = sub_19C618();
        to = TUIDefaultLog();
        if (!to)
        {
          __break(1u);
          return to;
        }

        v23 = to;

        if (os_log_type_enabled(&v23->value.super, v22))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v32 = v25;
          *v24 = 136315138;
          v26 = sub_192514(v19, v21, &v32);

          *(v24 + 4) = v26;
          _os_log_impl(&dword_0, &v23->value.super, v22, "[EnvironmentChange] Ignoring trait changes: [ %s ]", v24, 0xCu);
          sub_192B44(v25);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    v27 = v5;
    v28 = sub_190548();

    v29 = v28[2];

    LOBYTE(to) = v29 == 0;
    return to;
  }

  LOBYTE(to) = 1;
  return to;
}

unint64_t sub_190294()
{
  result = qword_2E5A78;
  if (!qword_2E5A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2E5A78);
  }

  return result;
}

void *sub_1902E0()
{
  v0 = sub_19C658();
  if (qword_2E5820 != -1)
  {
    goto LABEL_28;
  }

  while ((byte_2E5A70 & 1) == 0)
  {
    v17 = *(v0 + 16);
    if (!v17)
    {
LABEL_25:

      return &_swiftEmptyArrayStorage;
    }

    if (qword_2E5818 != -1)
    {
      swift_once();
    }

    v1 = 0;
    v2 = off_2E5A68[0];
    v3 = off_2E5A68[0] + 14;
    while (v1 < *(v0 + 16))
    {
      v18 = *(v0 + 32 + 16 * v1);
      v4 = sub_19C468();
      v6 = v5;
      if (*(dword_10 + v2) && (v7 = v4, sub_19C838(), sub_19C568(), v8 = sub_19C858(), v9 = -1 << *(&stru_20.cmd + v2), v10 = v8 & ~v9, ((*(v3 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
      {
        v11 = ~v9;
        while (1)
        {
          v12 = (*&stru_20.segname[v2 + 8] + 16 * v10);
          v13 = *v12 == v7 && v12[1] == v6;
          if (v13 || (sub_19C7C8() & 1) != 0)
          {
            break;
          }

          v10 = (v10 + 1) & v11;
          if (((*(v3 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_192ABC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v15 = *(&_swiftEmptyArrayStorage + 2);
        v14 = *(&_swiftEmptyArrayStorage + 3);
        if (v15 >= v14 >> 1)
        {
          sub_192ABC((v14 > 1), v15 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v15 + 1;
        *(&_swiftEmptyArrayStorage + v15 + 2) = v18;
      }

      else
      {
LABEL_7:
      }

      if (++v1 == v17)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  return v0;
}

void *sub_190548()
{
  if (qword_2E5820 != -1)
  {
    goto LABEL_27;
  }

  while ((byte_2E5A70 & 1) == 0)
  {
    v0 = sub_19C658();
    v17 = *(v0 + 16);
    if (!v17)
    {
LABEL_24:

      return &_swiftEmptyArrayStorage;
    }

    if (qword_2E5818 != -1)
    {
      swift_once();
    }

    v1 = 0;
    v2 = off_2E5A68[0];
    v3 = off_2E5A68[0] + 14;
    while (v1 < *(v0 + 16))
    {
      v18 = *(v0 + 32 + 16 * v1);
      v4 = sub_19C468();
      v6 = v5;
      if (*(dword_10 + v2) && (v7 = v4, sub_19C838(), sub_19C568(), v8 = sub_19C858(), v9 = -1 << *(&stru_20.cmd + v2), v10 = v8 & ~v9, ((*(v3 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
      {
        v11 = ~v9;
        while (1)
        {
          v12 = (*&stru_20.segname[v2 + 8] + 16 * v10);
          v13 = *v12 == v7 && v12[1] == v6;
          if (v13 || (sub_19C7C8() & 1) != 0)
          {
            break;
          }

          v10 = (v10 + 1) & v11;
          if (((*(v3 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_192ABC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v15 = *(&_swiftEmptyArrayStorage + 2);
        v14 = *(&_swiftEmptyArrayStorage + 3);
        if (v15 >= v14 >> 1)
        {
          sub_192ABC((v14 > 1), v15 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v15 + 1;
        *(&_swiftEmptyArrayStorage + v15 + 2) = v18;
      }

      if (++v1 == v17)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  return &_swiftEmptyArrayStorage;
}

Swift::String __swiftcall TUIEnvironment._printDiffFromSelf(toEnvironment:)(TUIEnvironment_optional *toEnvironment)
{
  if (!toEnvironment)
  {
    v29 = 0x800000000024BEC0;
    v30 = 0xD000000000000018;
    goto LABEL_25;
  }

  if (toEnvironment == v1)
  {
    v29 = 0xE500000000000000;
    v30 = 0x6C61757145;
    goto LABEL_25;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  v4 = (v3 + 16);
  KeyPath = swift_getKeyPath();
  v6 = toEnvironment;
  sub_191854(KeyPath, v1, v6, v3, &qword_2E5B08, &unk_24E230, type metadata accessor for TUIEnvironmentDeviceClass);

  v7 = swift_getKeyPath();
  sub_191854(v7, v1, v6, v3, &qword_2E5B00, &unk_24E228, type metadata accessor for TUIEnvironmentSizeClass);

  v8 = swift_getKeyPath();
  sub_191854(v8, v1, v6, v3, &qword_2E5B00, &unk_24E228, type metadata accessor for TUIEnvironmentSizeClass);

  v9 = swift_getKeyPath();
  sub_191854(v9, v1, v6, v3, &qword_2E5AF8, &unk_24E220, type metadata accessor for TUIEnvironmentDisplayClass);

  v10 = swift_getKeyPath();
  sub_191854(v10, v1, v6, v3, &qword_2E5AF0, &unk_24E218, type metadata accessor for TUIEnvironmentSplit);

  v11 = swift_getKeyPath();
  sub_191098(v11, v1, v6, v3);

  v12 = swift_getKeyPath();
  sub_191098(v12, v1, v6, v3);

  v13 = swift_getKeyPath();
  sub_191288(v13, v1, v6, v3);

  v14 = swift_getKeyPath();
  sub_1914A0(v14, v1, v6, v3);

  v15 = swift_getKeyPath();
  sub_191854(v15, v1, v6, v3, &qword_2E5AD0, &unk_24E1F8, type metadata accessor for TUIEnvironmentStyle);

  v16 = swift_getKeyPath();
  sub_19167C(v16, v1, v6, v3);

  v17 = swift_getKeyPath();
  sub_191854(v17, v1, v6, v3, &qword_2E5AC0, &unk_24E1E8, type metadata accessor for TUIEnvironmentOrientation);

  v18 = swift_getKeyPath();
  sub_191854(v18, v1, v6, v3, &qword_2E5AB8, &unk_24E1E0, type metadata accessor for TUIEnvironmentContentSizeCategory);

  v19 = swift_getKeyPath();
  sub_1914A0(v19, v1, v6, v3);

  v20 = swift_getKeyPath();
  sub_191854(v20, v1, v6, v3, &qword_2E5AB0, &unk_24E1D8, type metadata accessor for TUIInterfaceLayoutDirection);

  v21 = swift_getKeyPath();
  sub_191854(v21, v1, v6, v3, &qword_2E5AA8, &unk_24E1D0, type metadata accessor for TUIEnvironmentActiveAppearance);

  v22 = swift_getKeyPath();
  sub_19167C(v22, v1, v6, v3);

  v23 = swift_getKeyPath();
  sub_191A3C(v23, v1, v6, v3);

  v24 = swift_getKeyPath();
  sub_19167C(v24, v1, v6, v3);

  if (([(TUIEnvironment_optional *)v1 isSanitizedTraitCollectionEqualTo:v6]& 1) == 0)
  {
    v25 = [(TUIEnvironment_optional *)v1 sanitizedTraitCollection];
    v26 = [(TUIEnvironment_optional *)v6 sanitizedTraitCollection];
    v27 = v26;
    if (v25)
    {
      v28 = sub_190548();
    }

    else
    {
      if (!v26)
      {
        v28 = _swiftEmptyArrayStorage;
        v31 = _swiftEmptyArrayStorage[2];
        if (v31)
        {
LABEL_11:
          sub_192ADC(0, v31, 0);
          v32 = _swiftEmptyArrayStorage;
          v33 = (v28 + 5);
          do
          {
            v34 = sub_19C468();
            v52 = v32;
            v37 = v32[2];
            v36 = v32[3];
            if (v37 >= v36 >> 1)
            {
              v51 = v34;
              v39 = v35;
              sub_192ADC((v36 > 1), v37 + 1, 1);
              v35 = v39;
              v34 = v51;
              v32 = v52;
            }

            v32[2] = v37 + 1;
            v38 = &v32[2 * v37];
            *(v38 + 4) = v34;
            *(v38 + 5) = v35;
            v33 += 16;
            --v31;
          }

          while (v31);
        }

LABEL_17:

        sub_18F3EC(&qword_2E5A80);
        sub_1941E0(&qword_2E5A88, &qword_2E5A80);
        v40 = sub_19C4F8();
        v42 = v41;

        sub_19C728(47);

        v53._countAndFlagsBits = v40;
        v53._object = v42;
        sub_19C578(v53);

        v54._countAndFlagsBits = 23840;
        v54._object = 0xE200000000000000;
        sub_19C578(v54);
        swift_beginAccess();
        v43 = *v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_192408(0, *(v43 + 2) + 1, 1, v43);
        }

        v45 = *(v43 + 2);
        v44 = *(v43 + 3);
        if (v45 >= v44 >> 1)
        {
          v43 = sub_192408((v44 > 1), v45 + 1, 1, v43);
        }

        *(v43 + 2) = v45 + 1;
        v46 = &v43[16 * v45];
        *(v46 + 4) = 0xD00000000000002BLL;
        *(v46 + 5) = 0x800000000024BEE0;
        *v4 = v43;
        swift_endAccess();
        goto LABEL_22;
      }

      v28 = sub_190548();
    }

    v31 = v28[2];
    if (v31)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_22:
  swift_beginAccess();
  if (*(*v4 + 2))
  {

    sub_18F3EC(&qword_2E5A80);
    sub_1941E0(&qword_2E5A88, &qword_2E5A80);
    v47 = sub_19C4F8();
    v49 = v48;

    v29 = v49;
    v30 = v47;
  }

  else
  {

    v30 = 0xD000000000000016;
    v29 = 0x800000000024BF10;
  }

LABEL_25:
  result._object = v29;
  result._countAndFlagsBits = v30;
  return result;
}

void sub_191098(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  swift_getAtKeyPath();

  v7 = a3;
  swift_getAtKeyPath();

  if (v16 != v14 || v17 != v15)
  {
    sub_18F3EC(&qword_2E5AE8);
    sub_19C758();
    v18._countAndFlagsBits = 8250;
    v18._object = 0xE200000000000000;
    sub_19C578(v18);
    type metadata accessor for CGSize(0);
    sub_19C758();
    v19._countAndFlagsBits = 0x209286E220;
    v19._object = 0xA500000000000000;
    sub_19C578(v19);
    sub_19C758();
    swift_beginAccess();
    v9 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_192408(0, *(v9 + 2) + 1, 1, v9);
      *(a4 + 16) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_192408((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = 0;
    *(v13 + 5) = 0xE000000000000000;
    *(a4 + 16) = v9;
    swift_endAccess();
  }
}

void sub_191288(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  swift_getAtKeyPath();

  v7 = a3;
  swift_getAtKeyPath();

  if (v20 != *&a2 || v21 != v17 || v22 != v18 || v23 != v19)
  {
    sub_18F3EC(&qword_2E5AE0);
    sub_19C758();
    v24._countAndFlagsBits = 8250;
    v24._object = 0xE200000000000000;
    sub_19C578(v24);
    type metadata accessor for UIEdgeInsets(0);
    sub_19C758();
    v25._countAndFlagsBits = 0x209286E220;
    v25._object = 0xA500000000000000;
    sub_19C578(v25);
    sub_19C758();
    swift_beginAccess();
    v11 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_192408(0, *(v11 + 2) + 1, 1, v11);
      *(a4 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_192408((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = 0;
    *(v15 + 5) = 0xE000000000000000;
    *(a4 + 16) = v11;
    swift_endAccess();
  }
}

void sub_1914A0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  swift_getAtKeyPath();

  v7 = a3;
  swift_getAtKeyPath();

  if (v14 != v13)
  {
    sub_18F3EC(&qword_2E5AD8);
    sub_19C758();
    v15._countAndFlagsBits = 8250;
    v15._object = 0xE200000000000000;
    sub_19C578(v15);
    sub_19C758();
    v16._countAndFlagsBits = 0x209286E220;
    v16._object = 0xA500000000000000;
    sub_19C578(v16);
    sub_19C758();
    swift_beginAccess();
    v8 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_192408(0, *(v8 + 2) + 1, 1, v8);
      *(a4 + 16) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_192408((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = 0;
    *(v12 + 5) = 0xE000000000000000;
    *(a4 + 16) = v8;
    swift_endAccess();
  }
}

void sub_19167C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  swift_getAtKeyPath();

  v7 = a3;
  swift_getAtKeyPath();

  if (v14 != v13)
  {
    sub_18F3EC(&qword_2E5AC8);
    sub_19C758();
    v15._countAndFlagsBits = 8250;
    v15._object = 0xE200000000000000;
    sub_19C578(v15);
    sub_19C758();
    v16._countAndFlagsBits = 0x209286E220;
    v16._object = 0xA500000000000000;
    sub_19C578(v16);
    sub_19C758();
    swift_beginAccess();
    v8 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_192408(0, *(v8 + 2) + 1, 1, v8);
      *(a4 + 16) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_192408((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = 0;
    *(v12 + 5) = 0xE000000000000000;
    *(a4 + 16) = v8;
    swift_endAccess();
  }
}

void sub_191854(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v11 = a2;
  swift_getAtKeyPath();

  v12 = a3;
  swift_getAtKeyPath();

  if (v19 != v18)
  {
    sub_18F3EC(a5);
    sub_19C758();
    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    sub_19C578(v20);
    a7(0);
    sub_19C758();
    v21._countAndFlagsBits = 0x209286E220;
    v21._object = 0xA500000000000000;
    sub_19C578(v21);
    sub_19C758();
    swift_beginAccess();
    v13 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_192408(0, *(v13 + 2) + 1, 1, v13);
      *(a4 + 16) = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_192408((v15 > 1), v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = 0;
    *(v17 + 5) = 0xE000000000000000;
    *(a4 + 16) = v13;
    swift_endAccess();
  }
}

void sub_191A3C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  swift_getAtKeyPath();

  v7 = a3;
  swift_getAtKeyPath();

  if (!v16)
  {
    if (!v14)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v14 || (v15 != v13 || v16 != v14) && (sub_19C7C8() & 1) == 0)
  {
LABEL_8:
    sub_18F3EC(&qword_2E5A98);
    sub_19C758();
    v17._countAndFlagsBits = 8250;
    v17._object = 0xE200000000000000;
    sub_19C578(v17);
    sub_18F3EC(&qword_2E5AA0);
    sub_19C758();
    v18._countAndFlagsBits = 0x209286E220;
    v18._object = 0xA500000000000000;
    sub_19C578(v18);
    sub_19C758();
    swift_beginAccess();
    v8 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_192408(0, *(v8 + 2) + 1, 1, v8);
      *(a4 + 16) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_192408((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = 0;
    *(v12 + 5) = 0xE000000000000000;
    *(a4 + 16) = v8;
    swift_endAccess();

    goto LABEL_13;
  }

LABEL_13:
}

void sub_191C7C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 language];
  if (v3)
  {
    v4 = v3;
    v5 = sub_19C548();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_191CE4(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_19C518();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setLanguage:?];
}

uint64_t sub_191DD4()
{
  v0 = sub_193FE0(&off_263E20);
  result = swift_arrayDestroy();
  qword_2E5A60 = v0;
  return result;
}

int *sub_191E20()
{
  result = sub_191E40();
  off_2E5A68[0] = result;
  return result;
}

NSObject *sub_191E40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 stringArrayForKey:@"TUIEnvironmentIgnoredTraitsOverride"];

  if (!v1)
  {
    if (qword_2E5810 != -1)
    {
      swift_once();
    }

    v9 = qword_2E5A60;

    return v9;
  }

  sub_19C5C8();

  v3 = sub_194148(v2);

  v17 = v3;

  v4 = sub_19213C(0x746C7561666564, 0xE700000000000000, v3);

  if (v4)
  {
    sub_19356C(0x746C7561666564, 0xE700000000000000);

    if (qword_2E5810 != -1)
    {
      swift_once();
    }

    sub_192234(v5);
  }

  v6 = sub_19C618();
  result = TUIDefaultLog();
  if (result)
  {
    v8 = result;

    v9 = v17;
    if (os_log_type_enabled(v8, v6))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;

      sub_18F3EC(&qword_2E5B20);
      sub_1941E0(&qword_2E5B28, &qword_2E5B20);
      sub_194228();
      v12 = sub_19C5A8();
      v14 = v13;

      v15 = sub_192514(v12, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_0, v8, v6, "[EnvironmentChange] Overriding ignored traits to: [ %s ]", v10, 0xCu);
      sub_192B44(v11);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_19213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_19C838();
  sub_19C568();
  v6 = sub_19C858();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_19C7C8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_192234(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_19341C(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_192338()
{
  if (qword_2E5818 != -1)
  {
    swift_once();
  }

  v0 = sub_19213C(7105633, 0xE300000000000000, off_2E5A68[0]);
  if ((v0 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_19C618();
  v1 = TUIDefaultLog();
  if (v1)
  {
    v2 = v1;
    sub_19C438();

LABEL_6:
    byte_2E5A70 = v0 & 1;
    return;
  }

  __break(1u);
}

char *sub_192408(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18F3EC(&qword_2E5A90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_192514(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1925E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1931B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_192B44(v11);
  return v7;
}

unint64_t sub_1925E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1926EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_19C748();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1926EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_192738(a1, a2);
  sub_192868(&off_263E60);
  return v3;
}

char *sub_192738(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_192954(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_19C748();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_19C588();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_192954(v10, 0);
        result = sub_19C718();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_192868(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1929C8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_192954(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_18F3EC(&qword_2E5B10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1929C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18F3EC(&qword_2E5B10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_192ABC(char *a1, int64_t a2, char a3)
{
  result = sub_19320C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_192ADC(char *a1, int64_t a2, char a3)
{
  result = sub_193310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_192AFC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_192B44(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_192B90()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_192BD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceClass];
  *a2 = result;
  return result;
}

id sub_192C28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 widthClass];
  *a2 = result;
  return result;
}

id sub_192C7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heightClass];
  *a2 = result;
  return result;
}

id sub_192CD0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayClass];
  *a2 = result;
  return result;
}

id sub_192D24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 split];
  *a2 = result;
  return result;
}

id sub_192DA8@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  return result;
}

id sub_192E00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 viewSafeAreaInsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_192E5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusBarHeight];
  *a2 = v4;
  return result;
}

id sub_192EB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 style];
  *a2 = result;
  return result;
}

id sub_192F04@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 demoMode];
  *a2 = result;
  return result;
}

id sub_192F58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orientation];
  *a2 = result;
  return result;
}

id sub_192FAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSizeCategory];
  *a2 = result;
  return result;
}

id sub_193000@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentsScale];
  *a2 = v4;
  return result;
}

id sub_193054@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 layoutDirection];
  *a2 = result;
  return result;
}

id sub_1930A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 activeAppearance];
  *a2 = result;
  return result;
}

id sub_1930FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 accessibilityElementsNeeded];
  *a2 = result;
  return result;
}

id sub_193164@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useFontFallback];
  *a2 = result;
  return result;
}

uint64_t sub_1931B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_19320C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18F3EC(&qword_2E5B18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_193310(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18F3EC(&qword_2E5A90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19341C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_19C838();
  sub_19C568();
  v8 = sub_19C858();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_19C7C8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_193908(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_19356C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_19C838();
  sub_19C568();
  v6 = sub_19C858();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_19C7C8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_193A88();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_193E1C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1936A8()
{
  v1 = v0;
  v2 = *v0;
  sub_18F3EC(&qword_2E5B38);
  result = sub_19C6F8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_19C838();
      sub_19C568();
      result = sub_19C858();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_193908(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1936A8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_193A88();
      goto LABEL_16;
    }

    sub_193BE4();
  }

  v10 = *v4;
  sub_19C838();
  sub_19C568();
  result = sub_19C858();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_19C7C8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_19C7D8();
  __break(1u);
  return result;
}

void *sub_193A88()
{
  v1 = v0;
  sub_18F3EC(&qword_2E5B38);
  v2 = *v0;
  v3 = sub_19C6E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_193BE4()
{
  v1 = v0;
  v2 = *v0;
  sub_18F3EC(&qword_2E5B38);
  result = sub_19C6F8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_19C838();

      sub_19C568();
      result = sub_19C858();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_193E1C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19C6D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_19C838();

        sub_19C568();
        v10 = sub_19C858();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_193FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_18F3EC(&qword_2E5B38);
    v3 = sub_19C708();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_19C838();

      sub_19C568();
      result = sub_19C858();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_19C7C8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_194148(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_19C608();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_19341C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1941E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_192AFC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_194228()
{
  result = qword_2E5B30;
  if (!qword_2E5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2E5B30);
  }

  return result;
}

uint64_t sub_1942C4()
{
  v1 = OBJC_IVAR____TtC10TemplateUI17TUIPageControlBox_hiddenWhenUnavailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19435C(char a1)
{
  v3 = OBJC_IVAR____TtC10TemplateUI17TUIPageControlBox_hiddenWhenUnavailable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TUILayerOpacityTriggerObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TUIPageControlBox.init()()
{
  v0[OBJC_IVAR____TtC10TemplateUI17TUIPageControlBox_hiddenWhenUnavailable] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUIPageControlBox();
  return objc_msgSendSuper2(&v2, "init");
}

id TUIPageControlBox.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUIPageControlBox();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_194528@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10TemplateUI17TUIPageControlBox_hiddenWhenUnavailable;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_194580(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10TemplateUI17TUIPageControlBox_hiddenWhenUnavailable;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t UITraitCollection.feedProxyScrollView.getter()
{
  sub_194800();
  sub_19C668();
  if (!v2)
  {
    return 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

unint64_t sub_194800()
{
  result = qword_2E5B70;
  if (!qword_2E5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2E5B70);
  }

  return result;
}

uint64_t UIMutableTraits.feedProxyScrollView.getter()
{
  sub_194800();
  sub_19C448();
  if (!v2)
  {
    return 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void sub_1948E8(id *a1)
{
  v1 = *a1;
  sub_194A64();
}

void UIMutableTraits.feedProxyScrollView.setter(void *a1)
{
  sub_194A64();
}

void (*UIMutableTraits.feedProxyScrollView.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(id *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = UIMutableTraits.feedProxyScrollView.getter();
  return sub_1949DC;
}

void sub_1949DC(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_194A64();

    v3 = v2;
  }

  else
  {
    sub_194A64();
    v3 = v4;
  }
}

uint64_t sub_194A64()
{
  sub_18F3EC(qword_2E5B78);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_194800();
  return sub_19C458();
}

uint64_t sub_194B1C@<X0>(uint64_t *a1@<X8>)
{
  result = UIMutableTraits.feedProxyScrollView.getter();
  *a1 = result;
  return result;
}

__n128 sub_194B60(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedProxyScrollViewTrait(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FeedProxyScrollViewTrait(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}