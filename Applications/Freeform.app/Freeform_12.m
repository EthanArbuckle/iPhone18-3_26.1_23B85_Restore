void sub_1002016DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020182C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      sub_1000C1D48();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100201940(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_100201940(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1000C1E4C();
}

char *sub_100201988(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      sub_1000C1D48();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      sub_100201940(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = v7[1];
      v7 += 2;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, *(a1 + 8) - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 5;
  if (v18 >= a5)
  {
    v31 = &__dst[32 * a5];
    v32 = (v10 - 32 * a5);
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[1];
      v32 += 2;
      *v33 = v34;
      v33[1] = v35;
      v33 += 2;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v31);
    }

    v30 = 32 * a5;
    v28 = v5;
    v29 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[32 * a5];
    v23 = v10 + v20;
    if (&v21[-32 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -32 * a5];
      do
      {
        v26 = (v24 - v7);
        v27 = *(v25 - v7 + 16);
        *v26 = *(v25 - v7);
        v26[1] = v27;
        v25 += 32;
        v24 += 32;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[32 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v28 = v5;
      v29 = v7;
      v30 = v10 - v5;
LABEL_29:
      memmove(v28, v29, v30);
    }
  }

  return v5;
}

__n128 sub_100201BBC(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 4;
      }

      sub_100201940(a1[4], v11);
    }

    v7 = ((v6 >> 5) + 1) / -2;
    v8 = ((v6 >> 5) + 1) / 2;
    v9 = &v5[-32 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-32 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[32 * v7];
    a1[2] = &v9[v10];
  }

  result = *a2;
  v13 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v13;
  a1[2] += 32;
  return result;
}

void *sub_100201CC4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100201DF0(v6, v10);
    }

    sub_1000C1D48();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_100201DF0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100201940(a1, a2);
  }

  sub_1000C1D48();
}

void sub_1002023D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100202414(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100203294(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002032D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10020360C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100203650(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002038D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100203914(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10020405C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002040A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002047F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [[_TtC8Freeform21CRLiOSPageTitleButton alloc] initWithTitle:v3 insets:0.0, 14.0, 0.0, 14.0];

  [(CRLiOSPageTitleButton *)v7 sizeToFit];
  v4 = [(CRLiOSPageTitleButton *)v7 widthAnchor];
  [(CRLiOSPageTitleButton *)v7 frame];
  v6 = [v4 constraintEqualToConstant:v5];
  [v6 setActive:1];

  [(CRLiOSPageTitleButton *)v7 addTarget:*(a1 + 32) action:"p_didTapButton:" forControlEvents:64];
  [*(a1 + 40) addArrangedSubview:v7];
}

void sub_100204B38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100204B7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002054C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100205508(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100205688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002056CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100205D7C(uint64_t a1)
{
  if (([*(a1 + 32) p_isShowingSearchBar] & 1) == 0)
  {
    [*(a1 + 32) p_updateUIForChangeToPageNumber:objc_msgSend(*(a1 + 32) animated:"p_currentPageNumber") completion:{1, 0}];
  }

  [*(a1 + 32) p_updateBottomConstraintsIfNeeded];
  v2 = *(a1 + 32);
  v3 = [v2 crl_isInDarkMode];

  return [v2 p_updateTitlesPageControlAndBottomViewColorsInDarkUI:v3];
}

void sub_1002066EC(uint64_t a1)
{
  [*(a1 + 32) p_updateBottomConstraintsIfNeeded];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_100206A40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100206A84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100206CF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) viewControllers];
  [v2 p_setViewControllers:v3 shouldUpdatePageViewController:0 animated:0];

  v4 = [*(a1 + 32) insertPageViewControllerDelegate];
  [v4 insertPageViewController:*(a1 + 32) didSelectPageNumber:*(a1 + 48)];

  if (*(a1 + 56) == 1)
  {
    v5 = UIAccessibilityPageScrolledNotification;
    v9 = [*(a1 + 32) p_titlesPageControl];
    v6 = [v9 selectedButton];
    v7 = [v6 titleLabel];
    v8 = [v7 text];
    UIAccessibilityPostNotification(v5, v8);
  }
}

id sub_100206FF4(uint64_t a1)
{
  v2 = [*(a1 + 32) text];
  v3 = [v2 length];

  if (v3)
  {
    v4 = *(a1 + 32);

    return [v4 enableCancelButton];
  }

  else
  {
    v5 = *(a1 + 40);

    return [v5 p_endSearching];
  }
}

void sub_1002075C0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) p_searchBar];
  [v3 setAlpha:v2];

  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) p_titlesPageControl];
  [v5 setAlpha:v4];

  if (*(a1 + 40))
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [*(a1 + 32) p_searchButton];
  [v7 setAlpha:v6];
}

uint64_t sub_100207688(uint64_t a1, int a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  if (v4 != 1)
  {
    [v5 becomeFirstResponder];
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v5 resignFirstResponder];
  if (a2)
  {
LABEL_5:
    v6 = *(a1 + 56);
    v7 = [*(a1 + 40) p_searchBar];
    [v7 setAccessibilityElementsHidden:v6];

    LOBYTE(v7) = *(a1 + 56);
    v8 = [*(a1 + 40) p_searchButton];
    [v8 setAccessibilityElementsHidden:(v7 & 1) == 0];

    LOBYTE(v7) = *(a1 + 56);
    v9 = [*(a1 + 40) p_titlesPageControlScrollView];
    [v9 setAccessibilityElementsHidden:(v7 & 1) == 0];

    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
  }

LABEL_6:
  result = *(a1 + 48);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

void sub_100207970(uint64_t a1)
{
  v2 = [*(a1 + 32) insertPageViewControllerDelegate];
  [v2 insertPageViewControllerDidEndSearch:*(a1 + 32) cancelledExplicitly:*(a1 + 40)];
}

void sub_100207BC0(uint64_t a1)
{
  [*(a1 + 32) p_updateBottomConstraintsIfNeeded];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_100207CC8(uint64_t a1)
{
  [*(a1 + 32) p_updateBottomConstraintsIfNeeded];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_100209FD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020A084;
  v7[3] = &unk_101848EE0;
  v7[4] = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v2 p_updateUIForChangeToPageNumber:v4 animated:v3 completion:v7];
}

void sub_10020A084(uint64_t a1)
{
  if ([*(a1 + 32) p_shouldScrollToBottomOfPage])
  {
    v2 = objc_opt_class();
    v3 = sub_100014370(v2, *(a1 + 40));
    [v3 scrollToBottom];
    [*(a1 + 32) setP_shouldScrollToBottomOfPage:0];
  }

  v4 = [*(a1 + 32) insertPageViewControllerDelegate];
  [v4 insertPageViewController:*(a1 + 32) didSelectPageNumber:*(a1 + 48)];
}

uint64_t sub_10020B234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 248) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = a1 + 304;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  v4 = *(a1 + 208);
  *(a1 + 200) = 0u;

  *(a1 + 24) = 0;
  *(a1 + 104) = xmmword_101463CD0;
  *(a1 + 136) = xmmword_101463CF0;
  *(a1 + 152) = unk_101463D00;
  *(a1 + 168) = xmmword_101463D10;
  *(a1 + 184) = unk_101463D20;
  *(a1 + 120) = unk_101463CE0;
  *(a1 + 240) = 0;
  *(a1 + 32) = 0x7FF0000000000000;
  v5 = *(a1 + 392);
  *(a1 + 384) = 0u;

  v6 = *(a1 + 400);
  *(a1 + 400) = 0;

  v7 = *(a1 + 416);
  *(a1 + 416) = 0;

  *(a1 + 376) = 0;
  origin = CGRectNull.origin;
  size = CGRectNull.size;
  *(a1 + 40) = CGRectNull.origin;
  *(a1 + 56) = size;
  *(a1 + 72) = origin;
  *(a1 + 88) = size;
  v10 = *(a1 + 456);
  *(a1 + 456) = 0;

  v11 = objc_opt_new();
  v12 = *(a1 + 408);
  *(a1 + 408) = v11;

  v13 = objc_opt_new();
  v14 = *(a1 + 336);
  *(a1 + 336) = v13;

  v15 = objc_opt_new();
  v16 = *(a1 + 344);
  *(a1 + 344) = v15;

  v17 = objc_opt_new();
  v18 = *(a1 + 352);
  *(a1 + 352) = v17;

  v19 = objc_opt_new();
  v20 = *(a1 + 360);
  *(a1 + 360) = v19;

  v21 = objc_opt_new();
  v22 = *(a1 + 368);
  *(a1 + 368) = v21;

  v23 = dispatch_semaphore_create(1);
  v24 = *(a1 + 320);
  *(a1 + 320) = v23;

  v25 = dispatch_semaphore_create(1);
  v26 = *(a1 + 328);
  *(a1 + 328) = v25;

  return a1;
}

void sub_10020B3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 464);
  if (v12)
  {
    *(v10 + 472) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 432);
  if (v13)
  {
    *(v10 + 440) = v13;
    operator delete(v13);
  }

  sub_1000D87F0(v10 + 296, *(v10 + 304));
  a10 = (v10 + 272);
  sub_100217484(&a10);
  sub_100217484(&a10);
  a10 = (v10 + 216);
  sub_100217484(&a10);

  _Unwind_Resume(a1);
}

uint64_t sub_10020B4DC(uint64_t a1)
{
  *(a1 + 24) = 0x8000000000000000;
  v2 = *(a1 + 464);
  if (v2)
  {
    *(a1 + 472) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 432);
  if (v3)
  {
    *(a1 + 440) = v3;
    operator delete(v3);
  }

  sub_1000D87F0(a1 + 296, *(a1 + 304));
  v5 = (a1 + 272);
  sub_100217484(&v5);
  v5 = (a1 + 248);
  sub_100217484(&v5);
  v5 = (a1 + 216);
  sub_100217484(&v5);

  return a1;
}

void sub_10020B5E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 208))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013339D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013339E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101333A80();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"void CRLWPLineFragment::setTextSource(__strong id<CRLWPTextSource>)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:172 isFatal:0 description:"expected nil value for '%{public}s'", "_textSource"];
  }

  v7 = *(a1 + 208);
  *(a1 + 208) = v3;
}

void sub_10020B7BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10020B800(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10020B844(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 216;
  if (*(a1 + 224) != *(a1 + 216))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101333AA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101333ABC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101333B4C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"void CRLWPLineFragment::setLineRef(const CRLWPLineRef &)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:177 isFatal:0 description:"Line ref is already set"];
  }

  return sub_10020BA80(v3, 1uLL, a2);
}

void sub_10020B9F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10020BA3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10020BA80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    sub_100217508(a1);
    if (a2 <= 0x276276276276276)
    {
      v7 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v8 = 0x276276276276276;
      }

      else
      {
        v8 = v7;
      }

      sub_100217568(a1, v8);
    }

    sub_1000C1D48();
  }

  v9 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - v6) >> 3);
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - v6) >> 3);
  }

  for (; v10; --v10)
  {
    sub_10026EC3C(v6, a3);
    v6 += 104;
  }

  if (a2 <= v9)
  {
    result = *(a1 + 8);
    v15 = *a1 + 104 * a2;
    while (result != v15)
    {
      result = sub_10026EC38(result - 104);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = v11 + 104 * (a2 - v9);
    v13 = 104 * a2 - 104 * v9;
    do
    {
      result = sub_10026EC00(v11, a3);
      v11 += 104;
      v13 -= 104;
    }

    while (v13);
    *(a1 + 8) = v12;
  }

  return result;
}

uint64_t sub_10020BC20(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100217614(a1, a2);
  }

  else
  {
    sub_10026EC00(a1[1], a2);
    result = v3 + 104;
    a1[1] = v3 + 104;
  }

  a1[1] = result;
  return result;
}

double sub_10020BD60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [v4 storage];
  [v4 scaleTextPercent];

  return v5 + 0.0;
}

double sub_10020BDE8(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"CRLWPBaselineShift"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [v1 objectForKeyedSubscript:@"CRLWPSuperscript"];

  if (v6)
  {
    v7 = [v6 unsignedIntValue];
    if (v7)
    {
      v8 = [v1 objectForKeyedSubscript:kCTFontAttributeName];

      Size = CTFontGetSize(v8);
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v8, Size * 1.5, 0, 0);
      v11 = CopyWithAttributes;
      if (v7 == 2)
      {
        Descent = CTFontGetDescent(v8);
        CapHeight = CTFontGetDescent(v11);
      }

      else
      {
        if (v7 != 1)
        {
LABEL_12:
          CFRelease(v11);
          goto LABEL_13;
        }

        Descent = CTFontGetCapHeight(CopyWithAttributes);
        CapHeight = CTFontGetCapHeight(v8);
        if (Descent <= 0.0)
        {
          Descent = CTFontGetAscent(v11);
          CapHeight = CTFontGetAscent(v8);
        }
      }

      v5 = v5 + Descent - CapHeight;
      goto LABEL_12;
    }
  }

LABEL_13:

  return v5;
}

void sub_10020BF7C(unint64_t *a1@<X0>, unint64_t a2@<X1>, NSUInteger a3@<X2>, char a4@<W3>, char a5@<W4>, int a6@<W5>, void *a7@<X6>, void *a8@<X8>)
{
  v111 = a7;
  v113 = a1;
  if (a2 < *a1 || a2 + a3 > a1[1] + *a1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101333B74();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101333B88();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101333C18();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v13 = [NSString stringWithUTF8String:"CGRectVector CRLWPLineFragment::rectsForLineRange(const NSRange, BOOL, BOOL, BOOL, NSMutableArray<NSValue *> *__strong) const"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:532 isFatal:0 description:"Bad range"];
  }

  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v15 = *(v113 + 56);
  rect.origin = *(v113 + 40);
  rect.size = v15;
  if ((a4 & 1) == 0)
  {
    v16 = *(v113 + 144) + *(v113 + 120);
    if (v16 < *(v113 + 112))
    {
      v16 = *(v113 + 112);
    }

    rect.size.height = *(v113 + 136) + *(v113 + 104) + v16;
  }

  if ((a5 & 1) == 0)
  {
    v17 = *(v113 + 104);
    rect.origin.y = v17 + rect.origin.y;
    rect.size.height = rect.size.height - v17;
  }

  v18 = a8;
  if (!a3)
  {
    a3 = 0;
    rect.origin.x = sub_10020CC28(v113, a2, 0, 1, 0);
    rect.size.width = 0.0;
    goto LABEL_104;
  }

  v109 = *(v113 + 216);
  if (*(v113 + 224) == v109)
  {
    goto LABEL_104;
  }

  descent = 0.0;
  ascent = 0.0;
  if (a6 && *(v113 + 256) != *(v113 + 248))
  {
    v19 = sub_10026ECB4(v109);
    CTLineGetTypographicBounds(v19, &ascent, &descent, 0);
    v20 = *(v109 + 16);
    v21 = ascent;
    y = CGRectNull.origin.y;
    v23 = *(v113 + 248);
    v24 = *(v113 + 256);
    if (v23 != v24)
    {
      x = CGRectNull.origin.x;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
      do
      {
        v28 = sub_10026ECB4(v23);
        v134.size.width = CTLineGetTypographicBounds(v28, &ascent, &descent, 0);
        v134.origin.x = *(v23 + 8);
        v134.origin.y = *(v23 + 16) - ascent;
        v134.size.height = ascent + descent;
        v132.origin.x = x;
        v132.origin.y = y;
        v132.size.width = width;
        v132.size.height = height;
        v133 = CGRectUnion(v132, v134);
        x = v133.origin.x;
        y = v133.origin.y;
        width = v133.size.width;
        height = v133.size.height;
        v23 += 104;
      }

      while (v23 != v24);
    }

    if (y < v20 - v21)
    {
      v29 = v20 - v21 - y - *(v113 + 144);
      rect.origin.y = rect.origin.y - v29;
      rect.size.height = v29 + rect.size.height;
    }
  }

  sub_10020D35C(v113);
  v31 = *(v113 + 272);
  v30 = *(v113 + 280);
  if (v31 != v30)
  {
    v108 = *(v113 + 280);
    do
    {
      sub_10026EC00(v117, v31);
      v32 = v118;
      v33 = v119;
      v34 = [*(v113 + 208) charRangeMappedToStorage:{v118, v119}];
      length = v36.length;
      v36.length = a3;
      if (a2 > v34 || a3 + a2 < &v34[length])
      {
        v36.location = a2;
        v129.location = v34;
        v129.length = length;
        if (NSIntersectionRange(v36, v129).length)
        {
          v124.location = [*(v113 + 208) charRangeMappedFromStorage:{a2, a3}];
          v130.location = v32;
          v130.length = v33;
          v38 = NSIntersectionRange(v124, v130);
          v39 = a2;
          v40 = [*(v113 + 208) charRangeMappedToStorage:{v38.location, v38.length}];
          v42 = v41;
          v43 = v120;
          v44 = sub_10026ECB4(v117);
          v45 = v38.location - v32 + v43;
          OffsetForStringIndex = CTLineGetOffsetForStringIndex(v44, v45, 0);
          v47 = sub_10026ECB4(v117);
          v48 = CTLineGetOffsetForStringIndex(v47, v45 + v38.length, 0);
          v49 = sub_10026ECB4(v117);
          v50 = v39;
          TypographicBounds = CTLineGetTypographicBounds(v49, 0, 0, 0);
          *&v114 = sub_10020CC28(v113, v34, 0, 1, 0);
          v52 = &v34[length];
          v53 = sub_10020CC28(v113, &v34[length], 0, 1, 0);
          v115 = v53 - *&v114;
          v54 = *(v113 + 32);
          *&v114 = *&v114 - (*(v109 + 8) + *(v113 + 40));
          *(&v114 + 1) = TypographicBounds * 0.5 + v54 - v48;
          v116 = v48 - OffsetForStringIndex;
          sub_10020133C(a8, &v114);
          if (v111)
          {
            v55 = [NSValue valueWithRange:v40, v42];
            [v111 addObject:v55];
          }

          v56 = 0x7FFFFFFFFFFFFFFFLL;
          v57 = 0;
          v125.location = v39;
          v125.length = a3;
          v131.location = v34;
          v131.length = length;
          v30 = v108;
          if (NSIntersectionRange(v125, v131).length)
          {
            if (v34 >= v50 && &v34[-v50] < a3 && (v52 < v50 || &v52[-v50] >= a3))
            {
              v56 = v50;
              v57 = &v34[-v50];
            }

            else if (v50 >= v34 && v50 - v34 < length && (a3 + v50 < v34 || a3 + v50 - v34 >= length))
            {
              v56 = &v34[length];
              v57 = (a3 + v50 - v52);
            }
          }

          else
          {
            v56 = v50;
            v57 = a3;
          }

          a2 = v56;
          a3 = v57;
        }
      }

      sub_10026EC38(v117);
      v31 += 104;
    }

    while (v31 != v30);
  }

  v58 = *(v113 + 464);
  if (v58 != *(v113 + 472))
  {
    v59 = 0;
    v60 = 0;
    while (1)
    {
      v126.location = a2;
      v126.length = a3;
      v61 = NSIntersectionRange(v126, *(v58 + 40 * v59 + 16));
      if (!v61.length)
      {
        goto LABEL_87;
      }

      v62 = sub_10020DE74(v113);
      v63 = *v62;
      if (v62[1] == *v62)
      {
        goto LABEL_87;
      }

      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = -INFINITY;
      v68 = -INFINITY;
      do
      {
        if (*(v63 + v64 + 56) == v59)
        {
          if (NSIntersectionRange(*(v63 + v64), v61).length)
          {
            v63 = *v62;
            if ((v65 & 1) == 0)
            {
              v67 = *(v63 + v64 + 32);
            }

            v68 = *(v63 + v64 + 40);
            v65 = 1;
          }

          else
          {
            if (v65)
            {
              goto LABEL_63;
            }

            v65 = 0;
            v63 = *v62;
          }
        }

        ++v66;
        v64 += 64;
      }

      while (v66 < (v62[1] - v63) >> 6);
      if ((v65 & 1) == 0)
      {
        goto LABEL_87;
      }

LABEL_63:
      v69 = v113;
      v70 = *(v113 + 24);
      if ((v70 & 0x800) != 0)
      {
        v71 = v61.location + v61.length;
        if (v70 < 0)
        {
          v69 = &xmmword_101464828;
        }

        if (v71 == *v69 + *(v69 + 1))
        {
          if ((v70 & 0x1000) != 0)
          {
            v67 = sub_10020CC28(v113, v71, 0, 1, 0) - *(v109 + 8) - *(v113 + 40);
          }

          else
          {
            v68 = sub_10020CC28(v113, v71, 0, 1, 0) - *(v109 + 8) - *(v113 + 40);
          }
        }
      }

      rect.origin.x = v67 + *(v109 + 8) + *(v113 + 40);
      rect.size.width = v68 - v67;
      if (a6)
      {
        v72 = *(v113 + 256);
        for (i = *(v113 + 248); i != v72; i += 104)
        {
          v74 = sub_10026ECB4(i);
          v75 = CTLineGetTypographicBounds(v74, 0, 0, 0);
          if (NSIntersectionRange(v61, *(i + 24)).length)
          {
            v76 = *(i + 8);
            v77 = *(v113 + 40);
            MinX = CGRectGetMinX(rect);
            v79 = v76 + v77;
            v80 = rect.origin.x;
            v81 = rect.size.width;
            if (v79 < MinX)
            {
              v82 = rect.origin.y;
              v83 = rect.size.height;
              v81 = CGRectGetMaxX(*&v80) - v79;
              rect.origin.x = v79;
              rect.size.width = v81;
              v80 = v79;
            }

            v84 = rect.origin.y;
            v85 = rect.size.height;
            v86 = v75 + v79;
            if (v86 > CGRectGetMaxX(*&v80))
            {
              rect.size.width = v86 - CGRectGetMinX(rect);
            }
          }
        }
      }

      v87 = a8[1];
      if (*a8 != v87)
      {
        MaxX = CGRectGetMaxX(*(v87 - 32));
        v89 = CGRectGetMinX(rect);
        if (MaxX == v89 || vabdd_f64(MaxX, v89) < 0.00999999978)
        {
          break;
        }
      }

      sub_10020133C(a8, &rect);
      if (v111)
      {
        v90 = [NSValue valueWithRange:v61.location, v61.length];
        [v111 addObject:v90];
LABEL_86:
      }

LABEL_87:
      v58 = *(v113 + 464);
      v59 = ++v60;
      if (0xCCCCCCCCCCCCCCCDLL * ((*(v113 + 472) - v58) >> 3) <= v60)
      {
        goto LABEL_103;
      }
    }

    v91 = a8[1];
    *(v91 - 32) = CGRectUnion(*(v91 - 32), rect);
    if (!v111 || a8[1] == *a8)
    {
      goto LABEL_87;
    }

    v92 = [v111 lastObject];
    v93 = [v92 rangeValue];
    v95 = v94;

    v127.location = v93;
    v127.length = v95;
    v96 = NSUnionRange(v127, v61);
    v90 = [NSValue valueWithRange:v96.location, v96.length];
    [v111 setObject:v90 atIndexedSubscript:{objc_msgSend(v111, "count") - 1}];
    goto LABEL_86;
  }

  if (*(v113 + 24) < 0)
  {
    v97 = &xmmword_101464828;
  }

  else
  {
    v97 = v113;
  }

  v128.location = a2;
  v128.length = a3;
  v98 = NSIntersectionRange(v128, *v97);
  if (v98.length)
  {
    v99 = v113;
    v100 = *(v113 + 24);
    v101 = 0.0;
    if ((v100 & 0x800) != 0)
    {
      v102 = v98.location + v98.length;
      if (v100 < 0)
      {
        v99 = &xmmword_101464828;
      }

      if (v102 == *v99 + *(v99 + 1))
      {
        if ((v100 & 0x1000) == 0)
        {
          v103 = sub_10020CC28(v113, v102, 0, 1, 0) - *(v109 + 8) - *(v113 + 40);
LABEL_102:
          rect.origin.x = v101 + *(v109 + 8) + *(v113 + 40);
          rect.size.width = v103 - v101;
          goto LABEL_103;
        }

        v101 = sub_10020CC28(v113, v102, 0, 1, 0) - *(v109 + 8) - *(v113 + 40);
      }
    }

    v103 = 0.0;
    goto LABEL_102;
  }

LABEL_103:
  v18 = a8;
LABEL_104:
  if (*v18 == v18[1])
  {
    sub_10020133C(v18, &rect);
  }

  v104 = v111;
  if (v111)
  {
    v105 = [v111 count];
    v104 = v111;
    if (!v105)
    {
      v106 = [NSValue valueWithRange:a2, a3];
      [v111 addObject:v106];

      v104 = v111;
    }
  }
}

void sub_10020CA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v14 = *a12;
  if (*a12)
  {
    *(a12 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void sub_10020CBA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10020CBE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_10020CC28(uint64_t a1, unint64_t a2, uint64_t a3, char a4, double *a5)
{
  v9 = *(a1 + 24);
  v10 = &xmmword_101464828;
  if (v9 >= 0)
  {
    v10 = a1;
  }

  v12 = *v10;
  v11 = *(v10 + 1);
  if (a5)
  {
    *a5 = 0.0;
  }

  if (*(a1 + 400))
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    if ((v9 & 0x1000) != 0)
    {
      if (*a1 == a2)
      {
        goto LABEL_8;
      }
    }

    else if (*a1 != a2)
    {
LABEL_8:
      MaxX = CGRectGetMaxX(*&v13);
      goto LABEL_30;
    }

    MaxX = CGRectGetMinX(*&v13);
LABEL_30:
    v27 = MaxX;
    if (a5)
    {
      *a5 = MaxX;
      if (a4)
      {
        return v27;
      }

      goto LABEL_81;
    }

LABEL_80:
    if (a4)
    {
      return v27;
    }

    goto LABEL_81;
  }

  v18 = *(a1 + 216);
  v19 = *(a1 + 224) - v18;
  if (!v19)
  {
    v27 = 0.0;
    if (a4)
    {
      return v27;
    }

    goto LABEL_81;
  }

  if (v12 + v11 != a2)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x800) != 0)
  {
    v38 = *(a1 + 208);
    if (!v38)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101333C40();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101333C54();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101333CF0();
      }

      v39 = off_1019EDA68;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v40 = [NSString stringWithUTF8String:"CGFloat CRLWPLineFragment::wpOffsetForCharIndex(CRLWPCharIndex, BOOL, BOOL, CGFloat *) const"];
      v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
      [CRLAssertionHandler handleFailureInFunction:v40 file:v41 lineNumber:1382 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];

      v38 = *(a1 + 208);
    }

    v42 = [v38 charIndexMappedFromStorage:a2] - 1;
    secondaryOffset = 0.0;
    if ((*(a1 + 25) & 0x40) != 0)
    {
      v42 = &v42[*(a1 + 16) - *a1];
    }

    v43 = sub_10026ECB4(v18);
    OffsetForStringIndex = CTLineGetOffsetForStringIndex(v43, v42, &secondaryOffset);
    v45 = *(v18 + 8);
    v46 = OffsetForStringIndex + v45;
    v47 = v45 + secondaryOffset;
    secondaryOffset = v45 + secondaryOffset;
    if (a5)
    {
      *a5 = v47;
    }

    else if ((v9 & 0x1000) == 0)
    {
      v46 = v47;
    }

    if (sub_100280DC0(v42, *(a1 + 208)))
    {
      v48 = 0.0;
      if ((v9 & 0x1000) == 0)
      {
        v48 = *(a1 + 56);
      }

      v28 = v48;
      if (!a5)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v49 = 7.0;
      if ((v9 & 0x1000) != 0)
      {
        v49 = -7.0;
      }

      v28 = v49 + v46;
      if (!a5)
      {
        goto LABEL_77;
      }

      v48 = v49 + *a5;
    }

    *a5 = v48;
LABEL_77:
    v50 = *(a1 + 40);
    v27 = v28 + v50;
    if (!a5)
    {
      goto LABEL_80;
    }

    v51 = v50 + *a5;
    goto LABEL_79;
  }

  if ((v9 & 0x1002) != 2)
  {
LABEL_33:
    v28 = 0.0;
    if (*a1 <= a2)
    {
      v29 = *(a1 + 208);
      if (!v29)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101333D18();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101333D2C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101333DC8();
        }

        v30 = off_1019EDA68;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v31 = [NSString stringWithUTF8String:"CGFloat CRLWPLineFragment::wpOffsetForCharIndex(CRLWPCharIndex, BOOL, BOOL, CGFloat *) const"];
        v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
        [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:1424 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];

        v29 = *(a1 + 208);
      }

      v33 = [v29 charIndexMappedFromStorage:{a2, v28}];
      v34 = v33;
      if ((*(a1 + 25) & 0x40) != 0)
      {
        v34 = v33 + *(a1 + 16) - *a1;
      }

      secondaryOffset = 0.0;
      v35 = sub_10026ECB4(v18);
      v36 = CTLineGetOffsetForStringIndex(v35, v34, &secondaryOffset);
      v37 = *(v18 + 8);
      if (a5)
      {
        *a5 = v37 + secondaryOffset;
      }

      v28 = v36 + v37;
    }

    goto LABEL_77;
  }

  v20 = 0x4EC4EC4EC4EC4EC5 * (v19 >> 3);
  if (v20 <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101333DF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101333E04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101333E94();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v22 = [NSString stringWithUTF8String:"CGFloat CRLWPLineFragment::wpOffsetForCharIndex(CRLWPCharIndex, BOOL, BOOL, CGFloat *) const"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:1413 isFatal:0 description:"Missing hyphen line ref"];

    v18 = *(a1 + 216);
    v20 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 224) - v18) >> 3);
  }

  v24 = 0.0;
  if (v20 >= 2)
  {
    v25 = v20 - 1;
    v26 = v18 + 104;
    while ((*(v26 + 96) & 2) == 0)
    {
      v26 += 104;
      if (!--v25)
      {
        goto LABEL_85;
      }
    }

    v58 = *(v26 + 8);
    v59 = sub_10026ECB4(v26);
    v24 = v58 + CTLineGetTypographicBounds(v59, 0, 0, 0);
  }

LABEL_85:
  if (a5)
  {
    *a5 = v24;
    v51 = v24 + *(a1 + 40);
    v27 = v51;
LABEL_79:
    *a5 = v51;
    goto LABEL_80;
  }

  v27 = v24 + *(a1 + 40);
  if (a4)
  {
    return v27;
  }

LABEL_81:
  v52 = CGRectGetMaxX(*(a1 + 40));
  v27 = fmax(fmin(v27, v52), CGRectGetMinX(*(a1 + 40)));
  if (a5)
  {
    v53 = *a5;
    v55 = *(a1 + 40);
    v54 = (a1 + 40);
    v61.origin.x = v55;
    v61.origin.y = v54->origin.y;
    v61.size.width = v54->size.width;
    v61.size.height = v54->size.height;
    v56 = CGRectGetMaxX(v61);
    *a5 = fmax(fmin(v53, v56), CGRectGetMinX(*v54));
  }

  return v27;
}

intptr_t sub_10020D35C(uint64_t *a1)
{
  dispatch_semaphore_wait(a1[41], 0xFFFFFFFFFFFFFFFFLL);
  if (a1[59] != a1[58])
  {
    v2 = a1[41];

    return dispatch_semaphore_signal(v2);
  }

  v4 = a1[27];
  if (a1[28] == v4 || (*(a1 + 25) & 0x40) != 0)
  {
    goto LABEL_78;
  }

  v5 = sub_10026ECB4(v4);
  length = 0;
  v91 = 0x7FFFFFFFFFFFFFFFLL;
  if (!a1[26])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101333EBC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101333ED0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101333F6C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"void CRLWPLineFragment::fillWritingDirectionRuns() const"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:2128 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];
  }

  if (!a1[57])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101333F94();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101333FBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101334058();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"void CRLWPLineFragment::fillWritingDirectionRuns() const"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2129 isFatal:0 description:"invalid nil value for '%{public}s'", "_paragraphString"];
  }

  v94 = a1[31];
  v95 = a1[32];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v89 = CTLineGetGlyphRuns(v5);
  v12 = v89;
  v13 = [v89 countByEnumeratingWithState:&v100 objects:v110 count:16];
  if (!v13)
  {

    goto LABEL_78;
  }

  v92 = 0;
  v93 = *v101;
  v14 = -1;
  v99 = 1;
  v15 = -1;
  v98 = 1;
  do
  {
    v96 = v13;
    for (i = 0; i != v96; i = i + 1)
    {
      if (*v101 != v93)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v100 + 1) + 8 * i);
      StringRange = CTRunGetStringRange(v17);
      if (StringRange.length == 1 && v95 != v94)
      {
        Attributes = CTRunGetAttributes(v17);
        if (CFDictionaryContainsKey(Attributes, @"CRLWPRubySpacingRunAttribute"))
        {
          continue;
        }
      }

      Status = CTRunGetStatus(v17);
      v97 = (Status & 1) == 0;
      if (v99)
      {
        v98 = (*(a1 + 25) & 0x10) == 0;
      }

      v22 = a1[57];
      v23 = sub_10028024C(StringRange.location, v22);
      v24 = sub_100281034(v23);

      if (v24 == 3 && StringRange.location != 0)
      {
        v26 = a1[57];
        location = CTRunGetStringRange(v17).location;
        v28 = CFStringGetRangeOfComposedCharactersAtIndex(v26, location - 1).location;

        v29 = a1[57];
        v30 = sub_10028024C(v28, v29);
        v31 = sub_100281034(v30) != 0;

        goto LABEL_49;
      }

      v31 = 0;
      if (((v98 ^ Status) & 1) != 0 && !(BYTE4(v92) & 1 | (v24 == 3)) && ((v31 = 0, StringRange.location + StringRange.length == v91) || length + v91 == StringRange.location))
      {
        BYTE4(v92) = 0;
      }

      else
      {
LABEL_49:
        if ((v99 & 1) == 0)
        {
          BYTE2(v109) = v98;
          buffer = v15;
          *v105 = v14;
          HIBYTE(v109) = v92 & 1;
          sub_10021398C((a1 + 58), &buffer);
        }

        LOBYTE(v92) = v24 == 3 && v31;
        v14 = -1;
        v15 = -1;
        BYTE4(v92) = v24 == 3;
        v98 = v97;
      }

      v12 = v89;
      GlyphCount = CTRunGetGlyphCount(v17);
      sub_1000E7C60(&buffer, GlyphCount);
      v112.location = 0;
      v112.length = GlyphCount;
      CTRunGetStringIndices(v17, v112, buffer);
      if (GlyphCount >= 1)
      {
        for (j = 0; j != GlyphCount; ++j)
        {
          v34 = [a1[26] charIndexMappedToStorage:buffer[j]];
          if (v34 >= v15)
          {
            v35 = v15;
          }

          else
          {
            v35 = v34;
          }

          if (v15 == -1)
          {
            v15 = v34;
          }

          else
          {
            v15 = v35;
          }

          if (v34 <= v14)
          {
            v36 = v14;
          }

          else
          {
            v36 = v34;
          }

          if (v14 == -1)
          {
            v14 = v34;
          }

          else
          {
            v14 = v36;
          }
        }
      }

      if (buffer)
      {
        *v105 = buffer;
        operator delete(buffer);
      }

      v99 = 0;
      length = StringRange.length;
      v91 = StringRange.location;
      continue;
    }

    v13 = [v12 countByEnumeratingWithState:&v100 objects:v110 count:16];
  }

  while (v13);

  if (v15 != -1 && v14 != -1)
  {
    BYTE2(v109) = v98;
    buffer = v15;
    *v105 = v14;
    HIBYTE(v109) = v92 & 1;
    sub_10021398C((a1 + 58), &buffer);
  }

LABEL_78:
  v39 = a1[58];
  v38 = a1[59];
  v40 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v39) >> 3);
  if (v38 != v39)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = *a1;
      v44 = a1[3];
      v45 = v44 < 0;
      if (v44 < 0)
      {
        v46 = &xmmword_101464828;
      }

      else
      {
        v46 = a1;
      }

      v47 = *(v46 + 1);
      v48 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v45)
      {
        v48 = *a1;
      }

      v49 = v48 + v47;
      v50 = (v39 + 40 * v41);
      v51 = *v50;
      v52 = v50[1];
      v53 = (v39 + 8);
      v54 = 1;
      do
      {
        v55 = *(v53 - 1);
        v56 = *v53;
        v57 = *v53 > v43 && v56 <= v51;
        v58 = !v57;
        if (v55 <= v56)
        {
          v59 = *v53;
        }

        else
        {
          v59 = *(v53 - 1);
        }

        if (v55 >= v56)
        {
          v60 = *v53;
        }

        else
        {
          v60 = *(v53 - 1);
        }

        v61 = v58 == 0;
        if (v58)
        {
          v62 = v43;
        }

        else
        {
          v62 = *v53;
        }

        if (!v61)
        {
          v59 = *(v53 - 1);
        }

        if (v55 > v51 || v55 <= v43)
        {
          v43 = v62;
        }

        else
        {
          v43 = v59;
        }

        if (v52)
        {
          v64 = v56 < v49;
        }

        else
        {
          v64 = 0;
        }

        if (!v64 || v56 <= v52)
        {
          v56 = v49;
          v67 = *(v53 - 1);
        }

        else
        {
          v67 = v60;
        }

        if (v55 > v52 && v55 < v49)
        {
          v49 = v67;
        }

        else
        {
          v49 = v56;
        }

        v53 += 5;
        v57 = v40 > v54++;
      }

      while (v57);
      if (v49 >= v43)
      {
        v50[2] = v43;
        v50[3] = v49 - v43;
      }

      else
      {
        v69 = [CRLAssertionHandler _atomicIncrementAssertCount:v67];
        if (qword_101AD5A10 != -1)
        {
          sub_101334080();
        }

        v70 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buffer) = 67109890;
          HIDWORD(buffer) = v69;
          *v105 = 2082;
          *&v105[2] = "void CRLWPLineFragment::fillWritingDirectionRuns() const";
          v106 = 2082;
          v107 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm";
          v108 = 1024;
          v109 = 2243;
          _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad ranges in runs.", &buffer, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013340A8();
        }

        v71 = off_1019EDA68;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v74 = +[CRLAssertionHandler packedBacktraceString];
          LODWORD(buffer) = 67109378;
          HIDWORD(buffer) = v69;
          *v105 = 2114;
          *&v105[2] = v74;
          _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buffer, 0x12u);
        }

        v72 = [NSString stringWithUTF8String:"void CRLWPLineFragment::fillWritingDirectionRuns() const"];
        v73 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
        [CRLAssertionHandler handleFailureInFunction:v72 file:v73 lineNumber:2243 isFatal:0 description:"Bad ranges in runs."];

        v39 = a1[58];
        *(v39 + 40 * v41 + 16) = xmmword_1014630E0;
        v38 = a1[59];
      }

      v40 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v39) >> 3);
      v41 = ++v42;
    }

    while (v40 > v42);
  }

  if (v38 != v39)
  {
    v75 = 0;
    v76 = 0;
    do
    {
      if (v40 - 1 > v75 && (v77 = v39 + 40 * (v76 + 1), v78 = *(v77 + 16), v79 = v39 + 40 * v75, v80 = *(v79 + 16), v78 <= v80) && *(v77 + 24) + v78 >= *(v79 + 24) + v80)
      {
        v87 = v39 + 40 * v75;
        v88 = v38 - (v87 + 40);
        if (v38 != v87 + 40)
        {
          memmove((v39 + 40 * v75), (v87 + 40), v38 - (v87 + 40));
        }

        v38 = v87 + v88;
        a1[59] = v87 + v88;
        --v76;
      }

      else if (v76)
      {
        v81 = v39 + 40 * (v76 - 1);
        v82 = *(v81 + 16);
        v83 = v39 + 40 * v75;
        v84 = *(v83 + 16);
        if (v82 <= v84 && *(v81 + 24) + v82 >= *(v83 + 24) + v84)
        {
          v85 = v39 + 40 * v75;
          v86 = v38 - (v85 + 40);
          if (v38 != v85 + 40)
          {
            memmove((v39 + 40 * v75), (v85 + 40), v38 - (v85 + 40));
          }

          v38 = v85 + v86;
          a1[59] = v85 + v86;
          --v76;
        }
      }

      v39 = a1[58];
      v40 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v39) >> 3);
      v75 = ++v76;
    }

    while (v40 > v76);
  }

  return dispatch_semaphore_signal(a1[41]);
}

uint64_t sub_10020DE74(uint64_t a1)
{
  if (*(a1 + 224) == *(a1 + 216) || (*(a1 + 25) & 0x40) != 0)
  {
    return a1 + 432;
  }

  v2 = *(a1 + 456);
  objc_sync_enter(v2);
  if (*(a1 + 432) != *(a1 + 440))
  {
    goto LABEL_124;
  }

  v70 = v2;
  if (!*(a1 + 208))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013340D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013340E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101334180();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v4 = [NSString stringWithUTF8String:"const std::vector<CRLWPLFCharIndexData> &CRLWPLineFragment::getCharIndexData() const"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:2357 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];
  }

  if (!*(a1 + 456))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013341A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013341D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133426C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"const std::vector<CRLWPLFCharIndexData> &CRLWPLineFragment::getCharIndexData() const"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:2358 isFatal:0 description:"invalid nil value for '%{public}s'", "_paragraphString"];
  }

  sub_10020D35C(a1);
  line = sub_10026ECB4(*(a1 + 216));
  v9 = &xmmword_101464828;
  if (*(a1 + 24) >= 0)
  {
    v9 = a1;
  }

  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = [*(a1 + 208) charIndexRemappedFromStorage:*v9];
  v72 = v10 + v11;
  if (v12 >= v10 + v11)
  {
    goto LABEL_92;
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v15 = [*(a1 + 208) charRangeMappedFromStorage:{v12, 1}];
    if (v16 >= 2)
    {
      v17 = *(a1 + 456);
      v18 = [v17 characterAtIndex:v15] == 8206;

      v15 += v18;
    }

    secondaryOffset = 0.0;
    v73[2] = CTLineGetOffsetForStringIndex(line, v15, &secondaryOffset);
    v73[3] = secondaryOffset;
    v74 = 1;
    v75 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = *(a1 + 464);
    v20 = *(a1 + 472);
    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v19) >> 3);
    if (v14 < v21)
    {
      v22 = v19 + 40 * v14;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      v26 = v12 >= v24;
      v25 = &v12[-v24];
      v26 = !v26 || v25 >= v23;
      if (!v26)
      {
        goto LABEL_47;
      }
    }

    if (v20 != v19)
    {
      v14 = 0;
      if (v21 <= 1)
      {
        v21 = 1;
      }

      v27 = (v19 + 24);
      while (1)
      {
        v28 = *(v27 - 1);
        v26 = v12 >= v28;
        v29 = &v12[-v28];
        if (v26 && v29 < *v27)
        {
          break;
        }

        v27 += 5;
        if (v21 == ++v14)
        {
          v14 = v21;
          goto LABEL_49;
        }
      }

LABEL_47:
      v74 = *(v19 + 40 * v14 + 32);
      v75 = v14;
      goto LABEL_49;
    }

    v14 = 0;
LABEL_49:
    v31 = *(a1 + 456);
    v32 = [*(a1 + 208) charIndexMappedFromStorage:v12];
    v33 = v31;
    if ([v33 length] <= v32)
    {
      break;
    }

    v34 = [v33 rangeOfComposedCharacterSequenceAtIndex:v32];
    v36 = v35;
    if (v34 == 0x7FFFFFFFFFFFFFFFLL || !v35)
    {
      v37 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101334374();
      }

      v38 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v78 = v37;
        v79 = 2082;
        v80 = "NSUInteger countOfComposedCharacters(NSString *__strong, NSUInteger)";
        v81 = 2082;
        v82 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm";
        v83 = 1024;
        v84 = 2087;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected 0 length for composed sequence.", buf, 0x22u);
        if (qword_101AD5A10 != -1)
        {
          sub_10133439C();
        }
      }

      v39 = off_1019EDA68;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v47 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        v78 = v37;
        v79 = 2114;
        v80 = v47;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v40 = [NSString stringWithUTF8String:"NSUInteger countOfComposedCharacters(NSString *__strong, NSUInteger)"];
      v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
      [CRLAssertionHandler handleFailureInFunction:v40 file:v41 lineNumber:2087 isFatal:0 description:"Unexpected 0 length for composed sequence."];

      if (!v36)
      {
        v36 = 1;
      }
    }

    v42 = [*(a1 + 208) charIndexMappedToStorage:&v15[v36]];
    v43 = &v12[v36];
    v44 = &v15[v36];
    do
    {
      if (v42 >= v43)
      {
        break;
      }

      v42 = [*(a1 + 208) charIndexMappedToStorage:++v44];
    }

    while (v44 < [*(a1 + 208) length]);
    if (v12 <= v42)
    {
      v45 = v42;
    }

    else
    {
      v45 = v12;
    }

    if (v12 >= v42)
    {
      v46 = *&v42;
    }

    else
    {
      v46 = *&v12;
    }

    v73[0] = v46;
    *&v73[1] = &v45[-*&v46];
    sub_100214398(a1 + 432, v73);
    if (v12 >= v42)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013343C4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013343EC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133447C();
      }

      v51 = off_1019EDA68;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v49 = [NSString stringWithUTF8String:"const std::vector<CRLWPLFCharIndexData> &CRLWPLineFragment::getCharIndexData() const"];
      v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
      [CRLAssertionHandler handleFailureInFunction:v49 file:v50 lineNumber:2427 isFatal:0 description:"textSource failed to advance"];
      goto LABEL_91;
    }

    v12 = v45;
    if (v45 >= v72)
    {
      goto LABEL_92;
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101334294();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013342BC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133434C();
  }

  v48 = off_1019EDA68;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v49 = [NSString stringWithUTF8String:"const std::vector<CRLWPLFCharIndexData> &CRLWPLineFragment::getCharIndexData() const"];
  v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
  [CRLAssertionHandler handleFailureInFunction:v49 file:v50 lineNumber:2408 isFatal:0 description:"countOfComposedCharacters failed"];
LABEL_91:

LABEL_92:
  v53 = *(a1 + 432);
  v52 = *(a1 + 440);
  v54 = (v52 - v53) >> 6;
  if (v52 != v53)
  {
    v55 = 0;
    v56 = v54 - 1;
    if (v54 <= 1)
    {
      v57 = 1;
    }

    else
    {
      v57 = (v52 - v53) >> 6;
    }

    v58 = *(a1 + 24);
    do
    {
      if ((v58 & 0x1000) != 0)
      {
        v59 = 16;
      }

      else
      {
        v59 = 24;
      }

      v60 = *(v53 + v59 + v55 * 16);
      if (v56)
      {
        v61 = LOBYTE(v53[v55 + 3]);
        if (v61 == LOBYTE(v53[v55 + 7]) || (v58 & 0x1000) == 0)
        {
          v63 = 80;
        }

        else
        {
          v63 = 88;
        }

        v13.n128_u64[0] = *(&v53[v55] + v63);
      }

      else
      {
        v73[0] = 0.0;
        v13.n128_f64[0] = CTLineGetOffsetForStringIndex(line, [*(a1 + 208) charIndexMappedFromStorage:v72], v73);
        v58 = *(a1 + 24);
        if ((v58 & 0x1000) != 0 && LOBYTE(v53[v55 + 3]))
        {
          v13.n128_f64[0] = v73[0];
        }

        LOBYTE(v61) = v53[v55 + 3];
        v53 = *(a1 + 432);
      }

      v64 = (v61 & 1) == 0;
      if (v61)
      {
        v65 = v60;
      }

      else
      {
        v65 = v13.n128_f64[0];
      }

      v66 = &v53[v55];
      if (v64)
      {
        v13.n128_f64[0] = v60;
      }

      *(v66 + 4) = v65;
      *(v66 + 5) = v13.n128_u64[0];
      --v56;
      v55 += 4;
      --v57;
    }

    while (v57);
    v52 = *(a1 + 440);
    v54 = (v52 - v53) >> 6;
  }

  *&v73[0] = sub_100213FD8;
  v67 = 126 - 2 * __clz(v54);
  if (v52 == v53)
  {
    v68 = 0;
  }

  else
  {
    v68 = v67;
  }

  sub_100217A94(v53, v52, v73, v68, 1, v13);
  v2 = v70;
LABEL_124:
  objc_sync_exit(v2);

  return a1 + 432;
}

void sub_10020E8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10020E9F4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, int a8@<W7>, void *a9@<X8>, void *a10)
{
  v69 = a10;
  if (a2 < *a1 || a2 + a3 > *(a1 + 8) + *a1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013344A4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013344B8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101334548();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v16 = [NSString stringWithUTF8String:"CGRectVector CRLWPLineFragment::rectsForVisualRange(NSRange, NSUInteger, NSUInteger, BOOL, BOOL, BOOL, NSMutableArray<NSValue *> *__strong) const"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:749 isFatal:0 description:"Bad range"];
  }

  v18 = *(a1 + 56);
  v72 = *(a1 + 40);
  v73 = v18;
  if ((a6 & 1) == 0)
  {
    v19 = *(a1 + 144) + *(a1 + 120);
    if (v19 < *(a1 + 112))
    {
      v19 = *(a1 + 112);
    }

    *(&v73 + 1) = *(a1 + 136) + *(a1 + 104) + v19;
  }

  if ((a7 & 1) == 0)
  {
    v20 = *(a1 + 104);
    *(&v72 + 1) = v20 + *(&v72 + 1);
    *(&v73 + 1) = *(&v73 + 1) - v20;
  }

  if (a3)
  {
    v21 = *(a1 + 216);
    if (*(a1 + 224) != v21)
    {
      descent = 0.0;
      ascent = 0.0;
      if (a8 && *(a1 + 256) != *(a1 + 248))
      {
        v22 = sub_10026ECB4(v21);
        CTLineGetTypographicBounds(v22, &ascent, &descent, 0);
        v23 = *(v21 + 16);
        v24 = ascent;
        y = CGRectZero.origin.y;
        v26 = *(a1 + 248);
        if (v26 == *(a1 + 256))
        {
          v33 = CGRectZero.origin.y;
        }

        else
        {
          x = CGRectZero.origin.x;
          width = CGRectZero.size.width;
          height = CGRectZero.size.height;
          do
          {
            v30 = sub_10026ECB4(v26);
            TypographicBounds = CTLineGetTypographicBounds(v30, &ascent, &descent, 0);
            v32 = *(v26 + 8);
            v33 = *(v26 + 16) - ascent;
            v34 = ascent + descent;
            if (v26 != *(a1 + 248))
            {
              v74.origin.x = x;
              v74.origin.y = y;
              v74.size.width = width;
              v74.size.height = height;
              v75 = CGRectUnion(v74, *&v32);
              v32 = v75.origin.x;
              v33 = v75.origin.y;
              TypographicBounds = v75.size.width;
              v34 = v75.size.height;
            }

            v26 += 104;
            height = v34;
            width = TypographicBounds;
            y = v33;
            x = v32;
          }

          while (v26 != *(a1 + 256));
        }

        if (v33 < v23 - v24)
        {
          v35 = v23 - v24 - v33 - *(a1 + 144);
          *(&v72 + 1) = *(&v72 + 1) - v35;
          *(&v73 + 1) = v35 + *(&v73 + 1);
        }
      }

      v37 = CGRectNull.origin.x;
      v36 = CGRectNull.origin.y;
      v39 = CGRectNull.size.width;
      v38 = CGRectNull.size.height;
      v40 = sub_10020DE74(a1);
      v41 = v40[1] - *v40;
      if (v41)
      {
        v42 = v41 >> 6;
        if (v42 <= 1)
        {
          v42 = 1;
        }

        v43 = (*v40 + 32);
        v44 = v38;
        v45 = v39;
        v46 = v36;
        v47 = CGRectNull.origin.x;
        do
        {
          v48 = *(v43 - 4);
          v49 = *(v43 - 3);
          v50 = a4 < v48 || a4 - v48 >= v49;
          v51 = !v50;
          if (v50 && (a5 < v48 || a5 - v48 >= v49))
          {
            goto LABEL_55;
          }

          v53 = v43[1] - *v43;
          v54 = *v43 + *(a1 + 40);
          v55 = *(v21 + 8);
          v56 = *(v21 + 16);
          v57 = v54 + v55;
          v58 = *(&v72 + 1) + v56;
          if (v51)
          {
            v37 = v54 + v55;
            v36 = *(&v72 + 1) + v56;
            v39 = v43[1] - *v43;
            v38 = *(&v73 + 1);
          }

          v50 = a5 >= v48;
          v59 = a5 - v48;
          if (!v50 || v59 >= v49)
          {
LABEL_55:
            v57 = v47;
            v58 = v46;
            v53 = v45;
          }

          else
          {
            v44 = *(&v73 + 1);
          }

          v43 += 8;
          v45 = v53;
          v46 = v58;
          v47 = v57;
          --v42;
        }

        while (v42);
      }

      else
      {
        v57 = CGRectNull.origin.x;
        v58 = v36;
        v53 = v39;
        v44 = v38;
      }

      v61 = *(a1 + 24);
      v76.origin.x = v37;
      v76.origin.y = v36;
      v76.size.width = v39;
      v76.size.height = v38;
      if (CGRectIsEmpty(v76))
      {
        v36 = *(&v72 + 1);
        v38 = *(&v73 + 1);
        if ((v61 & 0x1000) != 0)
        {
          v37 = *&v72 + *&v73 + -1.0;
        }

        else
        {
          v37 = *&v72;
        }

        v39 = 1.0;
      }

      v77.origin.x = v57;
      v77.origin.y = v58;
      v77.size.width = v53;
      v77.size.height = v44;
      if (CGRectIsEmpty(v77))
      {
        v58 = *(&v72 + 1);
        v44 = *(&v73 + 1);
        if ((v61 & 0x1000) != 0)
        {
          v57 = *&v72;
        }

        else
        {
          v57 = *&v72 + *&v73 + -1.0;
        }

        v53 = 1.0;
      }

      v78.origin.x = v37;
      v78.origin.y = v36;
      v78.size.width = v39;
      v78.size.height = v38;
      v80.origin.x = v57;
      v80.origin.y = v58;
      v80.size.width = v53;
      v80.size.height = v44;
      v79 = CGRectUnion(v78, v80);
      *&v72 = v79.origin.x;
      *(&v72 + 1) = *&v79.origin.y;
      *&v73 = v79.size.width;
      *(&v73 + 1) = *&v79.size.height;
    }
  }

  else
  {
    *&v72 = sub_10020CC28(a1, a2, 0, 1, 0);
    *&v73 = 0;
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  sub_10020133C(a9, &v72);
  if (v69)
  {
    if (a4 <= a5)
    {
      v62 = a5;
    }

    else
    {
      v62 = a4;
    }

    if (a4 >= a5)
    {
      v63 = a5;
    }

    else
    {
      v63 = a4;
    }

    v64 = [NSValue valueWithRange:v63, v62 - v63];
    [v69 addObject:v64];
  }
}

void sub_10020EFDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10020F020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10020F064()
{
  if (qword_101A34868 != -1)
  {
    sub_101334570();
  }

  return qword_101A34860;
}

double sub_10020F0DC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v102 = a4;
  y = CGRectNull.origin.y;
  x = CGRectNull.origin.x;
  height = CGRectNull.size.height;
  r1 = CGRectNull.size.width;
  dispatch_semaphore_wait(*(a1 + 320), 0xFFFFFFFFFFFFFFFFLL);
  if (!*(a1 + 312))
  {
    v14 = *(a1 + 272);
    for (i = *(a1 + 280); v14 != i; v14 += 104)
    {
      v16 = *(v14 + 24);
      v15 = *(v14 + 32);
      if (!*(a1 + 208))
      {
        v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101334584();
        }

        v18 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v119.a) = 67110146;
          HIDWORD(v119.a) = v17;
          LOWORD(v119.b) = 2082;
          *(&v119.b + 2) = "CGRect CRLWPLineFragment::rawGlyphRectForLineRange(NSRange, CRLWPColumn *__strong) const";
          WORD1(v119.c) = 2082;
          *(&v119.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm";
          WORD2(v119.d) = 1024;
          *(&v119.d + 6) = 878;
          WORD1(v119.tx) = 2082;
          *(&v119.tx + 4) = "_textSource";
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &v119, 0x2Cu);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013345AC();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v44 = +[CRLAssertionHandler packedBacktraceString];
          LODWORD(v119.a) = 67109378;
          HIDWORD(v119.a) = v17;
          LOWORD(v119.b) = 2114;
          *(&v119.b + 2) = v44;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v119, 0x12u);
        }

        v20 = [NSString stringWithUTF8String:"CGRect CRLWPLineFragment::rawGlyphRectForLineRange(NSRange, CRLWPColumn *__strong) const"];
        v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
        [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:878 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];
      }

      if (v15)
      {
        v22 = sub_10026ECB4(v14);
        v23 = CTLineGetGlyphRuns(v22);
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        obj = v23;
        v24 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
        if (v24)
        {
          v103 = *v115;
          v25 = v15 + v16;
          do
          {
            for (j = 0; j != v24; j = j + 1)
            {
              if (*v115 != v103)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v114 + 1) + 8 * j);
              GlyphCount = CTRunGetGlyphCount(v27);
              sub_1000E7C60(&buffer, GlyphCount);
              v123.location = 0;
              v123.length = GlyphCount;
              CTRunGetStringIndices(v27, v123, buffer);
              sub_100200C74(descent, GlyphCount);
              v124.location = 0;
              v124.length = GlyphCount;
              CTRunGetGlyphs(v27, v124, *&descent[0]);
              v125.location = 0;
              v125.length = 1;
              CTRunGetPositions(v27, v125, &v110);
              [*(a1 + 208) charIndexMappedToStorage:v16];
              v30 = sub_10020BD60(a1, v29, v102);
              if (GlyphCount >= 1)
              {
                v31 = v30;
                for (k = 0; k != GlyphCount; ++k)
                {
                  v33 = buffer[k] - *(v14 + 40);
                  if (v33 < v25 && *(*&descent[0] + 2 * k) != -1)
                  {
                    if (qword_101A34868 != -1)
                    {
                      sub_1013345D4();
                    }

                    v129.location = k;
                    v129.length = 1;
                    ImageBounds = CTRunGetImageBounds(v27, qword_101A34860, v129);
                    v34 = ImageBounds.origin.x;
                    v35 = ImageBounds.origin.y;
                    width = ImageBounds.size.width;
                    v37 = ImageBounds.size.height;
                    memset(&v119, 0, sizeof(v119));
                    CGAffineTransformMakeTranslation(&v119, *(a1 + 40) + *(v14 + 8), v31 + *(v14 + 16));
                    v109 = v119;
                    CGAffineTransformRotate(&v121, &v109, -1.57079633);
                    v119 = v121;
                    v109 = v121;
                    CGAffineTransformScale(&v121, &v109, 1.0, -1.0);
                    v119 = v121;
                    v133.origin.x = v34;
                    v133.origin.y = v35;
                    v133.size.width = width;
                    v133.size.height = v37;
                    v134 = CGRectApplyAffineTransform(v133, &v121);
                    v38 = v134.origin.x;
                    v39 = v134.origin.y;
                    v40 = v134.size.width;
                    v41 = v134.size.height;
                    v42 = v110.x;
                    *&v109.a = [*(a1 + 208) charIndexMappedToStorage:v33 + v16];
                    *&v121.a = &v109;
                    v43 = sub_100217850(a1 + 296, &v109);
                    v43[5] = v38;
                    v43[6] = v39 - v42;
                    v43[7] = v40;
                    v43[8] = v41;
                  }
                }
              }

              if (*&descent[0])
              {
                descent[1] = descent[0];
                operator delete(*&descent[0]);
              }

              if (buffer)
              {
                v113 = buffer;
                operator delete(buffer);
              }
            }

            v24 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
          }

          while (v24);
        }
      }
    }

    if (*(a1 + 224) != *(a1 + 216))
    {
      if (qword_101A34868 != -1)
      {
        sub_1013345D4();
      }

      CGContextSetTextPosition(qword_101A34860, 0.0, 0.0);
      v45 = *(a1 + 224) - *(a1 + 216);
      if (v45)
      {
        v46 = 0;
        v47 = 0x4EC4EC4EC4EC4EC5 * (v45 >> 3);
        v48 = (a1 + 304);
        if (v47 <= 1)
        {
          v47 = 1;
        }

        v93 = v47;
        do
        {
          sub_10026EC00(&v119, *(a1 + 216) + 104 * v46);
          if ((v120 & 2) == 0)
          {
            d = v119.d;
            if (!v46 && (*(a1 + 24) & 1) != 0)
            {
              *&v121.a = a1;
              v88 = sub_100217850(a1 + 296, a1);
              v89 = *(a1 + 40);
              *(v88 + 7) = *(a1 + 56);
              *(v88 + 5) = v89;
            }

            else
            {
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v50 = sub_10026ECB4(&v119);
              v97 = CTLineGetGlyphRuns(v50);
              v51 = [v97 countByEnumeratingWithState:&v105 objects:v118 count:16];
              if (v51)
              {
                obja = *v106;
                while (2)
                {
                  v52 = 0;
                  v99 = v51;
                  do
                  {
                    if (*v106 != obja)
                    {
                      objc_enumerationMutation(v97);
                    }

                    v104 = v52;
                    v53 = *(*(&v105 + 1) + 8 * v52);
                    v54 = CTRunGetGlyphCount(v53);
                    if ((v54 - 1) >= 0x10000)
                    {
                      v83 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                      if (qword_101AD5A10 != -1)
                      {
                        sub_1013345FC();
                      }

                      v84 = off_1019EDA68;
                      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v121.a) = 67110146;
                        HIDWORD(v121.a) = v83;
                        LOWORD(v121.b) = 2082;
                        *(&v121.b + 2) = "CGRect CRLWPLineFragment::rawGlyphRectForLineRange(NSRange, CRLWPColumn *__strong) const";
                        WORD1(v121.c) = 2082;
                        *(&v121.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm";
                        WORD2(v121.d) = 1024;
                        *(&v121.d + 6) = 943;
                        WORD1(v121.tx) = 2048;
                        *(&v121.tx + 4) = v54;
                        _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad glyph count: %ld", &v121, 0x2Cu);
                      }

                      if (qword_101AD5A10 != -1)
                      {
                        sub_101334624();
                      }

                      v85 = off_1019EDA68;
                      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                      {
                        v90 = +[CRLAssertionHandler packedBacktraceString];
                        LODWORD(v121.a) = 67109378;
                        HIDWORD(v121.a) = v83;
                        LOWORD(v121.b) = 2114;
                        *(&v121.b + 2) = v90;
                        _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v121, 0x12u);
                      }

                      v86 = [NSString stringWithUTF8String:"CGRect CRLWPLineFragment::rawGlyphRectForLineRange(NSRange, CRLWPColumn *__strong) const"];
                      v87 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
                      [CRLAssertionHandler handleFailureInFunction:v86 file:v87 lineNumber:943 isFatal:0 description:"bad glyph count: %ld", v54];

                      goto LABEL_121;
                    }

                    sub_1000E7C60(&v109, v54);
                    v126.location = 0;
                    v126.length = v54;
                    CTRunGetStringIndices(v53, v126, *&v109.a);
                    sub_100200C74(&buffer, v54);
                    v127.location = 0;
                    v127.length = v54;
                    CTRunGetGlyphs(v53, v127, buffer);
                    Status = CTRunGetStatus(v53);
                    if ((*(a1 + 25) & 0x20) != 0)
                    {
                      if ((Status & 4) != 0)
                      {
                        Attributes = CTRunGetAttributes(v53);
                        Value = CFDictionaryGetValue(Attributes, kCTFontAttributeName);
                        CTFontGetVerticalTranslationsForGlyphs(Value, buffer, &v121, 1);
                      }

                      else
                      {
                        v121.a = 0.0;
                        descent[0] = 0.0;
                        v110.x = 0.0;
                        v128.location = 0;
                        v128.length = 0;
                        CTRunGetTypographicBounds(v53, v128, &v121.a, descent, &v110.x);
                      }
                    }

                    v58 = d;
                    if (!v46)
                    {
                      v58 = **&v109.a;
                    }

                    if (v58 == NAN)
                    {
                      v59 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                      if (qword_101AD5A10 != -1)
                      {
                        sub_10133464C();
                      }

                      v60 = off_1019EDA68;
                      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v121.a) = 67109890;
                        HIDWORD(v121.a) = v59;
                        LOWORD(v121.b) = 2082;
                        *(&v121.b + 2) = "CGRect CRLWPLineFragment::rawGlyphRectForLineRange(NSRange, CRLWPColumn *__strong) const";
                        WORD1(v121.c) = 2082;
                        *(&v121.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm";
                        WORD2(v121.d) = 1024;
                        *(&v121.d + 6) = 972;
                        _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad baselineCharIndex", &v121, 0x22u);
                      }

                      if (qword_101AD5A10 != -1)
                      {
                        sub_101334674();
                      }

                      v61 = off_1019EDA68;
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                      {
                        v82 = +[CRLAssertionHandler packedBacktraceString];
                        LODWORD(v121.a) = 67109378;
                        HIDWORD(v121.a) = v59;
                        LOWORD(v121.b) = 2114;
                        *(&v121.b + 2) = v82;
                        _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v121, 0x12u);
                      }

                      v62 = [NSString stringWithUTF8String:"CGRect CRLWPLineFragment::rawGlyphRectForLineRange(NSRange, CRLWPColumn *__strong) const"];
                      v63 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
                      [CRLAssertionHandler handleFailureInFunction:v62 file:v63 lineNumber:972 isFatal:0 description:"bad baselineCharIndex"];
                    }

                    v64 = 0;
                    do
                    {
                      if (!*(a1 + 208))
                      {
                        v65 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                        if (qword_101AD5A10 != -1)
                        {
                          sub_10133469C();
                        }

                        v66 = off_1019EDA68;
                        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v121.a) = 67110146;
                          HIDWORD(v121.a) = v65;
                          LOWORD(v121.b) = 2082;
                          *(&v121.b + 2) = "CGRect CRLWPLineFragment::rawGlyphRectForLineRange(NSRange, CRLWPColumn *__strong) const";
                          WORD1(v121.c) = 2082;
                          *(&v121.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm";
                          WORD2(v121.d) = 1024;
                          *(&v121.d + 6) = 976;
                          WORD1(v121.tx) = 2082;
                          *(&v121.tx + 4) = "_textSource";
                          _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &v121, 0x2Cu);
                        }

                        if (qword_101AD5A10 != -1)
                        {
                          sub_1013346C4();
                        }

                        v67 = off_1019EDA68;
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                        {
                          v81 = +[CRLAssertionHandler packedBacktraceString];
                          LODWORD(v121.a) = 67109378;
                          HIDWORD(v121.a) = v65;
                          LOWORD(v121.b) = 2114;
                          *(&v121.b + 2) = v81;
                          _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v121, 0x12u);
                        }

                        v68 = [NSString stringWithUTF8String:"CGRect CRLWPLineFragment::rawGlyphRectForLineRange(NSRange, CRLWPColumn *__strong) const"];
                        v69 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
                        [CRLAssertionHandler handleFailureInFunction:v68 file:v69 lineNumber:976 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];
                      }

                      v70 = CGRectNull.origin.x;
                      v71 = CGRectNull.origin.y;
                      v72 = CGRectNull.size.width;
                      v73 = CGRectNull.size.height;
                      v135.origin.x = CGRectNull.origin.x;
                      v135.origin.y = v71;
                      v135.size.width = v72;
                      v135.size.height = v73;
                      if (!CGRectIsNull(v135))
                      {
                        v74 = d;
                        if (!v46)
                        {
                          v74 = *(*&v109.a + 8 * v64);
                        }

                        v75 = [*(a1 + 208) charIndexMappedToStorage:*&v74];
                        *&descent[0] = v75;
                        v76 = *v48;
                        if (*v48)
                        {
                          v77 = (a1 + 304);
                          do
                          {
                            v78 = v76[4];
                            v11 = v78 >= v75;
                            v79 = v78 < v75;
                            if (v11)
                            {
                              v77 = v76;
                            }

                            v76 = v76[v79];
                          }

                          while (v76);
                          if (v77 != v48 && v75 >= v77[4])
                          {
                            *&v121.a = descent;
                            v138 = *(sub_100217850(a1 + 296, descent) + 5);
                            v136.origin.x = CGRectNull.origin.x;
                            v136.origin.y = v71;
                            v136.size.width = v72;
                            v136.size.height = v73;
                            v137 = CGRectUnion(v136, v138);
                            v70 = v137.origin.x;
                            v71 = v137.origin.y;
                            v72 = v137.size.width;
                            v73 = v137.size.height;
                          }
                        }

                        *&v121.a = descent;
                        v80 = sub_100217850(a1 + 296, descent);
                        v80[5] = v70;
                        v80[6] = v71;
                        v80[7] = v72;
                        v80[8] = v73;
                      }

                      ++v64;
                    }

                    while (v64 != v54);
                    if (buffer)
                    {
                      v113 = buffer;
                      operator delete(buffer);
                    }

                    if (*&v109.a)
                    {
                      v109.b = v109.a;
                      operator delete(*&v109.a);
                    }

                    v52 = v104 + 1;
                  }

                  while ((v104 + 1) != v99);
                  v51 = [v97 countByEnumeratingWithState:&v105 objects:v118 count:16];
                  if (v51)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_121:
            }
          }

          sub_10026EC38(&v119);
          ++v46;
        }

        while (v46 != v93);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 320));
  v6 = a2;
  if (a2 < a2 + a3)
  {
    v7 = (a1 + 304);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = a1 + 304;
        do
        {
          v10 = *(v8 + 32);
          v11 = v10 >= v6;
          v12 = v10 < v6;
          if (v11)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * v12);
        }

        while (v8);
        if (v9 != v7 && v6 >= *(v9 + 32))
        {
          v130.origin.y = y;
          v130.origin.x = x;
          v130.size.width = r1;
          v130.size.height = height;
          v131 = CGRectUnion(v130, *(v9 + 40));
          y = v131.origin.y;
          x = v131.origin.x;
          r1 = v131.size.width;
          height = v131.size.height;
        }
      }

      ++v6;
    }

    while (v6 != a2 + a3);
  }

  return x;
}

void sub_100210218(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021025C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002102A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002102E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100210328(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021036C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002103B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002103F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100210438(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v13.origin.x = sub_10020F0DC(a1, a2, a3, v7);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  if (!CGRectIsEmpty(v13))
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    *&x = CGRectInset(v14, -1.0, -1.0);
  }

  return x;
}

void sub_100210500(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3;
  *(a4 + 32) = xmmword_101463CF0;
  *(a4 + 48) = *&qword_101463D00;
  *(a4 + 64) = xmmword_101463D10;
  *(a4 + 80) = *&qword_101463D20;
  *a4 = xmmword_101463CD0;
  *(a4 + 16) = *&qword_101463CE0;
  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = *(a1 + 216);
    v10 = *(a1 + 224);
    if (v9 != v10)
    {
      while (1)
      {
        v11 = sub_10026ECB4(v9);
        StringRange = CTLineGetStringRange(v11);
        v13 = [v8 charRangeMappedToStorage:{StringRange.location, StringRange.length}];
        if (a2 >= v13 && a2 - v13 < v14)
        {
          break;
        }

        v9 += 104;
        if (v9 == v10)
        {
          goto LABEL_25;
        }
      }

      v15 = sub_10026ECB4(v9);
      CTLineGetGlyphRuns(v15);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v16 = v33 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v17)
      {
        v18 = *v33;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            v21 = CTRunGetStringRange(v20);
            v22 = [v8 charRangeMappedToStorage:{v21.location, v21.length}];
            if (a2 >= v22 && a2 - v22 < v23)
            {
              v25 = CTRunGetAttributes(v20);
              v26 = [v25 objectForKeyedSubscript:NSFontAttributeName];

              if (v26)
              {
                sub_10028234C(v26, v31);
                v27 = v31[3];
                *(a4 + 32) = v31[2];
                *(a4 + 48) = v27;
                v28 = v31[5];
                *(a4 + 64) = v31[4];
                *(a4 + 80) = v28;
                v29 = v31[1];
                *a4 = v31[0];
                *(a4 + 16) = v29;
              }

              else
              {
                *&v31[0] = 0;
                v37.location = 0;
                v37.length = 0;
                CTRunGetTypographicBounds(v20, v37, (a4 + 16), (a4 + 32), v31);
                v30 = *v31 * 0.5;
                *(a4 + 40) = *v31 * 0.5;
                *(a4 + 48) = v30;
              }

              goto LABEL_24;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:
    }
  }

LABEL_25:
}

double sub_1002107B0(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  v21.location = a3;
  v21.length = a4;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v9 = *(a1 + 248);
  v8 = *(a1 + 256);
  if (v9 != v8)
  {
    while (*(v9 + 24) != a2)
    {
      v9 += 104;
      if (v9 == v8)
      {
        return x;
      }
    }

    v11 = sub_10026ECB4(v9);
    CTLineGetGlyphRuns(v11);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    obj = v23 = 0u;
    v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = 0;
      v14 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          GlyphCount = CTRunGetGlyphCount(v16);
          v27.location = v13;
          v27.length = GlyphCount;
          v18 = NSIntersectionRange(v21, v27);
          if (v18.length)
          {
            if (qword_101A34868 != -1)
            {
              sub_1013345D4();
            }

            v28.location = v18.location - v13;
            v28.length = v18.length;
            ImageBounds = CTRunGetImageBounds(v16, qword_101A34860, v28);
            v31.size.width = ImageBounds.size.width;
            v31.size.height = ImageBounds.size.height;
            v31.origin.x = ImageBounds.origin.x + *(v9 + 8) + *(a1 + 40);
            v31.origin.y = *(v9 + 16) + *(a1 + 32) - ImageBounds.origin.y - ImageBounds.size.height;
            ImageBounds.origin.x = x;
            ImageBounds.origin.y = y;
            ImageBounds.size.width = width;
            ImageBounds.size.height = height;
            v30 = CGRectUnion(ImageBounds, v31);
            x = v30.origin.x;
            y = v30.origin.y;
            width = v30.size.width;
            height = v30.size.height;
          }

          v13 += GlyphCount;
        }

        v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }
  }

  return x;
}

double sub_100210A04(uint64_t a1, unint64_t a2, unint64_t a3)
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v10 = *(a1 + 408);
  if ([v10 count])
  {
    v12 = *(a1 + 216);
    v11 = *(a1 + 224);

    if (v11 != v12)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = *(a1 + 408);
      v13 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v13)
      {
        v40 = *v45;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v45 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v44 + 1) + 8 * i);
            if ([v15 type] == 4)
            {
              v16 = [v15 positionCount];
              if (v16 == [v15 charIndexCount])
              {
                [v15 textPosition];
                v41 = v18;
                v42 = v17;
                v19 = [v15 positions];
                v20 = [v15 charIndexes];
                v21 = [v15 positionCount];
                if (v21)
                {
                  v22 = 0;
                  v23 = 1;
                  do
                  {
                    v24 = v20[v22];
                    v26 = v24 >= a2;
                    v25 = v24 - a2;
                    v26 = !v26 || v25 >= a3;
                    if (!v26)
                    {
                      r1 = height;
                      v27 = width;
                      v28 = y;
                      v29 = x;
                      v31 = *(a1 + 32);
                      v30 = *(a1 + 40);
                      v32 = *(*(a1 + 216) + 8);
                      v33 = v19[2 * v22];
                      [v15 ascent];
                      v35 = v34;
                      [v15 advance];
                      v51.size.width = v36;
                      v51.origin.x = v33 + v42 + v30 + v32;
                      v51.origin.y = v41 + v31 - v35;
                      v49.origin.x = v29;
                      v49.origin.y = v28;
                      v49.size.width = v27;
                      v49.size.height = r1;
                      v51.size.height = v35;
                      v50 = CGRectUnion(v49, v51);
                      x = v50.origin.x;
                      y = v50.origin.y;
                      width = v50.size.width;
                      height = v50.size.height;
                    }

                    v22 = v23;
                  }

                  while (v21 > v23++);
                }
              }
            }
          }

          v13 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v13);
      }
    }
  }

  else
  {
  }

  return x;
}

uint64_t sub_100210CD0(uint64_t a1)
{
  if ((*(a1 + 24) & 0x80) != 0 || *(a1 + 256) != *(a1 + 248))
  {
    return 1;
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v3 = *(a1 + 408);
  v1 = [v3 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v4 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v6 + 1) + 8 * i) type] == 4)
        {
          v1 = 1;
          goto LABEL_15;
        }
      }

      v1 = [v3 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v1;
}

double sub_100210E0C(uint64_t a1)
{
  x = CGRectNull.origin.x;
  v3 = *(a1 + 200);
  v4 = v3;
  if (v3)
  {
    [v3 size];
    v6 = v5;
    v8 = v7;
    v9 = [v4 labelType];
    [v4 height];
    v11 = v10;
    [v4 width];
    if ((v9 - 2) < 2)
    {
      goto LABEL_3;
    }

    if (v9 != 1)
    {
      goto LABEL_10;
    }

    if ((*(a1 + 25) & 0x20) != 0)
    {
      [v4 width];
      v11 = v23;
      [v4 height];
      v26 = v24;
      v13 = v6;
    }

    else
    {
LABEL_3:
      v26 = v12;
      v13 = v8;
      v8 = v6;
    }

    v14 = *(a1 + 120);
    v15 = *(a1 + 136);
    v16 = *(a1 + 104);
    [v4 baselineOffset];
    v18 = v17;
    [v4 labelIndent];
    v20 = v19;
    if ([v4 isLabelRTL])
    {
      v21 = *(a1 + 56);
      [v4 labelIndent];
      v20 = v21 - v22 - v26;
    }

    v27.origin.y = v16 + (v14 + v15 - v11) * 0.5;
    v27.origin.x = v20;
    v27.size.width = v8;
    v27.size.height = v13;
    v28 = CGRectOffset(v27, 0.0, *(a1 + 144));
    v29 = CGRectOffset(v28, 0.0, -v18);
    *&x = CGRectOffset(v29, *(a1 + 40), *(a1 + 48));
  }

LABEL_10:

  return x;
}

double sub_100210FD0(uint64_t a1)
{
  x = CGPointZero.x;
  v3 = *(a1 + 200);
  v4 = v3;
  if (v3)
  {
    if (([v3 labelType] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      x = sub_100210E0C(a1);
      if ((*(a1 + 25) & 0x20) != 0)
      {
        if ([v4 isLabelTateChuYoko])
        {
          *&v14[0] = 0;
          CTLineGetTypographicBounds([v4 textLine], v14, 0, 0);
          v9 = *v14;
          [v4 baselineOffset];
          x = x + v9;
        }

        else
        {
          [v4 baselineOffset];
        }
      }

      else
      {
        v5 = [v4 labelFont];
        if (v5)
        {
          if ([v4 labelType] == 2)
          {
            memset(v14, 0, sizeof(v14));
            sub_10028234C(v5, v14);
          }

          [v4 baselineOffset];
        }

        else if (CTLineGetGlyphCount([v4 textLine]))
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013347B8();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_1013347CC();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10133485C();
          }

          v10 = off_1019EDA68;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v11 = [NSString stringWithUTF8String:"CGPoint CRLWPLineFragment::labelTextPosition() const"];
          v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
          [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1267 isFatal:0 description:"No label font but we need to render something"];
        }
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013346EC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101334700();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101334790();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v7 = [NSString stringWithUTF8String:"CGPoint CRLWPLineFragment::labelTextPosition() const"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1289 isFatal:0 description:"Text position only applies to text and numbers."];
    }
  }

  return x;
}

void sub_100211410(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100211454(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100211498(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002114DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100211520(unint64_t *a1, char a2)
{
  v4 = a1[1] + *a1 + ((a1[3] << 52) >> 63);
  if (*a1 <= v4)
  {
    v5 = a1[1] + *a1 + ((a1[3] << 52) >> 63);
  }

  else
  {
    v5 = *a1;
  }

  if (*a1 >= v4)
  {
    v6 = a1[1] + *a1 + ((a1[3] << 52) >> 63);
  }

  else
  {
    v6 = *a1;
  }

  sub_10020BF7C(a1, v6, v5 - v6, a2, 1, 1, 0, __p);
  sub_100282B74(__p);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((a1[3] & 2) != 0)
  {
    v15 = a1[27];
    v16 = 0x4EC4EC4EC4EC4EC5 * ((a1[28] - v15) >> 3);
    if (v16 >= 2)
    {
      v17 = v16 - 1;
      for (i = v15 + 104; (*(i + 96) & 2) == 0; i += 104)
      {
        if (!--v17)
        {
          return v8;
        }
      }

      v19 = *(i + 8);
      v20 = sub_10026ECB4(i);
      v24.size.width = CTLineGetTypographicBounds(v20, 0, 0, 0);
      v23.origin.x = v8;
      v23.origin.y = v10;
      v23.size.width = v12;
      v23.size.height = v14;
      v24.origin.x = v19;
      v24.origin.y = v10;
      v24.size.height = v14;
      *&v8 = CGRectUnion(v23, v24);
    }
  }

  return v8;
}

void sub_100211670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100211698(uint64_t a1)
{
  v2 = *(a1 + 216);
  v3 = sub_10026ECB4(v2);
  CTLineGetTypographicBounds(v3, 0, 0, 0);
  return *(a1 + 40) + *(v2 + 8);
}

uint64_t sub_100211708(uint64_t a1)
{
  v2 = sub_10020DE74(a1);
  v3 = *v2;
  if (*v2 == v2[1])
  {
    v3 = a1;
  }

  return *v3;
}

uint64_t sub_10021173C(uint64_t a1)
{
  v2 = sub_10020DE74(a1);
  v3 = v2[1];
  if (*v2 == v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3 - 64;
  }

  return *v4;
}

uint64_t sub_100211774(uint64_t a1, _BYTE *a2)
{
  v4 = sub_10020DE74(a1);
  v5 = *v4;
  if (*v4 == *(v4 + 8))
  {
    v5 = a1;
  }

  v6 = *v5;
  *a2 = 1;
  if (*(a1 + 8))
  {
    *a2 = sub_1002117DC(a1, v6) ^ 1;
  }

  return v6;
}

uint64_t sub_1002117DC(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 3);
  if (v2)
  {
    return 0;
  }

  v5 = &xmmword_101464828;
  if (v2 >= 0)
  {
    v5 = a1;
  }

  v6 = *v5 + *(v5 + 1);
  if (v6 == a2 || (v2 & 0x800) != 0 && v6 - 1 == a2)
  {
    return (v2 >> 12) & 1;
  }

  v8 = *(a1 + 26);
  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101334884();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101334898();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101334934();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"CRLWPWritingDirection CRLWPLineFragment::writingDirectionForCharIndex(CRLWPCharIndex) const"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2489 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];

    v8 = *(a1 + 26);
  }

  v12 = [v8 charIndexMappedFromStorage:a2];
  v13 = *(a1 + 27);
  v14 = *(a1 + 28);
  if (v14 == v13 && v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133495C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101334984();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101334A24();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v16 = [NSString stringWithUTF8String:"CRLWPWritingDirection CRLWPLineFragment::writingDirectionForCharIndex(CRLWPCharIndex) const"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:2493 isFatal:0 description:"bad character index: %d", a2];

    return 0;
  }

  v7 = 0;
  if (v14 != v13 && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = sub_10026ECB4(v13);
    v20 = CTLineGetGlyphRuns(v19);
    v7 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v21 = *v27;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v20);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          StringRange = CTRunGetStringRange(v23);
          if (v12 >= StringRange.location && &v12[-StringRange.location] < StringRange.length)
          {
            v7 = (CTRunGetStatus(v23) & 1);
            goto LABEL_45;
          }
        }

        v7 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

LABEL_45:
  }

  return v7;
}

uint64_t sub_100211BF4(uint64_t a1, _BYTE *a2)
{
  v4 = sub_10020DE74(a1);
  v5 = v4[1];
  if (*v4 == v5)
  {
    v6 = a1;
  }

  else
  {
    v6 = (v5 - 64);
  }

  v7 = *v6;
  *a2 = 1;
  if (*(a1 + 8))
  {
    *a2 = sub_1002117DC(a1, v7);
  }

  return v7;
}

void sub_100211C5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100211CA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100211CE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100211D28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100211D6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100211DB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CFIndex sub_100211DF4(uint64_t a1)
{
  v3 = a1 + 216;
  v2 = *(a1 + 216);
  if (*(v3 + 8) == v2)
  {
    return 0;
  }

  v4 = sub_10026ECB4(v2);

  return CTLineGetGlyphCount(v4);
}

double sub_100211E30(uint64_t a1, unint64_t a2, int a3)
{
  v37 = 0.0;
  v6 = sub_10020CC28(a1, a2, 0, 0, &v37);
  v7 = *(a1 + 208);
  if (!v7)
  {
    if (*(a1 + 24))
    {
      v7 = 0;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101334A4C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101334A74();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101334B04();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v9 = [NSString stringWithUTF8String:"CGFloat CRLWPLineFragment::wpOffsetForCharIndex(CRLWPCharIndex, BOOL) const"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1619 isFatal:0 description:"Unexpected nil _textSource"];

      v7 = *(a1 + 208);
    }
  }

  v11 = [v7 charIndexMappedFromStorage:a2];
  v12 = *(a1 + 216);
  if (*(a1 + 224) != v12)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = sub_10026ECB4(v12);
    v14 = CTLineGetGlyphRuns(v13);
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v15)
    {
      v16 = &v11[-((v11 != 0) & ~a3)];
      v17 = *v34;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          GlyphCount = CTRunGetGlyphCount(v19);
          if ((GlyphCount - 1) >= 0x10000)
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101334B2C();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_101334B54();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101334BE4();
            }

            v29 = off_1019EDA68;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              +[CRLAssertionHandler packedBacktraceString];
              objc_claimAutoreleasedReturnValue();
              sub_10130E89C();
            }

            v30 = [NSString stringWithUTF8String:"CGFloat CRLWPLineFragment::wpOffsetForCharIndex(CRLWPCharIndex, BOOL) const"];
            v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
            [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:1635 isFatal:0 description:"bad glyph count: %ld", GlyphCount];

            goto LABEL_42;
          }

          sub_1000E7C60(buffer, GlyphCount);
          v40.location = 0;
          v40.length = GlyphCount;
          CTRunGetStringIndices(v19, v40, buffer[0]);
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = buffer[0];
          v25 = 1;
          do
          {
            v26 = *v24++;
            v27 = (v26 > v16) | v22;
            v28 = (v26 <= v16) | v21;
            v23 |= v26 == v16;
            if (v26 != v16)
            {
              v22 = v27;
              v21 = v28;
            }

            if (v25 >= GlyphCount)
            {
              break;
            }

            ++v25;
          }

          while ((v23 & (v22 | v21) & 1) == 0);
          if ((v23 | v22 & v21) & 1) != 0 && ((CTRunGetStatus(v19) ^ ((*(a1 + 25) & 0x10) >> 4)))
          {
            v6 = v37;
          }

          if (buffer[0])
          {
            buffer[1] = buffer[0];
            operator delete(buffer[0]);
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_42:
  }

  return v6;
}

void sub_1002122F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021233C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100212380(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002123C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100212408(unint64_t *a1, unint64_t a2, BOOL *a3)
{
  v7 = a1[27];
  v6 = a1[28];
  if (v6 == v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101334C0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101334C20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101334CB0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v9 = [NSString stringWithUTF8String:"CTFontRef CRLWPLineFragment::fontAtCharIndex(CRLWPCharIndex, BOOL &) const"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1668 isFatal:0 description:"No line refs"];

    v7 = a1[27];
    v6 = a1[28];
  }

  if (v6 == v7)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[3];
  v13 = v12 < 0;
  if (v12 < 0)
  {
    v14 = &xmmword_101464828;
  }

  else
  {
    v14 = a1;
  }

  v15 = *(v14 + 1);
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v13)
  {
    v16 = *a1;
  }

  v17 = v16 + v15;
  if (v11 <= a2)
  {
    v11 = a2;
  }

  if (v17 >= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  v19 = [a1[26] charIndexMappedFromStorage:v18];
  *a3 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = sub_10026ECB4(a1[27]);
  v21 = CTLineGetGlyphRuns(v20);
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v22)
  {
    v23 = *v32;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v31 + 1) + 8 * i);
        StringRange = CTRunGetStringRange(v25);
        if (v19 >= StringRange.location && &v19[-StringRange.location] < StringRange.length)
        {
          Attributes = CTRunGetAttributes(v25);
          Value = CFDictionaryGetValue(Attributes, @"CRLWPUnadjustedFont");
          v22 = Value;
          if (!Value)
          {
            v22 = CFDictionaryGetValue(Attributes, kCTFontAttributeName);
          }

          *a3 = (CTRunGetStatus(v25) & 4) != 0;
          goto LABEL_38;
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:

  return v22;
}

void sub_100212720(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100212764(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002127A8(uint64_t a1, unint64_t a2, unsigned __int8 a3, int a4, char a5)
{
  v40 = a3;
  if (*(a1 + 24) < 0)
  {
    v5 = &xmmword_101464828;
  }

  else
  {
    v5 = a1;
  }

  v8 = v5;
  v6 = *v5;
  v7 = *(v8 + 1);
  v9 = a2 - v6 < v7 && a2 >= v6;
  v10 = v6 + v7;
  if (v9 || v10 == a2)
  {
    v15 = sub_100212B84(a1, a2, &v40, a4);
    v16 = *(a1 + 216);
    if (*(a1 + 224) == v16)
    {
      v27 = 0.0;
      if (a5)
      {
        return;
      }

      goto LABEL_29;
    }

    v17 = v15;
    v18 = sub_10020DE74(a1);
    v20 = *v18;
    v19 = v18[1];
    if (v19 == *v18)
    {
      v29 = *(a1 + 24);
      if ((v29 & 1) == 0)
      {
        v30 = *(v16 + 8);
        if ((v29 & 0x800) != 0)
        {
          v31 = -7.0;
          if ((v29 & 0x1000) == 0)
          {
            v31 = 7.0;
          }

          v32 = v31 + v30;
          if (!v40)
          {
            v30 = v32;
          }
        }

LABEL_49:
        v27 = v30 + *(a1 + 40);
        if (a5)
        {
          return;
        }

LABEL_29:
        MaxX = CGRectGetMaxX(*(a1 + 40));
        fmax(fmin(v27, MaxX), CGRectGetMinX(*(a1 + 40)));
        return;
      }

      if (v40 == 1)
      {
        if (v29 < 0)
        {
          v33 = &xmmword_101464828;
        }

        else
        {
          v33 = a1;
        }

        v34 = *v33 == a2;
      }

      else
      {
        v34 = 0;
      }

      v35 = [*(a1 + 400) geometry];
      [v35 frame];
      v37 = v36;
      v39 = v38;

      v22 = *(v16 + 8);
      v23 = 0.0;
      if (v34 == ((v29 >> 12) & 1))
      {
        if ((*(a1 + 25) & 0x20) != 0)
        {
          v23 = v39;
        }

        else
        {
          v23 = v37;
        }
      }
    }

    else
    {
      v21 = (v19 - *v18) >> 6;
      if (v17 < v21 && *(v20 + (v17 << 6) + 48) != v40)
      {
        ++v17;
      }

      if (v17 == v21)
      {
        v22 = *(v16 + 8);
        v23 = *(v19 - 24);
      }

      else
      {
        v22 = *(v20 + (v17 << 6) + 32);
        v23 = *(v16 + 8);
      }
    }

    v30 = v22 + v23;
    goto LABEL_49;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101334CD8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101334CEC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101334D7C();
  }

  v24 = off_1019EDA68;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v25 = [NSString stringWithUTF8String:"CGFloat CRLWPLineFragment::wpOffsetForInsertionPoint(CRLWPCharIndex, BOOL, BOOL, BOOL) const"];
  v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
  [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:1701 isFatal:0 description:"invalid charIndex for line fragment"];
}

void sub_100212AFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100212B40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100212B84(uint64_t a1, unint64_t a2, _BYTE *a3, int a4)
{
  if (![*(a1 + 208) length])
  {
    goto LABEL_28;
  }

  v8 = *(a1 + 24) & 0x1000;
  if (*(a1 + 24) < 0)
  {
    v9 = &xmmword_101464828;
  }

  else
  {
    v9 = a1;
  }

  v10 = [*(a1 + 208) charRangeRemappedFromStorage:{*v9, *(v9 + 1)}];
  v11 = v10;
  v13 = v12;
  if ((a4 & 1) != 0 || v10 >= a2)
  {
    v15 = sub_100282C0C();
  }

  else
  {
    v14 = sub_10027EB4C(a2, *(a1 + 208));
    v15 = sub_1002117DC(a1, v14);
  }

  v16 = &v11[v13];
  if (v13)
  {
    v17 = v16 == a2;
  }

  else
  {
    v17 = 0;
  }

  if (v17 && *a3 == 1)
  {
    if (!a4)
    {
      a2 = sub_10027EB4C(a2, *(a1 + 208));
      v22 = sub_1002117DC(a1, a2);
      if (v22 != v8 >> 12 && v22 == (v15 & 1))
      {
        *a3 = 0;
        goto LABEL_28;
      }
    }

LABEL_16:
    if (v8)
    {
LABEL_17:
      v18 = sub_100211774(a1, a3);
LABEL_27:
      a2 = v18;
      goto LABEL_28;
    }

LABEL_26:
    v18 = sub_100211BF4(a1, a3);
    goto LABEL_27;
  }

  if (v11 > a2 && (*a3 & 1) == 0)
  {
LABEL_25:
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  if (a4)
  {
    goto LABEL_28;
  }

  v19 = sub_1002117DC(a1, a2);
  v20 = v19;
  if (v11 != a2 || (*a3 & 1) == 0)
  {
    if (v16 - 1 == a2)
    {
      if ((*a3 & 1) == 0)
      {
        if (v19 != v8 >> 12 && v19 != (v15 & 1))
        {
          goto LABEL_16;
        }

        goto LABEL_28;
      }
    }

    else if ((*a3 & 1) == 0)
    {
      v23 = sub_10027F35C(a2, *(a1 + 208));
      goto LABEL_42;
    }

    v23 = sub_10027EB4C(a2, *(a1 + 208));
LABEL_42:
    v24 = v23;
    if (v20 != sub_1002117DC(a1, v23) && v20 != (v15 & 1))
    {
      *a3 ^= 1u;
      a2 = v24;
    }

    goto LABEL_28;
  }

  if (v19 != v8 >> 12 && v19 != (v15 & 1))
  {
    goto LABEL_25;
  }

LABEL_28:

  return sub_100212D9C(a1, a2);
}

uint64_t sub_100212D9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10020DE74(a1);
  v5 = v4;
  if ((*(a1 + 25) & 0x10) != 0)
  {
    result = 0;
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = *v4;
    v7 = v4[1];
    if (*v4 == v7)
    {
      return 0;
    }

    result = ((v7 - v6) >> 6) - 1;
  }

  v9 = v7 - v6;
  if (v9)
  {
    v10 = 0;
    v11 = v9 >> 6;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    for (i = (v6 + 8); ; i += 8)
    {
      v13 = *(i - 1);
      v15 = a2 >= v13;
      v14 = a2 - v13;
      v15 = !v15 || v14 >= *i;
      if (!v15)
      {
        break;
      }

      if (v11 == ++v10)
      {
        return result;
      }
    }

    return v10;
  }

  return result;
}

uint64_t sub_100212E40(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_10020DE74(a1);
  if ((*(a1 + 25) & 0x10) != 0)
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = -1;
  }

  else
  {
    v7 = *v6;
    v8 = v6[1];
    if (*v6 == v8)
    {
      v9 = -1;
      return *a1 + v9;
    }

    v9 = (v8 - v7) >> 6;
  }

  v10 = v8 - v7;
  if (v10)
  {
    v11 = 0;
    v12 = v10 >> 6;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = -v12;
    for (i = (v7 + 8); ; i += 8)
    {
      v15 = *(i - 1);
      v17 = a2 >= v15;
      v16 = a2 - v15;
      v17 = !v17 || v16 >= *i;
      if (!v17)
      {
        break;
      }

      if (v13 == --v11)
      {
        return *a1 + v9;
      }
    }

    v9 = (sub_1002117DC(a1, a2) == a3) - v11;
  }

  return *a1 + v9;
}

unint64_t sub_100212F08(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v6 = *(a1 + 216);
  if (*(a1 + 224) == v6)
  {
    goto LABEL_40;
  }

  v7 = *(a1 + 40);
  v8 = a4 - v7;
  v9 = v8 - *(v6 + 8);
  if (v9 <= *(a1 + 72) - v7 + 1.0)
  {
    v12 = sub_10020DE74(a1);
    v13 = *v12;
    if (*v12 == v12[1])
    {
      v13 = a1;
    }

    v11 = *v13;
    goto LABEL_41;
  }

  if (v9 >= 0.0)
  {
    if (v8 >= *(a1 + 240) && (a3 & 1) != 0)
    {
      goto LABEL_40;
    }
  }

  else if (a3)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_45;
  }

  v14 = sub_10020DE74(a1);
  v15 = *v14;
  v16 = v14[1] - *v14;
  if (v16)
  {
    v17 = v15[4];
    v18 = v15[5];
    v19 = v17 + (v18 - v17) * 0.5;
    v20 = v9 > v19;
    if (a2 || (v9 >= v17 ? (v21 = v9 > v19) : (v21 = 1), v21))
    {
      v23 = 0;
      v24 = v16 >> 6;
      v25 = v15 + 13;
      v26 = 0.0;
      while (1)
      {
        v22 = v23;
        v27 = v19;
        if (!a2 && v9 >= v19 && v9 <= v18)
        {
          break;
        }

        v29 = (v9 < v26 || v20) && v9 > v17;
        if (a2 != 1)
        {
          v29 = 1;
        }

        ++v23;
        if (v29 != 1 || v23 >= v24)
        {
          break;
        }

        v17 = *(v25 - 1);
        v18 = *v25;
        v19 = v17 + (*v25 - v17) * 0.5;
        v20 = v9 > v19;
        v25 += 8;
        v26 = v27;
        if (!a2)
        {
          v26 = v27;
          if (v9 >= v17)
          {
            v26 = v27;
            if (v9 <= v19)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v22 = -1;
    }

    if (v9 < 0.0 && !a3)
    {
      v22 = 0;
      goto LABEL_38;
    }

    if (v22 != -1)
    {
LABEL_38:
      v11 = *&v15[8 * v22];
      if ((*(a1 + 25) & 0x40) != 0)
      {
        v11 = *a1 + v11 - *(a1 + 16);
      }

      goto LABEL_41;
    }
  }

LABEL_40:
  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_41:
  if ((a3 & 1) == 0 && v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *a1;
    if ((*(a1 + 25) & 0x10) != 0)
    {
      v11 += *(a1 + 8);
    }
  }

LABEL_45:
  if ((v11 != 0x7FFFFFFFFFFFFFFFLL || (a3 & 1) == 0) && (v11 < *a1 || v11 > *(a1 + 8) + *a1))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101334DA4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101334DB8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101334E48();
    }

    v31 = off_1019EDA68;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v32 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPLineFragment::charIndexForWPOffsetWithDirection(CGFloat, CRLWPWritingDirection, BOOL) const"];
    v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:1925 isFatal:0 description:"CRLWPLineFragment::charIndexForWPOffset: out-of-bounds result"];
  }

  return v11;
}

void sub_10021328C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002132D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100213314(__int128 *a1, int a2, char a3, unsigned __int8 *a4, char a5, double a6)
{
  v43 = 1;
  v9 = *(a1 + 27);
  if (*(a1 + 28) == v9)
  {
    goto LABEL_20;
  }

  v12 = a6 - *(a1 + 5);
  v13 = v12 - *(v9 + 8);
  v14 = sub_10026ECB4(*(a1 + 27));
  if (v13 >= COERCE_DOUBLE(CTLineGetBoundsWithOptions(v14, 0)))
  {
    if (v12 < *(a1 + 30) || (a3 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_21;
  }

  if (a3)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

LABEL_7:
  if (a2 && (a5 & 1) == 0)
  {
    v16 = sub_10026ECB4(v9);
    v58.y = 0.0;
    v58.x = v13;
    StringIndexForPosition = CTLineGetStringIndexForPosition(v16, v58);
    if ((StringIndexForPosition & 0x8000000000000000) == 0)
    {
      v18 = StringIndexForPosition;
      v19 = *(a1 + 3) < 0 ? &xmmword_101464828 : a1;
      v20 = [*(a1 + 26) charRangeMappedFromStorage:{*v19, *(v19 + 1)}];
      v22 = v18 < v20 || v18 - v20 >= v21;
      if (!v22 || &v20[v21] == v18)
      {
        v23 = [*(a1 + 26) charIndexMappedToStorage:v18];
LABEL_66:
        v15 = v23;
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  v30 = sub_10020DE74(a1);
  v31 = *v30;
  v32 = v30[1] - *v30;
  if (!v32)
  {
    v43 = 1;
LABEL_59:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_63;
  }

  v33 = v32 >> 6;
  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = *(v31 + 32);
  if (v35 <= v13)
  {
    v37 = 0;
    v38 = v34 - 1;
    v39 = v31 + 40;
    while (1)
    {
      if ((v35 + *v39) * 0.5 > v13 && a2 != 0)
      {
        v43 = *(v39 + 8);
        goto LABEL_61;
      }

      if (v38 == v37)
      {
        break;
      }

      v35 = *(v39 + 56);
      v39 += 64;
      ++v37;
      if (v35 > v13)
      {
        v36 = a2 & *(v39 - 56) ^ 1;
        --v37;
        goto LABEL_58;
      }
    }

    v43 = a2 & *(v39 + 8) ^ 1;
    v37 = v38;
  }

  else
  {
    v36 = 1;
    v37 = -1;
LABEL_58:
    v43 = v36;
    if (v37 == -1)
    {
      goto LABEL_59;
    }
  }

LABEL_61:
  v15 = *(v31 + (v37 << 6));
  if ((*(a1 + 25) & 0x40) != 0)
  {
    v15 = *a1 + v15 - *(a1 + 2);
  }

LABEL_63:
  if (v15 == 0x7FFFFFFFFFFFFFFFLL && (a3 & 1) == 0)
  {
    v23 = sub_100211774(a1, &v43);
    goto LABEL_66;
  }

LABEL_21:
  if ((a3 & 1) == 0 && v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = *a1;
    v43 = 1;
  }

LABEL_24:
  if ((v15 != 0x7FFFFFFFFFFFFFFFLL || (a3 & 1) == 0) && (v15 < *a1 || v15 > *(a1 + 1) + *a1))
  {
    v24 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101334E70();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v41 = *a1;
      v42 = *(a1 + 1);
      *buf = 67110658;
      v45 = v24;
      v46 = 2082;
      v47 = "CRLWPCharIndex CRLWPLineFragment::charIndexForWPOffset(CGFloat, BOOL, BOOL, BOOL *, BOOL) const";
      v48 = 2082;
      v49 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm";
      v50 = 1024;
      v51 = 2006;
      v52 = 2048;
      v53 = v15;
      v54 = 2048;
      v55 = v41;
      v56 = 2048;
      v57 = v42;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLWPLineFragment::charIndexForWPOffset: out-of-bounds result: %lu {%lu, %lu}", buf, 0x40u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101334E84();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v27 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPLineFragment::charIndexForWPOffset(CGFloat, BOOL, BOOL, BOOL *, BOOL) const"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:2006 isFatal:0 description:"CRLWPLineFragment::charIndexForWPOffset: out-of-bounds result: %lu {%lu, %lu}", v15, *a1, *(a1 + 1)];
  }

  if (a4)
  {
    *a4 = v43;
    return v15;
  }

  else
  {
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v15 + (v43 ^ 1);
    }
  }

  return result;
}

void sub_100213798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002137DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100213820@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_10020D35C(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1[58];
  v5 = a1[59];

  return sub_10021792C(a2, v4, v5, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3));
}

void sub_10021387C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002138C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100213904(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100213948(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021398C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_1000C1D48();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_1002179F4(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

void sub_100213A94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100213AD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100213B1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 8);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100213C5C(&__p, v6);
  sub_100213CFC(a1, &__p);
  v8 = 126 - 2 * __clz((v16 - __p) >> 6);
  v18 = sub_100213F7C;
  if (v16 == __p)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_100217A94(__p, v16, &v18, v9, 1, v7);
  v11 = __p;
  if (__p == v16)
  {
LABEL_8:
    if (!__p)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    v13 = __p;
    while (v13->n128_u64[0] != a2)
    {
      ++v12;
      v13 += 4;
      if (v13 == v16)
      {
        goto LABEL_8;
      }
    }

    v18 = sub_100213FD8;
    sub_100217A94(__p, v16, &v18, 126 - 2 * __clz((v16 - __p) >> 6), 1, v10);
    v11 = __p;
    a2 = *(__p + 8 * v12);
  }

  v16 = v11;
  operator delete(v11);
LABEL_12:

  return a2;
}

void sub_100213C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100213C5C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      sub_100217A4C(result, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

void sub_100213CFC(uint64_t a1, char **a2)
{
  if (*(a1 + 224) != *(a1 + 216) && (*(a1 + 25) & 0x40) == 0)
  {
    if (!*(a1 + 208))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101334EAC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101334EC0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101334F5C();
      }

      v4 = off_1019EDA68;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v5 = [NSString stringWithUTF8String:"void CRLWPLineFragment::fillCharIndicesAndOffsets(std::vector<CRLWPLFCharIndexData> &) const"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
      [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:2321 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];
    }

    sub_10020D35C(a1);
    v7 = sub_10020DE74(a1);
    if (v7 != a2)
    {
      sub_100219740(a2, *v7, v7[1], (v7[1] - *v7) >> 6);
    }

    v8 = *(a1 + 24);
    if ((v8 & 0x200000) != 0)
    {
      v9 = &xmmword_101464828;
      if (v8 >= 0)
      {
        v9 = a1;
      }

      *&v11 = *v9 + *(v9 + 1);
      *(&v11 + 1) = 1;
      v10 = *(a1 + 40);
      if ((v8 & 0x1000) != 0)
      {
        v12 = *(a1 + 40);
        v13 = v10;
        v14 = v10;
        v15 = v10;
        v16 = 0;
        v17 = 0;
        sub_1002141A8(a2, *a2, &v11);
      }

      else
      {
        v12 = v10 + *(a1 + 56);
        v13 = v12;
        v14 = v12;
        v15 = v12;
        v16 = 1;
        v17 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 472) - *(a1 + 464)) >> 3) - 1;
        sub_100214398(a2, &v11);
      }
    }
  }
}

BOOL sub_100213F7C(double *a1, double *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v4 = *(a1 + 7);
  v5 = *(a2 + 7);
  v6 = v4 >= v5;
  if (v4 == v5)
  {
    if ((a1[6] & 1) != 0 || *(a2 + 48) == 1)
    {
      v7 = *a1;
      v8 = *a2;
    }

    else
    {
      v7 = *a2;
      v8 = *a1;
    }

    v6 = v7 >= v8;
  }

  return !v6;
}

BOOL sub_100213FD8(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[7];
  v3 = a2[7];
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    if ((a1[6] & 1) != 0 || *(a2 + 48) == 1)
    {
      v5 = *a1;
      v6 = *a2;
    }

    else
    {
      v5 = *a2;
      v6 = *a1;
    }

    v4 = v5 >= v6;
  }

  return !v4;
}

uint64_t sub_10021401C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 8);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_100213C5C(&__p, v6);
  sub_100213CFC(a1, &__p);
  v8 = __p;
  if (__p == v13)
  {
LABEL_5:
    if (!__p)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    v10 = __p;
    while (v10->n128_u64[0] != a2)
    {
      ++v9;
      v10 += 4;
      if (v10 == v13)
      {
        goto LABEL_5;
      }
    }

    v15 = sub_100213F7C;
    sub_100217A94(__p, v13, &v15, 126 - 2 * __clz((v13 - __p) >> 6), 1, v7);
    v8 = __p;
    a2 = *(__p + 8 * v9);
  }

  v13 = v8;
  operator delete(v8);
LABEL_9:

  return a2;
}

void sub_1002140FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100214120(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100214164(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__n128 *sub_1002141A8(void *a1, __n128 *__src, unint64_t a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 6) + 1;
    if (v14 >> 58)
    {
      sub_1000C1D48();
    }

    v15 = __src - v13;
    v16 = v7 - v13;
    if (v16 >> 5 > v14)
    {
      v14 = v16 >> 5;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFC0)
    {
      v17 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v14;
    }

    v18 = v15 >> 6;
    v39 = a1;
    if (v17)
    {
      sub_100217A4C(a1, v17);
    }

    v36 = 0;
    v37 = (v18 << 6);
    v38 = (v18 << 6);
    sub_1002198A8(&v36, a3);
    v22 = v37;
    memcpy(v38, v4, a1[1] - v4);
    v23 = *a1;
    v24 = v37;
    *&v38 = v38 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = v24 - (v4 - v23);
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v38;
    *&v38 = v27;
    *(&v38 + 1) = v28;
    v36 = v27;
    v37 = v27;
    if (v27)
    {
      operator delete(v27);
    }

    return v22;
  }

  else if (__src == v6)
  {
    v19 = *a3;
    v20 = *(a3 + 16);
    v21 = *(a3 + 48);
    v6[2] = *(a3 + 32);
    v6[3] = v21;
    *v6 = v19;
    v6[1] = v20;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 0x40)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 4;
      v10 = v6[-4];
      v11 = v6[-3];
      v12 = v6[-1];
      v6[2] = v6[-2];
      v6[3] = v12;
      *v6 = v10;
      v6[1] = v11;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[4], __src, v6 - v8);
      v9 = a1[1];
    }

    v29 = v9 <= a3 || v4 > a3;
    v30 = 64;
    if (v29)
    {
      v30 = 0;
    }

    v31 = (a3 + v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    v4[2] = v31[2];
    v4[3] = v34;
    *v4 = v32;
    v4[1] = v33;
  }

  return v4;
}

void sub_100214360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100214398(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      sub_1000C1D48();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_100217A4C(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy(v14 - v18, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  *(a1 + 8) = v9;
}

void sub_100214480(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002144C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100214508(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021454C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100214590(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002145D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100214618(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021465C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002146A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002146E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100214728(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021476C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002147B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ((*(a1 + 24) & 1) == 0)
  {
    v8 = *(a1 + 8);
    if (!*(a1 + 208))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101334F84();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101334F98();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v10 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPLineFragment::nextOrPreviousCharIndexForDirection(CRLWPCharIndex, CRLWPTextLayoutDirection, CRLWPStorage *__strong, CRLWPCharIndex &, BOOL) const"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2520 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];
    }

    __p = 0;
    v32 = 0;
    v33 = 0;
    sub_100213C5C(&__p, v8);
    sub_100213CFC(a1, &__p);
    v13 = __p;
    v12 = v32;
    v14 = [*(a1 + 208) charIndexRemappedFromStorage:a2];
    v15 = __p;
    if (v12 != v13)
    {
      v16 = 0;
      v17 = (v12 - v13) >> 6;
      v18 = 1;
      while (1)
      {
        v19 = (__p + 64 * v16);
        v21 = *v19;
        v20 = v19[1];
        v23 = v14 >= v21;
        v22 = &v14[-v21];
        v23 = !v23 || v22 >= v20;
        if (!v23)
        {
          break;
        }

        v16 = v18;
        if (v17 <= v18++)
        {
          if ((*(a1 + 25) & 0x10) != 0)
          {
            v16 = 0;
          }

          else
          {
            v16 = v17 - 1;
          }

          break;
        }
      }

      if (a3 == 3)
      {
        if (v16)
        {
          v25 = __p + 64 * v16 - 64;
          goto LABEL_28;
        }

LABEL_38:
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_39;
      }

      if (a3 == 2)
      {
        if (v16 + 1 < v17)
        {
          v25 = __p + 64 * v16 + 64;
LABEL_28:
          v26 = *v25;
LABEL_39:
          v32 = v15;
          operator delete(v15);
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101335068();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101335090();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v28 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPLineFragment::nextOrPreviousCharIndexForDirection(CRLWPCharIndex, CRLWPTextLayoutDirection, CRLWPStorage *__strong, CRLWPCharIndex &, BOOL) const"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:2582 isFatal:0 description:"This routine supports left and right only."];

      v15 = __p;
    }

    v26 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v26 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_40:

  return v26;
}

void sub_100214B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100214BA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100214BE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100214C2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100214C70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100214CB4(uint64_t a1, uint64_t a2, double a3)
{
  if ((a2 - 1) >= 2)
  {
    v9 = *(a1 + 88);
    v10 = 0.0;
  }

  else
  {
    if (sub_100211DF4(a1) != 1 || (v6 = a3, (*(a1 + 25) & 8) == 0))
    {
      v7 = *(a1 + 216);
      if (*(a1 + 224) == v7)
      {
        v6 = 0.0;
      }

      else
      {
        v8 = sub_10026ECB4(v7);
        v6 = CTLineGetTrailingWhitespaceWidth(v8) + a3 - *(a1 + 240);
      }
    }

    if (a2 == 2)
    {
      v10 = v6 * 0.5;
    }

    else
    {
      v10 = v6;
    }

    v11 = *(a1 + 216);
    v12 = *(a1 + 224) - v11;
    if (v12)
    {
      v13 = 0x4EC4EC4EC4EC4EC5 * (v12 >> 3);
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = (v11 + 8);
      do
      {
        *v14 = v10 + *v14;
        v14 += 13;
        --v13;
      }

      while (v13);
    }

    v15 = *(a1 + 248);
    v16 = *(a1 + 256) - v15;
    if (v16)
    {
      v17 = 0x4EC4EC4EC4EC4EC5 * (v16 >> 3);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v18 = (v15 + 8);
      do
      {
        *v18 = v10 + *v18;
        v18 += 13;
        --v17;
      }

      while (v17);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v19 = *(a1 + 336);
    v20 = [v19 countByEnumeratingWithState:&v69 objects:v76 count:16];
    if (v20)
    {
      v21 = *v70;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v70 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v69 + 1) + 8 * i);
          [v23 start];
          [v23 setStart:v10 + v24];
        }

        v20 = [v19 countByEnumeratingWithState:&v69 objects:v76 count:16];
      }

      while (v20);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v25 = *(a1 + 344);
    v26 = [v25 countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v26)
    {
      v27 = *v66;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v66 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v65 + 1) + 8 * j);
          [v29 start];
          [v29 setStart:v10 + v30];
        }

        v26 = [v25 countByEnumeratingWithState:&v65 objects:v75 count:16];
      }

      while (v26);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v31 = *(a1 + 352);
    v32 = [v31 countByEnumeratingWithState:&v61 objects:v74 count:16];
    if (v32)
    {
      v33 = *v62;
      do
      {
        for (k = 0; k != v32; k = k + 1)
        {
          if (*v62 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v61 + 1) + 8 * k);
          [v35 start];
          [v35 setStart:v10 + v36];
        }

        v32 = [v31 countByEnumeratingWithState:&v61 objects:v74 count:16];
      }

      while (v32);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v37 = *(a1 + 360);
    v38 = [v37 countByEnumeratingWithState:&v57 objects:v73 count:16];
    if (v38)
    {
      v39 = *v58;
      do
      {
        for (m = 0; m != v38; m = m + 1)
        {
          if (*v58 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v57 + 1) + 8 * m);
          [v41 start];
          [v41 setStart:v10 + v42];
        }

        v38 = [v37 countByEnumeratingWithState:&v57 objects:v73 count:16];
      }

      while (v38);
    }

    *(a1 + 240) = v10 + *(a1 + 240);
    v9 = v10 + *(a1 + 88);
    *(a1 + 88) = v9;
  }

  v43 = *(a1 + 72);
  v44 = *(a1 + 80);
  v45 = *(a1 + 96);
  IsNull = CGRectIsNull(*(&v9 - 2));
  v49 = 0.0;
  v50 = 0.0;
  if (!IsNull)
  {
    v50 = *(a1 + 40) - *(a1 + 72);
  }

  if ((*(a1 + 26) & 4) != 0)
  {
    v49 = 50.0;
  }

  v51 = (*(a1 + 120) + *(a1 + 136)) * 0.25 + v49;
  if (v51 < v50)
  {
    v51 = v50;
  }

  if (*(a1 + 88) < a3 + v51 * 2.0)
  {
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(IsNull, *&v47);
    *(a1 + 72) = v52;
    *(a1 + 80) = v53;
    *(a1 + 88) = v54;
    *(a1 + 96) = v55;
  }

  *(a1 + 56) = a3;
  return v10;
}

BOOL sub_100215188(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a2 + 224) == *(a2 + 216))
  {
    return 0;
  }

  result = 0;
  v5 = *(a2 + 24);
  if ((v5 & 4) == 0 && ((v5 >> 13) & 1) != ((*(a1 + 25) & 0x20) == 0))
  {
    result = CGRectEqualToRect(*(a2 + 40), *(a1 + 40));
    if (result)
    {
      if (a1 != a2)
      {
        sub_1002199C4(a1 + 216, *(a2 + 216), *(a2 + 224), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 224) - *(a2 + 216)) >> 3));
      }

      objc_storeStrong((a1 + 336), *(a2 + 336));
      objc_storeStrong((a1 + 344), *(a2 + 344));
      objc_storeStrong((a1 + 352), *(a2 + 352));
      objc_storeStrong((a1 + 360), *(a2 + 360));
      objc_storeStrong((a1 + 408), *(a2 + 408));
      v6 = *(a2 + 416);
      if (v6)
      {
        objc_storeStrong((a1 + 416), v6);
      }

      *(a1 + 240) = *(a2 + 240);
      objc_storeStrong((a1 + 456), *(a2 + 456));
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002152C8(uint64_t a1)
{
  result = *(a1 + 224);
  v3 = *(a1 + 216);
  while (result != v3)
  {
    result = sub_10026EC38(result - 104);
  }

  *(a1 + 224) = v3;
  return result;
}

uint64_t sub_100215308(void *a1, uint64_t a2, CGFloat *a3, double *a4, void *a5, void *a6, void *a7)
{
  if (a1[35] == a1[34])
  {
    return 0;
  }

  v12 = a1[26];
  if (!v12)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335154();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101335168();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101335204();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v14 = [NSString stringWithUTF8String:"BOOL CRLWPLineFragment::isInsideTateChuYokoLineAtCharIndex(CRLWPCharIndex, CGFloat &, CGFloat &, CGFloat &, CGFloat &, CGFloat &) const"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:2819 isFatal:0 description:"invalid nil value for '%{public}s'", "_textSource"];

    v12 = a1[26];
  }

  v16 = [v12 charIndexMappedFromStorage:a2];
  v17 = a1[34];
  v18 = a1[35] - v17;
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  v20 = 0x4EC4EC4EC4EC4EC5 * (v18 >> 3);
  v21 = 1;
  while (1)
  {
    v22 = v17 + 104 * v19;
    v23 = *(v22 + 24);
    v24 = &v16[-v23];
    if (v16 > v23 && v16 < *(v22 + 32) + v23)
    {
      break;
    }

    v19 = v21;
    v42 = v20 > v21++;
    if (!v42)
    {
      return 0;
    }
  }

  v28 = sub_10026ECB4(v22);
  location = CTLineGetStringRange(v28).location;
  v30 = sub_10026ECB4(v22);
  v31 = &v24[location];
  *a3 = CTLineGetOffsetForStringIndex(v30, v31, 0);
  v32 = sub_10026ECB4(v22);
  *a4 = CTLineGetTypographicBounds(v32, 0, 0, 0);
  v33 = sub_10026ECB4(v22);
  CTLineGetGlyphRuns(v33);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v34 = sub_10026ECB4(v22);
  v35 = CTLineGetGlyphRuns(v34);
  v36 = [v35 countByEnumeratingWithState:&v50 objects:v60 count:16];
  v37 = v36;
  if (v36)
  {
    v38 = *v51;
    do
    {
      v39 = 0;
      do
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v50 + 1) + 8 * v39);
        StringRange = CTRunGetStringRange(v40);
        v42 = StringRange.location >= v31 || v31 > StringRange.location + StringRange.length;
        if (!v42)
        {
          Attributes = CTRunGetAttributes(v40);
          Value = CFDictionaryGetValue(Attributes, kCTFontAttributeName);
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          sub_10028234C(Value, &v54);
          v47 = v56;
          *a5 = v55;
          *a6 = v47;
          *a7 = *(&v56 + 1);
          v26 = 1;
          goto LABEL_43;
        }

        v39 = v39 + 1;
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v37);
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133522C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101335254();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013352E4();
  }

  v43 = off_1019EDA68;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v35 = [NSString stringWithUTF8String:"BOOL CRLWPLineFragment::isInsideTateChuYokoLineAtCharIndex(CRLWPCharIndex, CGFloat &, CGFloat &, CGFloat &, CGFloat &, CGFloat &) const"];
  v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
  [CRLAssertionHandler handleFailureInFunction:v35 file:v44 lineNumber:2854 isFatal:0 description:"Could not find the CTRun for the tate chu yoko run."];

  v26 = 0;
LABEL_43:

  return v26;
}

void sub_1002157CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100215810(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100215854(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100215898(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002158DC(uint64_t result, int a2)
{
  v2 = 2;
  if (!a2)
  {
    v2 = 0;
  }

  *(result + 24) = *(result + 24) & 0xFFFFFFFFFFFFFFFDLL | v2;
  return result;
}

uint64_t sub_100215928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a1)
  {
    return 0;
  }

  v27 = v3;
  v28 = v4;
  if (CGRectEqualToRect(*(a1 + 40), *(a2 + 40)) && CGRectEqualToRect(*(a1 + 72), *(a2 + 72)) && *(a1 + 32) == *(a2 + 32) && *a1 == *a2 + a3 && *(a1 + 16) == *(a2 + 16) + a3 && *(a1 + 8) == *(a2 + 8) && *(a1 + 24) == *(a2 + 24))
  {
    v9 = *(a2 + 216);
    v8 = *(a2 + 224);
    v10 = v8 - v9;
    if (v8 - v9 == *(a1 + 224) - *(a1 + 216))
    {
      if (v8 == v9)
      {
        return 0;
      }

      v11 = 0;
      v12 = 0x4EC4EC4EC4EC4EC5 * (v10 >> 3);
      v13 = 1;
      while (1)
      {
        v14 = 104 * v11;
        v15 = *(a2 + 216) + v14;
        v16 = *(a1 + 216) + v14;
        v17 = *(v15 + 8) == *(v16 + 8) && *(v15 + 16) == *(v16 + 16);
        if (!v17 || !CFEqual(*v15, *v16))
        {
          break;
        }

        if (*(v15 + 24) != *(v16 + 24) || *(v15 + 32) != *(v16 + 32))
        {
          break;
        }

        if (*(v15 + 96) != *(v16 + 96))
        {
          break;
        }

        if (*(v15 + 40) != *(v16 + 40))
        {
          break;
        }

        v19 = *(v15 + 48);
        v20 = *(v15 + 80);
        *&t1.c = *(v15 + 64);
        *&t1.tx = v20;
        *&t1.a = v19;
        v21 = *(v16 + 48);
        v22 = *(v16 + 80);
        *&v25.c = *(v16 + 64);
        *&v25.tx = v22;
        *&v25.a = v21;
        if (!CGAffineTransformEqualToTransform(&t1, &v25))
        {
          break;
        }

        result = 0;
        v11 = v13;
        if (v12 <= v13++)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

double sub_100215B10(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 24);
  v4 = 0.0;
  if ((v3 & 0x100000000) == 0)
  {
    v5 = *(a1 + 136);
    v6 = *(a1 + 144);
    v7 = *(a1 + 112);
    v8 = *(a1 + 120);
    v9 = v5 + v6 + fmax(v7, v8);
    if (a2 <= 1)
    {
      if (!a2)
      {
        if ((v3 & 0x10) != 0)
        {
          v12 = v5 + v7;
        }

        else if (a3 <= 1.0)
        {
          v12 = v9 * a3;
          if (v12 < v7)
          {
            v12 = *(a1 + 112);
          }
        }

        else
        {
          v12 = v9 + (a3 + -1.0) * (v6 + v8 + v5);
        }

        v10 = v12 + *(a1 + 152);
        return v10 + *(a1 + 104) + *(a1 + 160);
      }

      if (a2 == 1)
      {
        v11 = v9 + *(a1 + 152);
        if (v11 >= a3)
        {
          v10 = v11;
        }

        else
        {
          v10 = a3;
        }

        return v10 + *(a1 + 104) + *(a1 + 160);
      }
    }

    else
    {
      v10 = a3;
      switch(a2)
      {
        case 2:
          return v10 + *(a1 + 104) + *(a1 + 160);
        case 3:
          v10 = fmin(v9 + *(a1 + 152), a3);
          return v10 + *(a1 + 104) + *(a1 + 160);
        case 4:
          v10 = fmax(v9 + *(a1 + 152) + a3, 0.0);
          return v10 + *(a1 + 104) + *(a1 + 160);
      }
    }

    v10 = v9;
    return v10 + *(a1 + 104) + *(a1 + 160);
  }

  return v4;
}

void sub_100215E84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100215EC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100215F0C(double *a1, uint64_t a2, char a3, double a4)
{
  v6 = a1[15];
  v8 = a1[17];
  v7 = a1[18];
  v9 = a1[13];
  v10 = v7 + v6 + v8;
  v11 = v8 + v7 + fmax(a1[14], v6);
  v12 = a1[20];
  v13 = v9 + a1[19] + v11;
  v14 = v12 + v13;
  if (a2 == 2)
  {
    v15 = v9 + a4 + v12;
  }

  else if (a2 == 1)
  {
    v15 = fmax(v14, a4);
  }

  else
  {
    v15 = v12 + v13;
    if (!a2)
    {
      v15 = v12 + v13;
      if (a4 > 1.0)
      {
        v15 = v12 + v13;
        if ((a3 & 1) == 0)
        {
          v15 = v14 + (a4 + -1.0) * v10;
        }
      }
    }
  }

  if (v15 <= 0.0)
  {
    v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335348();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110914;
      v23 = v16;
      v24 = 2082;
      v25 = "CGFloat CRLWPLineFragment::heightForHeightInfo(CRLWPLineSpacingMode, CGFloat, BOOL) const";
      v26 = 2082;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm";
      v28 = 1024;
      v29 = 3031;
      v30 = 2048;
      v31 = a2;
      v32 = 2048;
      v33 = a4;
      v34 = 2048;
      v35 = v10;
      v36 = 2048;
      v37 = v14;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad lineheight; mode: %lu, amount: %g, text: %g, total: %g", buf, 0x4Au);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133535C();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v19 = [NSString stringWithUTF8String:"CGFloat CRLWPLineFragment::heightForHeightInfo(CRLWPLineSpacingMode, CGFloat, BOOL) const"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:3031 isFatal:0 description:"bad lineheight; mode: %lu, amount: %g, text: %g, total: %g", a2, *&a4, *&v10, *&v14];
  }

  return v15;
}

void sub_1002161C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021620C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

float64x2_t sub_100216250(uint64_t a1, float64_t a2, float64x2_t a3)
{
  *(a1 + 48) = a3.f64[0] + *(a1 + 48);
  v3.f64[0] = a2;
  v3.f64[1] = a3.f64[0];
  *(a1 + 72) = vaddq_f64(v3, *(a1 + 72));
  a3.f64[1] = a2;
  result = vaddq_f64(a3, *(a1 + 32));
  *(a1 + 32) = result;
  return result;
}

id sub_100216284(uint64_t a1, double a2, double a3)
{
  [*(a1 + 368) setStartPos:?];
  v5 = *(a1 + 368);

  return [v5 setEndPos:a3];
}

id sub_1002162D0(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + 368) startPos];
  *a2 = v6;
  result = [*(a1 + 368) endPos];
  *a3 = v8;
  return result;
}

void sub_100216318(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 368) setHyphenationAttr:?];
  [*(a1 + 368) setHyphenationChar:a3];
  *(a1 + 376) = a3;
}

id sub_100216390(uint64_t a1, _DWORD *a2)
{
  *a2 = [*(a1 + 368) hyphenationChar];
  v3 = *(a1 + 368);

  return [v3 hyphenationAttr];
}

void sub_1002163F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 424) = v2;
  if ((v2 & 2) != 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335384();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_101335398();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101335428();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v5);
    }

    v6 = [NSString stringWithUTF8String:"void CRLWPLineFragment::saveLayoutState()"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:3115 isFatal:0 description:"bad starting line fragment state: hyphenated"];
  }

  if (*(a1 + 216) != *(a1 + 224))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335450();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_101335478();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101335508();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v10);
    }

    v11 = [NSString stringWithUTF8String:"void CRLWPLineFragment::saveLayoutState()"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:3116 isFatal:0 description:"bad starting line fragment state: line vector"];
  }

  if ([*(a1 + 408) count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335530();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_101335558();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013355E8();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v15);
    }

    v16 = [NSString stringWithUTF8String:"void CRLWPLineFragment::saveLayoutState()"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:3117 isFatal:0 description:"bad starting line fragment state: adornments"];
  }

  if ([*(a1 + 336) count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335610();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101335638();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013356C8();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v20);
    }

    v21 = [NSString stringWithUTF8String:"void CRLWPLineFragment::saveLayoutState()"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:3118 isFatal:0 description:"bad starting line fragment state: _underlines positions"];
  }

  if ([*(a1 + 344) count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013356F0();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_101335718();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013357A8();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v25);
    }

    v26 = [NSString stringWithUTF8String:"void CRLWPLineFragment::saveLayoutState()"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:3119 isFatal:0 description:"bad starting line fragment state: _strikesthrough positions"];
  }

  if ([*(a1 + 352) count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013357D0();
    }

    v28 = off_1019EDA68;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1013357F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101335888();
    }

    v29 = off_1019EDA68;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v30);
    }

    v31 = [NSString stringWithUTF8String:"void CRLWPLineFragment::saveLayoutState()"];
    v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:3120 isFatal:0 description:"bad starting line fragment state: _textBackgrounds positions"];
  }

  if ([*(a1 + 360) count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013358B0();
    }

    v33 = off_1019EDA68;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1013358D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101335968();
    }

    v34 = off_1019EDA68;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v35);
    }

    v36 = [NSString stringWithUTF8String:"void CRLWPLineFragment::saveLayoutState()"];
    v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:3121 isFatal:0 description:"bad starting line fragment state: _textHighlights positions"];
  }

  if (*(a1 + 416))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335990();
    }

    v38 = off_1019EDA68;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1013359B8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101335A54();
    }

    v39 = off_1019EDA68;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v40);
    }

    v41 = [NSString stringWithUTF8String:"void CRLWPLineFragment::saveLayoutState()"];
    v42 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v41 file:v42 lineNumber:3122 isFatal:0 description:"expected nil value for '%{public}s'", "_breakLine"];
  }

  if (*(a1 + 456))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335A7C();
    }

    v43 = off_1019EDA68;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_101335AA4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101335B40();
    }

    v44 = off_1019EDA68;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v45);
    }

    v46 = [NSString stringWithUTF8String:"void CRLWPLineFragment::saveLayoutState()"];
    v47 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLineFragment.mm"];
    [CRLAssertionHandler handleFailureInFunction:v46 file:v47 lineNumber:3123 isFatal:0 description:"expected nil value for '%{public}s'", "_paragraphString"];
  }
}

void sub_100216E38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100216E7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100216EC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100216F04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100216F48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100216F8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100216FD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100217014(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100217058(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021709C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002170E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100217124(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100217168(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002171AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002171F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100217234(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100217278(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002172BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100217300(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 424) & 0xFFFFFFFFFFFFFFFDLL;
  v2 = *(a1 + 224);
  v3 = *(a1 + 216);
  while (v2 != v3)
  {
    v2 = sub_10026EC38(v2 - 104);
  }

  *(a1 + 224) = v3;
  [*(a1 + 408) removeAllObjects];
  [*(a1 + 336) removeAllObjects];
  [*(a1 + 344) removeAllObjects];
  [*(a1 + 352) removeAllObjects];
  [*(a1 + 360) removeAllObjects];
  v4 = *(a1 + 456);
  *(a1 + 456) = 0;

  v5 = *(a1 + 416);
  *(a1 + 416) = 0;
}

id sub_100217398(id result)
{
  v1 = *(result + 52);
  if (v1)
  {
    [*(result + 52) start];

    return [v1 setStart:?];
  }

  return result;
}

void sub_1002173FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100217440(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100217484(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10026EC38(v4 - 104);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100217508(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_10026EC38(v3 - 104);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100217568(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    sub_1002175B8(a1, a2);
  }

  sub_1000C1D48();
}

void sub_1002175B8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  sub_1000C1E4C();
}

uint64_t sub_100217614(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1000C1D48();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1002175B8(a1, v6);
  }

  v13 = 0;
  v14 = 104 * v2;
  sub_10026EC00(104 * v2, a2);
  v15 = (104 * v2 + 104);
  v7 = a1[1];
  v8 = 104 * v2 + *a1 - v7;
  sub_10021775C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100217800(&v13);
  return v12;
}

void sub_100217748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100217800(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10021775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_10026EC00(a4, v8);
      v8 += 104;
      a4 += 104;
      v7 -= 104;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_10026EC38(v6);
      v6 += 104;
    }
  }

  return result;
}

void sub_1002177DC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 104;
    do
    {
      v4 = sub_10026EC38(v4) - 104;
      v2 += 104;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100217800(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    sub_10026EC38(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100217850(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10021792C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002179A8(result, a4);
  }

  return result;
}

void sub_10021798C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002179A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1002179F4(a1, a2);
  }

  sub_1000C1D48();
}

void sub_1002179F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1000C1E4C();
}

void sub_100217A4C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_1000C1E4C();
}

__n128 sub_100217A94(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 4;
  v10 = &a2[-8];
  v11 = &a2[-12];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 6;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if ((*a3)(a2 - 4, v12))
        {
          goto LABEL_77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v127 = (*a3)(v12 + 4, v12);
      v128 = (*a3)(v12 + 8, v12 + 4);
      if (v127)
      {
        if (v128)
        {
          v247 = v12[2];
          v274 = v12[3];
          v193 = *v12;
          v220 = v12[1];
          v129 = v12[9];
          *v12 = v12[8];
          v12[1] = v129;
          v130 = v12[11];
          v12[2] = v12[10];
          v12[3] = v130;
          v12[10] = v247;
          v12[11] = v274;
          v12[8] = v193;
          v12[9] = v220;
        }

        else
        {
          v249 = v12[2];
          v276 = v12[3];
          v195 = *v12;
          v222 = v12[1];
          v146 = v12[5];
          *v12 = v12[4];
          v12[1] = v146;
          v147 = v12[7];
          v12[2] = v12[6];
          v12[3] = v147;
          v12[6] = v249;
          v12[7] = v276;
          v12[4] = v195;
          v12[5] = v222;
          if ((*a3)(v12 + 8, v12 + 4))
          {
            v149 = v12[6];
            v148 = v12[7];
            v151 = v12[4];
            v150 = v12[5];
            v152 = v12[9];
            v12[4] = v12[8];
            v12[5] = v152;
            v153 = v12[11];
            v12[6] = v12[10];
            v12[7] = v153;
            v12[8] = v151;
            v12[9] = v150;
            v12[10] = v149;
            v12[11] = v148;
          }
        }
      }

      else if (v128)
      {
        v139 = v12[6];
        v138 = v12[7];
        v141 = v12[4];
        v140 = v12[5];
        v142 = v12[9];
        v12[4] = v12[8];
        v12[5] = v142;
        v143 = v12[11];
        v12[6] = v12[10];
        v12[7] = v143;
        v12[8] = v141;
        v12[9] = v140;
        v12[10] = v139;
        v12[11] = v138;
        if ((*a3)(v12 + 4, v12))
        {
          v248 = v12[2];
          v275 = v12[3];
          v194 = *v12;
          v221 = v12[1];
          v144 = v12[5];
          *v12 = v12[4];
          v12[1] = v144;
          v145 = v12[7];
          v12[2] = v12[6];
          v12[3] = v145;
          v12[6] = v248;
          v12[7] = v275;
          v12[4] = v194;
          v12[5] = v221;
        }
      }

      if (!(*a3)(v9, v12 + 8))
      {
        return result;
      }

      v155 = v12[10];
      v154 = v12[11];
      v157 = v12[8];
      v156 = v12[9];
      v158 = v9[3];
      v160 = *v9;
      v159 = v9[1];
      v12[10] = v9[2];
      v12[11] = v158;
      v12[8] = v160;
      v12[9] = v159;
      *v9 = v157;
      v9[1] = v156;
      v9[2] = v155;
      v9[3] = v154;
      if (!(*a3)(v12 + 8, v12 + 4))
      {
        return result;
      }

      v162 = v12[6];
      v161 = v12[7];
      v164 = v12[4];
      v163 = v12[5];
      v165 = v12[9];
      v12[4] = v12[8];
      v12[5] = v165;
      v166 = v12[11];
      v12[6] = v12[10];
      v12[7] = v166;
      v12[8] = v164;
      v12[9] = v163;
      v12[10] = v162;
      v12[11] = v161;
LABEL_102:
      if ((*a3)(v12 + 4, v12))
      {
        v250 = v12[2];
        v277 = v12[3];
        v196 = *v12;
        v223 = v12[1];
        v167 = v12[5];
        *v12 = v12[4];
        v12[1] = v167;
        v168 = v12[7];
        v12[2] = v12[6];
        v12[3] = v168;
        result = v196;
        v12[6] = v250;
        v12[7] = v277;
        v12[4] = v196;
        v12[5] = v223;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_1002186F0(v12, v12 + 4, v12 + 8, v12 + 12, a2 - 4, a3).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1002189A8(v12, a2, a3);
      }

      else
      {

        sub_100218A94(v12, a2, a3);
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_100219330(v12, a2, a2, a3, result);
      }

      return result;
    }

    v16 = &v12[4 * (v15 >> 1)];
    v17 = *a3;
    if (v15 >= 0x81)
    {
      v18 = v17(&v12[4 * (v15 >> 1)], v12);
      v19 = (*a3)(a2 - 4, v16);
      if (v18)
      {
        if (v19)
        {
          v224 = a1[2];
          v251 = a1[3];
          v170 = *a1;
          v197 = a1[1];
          v20 = *v9;
          v21 = a2[-3];
          v22 = a2[-1];
          a1[2] = a2[-2];
          a1[3] = v22;
          *a1 = v20;
          a1[1] = v21;
          goto LABEL_27;
        }

        v230 = a1[2];
        v257 = a1[3];
        v176 = *a1;
        v203 = a1[1];
        v40 = *v16;
        v41 = v16[1];
        v42 = v16[3];
        a1[2] = v16[2];
        a1[3] = v42;
        *a1 = v40;
        a1[1] = v41;
        v16[2] = v230;
        v16[3] = v257;
        *v16 = v176;
        v16[1] = v203;
        if ((*a3)(a2 - 4, v16))
        {
          v224 = v16[2];
          v251 = v16[3];
          v170 = *v16;
          v197 = v16[1];
          v43 = *v9;
          v44 = a2[-3];
          v45 = a2[-1];
          v16[2] = a2[-2];
          v16[3] = v45;
          *v16 = v43;
          v16[1] = v44;
LABEL_27:
          *v9 = v170;
          a2[-3] = v197;
          a2[-2] = v224;
          a2[-1] = v251;
        }
      }

      else if (v19)
      {
        v226 = v16[2];
        v253 = v16[3];
        v172 = *v16;
        v199 = v16[1];
        v28 = *v9;
        v29 = a2[-3];
        v30 = a2[-1];
        v16[2] = a2[-2];
        v16[3] = v30;
        *v16 = v28;
        v16[1] = v29;
        *v9 = v172;
        a2[-3] = v199;
        a2[-2] = v226;
        a2[-1] = v253;
        if ((*a3)(v16, a1))
        {
          v227 = a1[2];
          v254 = a1[3];
          v173 = *a1;
          v200 = a1[1];
          v31 = *v16;
          v32 = v16[1];
          v33 = v16[3];
          a1[2] = v16[2];
          a1[3] = v33;
          *a1 = v31;
          a1[1] = v32;
          v16[2] = v227;
          v16[3] = v254;
          *v16 = v173;
          v16[1] = v200;
        }
      }

      v46 = &v16[-4];
      v47 = (*a3)(v16 - 4, a1 + 4);
      v48 = (*a3)(a2 - 8, v16 - 4);
      if (v47)
      {
        if (v48)
        {
          v50 = a1[6];
          v49 = a1[7];
          v52 = a1[4];
          v51 = a1[5];
          v53 = a2[-5];
          v55 = *v10;
          v54 = a2[-7];
          a1[6] = a2[-6];
          a1[7] = v53;
          a1[4] = v55;
          a1[5] = v54;
          *v10 = v52;
          a2[-7] = v51;
          a2[-6] = v50;
          goto LABEL_39;
        }

        v180 = a1[4];
        v207 = a1[5];
        v234 = a1[6];
        v261 = a1[7];
        v69 = v16[-2];
        v68 = v16[-1];
        v70 = v16[-3];
        a1[4] = *v46;
        a1[5] = v70;
        a1[6] = v69;
        a1[7] = v68;
        v16[-2] = v234;
        v16[-1] = v261;
        *v46 = v180;
        v16[-3] = v207;
        if ((*a3)(a2 - 8, v16 - 4))
        {
          v235 = v16[-2];
          v262 = v16[-1];
          v181 = *v46;
          v208 = v16[-3];
          v71 = *v10;
          v72 = a2[-7];
          v73 = a2[-5];
          v16[-2] = a2[-6];
          v16[-1] = v73;
          *v46 = v71;
          v16[-3] = v72;
          *v10 = v181;
          a2[-7] = v208;
          a2[-6] = v235;
          v49 = v262;
LABEL_39:
          a2[-5] = v49;
        }
      }

      else if (v48)
      {
        v231 = v16[-2];
        v258 = v16[-1];
        v177 = *v46;
        v204 = v16[-3];
        v56 = *v10;
        v57 = a2[-7];
        v58 = a2[-5];
        v16[-2] = a2[-6];
        v16[-1] = v58;
        *v46 = v56;
        v16[-3] = v57;
        *v10 = v177;
        a2[-7] = v204;
        a2[-6] = v231;
        a2[-5] = v258;
        if ((*a3)(v16 - 4, a1 + 4))
        {
          v178 = a1[4];
          v205 = a1[5];
          v232 = a1[6];
          v259 = a1[7];
          v60 = v16[-2];
          v59 = v16[-1];
          v61 = v16[-3];
          a1[4] = *v46;
          a1[5] = v61;
          a1[6] = v60;
          a1[7] = v59;
          v16[-2] = v232;
          v16[-1] = v259;
          *v46 = v178;
          v16[-3] = v205;
        }
      }

      v74 = (*a3)(v16 + 4, a1 + 8);
      v75 = (*a3)(a2 - 12, v16 + 4);
      if (v74)
      {
        if (v75)
        {
          v77 = a1[10];
          v76 = a1[11];
          v79 = a1[8];
          v78 = a1[9];
          v80 = a2[-9];
          v82 = *v11;
          v81 = a2[-11];
          a1[10] = a2[-10];
          a1[11] = v80;
          a1[8] = v82;
          a1[9] = v81;
          *v11 = v79;
          a2[-11] = v78;
          a2[-10] = v77;
          goto LABEL_48;
        }

        v184 = a1[8];
        v211 = a1[9];
        v238 = a1[10];
        v265 = a1[11];
        v90 = v16[6];
        v89 = v16[7];
        v91 = v16[5];
        a1[8] = v16[4];
        a1[9] = v91;
        a1[10] = v90;
        a1[11] = v89;
        v16[6] = v238;
        v16[7] = v265;
        v16[4] = v184;
        v16[5] = v211;
        if ((*a3)(a2 - 12, v16 + 4))
        {
          v239 = v16[6];
          v266 = v16[7];
          v185 = v16[4];
          v212 = v16[5];
          v92 = *v11;
          v93 = a2[-11];
          v94 = a2[-9];
          v16[6] = a2[-10];
          v16[7] = v94;
          v16[4] = v92;
          v16[5] = v93;
          *v11 = v185;
          a2[-11] = v212;
          a2[-10] = v239;
          v76 = v266;
LABEL_48:
          a2[-9] = v76;
        }
      }

      else if (v75)
      {
        v236 = v16[6];
        v263 = v16[7];
        v182 = v16[4];
        v209 = v16[5];
        v83 = *v11;
        v84 = a2[-11];
        v85 = a2[-9];
        v16[6] = a2[-10];
        v16[7] = v85;
        v16[4] = v83;
        v16[5] = v84;
        *v11 = v182;
        a2[-11] = v209;
        a2[-10] = v236;
        a2[-9] = v263;
        if ((*a3)(v16 + 4, a1 + 8))
        {
          v183 = a1[8];
          v210 = a1[9];
          v237 = a1[10];
          v264 = a1[11];
          v87 = v16[6];
          v86 = v16[7];
          v88 = v16[5];
          a1[8] = v16[4];
          a1[9] = v88;
          a1[10] = v87;
          a1[11] = v86;
          v16[6] = v237;
          v16[7] = v264;
          v16[4] = v183;
          v16[5] = v210;
        }
      }

      v95 = (*a3)(v16, v16 - 4);
      v96 = (*a3)(v16 + 4, v16);
      if (v95)
      {
        if (v96)
        {
          v240 = v16[-2];
          v267 = v16[-1];
          v186 = *v46;
          v213 = v16[-3];
          v97 = v16[5];
          *v46 = v16[4];
          v16[-3] = v97;
          v98 = v16[7];
          v16[-2] = v16[6];
          v16[-1] = v98;
          goto LABEL_57;
        }

        v243 = v16[-2];
        v270 = v16[-1];
        v189 = *v46;
        v216 = v16[-3];
        v103 = v16[1];
        *v46 = *v16;
        v16[-3] = v103;
        v104 = v16[3];
        v16[-2] = v16[2];
        v16[-1] = v104;
        v16[2] = v243;
        v16[3] = v270;
        *v16 = v189;
        v16[1] = v216;
        if ((*a3)(v16 + 4, v16))
        {
          v240 = v16[2];
          v267 = v16[3];
          v186 = *v16;
          v213 = v16[1];
          v105 = v16[5];
          *v16 = v16[4];
          v16[1] = v105;
          v106 = v16[7];
          v16[2] = v16[6];
          v16[3] = v106;
LABEL_57:
          v16[6] = v240;
          v16[7] = v267;
          v16[4] = v186;
          v16[5] = v213;
        }
      }

      else if (v96)
      {
        v241 = v16[2];
        v268 = v16[3];
        v187 = *v16;
        v214 = v16[1];
        v99 = v16[5];
        *v16 = v16[4];
        v16[1] = v99;
        v100 = v16[7];
        v16[2] = v16[6];
        v16[3] = v100;
        v16[6] = v241;
        v16[7] = v268;
        v16[4] = v187;
        v16[5] = v214;
        if ((*a3)(v16, v16 - 4))
        {
          v242 = v16[-2];
          v269 = v16[-1];
          v188 = *v46;
          v215 = v16[-3];
          v101 = v16[1];
          *v46 = *v16;
          v16[-3] = v101;
          v102 = v16[3];
          v16[-2] = v16[2];
          v16[-1] = v102;
          v16[2] = v242;
          v16[3] = v269;
          *v16 = v188;
          v16[1] = v215;
        }
      }

      v244 = a1[2];
      v271 = a1[3];
      v190 = *a1;
      v217 = a1[1];
      v107 = *v16;
      v108 = v16[1];
      v109 = v16[3];
      a1[2] = v16[2];
      a1[3] = v109;
      *a1 = v107;
      a1[1] = v108;
      v16[2] = v244;
      v16[3] = v271;
      *v16 = v190;
      v16[1] = v217;
      goto LABEL_59;
    }

    v23 = v17(v12, &v12[4 * (v15 >> 1)]);
    v24 = (*a3)(a2 - 4, a1);
    if (v23)
    {
      if (v24)
      {
        v225 = v16[2];
        v252 = v16[3];
        v171 = *v16;
        v198 = v16[1];
        v25 = *v9;
        v26 = a2[-3];
        v27 = a2[-1];
        v16[2] = a2[-2];
        v16[3] = v27;
        *v16 = v25;
        v16[1] = v26;
LABEL_36:
        *v9 = v171;
        a2[-3] = v198;
        a2[-2] = v225;
        a2[-1] = v252;
        goto LABEL_59;
      }

      v233 = v16[2];
      v260 = v16[3];
      v179 = *v16;
      v206 = v16[1];
      v62 = *a1;
      v63 = a1[1];
      v64 = a1[3];
      v16[2] = a1[2];
      v16[3] = v64;
      *v16 = v62;
      v16[1] = v63;
      a1[2] = v233;
      a1[3] = v260;
      *a1 = v179;
      a1[1] = v206;
      if ((*a3)(a2 - 4, a1))
      {
        v225 = a1[2];
        v252 = a1[3];
        v171 = *a1;
        v198 = a1[1];
        v65 = *v9;
        v66 = a2[-3];
        v67 = a2[-1];
        a1[2] = a2[-2];
        a1[3] = v67;
        *a1 = v65;
        a1[1] = v66;
        goto LABEL_36;
      }
    }

    else if (v24)
    {
      v228 = a1[2];
      v255 = a1[3];
      v174 = *a1;
      v201 = a1[1];
      v34 = *v9;
      v35 = a2[-3];
      v36 = a2[-1];
      a1[2] = a2[-2];
      a1[3] = v36;
      *a1 = v34;
      a1[1] = v35;
      *v9 = v174;
      a2[-3] = v201;
      a2[-2] = v228;
      a2[-1] = v255;
      if ((*a3)(a1, v16))
      {
        v229 = v16[2];
        v256 = v16[3];
        v175 = *v16;
        v202 = v16[1];
        v37 = *a1;
        v38 = a1[1];
        v39 = a1[3];
        v16[2] = a1[2];
        v16[3] = v39;
        *v16 = v37;
        v16[1] = v38;
        a1[2] = v229;
        a1[3] = v256;
        *a1 = v175;
        a1[1] = v202;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 4, a1) & 1) == 0)
    {
      v12 = sub_100218B64(a1, a2, a3);
      goto LABEL_66;
    }

    v110 = sub_100218CC4(a1, a2, a3);
    if ((v111 & 1) == 0)
    {
      goto LABEL_64;
    }

    v112 = sub_100218E24(a1, v110, a3);
    v12 = &v110[4];
    if (sub_100218E24(v110 + 4, a2, a3))
    {
      a4 = -v14;
      a2 = v110;
      if (v112)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v112)
    {
LABEL_64:
      sub_100217A94(a1, v110, a3, -v14, a5 & 1);
      v12 = &v110[4];
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v113 = (*a3)(v12 + 4, v12);
  v114 = (*a3)(v9, v12 + 4);
  if ((v113 & 1) == 0)
  {
    if (!v114)
    {
      return result;
    }

    v132 = v12[6];
    v131 = v12[7];
    v134 = v12[4];
    v133 = v12[5];
    v135 = v9[3];
    v137 = *v9;
    v136 = v9[1];
    v12[6] = v9[2];
    v12[7] = v135;
    v12[4] = v137;
    v12[5] = v136;
    *v9 = v134;
    v9[1] = v133;
    v9[2] = v132;
    v9[3] = v131;
    goto LABEL_102;
  }

  if (v114)
  {
LABEL_77:
    v246 = v12[2];
    v273 = v12[3];
    v192 = *v12;
    v219 = v12[1];
    v124 = *v9;
    v125 = v9[1];
    v126 = v9[3];
    v12[2] = v9[2];
    v12[3] = v126;
    *v12 = v124;
    v12[1] = v125;
    *v9 = v192;
    v9[1] = v219;
    v9[2] = v246;
    result = v273;
    v9[3] = v273;
    return result;
  }

  v245 = v12[2];
  v272 = v12[3];
  v191 = *v12;
  v218 = v12[1];
  v115 = v12[5];
  *v12 = v12[4];
  v12[1] = v115;
  v116 = v12[7];
  v12[2] = v12[6];
  v12[3] = v116;
  v12[6] = v245;
  v12[7] = v272;
  v12[4] = v191;
  v12[5] = v218;
  if ((*a3)(v9, v12 + 4))
  {
    v117 = v12[6];
    result = v12[7];
    v119 = v12[4];
    v118 = v12[5];
    v120 = v9[3];
    v122 = *v9;
    v121 = v9[1];
    v12[6] = v9[2];
    v12[7] = v120;
    v12[4] = v122;
    v12[5] = v121;
    *v9 = v119;
    v9[1] = v118;
    v9[2] = v117;
    v9[3] = result;
  }

  return result;
}

__n128 sub_1002186F0(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = a1[2];
      v14 = a1[3];
      v17 = *a1;
      v16 = a1[1];
      v18 = a3[3];
      v20 = *a3;
      v19 = a3[1];
      a1[2] = a3[2];
      a1[3] = v18;
      *a1 = v20;
      a1[1] = v19;
LABEL_9:
      *a3 = v17;
      a3[1] = v16;
      a3[2] = v15;
      a3[3] = v14;
      goto LABEL_10;
    }

    v36 = a1[2];
    v35 = a1[3];
    v38 = *a1;
    v37 = a1[1];
    v39 = a2[3];
    v41 = *a2;
    v40 = a2[1];
    a1[2] = a2[2];
    a1[3] = v39;
    *a1 = v41;
    a1[1] = v40;
    *a2 = v38;
    a2[1] = v37;
    a2[2] = v36;
    a2[3] = v35;
    if ((*a6)(a3, a2))
    {
      v15 = a2[2];
      v14 = a2[3];
      v17 = *a2;
      v16 = a2[1];
      v42 = a3[3];
      v44 = *a3;
      v43 = a3[1];
      a2[2] = a3[2];
      a2[3] = v42;
      *a2 = v44;
      a2[1] = v43;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v22 = a2[2];
    v21 = a2[3];
    v24 = *a2;
    v23 = a2[1];
    v25 = a3[3];
    v27 = *a3;
    v26 = a3[1];
    a2[2] = a3[2];
    a2[3] = v25;
    *a2 = v27;
    a2[1] = v26;
    *a3 = v24;
    a3[1] = v23;
    a3[2] = v22;
    a3[3] = v21;
    if ((*a6)(a2, a1))
    {
      v29 = a1[2];
      v28 = a1[3];
      v31 = *a1;
      v30 = a1[1];
      v32 = a2[3];
      v34 = *a2;
      v33 = a2[1];
      a1[2] = a2[2];
      a1[3] = v32;
      *a1 = v34;
      a1[1] = v33;
      *a2 = v31;
      a2[1] = v30;
      a2[2] = v29;
      a2[3] = v28;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v46 = a3[2];
    v45 = a3[3];
    v48 = *a3;
    v47 = a3[1];
    v49 = a4[3];
    v51 = *a4;
    v50 = a4[1];
    a3[2] = a4[2];
    a3[3] = v49;
    *a3 = v51;
    a3[1] = v50;
    *a4 = v48;
    a4[1] = v47;
    a4[2] = v46;
    a4[3] = v45;
    if ((*a6)(a3, a2))
    {
      v53 = a2[2];
      v52 = a2[3];
      v55 = *a2;
      v54 = a2[1];
      v56 = a3[3];
      v58 = *a3;
      v57 = a3[1];
      a2[2] = a3[2];
      a2[3] = v56;
      *a2 = v58;
      a2[1] = v57;
      *a3 = v55;
      a3[1] = v54;
      a3[2] = v53;
      a3[3] = v52;
      if ((*a6)(a2, a1))
      {
        v60 = a1[2];
        v59 = a1[3];
        v62 = *a1;
        v61 = a1[1];
        v63 = a2[3];
        v65 = *a2;
        v64 = a2[1];
        a1[2] = a2[2];
        a1[3] = v63;
        *a1 = v65;
        a1[1] = v64;
        *a2 = v62;
        a2[1] = v61;
        a2[2] = v60;
        a2[3] = v59;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v68 = a4[2];
    v67 = a4[3];
    v70 = *a4;
    v69 = a4[1];
    v71 = a5[3];
    v73 = *a5;
    v72 = a5[1];
    a4[2] = a5[2];
    a4[3] = v71;
    *a4 = v73;
    a4[1] = v72;
    *a5 = v70;
    a5[1] = v69;
    a5[2] = v68;
    a5[3] = v67;
    if ((*a6)(a4, a3))
    {
      v75 = a3[2];
      v74 = a3[3];
      v77 = *a3;
      v76 = a3[1];
      v78 = a4[3];
      v80 = *a4;
      v79 = a4[1];
      a3[2] = a4[2];
      a3[3] = v78;
      *a3 = v80;
      a3[1] = v79;
      *a4 = v77;
      a4[1] = v76;
      a4[2] = v75;
      a4[3] = v74;
      if ((*a6)(a3, a2))
      {
        v82 = a2[2];
        v81 = a2[3];
        v84 = *a2;
        v83 = a2[1];
        v85 = a3[3];
        v87 = *a3;
        v86 = a3[1];
        a2[2] = a3[2];
        a2[3] = v85;
        *a2 = v87;
        a2[1] = v86;
        *a3 = v84;
        a3[1] = v83;
        a3[2] = v82;
        a3[3] = v81;
        if ((*a6)(a2, a1))
        {
          v88 = a1[2];
          result = a1[3];
          v90 = *a1;
          v89 = a1[1];
          v91 = a2[3];
          v93 = *a2;
          v92 = a2[1];
          a1[2] = a2[2];
          a1[3] = v91;
          *a1 = v93;
          a1[1] = v92;
          *a2 = v90;
          a2[1] = v89;
          a2[2] = v88;
          a2[3] = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002189A8(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v25 = v3;
    v26 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v12 = v10[1];
          v21 = *v10;
          v22 = v12;
          v13 = v10[3];
          v23 = v10[2];
          v24 = v13;
          v14 = v9;
          while (1)
          {
            v15 = (v6 + v14);
            v16 = *(v6 + v14 + 16);
            v15[4] = *(v6 + v14);
            v15[5] = v16;
            v17 = *(v6 + v14 + 48);
            v15[6] = *(v6 + v14 + 32);
            v15[7] = v17;
            if (!v14)
            {
              break;
            }

            v14 -= 64;
            result = (*a3)(&v21, v6 + v14);
            if ((result & 1) == 0)
            {
              v18 = (v6 + v14 + 64);
              goto LABEL_10;
            }
          }

          v18 = v6;
LABEL_10:
          v19 = v22;
          *v18 = v21;
          v18[1] = v19;
          v20 = v24;
          v18[2] = v23;
          v18[3] = v20;
        }

        v7 = v10 + 4;
        v9 += 64;
      }

      while (v10 + 4 != a2);
    }
  }

  return result;
}