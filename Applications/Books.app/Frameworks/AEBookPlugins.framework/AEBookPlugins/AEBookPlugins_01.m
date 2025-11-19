id sub_B849C(uint64_t a1)
{
  [*(a1 + 32) setZoomScale:0 animated:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t sub_B84E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_B8654(uint64_t a1)
{
  [*(a1 + 32) zoomToRect:0 animated:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t sub_B869C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_B8B1C(uint64_t a1)
{
  v2 = [*(a1 + 32) image];

  if (v2)
  {
    v3 = +[UIColor clearColor];
    [*(a1 + 32) setBackgroundColor:v3];

    v4 = +[UIColor blackColor];
    v5 = [*(a1 + 32) pageLabel];
    [v5 setTextColor:v4];

    v6 = +[UIColor whiteColor];
    v7 = 14.0;
  }

  else
  {
    v8 = [UIColor colorWithWhite:1.0 alpha:0.5];
    [*(a1 + 32) setBackgroundColor:v8];

    v9 = +[UIColor blackColor];
    v10 = [*(a1 + 32) pageLabel];
    [v10 setTextColor:v9];

    v6 = +[UIColor clearColor];
    v7 = 24.0;
  }

  v11 = [*(a1 + 32) pageLabel];
  [v11 setBackgroundColor:v6];

  [*(a1 + 32) bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [*(a1 + 32) showsPageNumber];
  v21 = [*(a1 + 32) pageLabel];
  [v21 setHidden:(v2 != 0) & ~v20];

  v22 = *(a1 + 32);
  if (*(v22 + 24))
  {
    [*(v22 + 40) setText:?];
    [UIFont boldSystemFontOfSize:v7];
  }

  else
  {
    v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v22 pageNumber]);
    [*(*(a1 + 32) + 40) setText:v24];

    [UIFont monospacedDigitSystemFontOfSize:v7 weight:UIFontWeightBold];
  }
  v23 = ;
  [*(*(a1 + 32) + 40) setFont:v23];

  if (v2)
  {
    [*(*(a1 + 32) + 40) sizeToFit];
    [*(*(a1 + 32) + 40) bounds];
    v26 = v25;
    v28 = v27 + 8.0;
    v38.origin.x = v13;
    v38.origin.y = v15;
    v38.size.width = v17;
    v38.size.height = v19;
    v29 = CGRectGetMaxX(v38) - v28 + -5.0;
    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v17;
    v39.size.height = v19;
    v30 = CGRectGetMaxY(v39) - v26 + -5.0;
    v31 = v29;
    v32 = v28;
    v33 = v26;
  }

  else
  {
    v31 = v13;
    v30 = v15;
    v32 = v17;
    v33 = v19;
  }

  v40 = CGRectIntegral(*&v31);
  [*(*(a1 + 32) + 40) setFrame:{v40.origin.x, v40.origin.y, v40.size.width, v40.size.height}];
  v34 = [*(*(a1 + 32) + 40) layer];
  [v34 setCornerRadius:0.0];

  v41.origin.x = v13;
  v41.origin.y = v15;
  v41.size.width = v17;
  v41.size.height = v19;
  v42 = CGRectIntegral(v41);
  v35 = *(*(a1 + 32) + 32);

  return [v35 setFrame:{v42.origin.x, v42.origin.y, v42.size.width, v42.size.height}];
}

void sub_B950C(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(*(a1 + 32) + 8) setHidden:{objc_msgSend(*(*(a1 + 32) + 8), "pageNumber") == 0x7FFFFFFFFFFFFFFFLL}];
  [*(*(a1 + 32) + 16) setHidden:{objc_msgSend(*(*(a1 + 32) + 16), "pageNumber") == 0x7FFFFFFFFFFFFFFFLL}];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  if (v11 && (v12 = [v11 isHidden], v10 = *(a1 + 32), (v12 & 1) == 0) && (v13 = *(v10 + 16)) != 0 && (v14 = objc_msgSend(v13, "isHidden"), v10 = *(a1 + 32), (v14 & 1) == 0))
  {
    v16 = floor(v7 * 0.5);
    [*(v10 + 8) setFrame:{v3, v5, v16, v9}];
    [*(*(a1 + 32) + 16) setFrame:{v3 + v16, v5, v16, v9}];
    v21 = [*(a1 + 32) gutter];
    v17 = [v21 image];
    [v17 size];
    v19 = v18;

    [v21 setHidden:{objc_msgSend(*(a1 + 32), "hidesSpine")}];
    v23.origin.x = v3;
    v23.origin.y = v5;
    v23.size.width = v7;
    v23.size.height = v9;
    v20 = CGRectGetMidX(v23) - v19 * 0.5;
    v24.origin.x = v3;
    v24.origin.y = v5;
    v24.size.width = v7;
    v24.size.height = v9;
    [v21 setFrame:{v20, 0.0, v19, CGRectGetHeight(v24)}];
  }

  else
  {
    [*(v10 + 48) setHidden:1];
    [*(*(a1 + 32) + 16) setFrame:{v3, v5, v7, v9}];
    v15 = *(*(a1 + 32) + 8);

    [v15 setFrame:{v3, v5, v7, v9}];
  }
}

void sub_BAA34(uint64_t a1)
{
  [*(a1 + 32) contextualTopViewToCenter];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) topPagesView];
  [v6 setCenter:{v3, v5}];

  [*(a1 + 32) contextualBottomViewToCenter];
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) bottomPagesView];
  [v11 setCenter:{v8, v10}];

  if ([*(a1 + 32) isGoingToNextPage])
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 0.3;
  }

  v14 = [*(*(a1 + 32) + 64) layer];
  *&v13 = v12;
  [v14 setOpacity:v13];
}

id sub_BAB18(uint64_t a1)
{
  [*(a1 + 32) setFinished:1];
  [*(a1 + 32) setState:2];
  v2 = [*(a1 + 32) pageAnimationDelegate];
  [v2 pageAnimation:*(a1 + 32) didFinish:1];

  v3 = *(a1 + 32);

  return [v3 _cleanup];
}

void sub_BAC48(uint64_t a1)
{
  [*(a1 + 32) contextualTopViewFromCenter];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) topPagesView];
  [v6 setCenter:{v3, v5}];

  [*(a1 + 32) contextualBottomViewFromCenter];
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) bottomPagesView];
  [v11 setCenter:{v8, v10}];

  if ([*(a1 + 32) isGoingToNextPage])
  {
    v12 = 0.3;
  }

  else
  {
    v12 = 0.0;
  }

  v14 = [*(*(a1 + 32) + 64) layer];
  *&v13 = v12;
  [v14 setOpacity:v13];
}

id sub_BAD2C(uint64_t a1)
{
  [*(a1 + 32) setFinished:1];
  [*(a1 + 32) setState:3];
  v2 = [*(a1 + 32) pageAnimationDelegate];
  [v2 pageAnimation:*(a1 + 32) didFinish:1];

  v3 = *(a1 + 32);

  return [v3 _cleanup];
}

id sub_BD780(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 objectForKeyedSubscript:@"fullHref"];
  [v4 setObject:v5 forKeyedSubscript:kBCReadingStatisticsHrefKey];

  v6 = [v3 objectForKeyedSubscript:@"name"];
  [v4 setObject:v6 forKeyedSubscript:kBCReadingStatisticsNameKey];

  v7 = *(a1 + 32);
  v8 = [v3 objectForKeyedSubscript:@"fullHref"];

  v9 = [v7 objectForKeyedSubscript:v8];
  [v4 setObject:v9 forKeyedSubscript:kBCReadingStatisticsStartCFIKey];

  return v4;
}

double BKScreenSizeForImageSize(double a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = v3;

  if (v4 != 1.0)
  {
    return a1 / v4;
  }

  return a1;
}

void sub_C32A0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) pdfDocument];
  v5 = [v4 pageAtIndex:a2];

  [*(a1 + 40) addObject:v5];
}

void sub_C3794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_C37BC(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_C4BD0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_C4F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_C5018(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_C5094(result, a4);
  }

  return result;
}

void sub_C5078(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_C5094(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_C50E8(a1, a2);
  }

  sub_C50D0();
}

void sub_C50E8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_C51C0();
}

void sub_C5130(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_C518C(exception, a1);
}

std::logic_error *sub_C518C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_C51C0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_C6C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C6C88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained analysisInteraction];
  [v4 setAnalysis:v3];
}

uint64_t NSStringFromBKWK2LoaderContentInfoRequestState(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_1E52B0 + a1);
  }
}

void sub_C7ADC(id a1, ICStoreRequestContext *a2)
{
  v2 = a2;
  v3 = +[ICUserIdentity activeAccount];
  [(ICStoreRequestContext *)v2 setIdentity:v3];

  v4 = +[ICUserIdentityStore defaultIdentityStore];
  [(ICStoreRequestContext *)v2 setIdentityStore:v4];

  v5 = [[ICClientInfo alloc] initWithSystemApplicationType:2];
  [(ICStoreRequestContext *)v2 setClientInfo:v5];

  v8 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:5];
  [(ICStoreRequestContext *)v2 setAuthenticationProvider:v8];
  v6 = objc_alloc_init(ICStoreDialogResponseHandlerConfiguration);
  [v6 setAllowsHandlingNonAuthenticationDialogs:0];
  v7 = [[ICStoreDialogResponseHandler alloc] initWithConfiguration:v6];
  [(ICStoreRequestContext *)v2 setStoreDialogResponseHandler:v7];
}

void BKSwizzleClassMethods(objc_class *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    ClassMethod = class_getClassMethod(a1, a2);
    v7 = class_getClassMethod(a1, a3);
    if (ClassMethod)
    {
      v8 = v7;
      if (v7)
      {
        Implementation = method_getImplementation(v7);
        TypeEncoding = method_getTypeEncoding(v8);
        if (class_addMethod(a1, a2, Implementation, TypeEncoding))
        {
          v11 = method_getImplementation(ClassMethod);
          v12 = method_getTypeEncoding(ClassMethod);

          class_replaceMethod(a1, a3, v11, v12);
        }

        else
        {

          method_exchangeImplementations(ClassMethod, v8);
        }
      }
    }
  }
}

void BKSwizzleInstanceMethods(objc_class *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    InstanceMethod = class_getInstanceMethod(a1, a2);
    v7 = class_getInstanceMethod(a1, a3);
    if (InstanceMethod)
    {
      v8 = v7;
      if (v7)
      {
        Implementation = method_getImplementation(v7);
        TypeEncoding = method_getTypeEncoding(v8);
        if (class_addMethod(a1, a2, Implementation, TypeEncoding))
        {
          v11 = method_getImplementation(InstanceMethod);
          v12 = method_getTypeEncoding(InstanceMethod);

          class_replaceMethod(a1, a3, v11, v12);
        }

        else
        {

          method_exchangeImplementations(InstanceMethod, v8);
        }
      }
    }
  }
}

double BKUnionRects(void *a1)
{
  v1 = a1;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v15 + 1) + 8 * v9) CGRectValue];
        v22.origin.x = v10;
        v22.origin.y = v11;
        v22.size.width = v12;
        v22.size.height = v13;
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        v21 = CGRectUnion(v20, v22);
        x = v21.origin.x;
        y = v21.origin.y;
        width = v21.size.width;
        height = v21.size.height;
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return x;
}

void sub_C7FA4(id a1)
{
  v1 = objc_alloc_init(BKEpubCFILocation);
  v2 = qword_22D0E8;
  qword_22D0E8 = v1;

  v3 = +[BCCFI unknownCFI];
  [qword_22D0E8 setCfi:v3];
}

uint64_t sub_C89B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) documentWithOrdinal:a2];
  v7 = v6;
  if (v6 && ([v6 manifestId], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "isEqualToString:", v8), v8, (v9 & 1) != 0))
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = [*(a1 + 32) databaseKey];
    v12 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND manifestId == %@", v11, v5];

    v13 = [*(a1 + 32) managedObjectContext];
    v14 = [v13 entity:@"BKDocument" withPredicate:v12 sortBy:0 ascending:1 fetchLimit:1];

    if ([v14 count])
    {
      v15 = [v14 objectAtIndex:0];
      v16 = [v15 documentOrdinal];
      v10 = 2 * [v16 integerValue] + 2;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v10;
}

void sub_C9D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C9DA8(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained _footnoteViewControllerPreparationForDisplayFailed:v5];
    }

    else
    {
      objc_opt_class();
      v8 = BUDynamicCast();
      if ([v8 length])
      {
        v9 = [v8 dataUsingEncoding:4];
        v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:0];

        [v7 preferredContentSize];
        v12 = v11;
        objc_opt_class();
        v13 = [v10 lastObject];
        v14 = BUDynamicCast();

        if (v14)
        {
          [v14 doubleValue];
          v12 = v15;
        }

        objc_opt_class();
        v16 = [v10 firstObject];
        v17 = BUDynamicCast();

        if (v17)
        {
          [v17 doubleValue];
        }

        if (v12 <= 667.0)
        {
          v18 = v12;
        }

        else
        {
          v18 = 667.0;
        }

        [v7 setPreferredContentSize:{375.0, v18}];
        [v7 _footnoteViewControllerReadyForDisplay];
      }

      else
      {
        v10 = [NSError errorWithDomain:WKErrorDomain code:4 userInfo:0];
        [v7 _footnoteViewControllerPreparationForDisplayFailed:v10];
      }
    }
  }
}

void sub_CEE5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (*(a1 + 56) == 3 && ([*(a1 + 32) readingLocationAnnotation:0 moc:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 ordinal];
    if (v6 == [*(a1 + 40) ordinal] && (objc_msgSend(v5, "isLocationSame:", *(a1 + 40)) & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = +[AEBookInfo defaultAnnotationCreatorIdentifier];
    v8 = [*(a1 + 32) assetID];
    v5 = [AEAnnotation insertAnnotationWithAssetID:v8 creatorIdentifier:v7 annotationUuid:0 intoManagedObjectContext:v11];

    [v5 setAnnotationType:*(a1 + 56)];
  }

  [*(a1 + 32) _adjustAnnotation:v5 withLocation:*(a1 + 40) selectedText:0 representativeText:0 updateStyle:1];
  v9 = objc_retainBlock(*(a1 + 48));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v5);
  }

LABEL_10:
}

void sub_CF0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_CF0CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_CF0E4(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) readingLocationAnnotation:1 moc:a2];
  v3 = [v7 location];

  if (v3)
  {
    [v7 location];
  }

  else
  {
    [*(a1 + 32) firstDocumentLocation];
  }
  v4 = ;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_CF990(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v5 documentOrdinal];

  [v4 setObject:v7 forKey:v6];
}

void sub_D02A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_D0300(uint64_t a1)
{
  v2 = [*(a1 + 32) readingLocationAnnotation:1 moc:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 48) + 8) + 40) location];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1(v5, v7);
}

void sub_D037C(void *a1)
{
  [AEBookInfo _nonUpdatedAnnotationsForDocumentOrdinal:a1[4] assetID:a1[5] moc:a1[6]];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    v15 = kAEAnnotationVersion_5;
    v16 = a1;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        if (([v6 spineIndexUpdated] & 1) == 0)
        {
          v7 = [v6 annotationLocation];
          v19 = 0;
          v8 = [BKEpubCFILocation locationForCFI:v7 error:&v19];
          v9 = v19;
          if (v9)
          {
            v10 = 0;
            v11 = 0;
          }

          else
          {
            v12 = a1[7];
            v18 = 0;
            v11 = [v8 locationWithAdjustedSpineIndex:v12 error:&v18];
            v10 = v18;
            if (v11)
            {
              v13 = a1[8];
              if (v13 == [v11 ordinal])
              {
                v14 = [v11 cfiString];

                [v6 setAnnotationLocation:v14];
                [v6 setOrdinal:{objc_msgSend(v11, "ordinal")}];
                [v6 setSpineIndexUpdated:1];
                [v6 bumpAnnotationVersionToMinimumVersion:v15];
                v7 = v14;
              }

              a1 = v16;
            }
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }
}

id sub_D059C(void *a1)
{
  result = [*(*(a1[4] + 8) + 40) spineIndexUpdated];
  if ((result & 1) == 0)
  {
    [*(*(a1[5] + 8) + 40) setOrdinal:{objc_msgSend(*(*(a1[5] + 8) + 40), "ordinal") + a1[7]}];
    result = [*(*(a1[4] + 8) + 40) setSpineIndexUpdated:1];
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

void sub_D0618(uint64_t a1)
{
  v2 = [*(a1 + 32) annotationProvider];
  [v2 saveManagedObjectContext:*(a1 + 40)];
}

void sub_D24A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    v3 = [v2 annotationProvider];
    v5 = [v3 uiManagedObjectContext];

    if ([v5 hasChanges])
    {
      v4 = [*(a1 + 32) annotationProvider];
      [v4 saveManagedObjectContext:v5];
    }
  }
}

id sub_D2CEC(void *a1)
{
  v1 = [a1 assetID];
  v2 = [v1 stringByAppendingString:@"4"];

  return v2;
}

void sub_D46B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_D46D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_D46E8(uint64_t a1)
{
  v4 = [[IMJPEGPrefetch alloc] initWithData:*(a1 + 32) optimalSize:0 options:{*(a1 + 48), *(a1 + 56)}];
  v2 = [v4 cachedImage];
  if (v2)
  {
    v3 = [UIImage imageWithCGImage:v2];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v2)
  {
  }
}

void sub_D50A4(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = +[UIColor whiteColor];
  [v4 set];

  v19.size.width = *(a1 + 40);
  v19.size.height = *(a1 + 48);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  CGContextFillRect(v3, v19);
  if ([*(a1 + 32) preferredRange] == &dword_0 + 1 || !objc_msgSend(*(a1 + 32), "preferredRange"))
  {
    DeviceRGB = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v6 = DeviceRGB;
  v7 = CGGradientCreateWithColorComponents(DeviceRGB, &v17, locations, 2uLL);
  __asm { FMOV            V1.2D, #0.5 }

  v13 = vmulq_f64(*(a1 + 40), _Q1);
  y = v13.y;
  if (v13.x >= v13.y)
  {
    x = v13.x;
  }

  else
  {
    x = v13.y;
  }

  CGContextDrawRadialGradient(v3, v7, v13, 0.0, v13, x, 2u);
  CGColorSpaceRelease(v6);
  CGGradientRelease(v7);
  CGContextSaveGState(v3);
  v16 = [UIColor colorWithWhite:0.537254902 alpha:1.0];
  [v16 set];

  CGContextRestoreGState(v3);
}

void sub_D65D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_D65FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _gotSnapshotWithMask:*(a1 + 144) bookInfo:*(a1 + 32) containerBounds:*(a1 + 145) contentSize:*(a1 + 40) isRight:*(a1 + 112) key:v3 pageNumber:*(a1 + 64) snapshot:*(a1 + 72) scale:*(a1 + 80) size:*(a1 + 88) completion:{*(a1 + 96), *(a1 + 104), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 48)}];
}

id sub_D7460(uint64_t a1)
{
  [*(a1 + 32) setUndoManager:0];
  v2 = *(a1 + 32);
  v3 = NSMergeByPropertyObjectTrumpMergePolicy;

  return [v2 setMergePolicy:v3];
}

void sub_D7B70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AELog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 URL];
      v9 = [v8 path];
      *buf = 138543618;
      v21 = v9;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Error adding AEBookInfo Persistent Store at %{public}@: %@", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    v11 = [v5 URL];
    v12 = [v5 type];
    v13 = [v5 options];
    v19 = 0;
    v14 = [v10 destroyPersistentStoreAtURL:v11 withType:v12 options:v13 error:&v19];
    v15 = v19;

    if ((v14 & 1) == 0 && ([v15 bu_isNoSuchFileError]& 1) == 0)
    {
      v16 = _AELog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_12;
      }

      v17 = [v5 URL];
      v18 = [v17 path];
      *buf = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Error trying to destroy the AEBookInfo Store at %{public}@: %@", buf, 0x16u);

LABEL_10:
      goto LABEL_11;
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v15 = _AELog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 URL];
      v17 = [v16 path];
      *buf = 138543362;
      v21 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Added AEBookInfo Persistent Store at %{public}@", buf, 0xCu);
      goto LABEL_10;
    }
  }

LABEL_12:
}

void sub_D7DF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AELog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 URL];
      v9 = [v8 path];
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      v10 = "Error trying again to add AEBookInfo Persistent Store at %{public}@: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_0, v11, v12, v10, &v14, v13);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v7 = _AELog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 URL];
      v9 = [v8 path];
      v14 = 138543362;
      v15 = v9;
      v10 = "Added AEBookInfo Persistent Store at %{public}@ on second trying";
      v11 = v7;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 12;
      goto LABEL_6;
    }
  }
}

id sub_D800C(uint64_t a1)
{
  [*(a1 + 32) setUndoManager:0];
  v2 = *(a1 + 32);
  v3 = NSMergeByPropertyObjectTrumpMergePolicy;

  return [v2 setMergePolicy:v3];
}

uint64_t sub_D8220(uint64_t a1)
{
  [*(a1 + 32) setPersistentStoreCoordinator:*(a1 + 40)];
  [*(a1 + 32) setUndoManager:0];
  [*(a1 + 32) setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t sub_D8388(uint64_t a1)
{
  [*(a1 + 32) setPersistentStoreCoordinator:*(a1 + 40)];
  [*(a1 + 32) setUndoManager:0];
  [*(a1 + 32) setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_D85B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_D85D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_D85E8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 16) objectIDsWithPredicate:a1[5] forEntity:@"AEBookInfo"];
  if ([v3 count])
  {
    v4 = [v3 lastObject];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_D87D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [NSPredicate predicateWithFormat:@"databaseKey ==[n] %@", v3];
  v5 = [v4 unbatchedObjectsWithPredicate:? forEntity:?];

  if ([v5 count])
  {
    v6 = *(a1 + 40);
    v7 = [v5 lastObject];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_D8964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSPredicate predicateWithFormat:@"databaseKey ==[n] %@", *(a1 + 32)];
  v5 = [v3 unbatchedObjectsWithPredicate:v4 forEntity:@"AEBookInfo"];
  if ([v5 count])
  {
    v6 = [v5 lastObject];
    (*(*(a1 + 40) + 16))();
    if ([v3 hasChanges])
    {
      v10 = 0;
      v7 = [v3 save:&v10];
      v8 = v10;
      if ((v7 & 1) == 0)
      {
        v9 = [v6 url];
        NSLog(@"Error updating book: %@ -- %@", v9, v8);
      }
    }
  }
}

void sub_D8E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_D8E34(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) existingBookInfoForDatabaseKey:*(a1 + 40) fromManagedObjectContext:*(*(a1 + 32) + 16)];
  if (!v3)
  {
    v3 = [NSEntityDescription insertNewObjectForEntityForName:@"AEBookInfo" inManagedObjectContext:*(*(a1 + 32) + 16)];
    [v3 setDatabaseKey:*(a1 + 40)];
  }

  if ([*(*(a1 + 32) + 16) hasChanges])
  {
    v4 = *(*(a1 + 32) + 16);
    v12 = 0;
    v5 = [v4 save:&v12];
    v6 = v12;
    v7 = v6;
    if ((v5 & 1) == 0)
    {
      [v6 logRecursively];
    }
  }

  v8 = [v3 objectID];
  v9 = [v8 copy];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  objc_autoreleasePoolPop(v2);
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(*(a1 + 32) + 16) reset];
  }
}

void sub_D9230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_D9260(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) existingBookInfoForURL:*(a1 + 40) fromManagedObjectContext:*(*(a1 + 32) + 16)];
  if (v3)
  {
LABEL_21:
    v20 = [v3 parserVersion];
    *(*(*(a1 + 64) + 8) + 24) = [@"BookEPUB Parser - 2024.09.26" isEqualToString:v20];

    if (*(a1 + 48))
    {
      [v3 setUpdateDate:?];
    }

    v21 = [*(a1 + 32) parseBook:v3];
    if (v21)
    {
      if (*(a1 + 80))
      {
        v22 = v21;
        v23 = 1001;
        if (v21 == -998)
        {
          v23 = 2002;
        }

        if (v21 == -999)
        {
          v24 = 2000;
        }

        else
        {
          v24 = v23;
        }

        v25 = +[AEAssetEngine libraryMgr];
        v26 = [v25 metadataForAssetAtURL:*(a1 + 40) needsCoordination:*(a1 + 88)];

        v27 = *(a1 + 40);
        v28 = AssetEngineErrorAssetURLUserInfoKey;
        v29 = [NSNumber numberWithInt:v22];
        v30 = v26;
        if (!v26)
        {
          v30 = +[NSNull null];
        }

        v31 = [NSDictionary dictionaryWithObjectsAndKeys:v27, v28, v29, @"BKBookParserError", v30, AssetEngineErrorLibraryMgrInfoUserInfoKey, 0];
        if (!v26)
        {
        }

        v32 = [NSError errorWithDomain:AssetEngineErrorDomain code:v24 userInfo:v31];
        v33 = *(*(a1 + 56) + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = v32;
      }

      v3 = 0;
    }

    if ([*(*(a1 + 32) + 16) hasChanges])
    {
      v35 = *(*(a1 + 32) + 16);
      v46 = 0;
      v36 = [v35 save:&v46];
      v37 = v46;
      v38 = v37;
      if ((v36 & 1) == 0)
      {
        [v37 logRecursively];
      }
    }

    v39 = [v3 objectID];
    v40 = [v39 copy];
    v41 = *(*(a1 + 72) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    objc_autoreleasePoolPop(v2);
    if ((*(a1 + 89) & 1) == 0)
    {
      v43 = *(a1 + 32);
      v44 = *(v43 + 16);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_D976C;
      v45[3] = &unk_1E2BD0;
      v45[4] = v43;
      [v44 performBlockAndWait:v45];
    }

    return;
  }

  v4 = +[AEAssetEngine libraryMgr];
  v5 = [v4 assetIDForAssetAtURLOnMainThread:*(a1 + 40)];

  if ([v5 length])
  {
    v6 = 0;
  }

  else
  {
    v7 = +[AEAssetEngine libraryMgr];
    v6 = [v7 metadataForAssetAtURL:*(a1 + 40) needsCoordination:*(a1 + 88)];

    v8 = [*(a1 + 32) databaseKeyFromLibraryManagerInfo:v6 forAssetAtURL:*(a1 + 40)];

    v5 = v8;
  }

  if ([v5 length])
  {
    v9 = [*(a1 + 32) existingBookInfoForDatabaseKey:v5 fromManagedObjectContext:*(*(a1 + 32) + 16)];
    if (v9)
    {
      v3 = v9;
      [v9 resetAsNewlyDownloaded];
    }

    else
    {
      v3 = [NSEntityDescription insertNewObjectForEntityForName:@"AEBookInfo" inManagedObjectContext:*(*(a1 + 32) + 16)];
      [v3 setDatabaseKey:v5];
    }

    v17 = [*(a1 + 40) path];
    [v3 setBookBundlePath:v17];

    if (!v6)
    {
      v18 = +[AEAssetEngine libraryMgr];
      v6 = [v18 metadataForAssetAtURL:*(a1 + 40) needsCoordination:*(a1 + 88)];
    }

    [*(a1 + 32) setPropertiesOfBook:v3 withPlistEntry:v6];
    v19 = [v3 bookBundlePath];
    [v3 setContentType:BookFormatByFilePath()];

    goto LABEL_21;
  }

  v10 = *(a1 + 40);
  v11 = AssetEngineErrorAssetURLUserInfoKey;
  v12 = v6;
  if (!v6)
  {
    v12 = +[NSNull null];
  }

  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v10, v11, v12, AssetEngineErrorLibraryMgrInfoUserInfoKey, 0];
  if (!v6)
  {
  }

  if (*(a1 + 80))
  {
    v14 = [NSError errorWithDomain:AssetEngineErrorDomain code:2001 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_D9778(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D97FC;
  block[3] = &unk_1E2BD0;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_D99C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_D99E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) existingObjectWithID:*(a1 + 40) error:0];
  if (v3)
  {
    v4 = [BKBookParser parserForBook:v3];
    *(*(*(a1 + 48) + 8) + 24) = [v4 parse:0];
    if (*(a1 + 56) == 1 && [*(*(a1 + 32) + 16) hasChanges])
    {
      v5 = *(*(a1 + 32) + 16);
      v9 = 0;
      v6 = [v5 save:&v9];
      v7 = v9;
      v8 = v7;
      if ((v6 & 1) == 0)
      {
        [v7 logRecursively];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  if ((*(a1 + 57) & 1) == 0)
  {
    [*(*(a1 + 32) + 16) reset];
  }
}

void sub_D9BA0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) existingBookInfoForURL:*(a1 + 40) fromManagedObjectContext:*(*(a1 + 32) + 16)];
  v4 = [*(a1 + 48) path];
  if (v3)
  {
    v5 = [v3 bookBundlePath];
    v6 = [v5 isEqualToString:v4];

    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 48) path];
      [v3 setBookBundlePath:v7];

      v8 = *(*(a1 + 32) + 16);
      v9 = 0;
      [v8 save:&v9];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_D9D08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) existingBookInfoForURL:*(a1 + 40) fromManagedObjectContext:*(*(a1 + 32) + 16)];
  [*(a1 + 32) _resetBookInfo:v3];

  objc_autoreleasePoolPop(v2);
}

void sub_D9E08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) existingBookInfoForDatabaseKey:*(a1 + 40) fromManagedObjectContext:*(*(a1 + 32) + 16)];
  [*(a1 + 32) _resetBookInfo:v3];

  objc_autoreleasePoolPop(v2);
}

void sub_D9F08(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 resetAsNewlyDownloaded];
    [*(*(a1 + 40) + 16) deleteObject:*(a1 + 32)];
    v3 = *(*(a1 + 40) + 16);
    v5 = 0;
    [v3 save:&v5];
    v4 = v5;
    [*(*(a1 + 40) + 16) reset];
  }
}

void sub_DA2A0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_DA2D0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_DA3B4;
  v9[3] = &unk_1E5628;
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  [v3 performBlockAndWait:v9];
}

void sub_DA3B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) isEqualToString:AEHelperStringMetadataAssetIDKey])
  {
    v3 = [*(a1 + 40) databaseKeyFromLibraryManagerInfo:*(a1 + 48) forAssetAtURL:*(a1 + 56)];
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:AEHelperStringMetadataPageProgressionKey])
    {
      goto LABEL_6;
    }

    v3 = [IMLibraryPlist pageProgressionFromPlistEntry:*(a1 + 48)];
  }

  v4 = v3;
  v5 = [v3 copy];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 72) + 8) + 24) = [v4 length] == 0;
LABEL_6:

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_DA48C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) bookInfoForURL:*(a1 + 40) fromManagedObjectContext:a2 error:0 needsCoordination:*(a1 + 64) updateDate:0];
  v4 = v3;
  if (v3)
  {
    v18 = v3;
    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataAssetIDKey])
    {
      v5 = [v18 databaseKey];
LABEL_12:
      v6 = v5;
      v7 = [v5 copy];
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

LABEL_13:
      v4 = v18;
      goto LABEL_14;
    }

    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataAuthorKey])
    {
      v5 = [v18 bookAuthor];
      goto LABEL_12;
    }

    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataTitleKey])
    {
      v5 = [v18 bookTitle];
      goto LABEL_12;
    }

    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataGenreKey])
    {
      v5 = [v18 genre];
      goto LABEL_12;
    }

    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataLanguageKey])
    {
      v5 = [v18 bookLanguage];
      goto LABEL_12;
    }

    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataDefaultCollectionNameKey])
    {
      v10 = *(*(a1 + 56) + 8);
      v6 = *(v10 + 40);
      *(v10 + 40) = @"Books";
      goto LABEL_13;
    }

    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataCoverArtEffectKey])
    {
      v11 = AEHelperStringMetadataCoverArtEffectEdgeBookCreaseValue;
      v12 = *(*(a1 + 56) + 8);
LABEL_21:
      v13 = v11;
      v6 = *(v12 + 40);
      *(v12 + 40) = v13;
      goto LABEL_13;
    }

    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataBookIdUrlIdentifierKey])
    {
      v5 = [v18 bookEpubId];
      goto LABEL_12;
    }

    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataPageProgressionKey])
    {
      v5 = [v18 pageProgressionDirection];
      goto LABEL_12;
    }

    if ([*(a1 + 48) isEqualToString:AEHelperStringMetadataCoverWritingModeKey])
    {
      v5 = [v18 coverWritingModeString];
      goto LABEL_12;
    }

    v3 = [*(a1 + 48) isEqualToString:AEHelperStringMetadataCoverArtEffectEdgeKey];
    v4 = v18;
    if (v3)
    {
      v14 = [v18 readingDirection];
      v15 = [v14 isEqualToString:@"rtl"];

      v12 = *(*(a1 + 56) + 8);
      if (v15)
      {
        v16 = &AEHelperStringMetadataCoverArtEffectEdgeRightValue;
      }

      else
      {
        v16 = &AEHelperStringMetadataCoverArtEffectEdgeLeftValue;
      }

      v11 = *v16;
      goto LABEL_21;
    }
  }

LABEL_14:

  return _objc_release_x1(v3, v4);
}

void sub_DA80C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) bookInfoForURL:*(a1 + 40) fromManagedObjectContext:v4 error:0 needsCoordination:1 updateDate:0];
  [v3 setDifferentString:*(a1 + 48) forKey:@"bookTitle"];
  if ([v4 hasChanges])
  {
    [v4 save:0];
  }
}

uint64_t sub_DA904()
{
  v0 = [[AEEpubInfoSource alloc] initWithIdentifier:@"AEBookInfo"];
  v1 = qword_22D0F8;
  qword_22D0F8 = v0;

  return _objc_release_x1(v0, v1);
}

id _AEBookPluginsAudiobookLog()
{
  if (qword_22D108 != -1)
  {
    sub_138BD0();
  }

  v1 = qword_22D100;

  return v1;
}

void sub_DAA78(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.Audiobook");
  v2 = qword_22D100;
  qword_22D100 = v1;

  _objc_release_x1(v1, v2);
}

id _AEBookPluginsAnnotationsLog()
{
  if (qword_22D118 != -1)
  {
    sub_138BE4();
  }

  v1 = qword_22D110;

  return v1;
}

void sub_DAB00(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.Annotations");
  v2 = qword_22D110;
  qword_22D110 = v1;

  _objc_release_x1(v1, v2);
}

id _ITEpubParsingLog()
{
  if (qword_22D128 != -1)
  {
    sub_138BF8();
  }

  v1 = qword_22D120;

  return v1;
}

void sub_DAB88(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "ITEpubParsing");
  v2 = qword_22D120;
  qword_22D120 = v1;

  _objc_release_x1(v1, v2);
}

id _AELog()
{
  if (qword_22D138 != -1)
  {
    sub_138C0C();
  }

  v1 = qword_22D130;

  return v1;
}

void sub_DAC10(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins");
  v2 = qword_22D130;
  qword_22D130 = v1;

  _objc_release_x1(v1, v2);
}

id _AEAnnotationLocationLog()
{
  if (qword_22D148 != -1)
  {
    sub_138C20();
  }

  v1 = qword_22D140;

  return v1;
}

void sub_DAC98(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.AEAnnotationLocationLOg");
  v2 = qword_22D140;
  qword_22D140 = v1;

  _objc_release_x1(v1, v2);
}

id _AESearchLog()
{
  if (qword_22D158 != -1)
  {
    sub_138C34();
  }

  v1 = qword_22D150;

  return v1;
}

void sub_DAD20(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.Search");
  v2 = qword_22D150;
  qword_22D150 = v1;

  _objc_release_x1(v1, v2);
}

id _AEPaginationLog()
{
  if (qword_22D168 != -1)
  {
    sub_138C48();
  }

  v1 = qword_22D160;

  return v1;
}

void sub_DADA8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.Pagination");
  v2 = qword_22D160;
  qword_22D160 = v1;

  _objc_release_x1(v1, v2);
}

id _AERePaginationLog()
{
  if (qword_22D178 != -1)
  {
    sub_138C5C();
  }

  v1 = qword_22D170;

  return v1;
}

void sub_DAE30(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.RePagination");
  v2 = qword_22D170;
  qword_22D170 = v1;

  _objc_release_x1(v1, v2);
}

id _AEWKProxyLog()
{
  if (qword_22D188 != -1)
  {
    sub_138C70();
  }

  v1 = qword_22D180;

  return v1;
}

void sub_DAEB8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.WKProxy");
  v2 = qword_22D180;
  qword_22D180 = v1;

  _objc_release_x1(v1, v2);
}

id _AEWKLoaderLog()
{
  if (qword_22D198 != -1)
  {
    sub_138C84();
  }

  v1 = qword_22D190;

  return v1;
}

void sub_DAF40(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.WKLoader");
  v2 = qword_22D190;
  qword_22D190 = v1;

  _objc_release_x1(v1, v2);
}

id _AEWKTocParseLog()
{
  if (qword_22D1A8 != -1)
  {
    sub_138C98();
  }

  v1 = qword_22D1A0;

  return v1;
}

void sub_DAFC8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.WKTocParse");
  v2 = qword_22D1A0;
  qword_22D1A0 = v1;

  _objc_release_x1(v1, v2);
}

id _AEWKPictureBookLog()
{
  if (qword_22D1B8 != -1)
  {
    sub_138CAC();
  }

  v1 = qword_22D1B0;

  return v1;
}

void sub_DB050(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.PictureBook");
  v2 = qword_22D1B0;
  qword_22D1B0 = v1;

  _objc_release_x1(v1, v2);
}

id _AEWKThumbnailBookLog()
{
  if (qword_22D1C8 != -1)
  {
    sub_138CC0();
  }

  v1 = qword_22D1C0;

  return v1;
}

void sub_DB0D8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.ThumbnailBook");
  v2 = qword_22D1C0;
  qword_22D1C0 = v1;

  _objc_release_x1(v1, v2);
}

id _AENavigationControllerLog()
{
  if (qword_22D1D8 != -1)
  {
    sub_138CD4();
  }

  v1 = qword_22D1D0;

  return v1;
}

void sub_DB160(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.NavigationController");
  v2 = qword_22D1D0;
  qword_22D1D0 = v1;

  _objc_release_x1(v1, v2);
}

id _AECaptureLocationLog()
{
  if (qword_22D1E8 != -1)
  {
    sub_138CE8();
  }

  v1 = qword_22D1E0;

  return v1;
}

void sub_DB1E8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.CaptureLocation");
  v2 = qword_22D1E0;
  qword_22D1E0 = v1;

  _objc_release_x1(v1, v2);
}

id _AESwipeLog()
{
  if (qword_22D1F8 != -1)
  {
    sub_138CFC();
  }

  v1 = qword_22D1F0;

  return v1;
}

void sub_DB270(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.Swipe");
  v2 = qword_22D1F0;
  qword_22D1F0 = v1;

  _objc_release_x1(v1, v2);
}

id _AEPanGRLog()
{
  if (qword_22D208 != -1)
  {
    sub_138D10();
  }

  v1 = qword_22D200;

  return v1;
}

void sub_DB2F8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.PanGRLog");
  v2 = qword_22D200;
  qword_22D200 = v1;

  _objc_release_x1(v1, v2);
}

id _AEBookPluginsFontCacheLog()
{
  if (qword_22D218 != -1)
  {
    sub_138D24();
  }

  v1 = qword_22D210;

  return v1;
}

void sub_DB380(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.FontCache");
  v2 = qword_22D210;
  qword_22D210 = v1;

  _objc_release_x1(v1, v2);
}

id _AEBookPluginsScrollLog()
{
  if (qword_22D228 != -1)
  {
    sub_138D38();
  }

  v1 = qword_22D220;

  return v1;
}

void sub_DB408(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.Scrolling");
  v2 = qword_22D220;
  qword_22D220 = v1;

  _objc_release_x1(v1, v2);
}

id _AEBookPluginsRTLLog()
{
  if (qword_22D238 != -1)
  {
    sub_138D4C();
  }

  v1 = qword_22D230;

  return v1;
}

void sub_DB490(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.RTL");
  v2 = qword_22D230;
  qword_22D230 = v1;

  _objc_release_x1(v1, v2);
}

id _AEBookPluginsPageTurnLog()
{
  if (qword_22D248 != -1)
  {
    sub_138D60();
  }

  v1 = qword_22D240;

  return v1;
}

void sub_DB518(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.PageTurning");
  v2 = qword_22D240;
  qword_22D240 = v1;

  _objc_release_x1(v1, v2);
}

id _AEBookPluginsLifeCycleLog()
{
  if (qword_22D258 != -1)
  {
    sub_138D74();
  }

  v1 = qword_22D250;

  return v1;
}

void sub_DB5A0(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.LifeCycle");
  v2 = qword_22D250;
  qword_22D250 = v1;

  _objc_release_x1(v1, v2);
}

id _AEBookOpenLog()
{
  if (qword_22D268 != -1)
  {
    sub_138D88();
  }

  v1 = qword_22D260;

  return v1;
}

void sub_DB628(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.BookOpen");
  v2 = qword_22D260;
  qword_22D260 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t AEAccessibilityInitialize()
{
  if (IMAccessibilityShouldPerformValidationChecks())
  {
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    NSLog(@"AX: Validated AX methods in AEBookPlugins", 0, "@", 0);
  }

  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();

  return IMAccessibilityInstallSafeCategory();
}

id AEAccessibilityCurrentPageNumber(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = BUDynamicCast();
  if (v2)
  {
    v3 = [v1 imaxValueForKey:@"currentPages"];
    v4 = [v3 rangeValue];
    v6 = [v2 pageNumberFromRange:{v4, v5}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id AEAXDurationStringForDuration(double a1)
{
  v3 = objc_opt_new();
  [v3 setZeroFormattingBehavior:1];
  [v3 setUnitsStyle:4];
  [v3 setAllowedUnits:224];
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = [v3 stringFromTimeInterval:a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id AEAXLocString(void *a1)
{
  v1 = a1;
  v2 = qword_22D270;
  if (qword_22D270 || ([NSBundle bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = qword_22D270, qword_22D270 = v3, v4, (v2 = qword_22D270) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_1E7188 table:@"AEAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v1)
  {
    if (IMAccessibilityShouldPerformValidationChecks())
    {
      NSLog(@"UIAccessibilityError: String could not be found for key: %@", v1);
      abort();
    }

    v5 = 0;
  }

  return v5;
}

void sub_DD4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_DD4D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 familyName];
  *(*(*(a1 + 32) + 8) + 24) = [v6 length] == 0;

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void sub_DED48(uint64_t a1)
{
  v2 = [NSIndexPath indexPathForRow:*(a1 + 40) inSection:2];
  v3 = [*(a1 + 32) tableView];
  v5 = v2;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:5];
}

void sub_DF350(uint64_t a1)
{
  v1 = IMAccessibilityMoveToElementNotification;
  v3 = [*(a1 + 32) imaxValueForKey:@"contentView"];
  v2 = [v3 imaxUnignoredDescendant];
  UIAccessibilityPostNotification(v1, v2);
}

void sub_E0F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E0F2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v5 || !WeakRetained)
  {
    v12 = objc_retainBlock(v6);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }

  else
  {
    v9 = WeakRetained[13];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_E10DC;
    v17[3] = &unk_1E59B0;
    v10 = WeakRetained;
    v11 = *(a1 + 56);
    v18 = v10;
    v21 = v11;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_E11D0;
    v14[3] = &unk_1E45D8;
    objc_copyWeak(&v16, (a1 + 48));
    v15 = v6;
    [v9 be_evaluateJavaScript:v17 completion:v14];

    objc_destroyWeak(&v16);
  }
}

void sub_E10DC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 bookInfoSnapshot];
  v7 = [BECFIUtilitiesJSOptions cfiUtilitiesJSOptionsForBookInfoSnapshot:v5 ordinal:a1[7]];

  v6 = [BECFIUtilitiesJS updateScriptWithOptions:v7 gapBetweenPages:0 paginatedTopToBottom:0.0];
  [v4 addScriptToEvaluate:v6 key:@"fixOrdinalScript" transform:0];
  [v4 addScriptToEvaluate:a1[5] key:@"cfisForHrefsScript" transform:0];
  [v4 addScriptToEvaluate:a1[6] key:@"textNodeCharacterCounts" transform:0];
}

void sub_E11D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 dictionaryResultForKey:@"textNodeCharacterCounts"];
  [WeakRetained setTextNodeCharacterCounts:v4];

  v5 = [v3 dictionaryResultForKey:@"cfisForHrefsScript"];

  [WeakRetained setCfisForHrefs:v5];
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }
}

void sub_E1638(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 168);
  if (v1)
  {
    v3 = v1;
    v4 = *(a1 + 32);
    v5 = *(v4 + 168);
    *(v4 + 168) = 0;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_E1714;
    v7[3] = &unk_1E3F50;
    v8 = v3;
    v9 = *(a1 + 40);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_E1714(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) renderingCacheCallbackImage:*(a1 + 40) context:{0, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_E1C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E1C3C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setImage:v5];
    [v4 _updateSignal];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_E1DC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_E1DEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_E1F10;
  v11[3] = &unk_1E5A50;
  objc_copyWeak(&v16, (a1 + 48));
  v17 = *(a1 + 56);
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);

  objc_destroyWeak(&v16);
}

void sub_E1F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 72) == 1)
    {
      LOBYTE(WeakRetained) = [*(a1 + 32) im_isLikelyBlank];
    }

    else
    {
      LOBYTE(WeakRetained) = 0;
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_E2038;
  v9[3] = &unk_1E5A28;
  v12 = WeakRetained;
  v9[4] = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_E2038(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 64);

    [v2 _takeSnapshotWithConfiguration:v3 retryOnBlank:0 completionHandler:v4];
  }

  else
  {
    v5 = objc_retainBlock(*(a1 + 64));
    if (v5)
    {
      v6 = v5;
      (*(v5 + 2))(v5, *(a1 + 48), *(a1 + 56));
      v5 = v6;
    }
  }
}

id sub_E22CC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  if (!v2)
  {
    v3 = [[NSMutableSet alloc] initWithCapacity:2];
    v4 = *(a1 + 32);
    v5 = *(v4 + 168);
    *(v4 + 168) = v3;

    v2 = *(*(a1 + 32) + 168);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_E2814(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_E2830(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _loadWebViewFromMainThread];
    WeakRetained = v2;
  }
}

void sub_E2E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E2E80(uint64_t a1, void *a2, char a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    LOBYTE(v7) = a3;
    [WeakRetained _loadWebView:v8 bookSnapshot:*(a1 + 32) paginationOptions:*(a1 + 40) stylesheetSet:*(a1 + 48) cleanupOptions:*(a1 + 56) cfiOptions:*(a1 + 64) isConfigured:v7];
  }
}

void sub_E31C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didFinishConfiguringWebView];
    WeakRetained = v2;
  }
}

void sub_E3468(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBook];
  v3 = [v2 documentWithOrdinal:{objc_msgSend(*(a1 + 32), "ordinal")}];
  v4 = [v2 urlForDocument:v3];
  v5 = _AESearchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Timeout while loading document: %@", &v6, 0xCu);
  }
}

void sub_E383C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_E3858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startFindPerformIndexingFromMainThread:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_E3A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E3A5C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _indexTextContent:v7])
    {
      [v4 _startFind];
    }

    else
    {
      v5 = [v4 findSemaphore];

      if (v5)
      {
        v6 = [v4 findSemaphore];
        dispatch_semaphore_signal(v6);
      }
    }
  }
}

void sub_E3EEC(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBook];
  v3 = [v2 documentWithOrdinal:{objc_msgSend(*(a1 + 32), "ordinal")}];
  v4 = [v2 urlForDocument:v3];
  v5 = _AESearchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Timeout while searching document: %@", &v6, 0xCu);
  }
}

void sub_E4258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E4284(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _AESearchLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "setSelectedRange result: %@", &v6, 0xCu);
    }

    [WeakRetained _startWebKitFind];
  }
}

void sub_E4F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E4F8C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _addResultsWithPhysicalPageHrefs:*(a1 + 32) selectedRangeResult:v5];
  }
}

void sub_E5624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_E5660(void *a1)
{
  if (a1)
  {
    v1 = [a1 dataUsingEncoding:4];
    v2 = [NSJSONSerialization JSONObjectWithData:v1 options:0 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_E56D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E56E8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 objectForKey:@"left"];
  v5 = BUDynamicCast();
  [v5 doubleValue];
  v7 = v6;

  objc_opt_class();
  v8 = [v3 objectForKey:@"top"];
  v9 = BUDynamicCast();
  [v9 doubleValue];
  v11 = v10;

  objc_opt_class();
  v12 = [v3 objectForKey:@"width"];
  v13 = BUDynamicCast();
  [v13 doubleValue];
  v15 = v14;

  objc_opt_class();
  v16 = [v3 objectForKey:@"height"];

  v17 = BUDynamicCast();
  [v17 doubleValue];
  v19 = v18;

  v20 = *(*(*(a1 + 32) + 8) + 40);
  v21 = [NSValue valueWithRect:v7, v11, v15, v19];
  [v20 addObject:v21];
}

void sub_E9CA0(uint64_t a1)
{
  v2 = [*(a1 + 32) pdfDocumentCache];
  v3 = [v2 copyCacheObjectForURL:*(a1 + 40)];

  v4 = [v3 document];
  if (!v4)
  {
    v4 = [[PDFDocument alloc] initWithURL:*(a1 + 40)];
  }

  v5 = *(a1 + 32);
  v6 = v5[126];
  if (v4 != v6)
  {
    objc_storeStrong(v5 + 126, v4);
    [*(*(a1 + 32) + 1008) setShowsAnnotations:1];
    [*(*(a1 + 32) + 1008) setPDFAKControllerDelegate:?];
    v7 = [v3 pdfUndoManager];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1032);
    *(v8 + 1032) = v7;

    [*(*(a1 + 32) + 992) setDocument:*(*(a1 + 32) + 1008)];
    v10 = [*(a1 + 32) pdfView];
    [v10 setMaxScaleFactor:32.0];

    v11 = [*(a1 + 32) searchViewControllerIfLoaded];
    v12 = [v11 searchString];

    if ([v12 length])
    {
      v13 = [*(a1 + 32) searchViewController];
      v14 = [v13 searchController];
      [v14 beginSearchWithReportAnalytics:1];
    }

    [*(a1 + 32) loadAKToolbarView];

    v5 = *(a1 + 32);
  }

  v15 = [v5 initialJumpLocation];

  if (v15)
  {
    v16 = [*(a1 + 32) initialJumpLocation];
    [*(a1 + 32) setLocation:v16];

    [*(a1 + 32) setInitialJumpLocation:0];
  }

  v17 = *(a1 + 32);
  v18 = v17[22];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = [v17 location];
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  v20 = [*(a1 + 32) currentPageLocation];
  v21 = [v19 isEqual:v20];

  if ((v21 & 1) == 0)
  {
    v24 = *(a1 + 32);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_E9F88;
    v25[3] = &unk_1E5B90;
    v26 = *(a1 + 48);
    v27 = v4 != v6;
    [v24 jumpToLocation:v19 animated:0 completion:v25];

    goto LABEL_17;
  }

LABEL_13:
  v22 = objc_retainBlock(*(a1 + 48));
  v23 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22, v4 != v6, 0);
  }

LABEL_17:
}

void sub_E9F88(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40), 1);
    v2 = v3;
  }
}

void sub_EA55C(uint64_t a1)
{
  v1 = [*(a1 + 32) pdfView];
  [v1 forceTileRefresh];
}

void sub_EAF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_EAF38(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ((a2 & 1) != 0 || (v8 = WeakRetained, v7 = [*(a1 + 32) layout] == &dword_0 + 2, WeakRetained = v8, v7))
    {
      if (*(a1 + 48) != 0x7FFFFFFFFFFFFFFFLL && (a3 & 1) == 0)
      {
        v9 = WeakRetained;
        [WeakRetained scrollToPageNumber:+[BKPDFModernBookViewController pageNumberForPageIndex:](BKPDFModernBookViewController animate:{"pageNumberForPageIndex:"), 0}];
        WeakRetained = v9;
      }
    }
  }
}

void sub_ECC3C(uint64_t a1)
{
  if (*(a1 + 40) == CGPointZero.x && *(a1 + 48) == CGPointZero.y)
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 32) pdfView];
    [v4 setScaleFactor:v3];
  }

  else
  {
    v4 = [*(a1 + 32) pdfView];
    [v4 setScaleFactor:*(a1 + 56) anchorPoint:{*(a1 + 40), *(a1 + 48)}];
  }
}

void sub_ECEC0(uint64_t a1)
{
  if ([*(a1 + 32) assetEditingRequested])
  {
    v2 = BKModernPDFLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Refusing to switch to scroll mode while markup editing.", v4, 2u);
    }
  }

  else
  {
    v3 = *(a1 + 40);
    v5.receiver = *(a1 + 32);
    v5.super_class = BKPDFModernBookViewController;
    objc_msgSendSuper2(&v5, "books_enableContinuousScroll:", v3);
  }
}

void sub_ED22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_ED254(uint64_t a1)
{
  result = [*(a1 + 32) isSaving];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_ED288(uint64_t a1)
{
  v3 = [*(a1 + 32) pdfDocument];
  if ([v3 bookmarksChanged])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) pdfDocument];
    *(*(*(a1 + 40) + 8) + 24) = [v2 documentChanged];
  }
}

void sub_ED488(uint64_t a1)
{
  if (([*(a1 + 32) bookmarksChanged] & 1) != 0 || objc_msgSend(*(a1 + 32), "documentChanged"))
  {
    v2 = [*(a1 + 40) book];
    v3 = [v2 url];
    v12 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_ED5F8;
    v9[3] = &unk_1E5C98;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10 = v4;
    v11 = v5;
    [BCUbiquityMetadataHelper replaceFileAndUpdateMetadata:v3 metadata:0 error:&v12 fileWritingBlock:v9];
    v6 = v12;
  }

  else
  {
    v7 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_ED948;
    v8[3] = &unk_1E2BD0;
    v8[4] = v7;
    os_unfair_lock_lock(v7 + 242);
    sub_ED948(v8);
    os_unfair_lock_unlock(v7 + 242);
  }
}

void sub_ED5F8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = BKModernPDFLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v29 = 1752392040;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "PDF document save starting. Requesting append writing mode for %{mask.hash}@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v26 = kPDFDocumentWriteOption_UseAppendMode;
  v27 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v9 = [v7 writeToURL:v5 withOptions:v8];

  if (a3)
  {
    *a3 = v9;
  }

  v10 = BKModernPDFLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v29) = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "PDF document save done. localSuccess = %{BOOL}d", buf, 8u);
  }

  if (v9)
  {
    v11 = +[NSFileManager defaultManager];
    v12 = [v5 path];
    v13 = [v11 attributesOfItemAtPath:v12 error:0];

    v14 = [v13 fileSize];
    if (v14)
    {
      v15 = v14;
      v16 = [*(a1 + 40) book];
      v17 = [v16 fileSize];
      v18 = [v17 longLongValue];

      if (v15 != v18)
      {
        v19 = [*(a1 + 40) book];
        v20 = [NSNumber numberWithLongLong:v15];
        [v19 setFileSize:v20];

        [*(*(a1 + 40) + 88) save:0];
      }
    }
  }

  if ([*(a1 + 40) coverNeedsUpdate])
  {
    v21 = [*(a1 + 40) sharedBookCoverResetter];
    v22 = [*(a1 + 40) book];
    v23 = [v22 assetID];
    [v21 resetCover:v23];

    [*(a1 + 40) setCoverNeedsUpdate:0];
  }

  v24 = *(a1 + 40);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_ED93C;
  v25[3] = &unk_1E2BD0;
  v25[4] = v24;
  os_unfair_lock_lock(v24 + 242);
  sub_ED93C(v25);
  os_unfair_lock_unlock(v24 + 242);
}

void sub_EF1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_EF208(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAnnotationCountResults:v3];

  [WeakRetained setAnnotationCounter:0];
}

void sub_EF654(uint64_t a1)
{
  [*(a1 + 32) clearSelection];
  objc_opt_class();
  v2 = [*(a1 + 32) currentLocation];
  v3 = BUDynamicCast();

  if (v3)
  {
    v4 = [v3 pageOffset];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      v6 = [*(a1 + 32) pdfDocument];
      v7 = [v6 pageAtIndex:v5];

      [v7 setBookmarked:{objc_msgSend(v7, "isBookmarked") ^ 1}];
      v8 = BKModernPDFLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_13906C(v7);
      }
    }
  }
}

void sub_EFB18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained scrub:*(a1 + 32) isScrubbing:1];
}

void sub_F03E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = [[UIMenuItem alloc] initWithTitle:v5 action:a3];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
    v6 = v7;
  }
}

double _BKFontCellAppearanceFontHeight()
{
  if (!+[UIFont bc_accessibilityFontSizesEnabled])
  {
    return 40.0;
  }

  if (([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge]& 1) != 0)
  {
    return 80.0;
  }

  v2 = [UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityLarge];
  result = 50.0;
  if (v2)
  {
    return 60.0;
  }

  return result;
}

double _BKFontTableViewSizePaddingForContentSizeCategory(void *a1)
{
  v1 = a1;
  v2 = 0.0;
  if (([v1 isEqualToString:UIContentSizeCategoryExtraSmall] & 1) == 0)
  {
    if ([v1 isEqualToString:UIContentSizeCategorySmall])
    {
      v2 = 3.0;
    }

    else
    {
      v2 = 6.0;
    }
  }

  return v2;
}

void sub_F311C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  v3 = [NSIndexPath indexPathForRow:*(a1 + 40) inSection:0];
  v2 = [NSArray arrayWithObject:v3];
  [v1 reloadRowsAtIndexPaths:v2 withRowAnimation:5];
}

id sub_F49E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result >= 2)
  {
    v8 = *(a1 + 32);

    return [v8 removeAttribute:@"UIAccessibilityTokenLowPitch" range:{a3, a4}];
  }

  return result;
}

void sub_F4BFC(id a1)
{
  v1 = objc_alloc_init(AETestDriver);
  v2 = qword_22D278;
  qword_22D278 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_F587C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 superview];
  [v6 frame];
  v9 = v8;
  v11 = v10;

  [v7 convertPoint:*(a1 + 32) toView:{v9, v11}];
  v13 = v12;

  v14 = [v5 superview];
  [v5 frame];
  v16 = v15;
  v18 = v17;

  [v14 convertPoint:*(a1 + 32) toView:{v16, v18}];
  v20 = v19;

  if (v13 < v20)
  {
    return -1;
  }

  else
  {
    return v13 != v20;
  }
}

id sub_F6404(uint64_t a1)
{
  [*(a1 + 32) _setupScrollView];
  v2 = *(a1 + 32);
  v3 = [v2 pageNumberBeforeTransition] - 1;

  return [v2 _displayPagesForOffset:v3];
}

void sub_F6450(uint64_t a1)
{
  [*(a1 + 32) setAnimating:0];
  [*(a1 + 32) setPageNumberBeforeTransition:0x7FFFFFFFFFFFFFFFLL];
  [*(a1 + 32) _updatePages];
  v2 = [*(a1 + 32) pageViews];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        [v7 setNeedsLayout];
        objc_opt_class();
        v8 = [*(a1 + 32) delegate];
        v9 = [v8 contentViewControllerForPageNumber:{objc_msgSend(v7, "pageNumber")}];
        v10 = BUDynamicCast();

        [*(a1 + 32) _applyAdditionalScale:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_F6658;
  v13[3] = &unk_1E3F50;
  v11 = *(a1 + 32);
  v14 = v2;
  v15 = v11;
  v12 = v2;
  [UIView animateWithDuration:v13 animations:0.2];
}

void sub_F6658(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        [v7 setAlpha:{1.0, v10}];
        v8 = [v7 pageNumber];
        if (v8 == [*(a1 + 40) pageNumberBeforeTransition])
        {
          v9 = [v7 pageScrollerPageView];
          [v9 setScrollState:2];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

BOOL sub_F6868(id a1, UIView *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  v4 = BUDynamicCast();

  return v4 != 0;
}

id sub_F75E8(uint64_t a1)
{
  [*(a1 + 32) frameForPageNumber:*(a1 + 40)];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  MaxY = CGRectGetMaxY(v27);
  [*(*(a1 + 32) + 192) frame];
  if (MaxY > CGRectGetMaxY(v28))
  {
    [*(*(a1 + 32) + 192) frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    [*(*(a1 + 32) + 192) setFrame:{v8, v10, v12, CGRectGetMaxY(v29)}];
  }

  [*(*(a1 + 32) + 192) frame];
  [*(*(a1 + 32) + 184) setContentSize:{0.0, CGRectGetMaxY(v30)}];
  [*(*(a1 + 32) + 184) frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [*(a1 + 32) view];
  [v21 bounds];
  v22 = CGRectGetWidth(v31);
  v32.origin.x = v14;
  v32.origin.y = v16;
  v32.size.width = v18;
  v32.size.height = v20;
  v23 = (v22 - CGRectGetWidth(v32)) * 0.5;

  v24 = *(*(a1 + 32) + 184);

  return [v24 setFrame:{v23, v16, v18, v20}];
}

void sub_F7E94(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (*(a1 + 40))
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) shouldDisplaySpread] ^ 1;
    v3 = v9;
  }

  [v3 setHidden:v4];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) book];
  v7 = [v6 bkPageProgressionDirection];

  v8 = [*(a1 + 32) shouldDisplaySpread];
  LODWORD(v6) = (v7 == 1) ^ v5;
  [v9 setIsLeftPage:v8 & (v6 ^ 1)];
  [v9 setIsRightPage:v8 & v6];
}

void sub_F8504(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

void sub_F883C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _imageViewForPageContentImage:a2];
  [*(a1 + 32) setLeftContentView:v3];

  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void sub_F8894(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _imageViewForPageContentImage:a2];
  [*(a1 + 32) setRightContentView:v3];

  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void sub_F88EC(uint64_t a1)
{
  v2 = +[UIGraphicsImageRendererFormat preferredFormat];
  v3 = [UIGraphicsImageRenderer alloc];
  [*(a1 + 32) actualSize];
  v4 = [v3 initWithSize:v2 format:?];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F89F8;
  v8[3] = &unk_1E5DE8;
  v9 = *(a1 + 32);
  v5 = [v4 imageWithActions:v8];
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v5);
  }
}

void sub_F89F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

void sub_F8A68(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_F8DA0(uint64_t a1)
{
  [*(a1 + 32) _setPageOffsetUncheckedImmediate:*(a1 + 48)];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_F965C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_F9678(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained currentPageNumber];
    v5 = [v3 _setupPageNumber:v4];
    if (([v3 animating] & 1) == 0)
    {
      v6 = [v3 scrollView];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [v6 contentOffset];
      v16 = v15;
      [v6 zoomScale];
      v18 = v17;
      v42.origin.x = v8;
      v42.origin.y = v10;
      v42.size.width = v12;
      v42.size.height = v14;
      Height = CGRectGetHeight(v42);
      v43.origin.x = v8;
      v43.origin.y = v10;
      v43.size.width = v12;
      v43.size.height = v14;
      Width = CGRectGetWidth(v43);
      v44.origin.x = v8;
      v44.origin.y = v10;
      v44.size.width = v12;
      v44.size.height = v14;
      v21 = CGRectGetHeight(v44);
      v22 = [v3 pageCount];
      if (v4 >= 5)
      {
        v23 = (v4 - 5);
      }

      else
      {
        v23 = 0;
      }

      if (v4 + 5 >= v22 + 1)
      {
        v24 = (v22 + 1);
      }

      else
      {
        v24 = (v4 + 5);
      }

      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = [*(a1 + 32) pageViews];
      v26 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v38;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v37 + 1) + 8 * i);
            if ([v30 pageNumber] < v23 || objc_msgSend(v30, "pageNumber") > v24)
            {
              [v3 _teardownPageNumber:{objc_msgSend(v30, "pageNumber")}];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v27);
      }

      if (v23 < v24)
      {
        v31 = v16 / v18 - Height;
        do
        {
          [v3 frameForPageNumber:v23];
          v46.origin.x = v32;
          v46.origin.y = v33;
          v46.size.width = v34;
          v46.size.height = v35;
          v45.origin.x = 0.0;
          v45.origin.y = v31;
          v45.size.width = Width;
          v45.size.height = v21 * 3.0;
          ++v23;
          if (CGRectIntersectsRect(v45, v46))
          {
            v36 = [v3 _setupPageNumber:v23];
          }

          else
          {
            [v3 _teardownPageNumber:v23];
          }
        }

        while (v23 < v24);
      }
    }
  }
}

__CFString *NSStringFromBKFontKind(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"Undefined(%ld)", a1];
  }

  else
  {
    v2 = off_1E5F10[a1];
  }

  return v2;
}

void sub_FB90C(id a1)
{
  v1 = dispatch_queue_create("com.apple.iBooks.BKFont.lookup", 0);
  v2 = qword_22D288;
  qword_22D288 = v1;

  _objc_release_x1(v1, v2);
}

void sub_FBB74(uint64_t a1)
{
  v2 = CTFontDescriptorCreateWithAttributes(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v2, 0);
    CFRelease(v3);
    if (![(__CFArray *)MatchingFontDescriptors count])
    {
      [*(a1 + 32) setValue:kCFBooleanTrue forKey:kCTFontDownloadableAttribute];
      v5 = CTFontDescriptorCreateWithAttributes(*(a1 + 32));
      if (v5)
      {
        v6 = v5;
        v7 = CTFontDescriptorCreateMatchingFontDescriptors(v5, 0);

        CFRelease(v6);
        MatchingFontDescriptors = v7;
      }

      else
      {

        MatchingFontDescriptors = 0;
      }
    }

    if ([(__CFArray *)MatchingFontDescriptors count])
    {
      v8 = CTFontDescriptorCopyLocalizedAttribute([(__CFArray *)MatchingFontDescriptors objectAtIndex:0], kCTFontFamilyNameAttribute, 0);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    (*(*(a1 + 40) + 16))();
  }
}

void sub_FBDC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_FBE5C;
  v5[3] = &unk_1E3F50;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_FBE5C(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"localizedName"];
  [*(a1 + 32) willChangeValueForKey:@"displayName"];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  [*(a1 + 32) didChangeValueForKey:@"displayName"];
  v5 = *(a1 + 32);

  return [v5 didChangeValueForKey:@"localizedName"];
}

uint64_t sub_FC82C(uint64_t a1, int a2, void *a3)
{
  v6 = *(a1 + 32);
  if (*(v6 + 92) != a2)
  {
    v7 = _AEBookPluginsFontCacheLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) familyName];
      v9 = sub_FCABC(a2);
      *buf = 138543618;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ status: %{public}@", buf, 0x16u);
    }

    v6 = *(a1 + 32);
  }

  *(v6 + 92) = a2;
  v10 = [*(a1 + 32) state];
  v11 = 1;
  if (a2 > 6)
  {
    if (a2 != 7)
    {
      if (a2 != 8)
      {
        goto LABEL_18;
      }

      v14 = [a3 objectForKey:kCTFontDescriptorMatchingError];
      v15 = _AEBookPluginsFontCacheLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 32) familyName];
        *buf = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Error downloading %{public}@: %@", buf, 0x16u);
      }

      [*(a1 + 32) setState:4];
      goto LABEL_17;
    }

    v12 = *(a1 + 32);
    v13 = 1;
  }

  else if ((a2 - 3) >= 2)
  {
    if (a2 != 5)
    {
      goto LABEL_18;
    }

    v12 = *(a1 + 32);
    v13 = 3;
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = 2;
  }

  [v12 setState:v13];
LABEL_17:
  v11 = 0;
LABEL_18:
  if (v10 != [*(a1 + 32) state])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_FCAE4;
    block[3] = &unk_1E2BD0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  if (a2 == 1)
  {
    v17 = *(a1 + 40);
    if (v17)
    {
      dispatch_group_leave(v17);
    }
  }

  return v11;
}

const __CFString *sub_FCABC(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Began";
  }

  else
  {
    return off_1E5F38[a1 - 1];
  }
}

void sub_FCAE4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:BEFontStateChangedNotification object:*(a1 + 32)];
}

void sub_FCDAC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:BEFontStateChangedNotification object:*(a1 + 32)];
}

id sub_FCE20(uint64_t a1, int a2, void *a3)
{
  v6 = [*(a1 + 32) continueDownloading];
  v7 = *(a1 + 32);
  if (v6)
  {
    if (v7[23] != a2)
    {
      v8 = _AEBookPluginsFontCacheLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) familyName];
        v10 = sub_FCABC(a2);
        *buf = 138543618;
        v31 = v9;
        v32 = 2114;
        v33 = v10;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ downloadstatus: %{public}@", buf, 0x16u);
      }

      v7 = *(a1 + 32);
    }

    v7[23] = a2;
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v11 = [a3 objectForKey:kCTFontDescriptorMatchingTotalAssetSize];
        v21 = [a3 objectForKey:kCTFontDescriptorMatchingTotalDownloadedSize];
        v12 = v21;
        if (v11)
        {
          v22 = v21 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (!v22 && [v11 isEqualToNumber:v21])
        {
          [*(a1 + 32) setState:1];
          LODWORD(v23) = 1.0;
          [*(a1 + 32) setDownloadProgress:v23];
        }

        goto LABEL_29;
      }

      if (a2 != 7)
      {
        if (a2 == 8)
        {
          v18 = [a3 objectForKey:kCTFontDescriptorMatchingError];
          v19 = _AEBookPluginsFontCacheLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = [*(a1 + 32) familyName];
            *buf = 138543618;
            v31 = v20;
            v32 = 2114;
            v33 = v18;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Error downloading %{public}@: %{public}@", buf, 0x16u);
          }

          [*(a1 + 32) setState:4];
          [*(a1 + 32) setContinueDownloading:0];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_FD2C4;
          v29[3] = &unk_1E2BD0;
          v29[4] = *(a1 + 32);
          dispatch_async(&_dispatch_main_q, v29);
        }

        goto LABEL_33;
      }

      v24 = *(a1 + 32);
      v25 = 1;
    }

    else
    {
      if (!a2)
      {
        [*(a1 + 32) setContinueDownloading:1];
        goto LABEL_33;
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          v11 = [a3 objectForKey:kCTFontDescriptorMatchingTotalAssetSize];
          v12 = [a3 objectForKey:kCTFontDescriptorMatchingTotalDownloadedSize];
          v13 = [v12 longLongValue];
          v14 = v13 / [v11 longLongValue];
          [*(a1 + 32) downloadProgress];
          v16 = v15;
          if (v14 > v16)
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_FD328;
            block[3] = &unk_1E2BD0;
            block[4] = *(a1 + 32);
            dispatch_async(&_dispatch_main_q, block);
          }

          *&v16 = v14;
          [*(a1 + 32) setDownloadProgress:v16];
          [*(a1 + 32) setState:3];
LABEL_29:
        }

LABEL_33:
        v26 = *(a1 + 40);
        if (v26 != [*(a1 + 32) state])
        {
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_FD38C;
          v27[3] = &unk_1E2BD0;
          v27[4] = *(a1 + 32);
          dispatch_async(&_dispatch_main_q, v27);
        }

        return [*(a1 + 32) continueDownloading];
      }

      v24 = *(a1 + 32);
      v25 = 3;
    }

    [v24 setState:v25];
    goto LABEL_33;
  }

  return [v7 continueDownloading];
}

void sub_FD2C4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:BEFontDownloadFailedNotification object:*(a1 + 32)];
}

void sub_FD328(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:BEFontDownloadProgressChangedNotification object:*(a1 + 32)];
}

void sub_FD38C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:BEFontStateChangedNotification object:*(a1 + 32)];
}

void sub_FD520(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:BEFontStateChangedNotification object:*(a1 + 32)];
}

void sub_FF3E8(uint64_t a1)
{
  [*(a1 + 32) updateTopToolbar:1];
  v2 = [*(*(a1 + 32) + 352) view];
  [v2 setNeedsLayout];
}

id sub_FF454(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 currentPages];

  return [v1 updateScrubber:{v3, v2}];
}

void sub_1016C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1016E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 presentationSourceItem];

  [WeakRetained showFontPicker:v4];
}

void sub_1018D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1018FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 presentationSourceItem];

  [WeakRetained showSearch:v4];
}

void sub_101FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_102000(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 presentationSourceItem];
    [WeakRetained performSelector:"toggleBookmark:" withObject:v4];
  }
}

void sub_102B48(uint64_t a1)
{
  [*(a1 + 32) setTopToolBarVisible:*(a1 + 40)];
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) scrubber];
    [v2 loadAnyMissingThumbnails];
  }

  v3 = *(a1 + 32);
  v4 = [v3 currentPages];
  [v3 updateScrubber:{v4, v5}];
  [*(a1 + 32) updateHUDVisibilityAnimated:0];
  [*(a1 + 32) updateBottomToolbar:*(a1 + 41)];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) _bookmarkBarButtonItem];
  [v7 setIsAccessibilityElement:v6];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) _searchBarButtonItem];
  [v9 setIsAccessibilityElement:v8];
}

id sub_102E2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = BKThumbnailBookViewController;
  return objc_msgSendSuper2(&v3, "showTOC:", v1);
}

id sub_103140(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  if (!v2 && ([*(a1 + 32) canShowControlsDuringOpenClose] & 1) == 0)
  {
    [*(a1 + 32) setControlsVisible:0 animated:0];
  }

  v3 = *(a1 + 40);
  v5.receiver = *(a1 + 32);
  v5.super_class = BKThumbnailBookViewController;
  return objc_msgSendSuper2(&v5, "showLibrary:", v3);
}

void sub_1043C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

id sub_104EBC(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

void sub_10541C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_105438(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v5 = [[UIImageView alloc] initWithImage:v3];
    [v5 setFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    v6 = +[UIColor clearColor];
    [v5 setBackgroundColor:v6];

    [v5 setOpaque:0];
    [v5 setContentMode:1];
    v7 = [WeakRetained view];
    [v7 insertSubview:v5 aboveSubview:*(a1 + 32)];

    [*(a1 + 40) setAlpha:0.0];
    v8 = [WeakRetained view];
    [v8 insertSubview:*(a1 + 40) belowSubview:v5];

    [WeakRetained updateBookContentConstraints];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_105684;
    v20[3] = &unk_1E6018;
    v21 = *(a1 + 32);
    v22 = WeakRetained;
    v28 = *(a1 + 112);
    v23 = v3;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v27 = v5;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10582C;
    v17 = &unk_1E3F28;
    v18 = WeakRetained;
    v19 = v27;
    v12 = v27;
    [UIView animateWithDuration:v20 animations:&v14 completion:0.2];
    v13 = [WeakRetained view];
    [v13 setUserInteractionEnabled:0];
  }
}

void sub_105684(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) updateContentScale];
  v24 = [*(a1 + 40) bookContentView];
  [v24 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 40) view];
  [v24 convertRect:v10 toView:{v3, v5, v7, v9}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (*(a1 + 88) != 1)
  {
    goto LABEL_13;
  }

  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  Width = CGRectGetWidth(v26);
  [*(a1 + 48) size];
  v21 = v20;
  v23 = v22;
  if (([*(a1 + 56) shouldDisplaySpread] & 1) == 0 && !objc_msgSend(*(a1 + 64), "hasSpreadPages"))
  {
    goto LABEL_13;
  }

  if ([*(a1 + 72) showSpreads])
  {
    if (Width + Width == v21 && v12 - Width >= 0.0)
    {
      v12 = v12 - Width;
    }
  }

  else
  {
    if ([*(a1 + 72) showSpreads])
    {
LABEL_13:
      v23 = v18;
      v21 = v16;
      goto LABEL_14;
    }

    if (v12 - Width >= 0.0)
    {
      v12 = v12 - Width;
    }
  }

  if (v21 <= Width)
  {
    v27.origin.x = v12;
    v27.origin.y = v14;
    v27.size.width = v16;
    v27.size.height = v18;
    if (v23 <= CGRectGetHeight(v27))
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  [*(a1 + 80) setFrame:{v12, v14, v21, v23}];
}

void sub_1068FC(uint64_t a1)
{
  [*(a1 + 32) _updatePageNumberHUDVisible:*(a1 + 40)];
  v3 = [*(a1 + 32) _bk_backgroundColor];
  v2 = [*(a1 + 32) backgroundView];
  [v2 setBackgroundColor:v3];
}

id sub_107674(uint64_t a1)
{
  v2 = +[UIView areAnimationsEnabled];
  v3 = *(a1 + 32);

  return [v3 setSection:0 animated:v2 adjustScrollToReveal:0];
}

id sub_107920(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = BKThumbnailBookViewController;
  objc_msgSendSuper2(&v4, "turnToPageNumber:animated:", v2, 0);
  return [*(a1 + 32) setSection:0 animated:+[UIView areAnimationsEnabled](UIView adjustScrollToReveal:{"areAnimationsEnabled"), 0}];
}

id sub_1095BC(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 32) frame];
  v3 = v2;
  v5 = v4;
  height = CGSizeZero.height;
  [*(a1 + 32) loupeWidth];
  v8 = v3 + floor(v7 * 0.5);
  [*(a1 + 32) loupeHeight];
  v10 = *(a1 + 32);

  return [v10 setFrame:{v8, v5 + v9, CGSizeZero.width, height}];
}

id sub_109B94(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) frame];
  v2 = *(a1 + 32);
  v3 = [v2 superview];
  v4 = [*(a1 + 32) targetView];
  [v3 convertPoint:v4 fromView:{*(a1 + 40), *(a1 + 48)}];
  [v2 loupePointForPoint:?];
  v6 = v5;
  v8 = v7;

  [*(a1 + 32) loupeWidth];
  v10 = v9;
  [*(a1 + 32) loupeHeight];
  v12 = *(a1 + 32);

  return [v12 setFrame:{v6, v8, v10, v11}];
}

void sub_10A724(_Unwind_Exception *a1, uint64_t a2, void *a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, id);
  v19 = va_arg(va1, id);
  v20 = va_arg(va1, id);
  v21 = va_arg(va1, id);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  sub_10BC64(va);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v4 + 40));

  _Unwind_Resume(a1);
}

uint64_t sub_10A7AC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3321888768;
  v104[2] = sub_10B574;
  v104[3] = &unk_1E6070;
  v72 = a3;
  v73 = a4;
  v74 = a3;
  v105 = v74;
  v75 = a4;
  v106 = v75;
  v107 = a5;
  v77 = a5;
  v81 = a1;
  v108 = *(a1 + 72);
  v76 = objc_retainBlock(v104);
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
  v71 = 1;
  if (!v10)
  {
    goto LABEL_91;
  }

  v80 = *v101;
LABEL_3:
  v79 = v10;
  v11 = 0;
  while (1)
  {
    if (*v101 != v80)
    {
      objc_enumerationMutation(obj);
    }

    v12 = *(*(&v100 + 1) + 8 * v11);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = *(v81 + 32);
      v14 = [v12 text];
      [v13 appendString:v14];
      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v99 = 0;
      v15 = [v12 keyPath];
      v16 = (v76[2])(v76, &v99, v15);
      v14 = v99;

      if ((v16 & 1) == 0)
      {
        goto LABEL_89;
      }

      if (v14)
      {
        v17 = *(v81 + 32);
        v18 = [v14 description];
        [v17 appendString:v18];
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
      v98 = 0;
      v19 = [v14 conditional];
      v20 = (v76[2])(v76, &v98, v19);
      v18 = v98;

      if ((v20 & 1) == 0)
      {
        goto LABEL_88;
      }

      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v18 length] != 0;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v18 BOOLValue];
          }

          else
          {
            objc_opt_class();
            v21 = objc_opt_isKindOfClass() ^ 1;
          }
        }
      }

      else
      {
        v21 = 0;
      }

      v42 = [v14 negated];
      WeakRetained = objc_loadWeakRetained((*(*(v81 + 64) + 8) + 40));
      if ((v21 ^ v42))
      {
        [v14 thenSteps];
      }

      else
      {
        [v14 elseSteps];
      }
      v44 = ;
      v45 = v74;
      v46 = v75;
      v47 = WeakRetained[2](WeakRetained, v44, v72, v73, v77);

      if ((v47 & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_48;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
      v97 = 0;
      v22 = [v14 keyPath];
      v23 = (v76[2])(v76, &v97, v22);
      v18 = v97;

      if ((v23 & 1) == 0)
      {
        goto LABEL_88;
      }

      if (v18)
      {
        v25 = v77[1];
        v24 = v77[2];
        if (v25 >= v24)
        {
          v38 = (v25 - *v77) >> 4;
          if ((v38 + 1) >> 60)
          {
            sub_C50D0();
          }

          v39 = v24 - *v77;
          v40 = v39 >> 3;
          if (v39 >> 3 <= (v38 + 1))
          {
            v40 = v38 + 1;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFF0)
          {
            v41 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v40;
          }

          if (v41)
          {
            if (!(v41 >> 60))
            {
              operator new();
            }

            sub_C51C0();
          }

          v48 = (16 * v38);
          *v48 = v74;
          v48[1] = v75;
          v27 = v77;
          v49 = *v77;
          v50 = v77[1];
          v51 = v48 + *v77 - v50;
          if (*v77 != v50)
          {
            v52 = *v77;
            v53 = (v48 + *v77 - v50);
            do
            {
              v54 = *v52;
              *v52 = 0;
              v52[1] = 0;
              v52 += 2;
              *v53++ = v54;
            }

            while (v52 != v50);
            do
            {

              v49 += 2;
            }

            while (v49 != v50);
            v27 = v77;
            v49 = *v77;
          }

          v28 = v48 + 2;
          *v27 = v51;
          v27[1] = v28;
          v27[2] = 0;
          if (v49)
          {
            operator delete(v49);
            v27 = v77;
          }
        }

        else
        {
          *v25 = v74;
          v26 = v75;
          v27 = v77;
          v25[1] = v26;
          v28 = v25 + 2;
        }

        v27[1] = v28;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v93 = 0;
          v94 = &v93;
          v95 = 0x2020000000;
          v96 = 1;
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v88[0] = sub_10BB58;
          v88[1] = &unk_1E60A8;
          v90 = *(v81 + 64);
          v55 = v14;
          v91 = &v93;
          v92 = v77;
          v89 = v55;
          [v18 enumerateKeysAndObjectsUsingBlock:v87];
          v56 = *(v94 + 24);

          _Block_object_dispose(&v93, 8);
          if ((v56 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (![v18 conformsToProtocol:&OBJC_PROTOCOL___NSFastEnumeration])
          {
            if (*(v81 + 72))
            {
              v58 = [v14 keyPath];
              v69 = [NSDictionary dictionaryWithObjectsAndKeys:@"Attempted to use range with a non-enumerable context", NSLocalizedDescriptionKey, v58, @"keyPath", 0, v88];
              **(v81 + 72) = [NSError errorWithDomain:@"AEMinimalTemplateErrorDomain" code:3 userInfo:v69];

              goto LABEL_87;
            }

LABEL_88:

            goto LABEL_89;
          }

          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v57 = v18;
          v58 = v57;
          v59 = [v57 countByEnumeratingWithState:&v83 objects:v109 count:16];
          if (v59)
          {
            v60 = *v84;
LABEL_65:
            v61 = 0;
            while (1)
            {
              if (*v84 != v60)
              {
                objc_enumerationMutation(v58);
              }

              v62 = *(*(&v83 + 1) + 8 * v61);
              v63 = objc_loadWeakRetained((*(*(v81 + 64) + 8) + 40));
              v64 = [v14 steps];
              LOBYTE(v62) = (*(v63 + 2))(v63, v64, v62, 0, v77);

              if ((v62 & 1) == 0)
              {
                break;
              }

              if (v59 == ++v61)
              {
                v57 = v58;
                v59 = [v58 countByEnumeratingWithState:&v83 objects:v109 count:16];
                if (v59)
                {
                  goto LABEL_65;
                }

                goto LABEL_71;
              }
            }

LABEL_87:

            goto LABEL_88;
          }

LABEL_71:
        }

        sub_10CE6C(v77, v77[1] - 16);
      }

      goto LABEL_48;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_50:
    if (++v11 == v79)
    {
      v10 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
      if (!v10)
      {
        v71 = 1;
        goto LABEL_91;
      }

      goto LABEL_3;
    }
  }

  if (*(v81 + 40))
  {
    v14 = v12;
    v29 = [*(v81 + 40) templates];
    v30 = [v14 name];
    v18 = [v29 objectForKey:v30];

    if (!v18)
    {
      if (!*(v81 + 72))
      {
        goto LABEL_88;
      }

      v65 = [v14 name];
      v66 = [NSString stringWithFormat:@"No such template named '%@' in embed", v65];
      v67 = [v14 name];
      v68 = [NSDictionary dictionaryWithObjectsAndKeys:v66, v67, @"name", 0];
      **(v81 + 72) = [NSError errorWithDomain:@"AEMinimalTemplateErrorDomain" code:4 userInfo:v68];

LABEL_82:
      goto LABEL_88;
    }

    [*(v81 + 48) addObject:v18];
    if ([*(v81 + 48) countForObject:v18] >= 0xA)
    {
      if (!*(v81 + 72))
      {
        goto LABEL_88;
      }

      v65 = [NSDictionary dictionaryWithObjectsAndKeys:@"Cycle detected in {{embed}}", NSLocalizedDescriptionKey, 0];
      **(v81 + 72) = [NSError errorWithDomain:@"AEMinimalTemplateErrorDomain" code:6 userInfo:v65];
      goto LABEL_82;
    }

    v31 = *(v81 + 56);
    v32 = [v14 keyPath];
    v33 = v32 == 0;

    if (!v33)
    {
      v82 = v31;
      v34 = [v14 keyPath];
      v35 = (v76[2])(v76, &v82, v34);
      v36 = v82;

      if ((v35 & 1) == 0)
      {

        goto LABEL_89;
      }

      v31 = v36;
    }

    v37 = [v18 evaluateWithData:v31 templateSet:*(v81 + 40) cycleContext:*(v81 + 48) error:*(v81 + 72)];
    [*(v81 + 48) removeObject:v18];
    if (!v37)
    {

      goto LABEL_89;
    }

    [*(v81 + 32) appendString:v37];

LABEL_48:
LABEL_49:

    goto LABEL_50;
  }

  if (!*(v81 + 72))
  {
    goto LABEL_90;
  }

  v14 = [NSDictionary dictionaryWithObject:@"Template is not part of a set" forKey:NSLocalizedDescriptionKey];
  **(v81 + 72) = [NSError errorWithDomain:@"AEMinimalTemplateErrorDomain" code:4 userInfo:v14];
LABEL_89:

LABEL_90:
  v71 = 0;
LABEL_91:

  return v71;
}

uint64_t sub_10B574(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v34 = a1;
  v8 = *(a1 + 48);
  v9 = v5;
  v10 = v8[1];
  v35 = *v8;
  v11 = [v5 length];
  if (!v11)
  {
    v12 = 0;
LABEL_20:
    v25 = [v9 substringWithRange:{v12, v11}];

    if ([v25 length] && (objc_msgSend(v25, "isEqualToString:", @".") & 1) == 0)
    {
      v26 = [v6 valueForKeyPath:v25];
    }

    else
    {
      v26 = v6;
    }

    *a2 = v26;
    v27 = 1;
    goto LABEL_33;
  }

  v33 = a2;
  v36 = v5;
  v12 = 0;
  while (1)
  {
    v13 = v7;
    v14 = v6;
    v9 = v36;
    v15 = [v36 rangeOfString:@"." options:0 range:{v12, v11}];
    v17 = &v11[v12];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = &v11[v12];
    }

    else
    {
      v19 = v15;
    }

    v20 = [v36 substringWithRange:{v12, v19 - v12}];
    if ([v20 isEqualToString:@"$key"])
    {
      if (!v13)
      {
        v28 = (v34 + 56);
        if (*(v34 + 56))
        {
          v6 = v14;
          v29 = [NSString stringWithFormat:@"Unknown key path '%@'", v20];
          v30 = [NSDictionary dictionaryWithObjectsAndKeys:v29, NSLocalizedDescriptionKey, v36, @"NSUnknownUserInfoKey", 0];
          v31 = [NSError errorWithDomain:@"AEMinimalTemplateErrorDomain" code:2 userInfo:v30];
          v7 = 0;
LABEL_29:
          **v28 = v31;
        }

        else
        {
          v7 = 0;
          v6 = v14;
        }

        goto LABEL_32;
      }

      v24 = v13;

      v13 = 0;
      v12 = &v19[v18];
      v11 = (v17 - &v19[v18]);
      v6 = v24;
      v9 = v36;
LABEL_18:

      v7 = v13;
      goto LABEL_19;
    }

    if (![v20 isEqualToString:@"$parent"])
    {
      v6 = v14;
      goto LABEL_18;
    }

    if (v10 == v35)
    {
      break;
    }

    v21 = *(v10 - 16);
    v10 -= 16;
    v22 = v21;

    v23 = *(v10 + 8);
    v12 = &v19[v18];
    v11 = (v17 - &v19[v18]);

    v7 = v23;
    v6 = v22;
    if (!v11)
    {
      v6 = v22;
      v7 = v23;
      v9 = v36;
LABEL_19:
      a2 = v33;
      goto LABEL_20;
    }
  }

  v28 = (v34 + 56);
  if (*(v34 + 56))
  {
    v6 = v14;
    v7 = v13;
    v29 = [NSString stringWithFormat:@"Unknown key path '%@'", v20];
    v30 = [NSDictionary dictionaryWithObjectsAndKeys:v29, NSLocalizedDescriptionKey, v36, @"NSUnknownUserInfoKey", 0];
    v31 = [NSError errorWithDomain:@"AEMinimalTemplateErrorDomain" code:2 userInfo:v30];
    goto LABEL_29;
  }

  v6 = v14;
  v7 = v13;
LABEL_32:

  v27 = 0;
  v25 = v36;
LABEL_33:

  return v27;
}

id sub_10BAE0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_10BB1C(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_10BB58(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v10 = [*(a1 + 32) steps];
  v11 = v8;
  v13 = v7;
  v12 = WeakRetained[2](WeakRetained, v10, v11);

  if ((v12 & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

uint64_t *sub_10BC64(uint64_t *a1)
{
  if (*a1)
  {
    sub_10CE6C(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_10C7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  _Block_object_dispose((v44 - 184), 8);

  _Block_object_dispose((v44 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10C9C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10C9D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    [*(a1 + 32) addObject:v3];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = [v4 elseSteps];

    if (v5)
    {
      [v4 elseSteps];
    }

    else
    {
      [v4 thenSteps];
    }
    v6 = ;
    [v6 addObject:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v4 = [*(*(*(a1 + 40) + 8) + 40) steps];
    [v4 addObject:v7];
  }

LABEL_11:
}

void sub_10CAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10CB34(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 length];
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = [v7 rangeOfCharacterFromSet:*(a1 + 32) options:0 range:{v4, v3 - v4}];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++*(*(*(a1 + 40) + 8) + 24);
      v4 = &v5[v6];
    }

    while (&v5[v6] < v3);
  }
}

void sub_10CE6C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 16)
  {

    v5 = *(i - 16);
  }

  *(a1 + 8) = a2;
}

void sub_10D240(id a1)
{
  v1 = +[UIViewController be_PDFPageViewControllerClass];
  if (v1)
  {

    sub_10D28C(v1, "autoScaleFactor", "be_autoScaleFactor");
  }
}

void sub_10D28C(objc_class *a1, const char *a2, const char *a3)
{
  InstanceMethod = class_getInstanceMethod(a1, a2);
  v7 = class_getInstanceMethod(a1, a3);
  if (InstanceMethod)
  {
    v8 = v7;
    if (v7)
    {
      Implementation = method_getImplementation(v7);
      TypeEncoding = method_getTypeEncoding(v8);
      if (class_addMethod(a1, a2, Implementation, TypeEncoding))
      {
        v11 = method_getImplementation(InstanceMethod);
        v12 = method_getTypeEncoding(InstanceMethod);

        class_replaceMethod(a1, a3, v11, v12);
      }

      else
      {

        method_exchangeImplementations(InstanceMethod, v8);
      }
    }
  }
}

void sub_10D41C(id a1)
{
  v1 = objc_opt_class();
  if (v1)
  {

    sub_10D28C(v1, "autoScaleFactor", "be_autoScaleFactor");
  }
}

uint64_t sub_10D740()
{
  v0 = sub_139840();
  sub_11CEF8(v0, qword_22C568);
  sub_11CE60(v0, qword_22C568);
  return sub_139830();
}

uint64_t sub_10D8C0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_10D920@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void (*sub_10D9D8(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_trackerHost;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10DA70;
}

void sub_10DA70(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10DAF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_dataSource;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10DB4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_dataSource;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10DC00(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_dataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10DC6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_dataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10DD0C;
}

void sub_10DD0C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_10DD94()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [objc_opt_self() startAdaptor];
  sub_139590();
  v2 = sub_139580();
  v3 = objc_allocWithZone(type metadata accessor for AudiobookAnalyticsRecorder());
  result = sub_10DEF8(v0, v1, v2);
  qword_22C588 = result;
  return result;
}

id static AudiobookAnalyticsRecorder.shared.getter()
{
  if (qword_22C580 != -1)
  {
    swift_once();
  }

  v1 = qword_22C588;

  return v1;
}

id sub_10DEF8(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionHost] = 0;
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion] = 0;
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionAudiobook] = 0;
  v7 = &v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionAssetID];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionStartDate;
  v9 = sub_139430();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionStartMediaTime] = 0;
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_skipStartMediaTime] = 0;
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionPlaybackRate] = 0;
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionTracker] = 0;
  v10 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_doNotDisturbStatusAtStart;
  v11 = enum case for DoNotDisturbStatus.unknown(_:);
  v12 = sub_139640();
  (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
  v13 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentRoute;
  v14 = enum case for ListeningRoutedTo.unknown(_:);
  v15 = sub_139620();
  (*(*(v15 - 8) + 104))(&v3[v13], v14, v15);
  v16 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_previousCellularAccessTechnology;
  v17 = enum case for CellularRadioAccessTechnology.unknown(_:);
  v18 = sub_139700();
  (*(*(v18 - 8) + 104))(&v3[v16], v17, v18);
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentBitrate] = 0;
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_player] = a1;
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_mediaRemoteAdaptor] = a2;
  *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_eventReporter] = a3;
  v28.receiver = v3;
  v28.super_class = type metadata accessor for AudiobookAnalyticsRecorder();
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = objc_msgSendSuper2(&v28, "init");
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 defaultCenter];
  [v25 addObserver:v24 selector:"routeChanged:" name:MPAVRouteDidChangeNotification object:0];

  v26 = [v23 defaultCenter];
  [v26 addObserver:v24 selector:"networkChanged:" name:BUNetworkMonitorInterfaceDidChangeNotification object:0];

  return v24;
}

uint64_t sub_10E228(void *a1)
{
  v3 = sub_139620();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 object])
  {
    sub_139B70();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    return sub_11CE98(v17, &qword_22C8D0);
  }

  sub_11BF80(0, &qword_22C8D8);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = v14[1];
    if ([v8 isCarplayRoute])
    {

      v9 = &enum case for ListeningRoutedTo.carPlay(_:);
    }

    else if ([v8 isHomePodRoute])
    {

      v9 = &enum case for ListeningRoutedTo.homePod(_:);
    }

    else if ([v8 isAppleTVRoute])
    {

      v9 = &enum case for ListeningRoutedTo.appleTV(_:);
    }

    else if ([v8 isAirpodsRoute])
    {

      v9 = &enum case for ListeningRoutedTo.airPods(_:);
    }

    else if ([v8 isHeadphonesRoute])
    {

      v9 = &enum case for ListeningRoutedTo.headphones(_:);
    }

    else
    {
      if (![v8 isDeviceSpeakerRoute])
      {
        v11 = [v8 routeSubtype];

        if (v11 == &dword_10 + 3)
        {
          v12 = &enum case for ListeningRoutedTo.carAudio(_:);
        }

        else
        {
          v12 = &enum case for ListeningRoutedTo.unknown(_:);
        }

        (*(v4 + 104))(v6, *v12, v3);
        v13 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentRoute;
        swift_beginAccess();
        (*(v4 + 40))(v1 + v13, v6, v3);
        return swift_endAccess();
      }

      v9 = &enum case for ListeningRoutedTo.device(_:);
    }

    (*(v4 + 104))(v6, *v9, v3);
    v10 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentRoute;
    swift_beginAccess();
    (*(v4 + 40))(v1 + v10, v6, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10E5CC()
{
  v1 = v0;
  v2 = sub_139700();
  v3 = *(v2 - 8);
  v4 = (__chkstk_darwin)();
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v36 - v7;
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_139550();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = __chkstk_darwin(v11);
  v36 = v13;
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_1398C0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v19 = sub_139AF0();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = sub_1398D0();
  result = (*(v17 + 8))(v19, v16);
  if (v20)
  {
    sub_10F6DC();
    v38 = v22;
    sub_1397F0();
    sub_1397E0();
    v23 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_previousCellularAccessTechnology;
    swift_beginAccess();
    v24 = *(v3 + 16);
    v24(v8, v1 + v23, v2);
    v24(v39, v10, v2);
    sub_139520();
    swift_beginAccess();
    v25 = v1 + v23;
    v26 = v38;
    (*(v3 + 40))(v25, v10, v2);
    swift_endAccess();
    v27 = sub_139740();
    sub_139540();
    sub_139530();
    sub_11EC0C(&qword_22C8E0, &type metadata accessor for CellularRadioAccessTechnology);
    LOBYTE(v23) = sub_139910();
    v28 = *(v3 + 8);
    v28(v8, v2);
    v28(v10, v2);
    if (v23)
    {
      (*(v40 + 8))(v15, v41);

      return swift_unknownObjectRelease();
    }

    else
    {
      v30 = v40;
      v29 = v41;
      v31 = v37;
      (*(v40 + 16))(v37, v15, v41);
      v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v33 = (v36 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      *(v34 + 16) = v26;
      (*(v30 + 32))(v34 + v32, v31, v29);
      *(v34 + v33) = v27;
      swift_unknownObjectRetain();
      v35 = v26;
      sub_139750();

      swift_unknownObjectRelease();

      return (*(v30 + 8))(v15, v29);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10EB70(uint64_t a1)
{
  sub_11BF80(0, &qword_22C5A8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  swift_unknownObjectRetain();
  sub_139AE0();
}

uint64_t sub_10EC10(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionHost;
  if (!*(a1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionHost))
  {
    v5 = *(a1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player);
    [v5 addObserver:a1];
    v6 = [v5 skipController];
    [v6 addObserver:a1];
  }

  *(a1 + v4) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_10EDB8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player);
  v3 = [v2 skipController];
  [v3 removeObserver:a1];

  [v2 removeObserver:a1];
  *(a1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionHost) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_10EE74()
{
  sub_11BF80(0, &qword_22C5A8);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_139AE0();
}

void sub_10EEFC()
{
  if (*(*(v0 + 16) + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion))
  {
    sub_10EF30();
  }
}

void sub_10EF30()
{
  v1 = v0;
  v2 = sub_139430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_11B940(&qword_22C908);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v26[-v10];
  v12 = sub_1398C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_11BF80(0, &qword_22C5A8);
  *v15 = sub_139AF0();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_1398D0();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionStartDate;
    swift_beginAccess();
    sub_11D398(&v1[v17], v11, &qword_22C908);
    if ((*(v3 + 48))(v11, 1, v2))
    {
      sub_11CE98(v11, &qword_22C908);
      v18 = 0.0;
    }

    else
    {
      (*(v3 + 16))(v5, v11, v2);
      sub_11CE98(v11, &qword_22C908);
      sub_139410();
      v20 = v19;
      (*(v3 + 8))(v5, v2);
      v18 = -v20;
    }

    v21 = *&v1[OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionHost];
    if (!v21)
    {
      goto LABEL_8;
    }

    if (*&v1[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionAssetID + 8])
    {
      swift_unknownObjectRetain();

      v22 = sub_139990();

      [v21 playSessionDidEnd:v22 playTime:v18];

      swift_unknownObjectRelease();
LABEL_8:
      v23 = swift_allocObject();
      *(v23 + 16) = v1;
      v24 = v1;
      sub_112D64(sub_11D438, v23);

      (*(v3 + 56))(v9, 1, 1, v2);
      swift_beginAccess();
      sub_11D2E8(v9, &v1[v17]);
      swift_endAccess();
      *&v24[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionAudiobook] = 0;
      swift_unknownObjectRelease();
      v25 = *&v24[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionTracker];
      *&v24[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionTracker] = 0;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id Document.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiobookAnalyticsRecorder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookAnalyticsRecorder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudiobookAnalyticsRecorder()
{
  result = qword_22C6B8;
  if (!qword_22C6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10F6DC()
{
  v1 = *(v0 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionTracker);
  if (v1 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v3 = [Strong trackerForAudiobookAnalytics], swift_unknownObjectRelease(), v3) || (v4 = *(v0 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionHost)) != 0 && (v5 = objc_msgSend(v4, "primaryAnalyticsController"), v6 = sub_1394C0(), v5, v6))
  {
    v7 = v1;
  }

  else
  {
    __break(1u);
  }
}

id AudiobookAnalyticsRecorder.skipController(_:willBeginSkippingIn:)()
{
  result = [*(v0 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player) positionInCurrentAudiobook];
  *(v0 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_skipStartMediaTime) = v2;
  return result;
}

uint64_t AudiobookAnalyticsRecorder.skipControllerDidEndSkipping(_:actionSource:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1395E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v7 = &enum case for SkipActionType.unknown(_:);
LABEL_5:
    (*(v4 + 104))(v6, *v7, v3);
    sub_10F99C(v6);
    return (*(v4 + 8))(v6, v3);
  }

  if (a2 == 1)
  {
    v7 = &enum case for SkipActionType.buttonTap(_:);
    goto LABEL_5;
  }

  type metadata accessor for BKAudiobookActionSource(0);
  v9[1] = a2;
  result = sub_139CE0();
  __break(1u);
  return result;
}

id sub_10F99C(uint64_t a1)
{
  v2 = v1;
  v69 = a1;
  v86 = sub_139720();
  v74 = *(v86 - 8);
  v3 = __chkstk_darwin(v86);
  v85 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v4;
  __chkstk_darwin(v3);
  v83 = &v58 - v5;
  v84 = sub_1397B0();
  v73 = *(v84 - 8);
  v6 = __chkstk_darwin(v84);
  v81 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v7;
  __chkstk_darwin(v6);
  v80 = &v58 - v8;
  v82 = sub_1394E0();
  v71 = *(v82 - 8);
  v9 = __chkstk_darwin(v82);
  v79 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v10;
  __chkstk_darwin(v9);
  v78 = &v58 - v11;
  v66 = sub_139620();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1396D0();
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1396C0();
  v88 = *(v77 - 8);
  v16 = __chkstk_darwin(v77);
  v76 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v17;
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v87 = sub_139500();
  v75 = *(v87 - 8);
  v20 = *(v75 + 64);
  v21 = __chkstk_darwin(v87);
  v22 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v58 - v23;
  v25 = sub_1398C0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v28 = sub_139AF0();
  (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
  v29 = sub_1398D0();
  result = (*(v26 + 8))(v28, v25);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_10F6DC();
  v32 = v31;
  result = [*(v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player) isStreaming];
  v63 = v32;
  v62 = v20;
  if (!result)
  {
LABEL_6:
    v61 = v24;
    sub_113A8C(v24);
    sub_1149F4(v15);
    v34 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentRoute;
    swift_beginAccess();
    (*(v65 + 16))(v64, v2 + v34, v66);
    v60 = v19;
    sub_1396B0();
    v89 = 0;
    v35 = v78;
    sub_1394D0();
    v36 = v80;
    sub_114F88();
    v37 = v83;
    sub_1152EC(v69, v83);
    v38 = v75;
    v39 = *(v75 + 16);
    v59 = v22;
    v39(v22, v24, v87);
    v40 = v88;
    (*(v88 + 16))(v76, v19, v77);
    v41 = v71;
    (*(v71 + 16))(v79, v35, v82);
    v42 = v73;
    (*(v73 + 16))(v81, v36, v84);
    v43 = v74;
    (*(v74 + 16))(v85, v37, v86);
    v44 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v45 = (v62 + *(v40 + 80) + v44) & ~*(v40 + 80);
    v46 = (v67 + *(v41 + 80) + v45) & ~*(v41 + 80);
    v47 = (v68 + *(v42 + 80) + v46) & ~*(v42 + 80);
    v70 = (v70 + *(v43 + 80) + v47) & ~*(v43 + 80);
    v48 = swift_allocObject();
    v49 = v63;
    *(v48 + 16) = v63;
    (*(v38 + 32))(v48 + v44, v59, v87);
    v50 = v48 + v45;
    v51 = v77;
    (*(v88 + 32))(v50, v76, v77);
    v52 = v48 + v46;
    v53 = v82;
    (*(v41 + 32))(v52, v79, v82);
    v54 = v48 + v47;
    v55 = v84;
    (*(v42 + 32))(v54, v81, v84);
    v56 = v86;
    (*(v43 + 32))(v48 + v70, v85, v86);
    v57 = v49;
    sub_139750();

    (*(v43 + 8))(v83, v56);
    (*(v42 + 8))(v80, v55);
    (*(v41 + 8))(v78, v53);
    (*(v88 + 8))(v60, v51);
    return (*(v75 + 8))(v61, v87);
  }

  v33 = *(v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentBitrate);
  if ((LODWORD(v33) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_8;
  }

  if (v33 <= -2147500000.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v33 < 2147500000.0)
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

void AudiobookAnalyticsRecorder.player(_:audiobookWillChange:)()
{
  if (*(v0 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion))
  {
    sub_10EF30();
  }
}

void sub_1104D4()
{
  v1 = v0;
  v2 = sub_139640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_11B940(&qword_22C908);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - v7;
  v9 = sub_1398C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v12 = sub_139AF0();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = sub_1398D0();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_10F6DC();
  v14 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionTracker;
  v15 = *(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionTracker);
  *(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionTracker) = v16;

  sub_139420();
  v17 = sub_139430();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  v18 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionStartDate;
  swift_beginAccess();
  sub_11D2E8(v8, v1 + v18);
  swift_endAccess();
  v19 = *(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player);
  [v19 positionInCurrentAudiobook];
  *(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionStartMediaTime) = v20;
  [v19 playbackRate];
  *(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionPlaybackRate) = v21;
  sub_10F6DC();
  v23 = v22;
  v24 = sub_139790();

  if ((v24 & 1) == 0)
  {
    (*(v3 + 104))(v5, enum case for DoNotDisturbStatus.unknown(_:), v2);
    v31 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_doNotDisturbStatusAtStart;
    swift_beginAccess();
    (*(v3 + 40))(v1 + v31, v5, v2);
    swift_endAccess();
    v28 = *(v1 + v14);
    if (v28)
    {
      goto LABEL_4;
    }

LABEL_6:
    v30 = 0;
    goto LABEL_7;
  }

  v25 = objc_opt_self();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_11D390;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_112C0C;
  aBlock[3] = &unk_1E67C8;
  v27 = _Block_copy(aBlock);

  [v25 fetchCurrentState:v27];
  _Block_release(v27);
  v28 = *(v1 + v14);
  if (!v28)
  {
    goto LABEL_6;
  }

LABEL_4:
  v29 = v28;
  v30 = sub_139730();

LABEL_7:
  *(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion) = v30;
  swift_unknownObjectRelease();
  v32 = [v19 currentAudiobook];
  *(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionAudiobook) = v32;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v32)
  {
    v33 = [v32 assetID];
    swift_unknownObjectRelease();
    v32 = sub_1399A0();
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionAssetID);
  *v36 = v32;
  v36[1] = v35;

  sub_10F6DC();
  v38 = v37;
  sub_1397D0();
  sub_11EC0C(&qword_22CA20, &type metadata accessor for PlayEvent);
  sub_139770();
}

id sub_110A24()
{
  v1 = v0;
  v2 = sub_11B940(&qword_22C9E0);
  __chkstk_darwin(v2 - 8);
  v92 = &v64 - v3;
  v93 = sub_1397B0();
  v78 = *(v93 - 8);
  v4 = __chkstk_darwin(v93);
  v90 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v5;
  __chkstk_darwin(v4);
  v88 = &v64 - v6;
  v91 = sub_1394E0();
  v77 = *(v91 - 8);
  v7 = __chkstk_darwin(v91);
  v89 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v8;
  __chkstk_darwin(v7);
  v87 = &v64 - v9;
  v73 = sub_139620();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1396D0();
  __chkstk_darwin(v11 - 8);
  v70 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1396C0();
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = __chkstk_darwin(v13);
  v81 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v15;
  __chkstk_darwin(v14);
  v82 = &v64 - v16;
  v17 = sub_139670();
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = *(v83 + 64);
  v19 = __chkstk_darwin(v17);
  v80 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v94 = sub_139500();
  v79 = *(v94 - 8);
  v22 = *(v79 + 64);
  v23 = __chkstk_darwin(v94);
  __chkstk_darwin(v23);
  v25 = &v64 - v24;
  v26 = sub_1398C0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v29 = sub_139AF0();
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v30 = sub_1398D0();
  result = (*(v27 + 8))(v29, v26);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v32 = v1;
  sub_10F6DC();
  v34 = v33;
  result = [*&v1[OBJC_IVAR___AEAudiobookAnalyticsRecorder_player] isStreaming];
  v69 = v34;
  v68 = v18;
  if (!result)
  {
LABEL_6:
    v36 = v25;
    v67 = v25;
    sub_113A8C(v25);
    v96 = 1;
    v66 = v21;
    sub_1146A0(0x100000000, 0x100000000);
    sub_1149F4(v70);
    v37 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentRoute;
    swift_beginAccess();
    (*(v72 + 16))(v71, &v1[v37], v73);
    v38 = v82;
    sub_1396B0();
    v95 = 0;
    v39 = v87;
    sub_1394D0();
    v40 = v88;
    sub_114F88();
    v41 = sub_139AB0();
    (*(*(v41 - 8) + 56))(v92, 1, 1, v41);
    v42 = v79;
    v43 = *(v79 + 16);
    v65 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43(v65, v36, v94);
    v44 = v83;
    (*(v83 + 16))(v80, v21, v84);
    v45 = v85;
    (*(v85 + 16))(v81, v38, v86);
    v46 = v77;
    (*(v77 + 16))(v89, v39, v91);
    v47 = v78;
    (*(v78 + 16))(v90, v40, v93);
    v48 = (*(v42 + 80) + 48) & ~*(v42 + 80);
    v49 = *(v44 + 80);
    v50 = v32;
    v64 = v32;
    v51 = (v22 + v49 + v48) & ~v49;
    v52 = (v68 + *(v45 + 80) + v51) & ~*(v45 + 80);
    v53 = (v74 + *(v46 + 80) + v52) & ~*(v46 + 80);
    v75 = (v75 + *(v47 + 80) + v53) & ~*(v47 + 80);
    v54 = swift_allocObject();
    *(v54 + 2) = 0;
    *(v54 + 3) = 0;
    *(v54 + 4) = v50;
    v55 = v69;
    *(v54 + 5) = v69;
    (*(v42 + 32))(&v54[v48], v65, v94);
    v56 = &v54[v51];
    v57 = v84;
    (*(v44 + 32))(v56, v80, v84);
    v58 = v85;
    v59 = v86;
    (*(v85 + 32))(&v54[v52], v81, v86);
    v60 = v91;
    (*(v46 + 32))(&v54[v53], v89, v91);
    v61 = v93;
    (*(v47 + 32))(&v54[v75], v90, v93);
    v62 = v64;
    v63 = v55;
    sub_117C40(0, 0, v92, &unk_193B98, v54);

    (*(v47 + 8))(v88, v61);
    (*(v46 + 8))(v87, v60);
    (*(v58 + 8))(v82, v59);
    (*(v83 + 8))(v66, v57);
    return (*(v79 + 8))(v67, v94);
  }

  v35 = *&v1[OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentBitrate];
  if ((LODWORD(v35) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_8;
  }

  if (v35 <= -2147500000.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v35 < 2147500000.0)
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id AudiobookAnalyticsRecorder.player(_:playbackRateDidChange:)(float a1)
{
  v2 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionPlaybackRate;
  if (*(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionPlaybackRate) != a1)
  {
    result = sub_111520();
    *(v1 + v2) = a1;
  }

  return result;
}

id sub_111520()
{
  v1 = v0;
  v92 = sub_139690();
  v77 = *(v92 - 8);
  v2 = __chkstk_darwin(v92);
  v91 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v3;
  __chkstk_darwin(v2);
  v89 = &v62 - v4;
  v90 = sub_1397B0();
  v76 = *(v90 - 8);
  v5 = __chkstk_darwin(v90);
  v87 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v6;
  __chkstk_darwin(v5);
  v86 = &v62 - v7;
  v88 = sub_1394E0();
  v74 = *(v88 - 8);
  v8 = __chkstk_darwin(v88);
  v85 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v9;
  __chkstk_darwin(v8);
  v84 = &v62 - v10;
  v70 = sub_139620();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1396D0();
  __chkstk_darwin(v12 - 8);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1396C0();
  v96 = *(v83 - 8);
  v14 = __chkstk_darwin(v83);
  v81 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v15;
  __chkstk_darwin(v14);
  v82 = &v62 - v16;
  v17 = sub_139670();
  v94 = *(v17 - 8);
  v95 = v17;
  v18 = *(v94 + 64);
  v19 = __chkstk_darwin(v17);
  v80 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v93 = sub_139500();
  v79 = *(v93 - 8);
  v22 = *(v79 + 64);
  v23 = __chkstk_darwin(v93);
  v78 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v62 - v24;
  v26 = sub_1398C0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v29 = sub_139AF0();
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v30 = sub_1398D0();
  result = (*(v27 + 8))(v29, v26);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_10F6DC();
  v33 = v32;
  v34 = *(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player);
  result = [v34 isStreaming];
  v66 = v33;
  v65 = v18;
  if (!result)
  {
LABEL_6:
    v36 = v25;
    v64 = v25;
    sub_113A8C(v25);
    [v34 positionInCurrentAudiobook];
    *&v37 = v37;
    v98 = 1;
    v63 = v21;
    sub_1146A0(LODWORD(v37), 0x100000000);
    sub_1149F4(v67);
    v38 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentRoute;
    swift_beginAccess();
    (*(v69 + 16))(v68, v1 + v38, v70);
    v39 = v82;
    sub_1396B0();
    v97 = 0;
    v40 = v84;
    sub_1394D0();
    v41 = v86;
    sub_114F88();
    v42 = v89;
    sub_139680();
    v43 = v79;
    (*(v79 + 16))(v78, v36, v93);
    v44 = v94;
    (*(v94 + 16))(v80, v21, v95);
    v45 = v96;
    (*(v96 + 16))(v81, v39, v83);
    v46 = v74;
    (*(v74 + 16))(v85, v40, v88);
    v47 = v76;
    (*(v76 + 16))(v87, v41, v90);
    v48 = v77;
    (*(v77 + 16))(v91, v42, v92);
    v49 = (*(v43 + 80) + 24) & ~*(v43 + 80);
    v50 = (v22 + *(v44 + 80) + v49) & ~*(v44 + 80);
    v51 = (v65 + *(v45 + 80) + v50) & ~*(v45 + 80);
    v52 = (v71 + *(v46 + 80) + v51) & ~*(v46 + 80);
    v72 = (v72 + *(v47 + 80) + v52) & ~*(v47 + 80);
    v73 = (v73 + *(v48 + 80) + v72) & ~*(v48 + 80);
    v53 = swift_allocObject();
    v54 = v66;
    *(v53 + 16) = v66;
    (*(v43 + 32))(v53 + v49, v78, v93);
    (*(v94 + 32))(v53 + v50, v80, v95);
    v55 = v53 + v51;
    v56 = v83;
    (*(v96 + 32))(v55, v81, v83);
    v57 = v53 + v52;
    v58 = v88;
    (*(v46 + 32))(v57, v85, v88);
    v59 = v90;
    (*(v47 + 32))(v53 + v72, v87, v90);
    v60 = v92;
    (*(v48 + 32))(v53 + v73, v91, v92);
    v61 = v54;
    sub_139750();

    (*(v48 + 8))(v89, v60);
    (*(v47 + 8))(v86, v59);
    (*(v46 + 8))(v84, v58);
    (*(v96 + 8))(v82, v56);
    (*(v94 + 8))(v63, v95);
    return (*(v79 + 8))(v64, v93);
  }

  v35 = *(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentBitrate);
  if ((LODWORD(v35) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_8;
  }

  if (v35 <= -2147500000.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v35 < 2147500000.0)
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id AudiobookAnalyticsRecorder.player(_:isScrubbing:)(void *a1, char a2)
{
  v5 = sub_1395E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    result = [a1 positionInCurrentAudiobook];
    *(v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_skipStartMediaTime) = v10;
  }

  else
  {
    (*(v6 + 104))(v8, enum case for SkipActionType.scrubbing(_:), v5);
    sub_10F99C(v8);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t AudiobookAnalyticsRecorder.player(_:bitRateChangedFrom:to:)(float a1, float a2)
{
  sub_11BF80(0, &qword_22C5A8);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a2;
  *(v5 + 28) = a1;
  v6 = v2;
  sub_139AE0();
}

uint64_t sub_11241C(uint64_t result, float a2, float a3)
{
  *(result + OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentBitrate) = a2;
  if (a2 <= -2147500000.0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >= 2147500000.0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(a3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_10;
  }

  if (a3 <= -2147500000.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a3 < 2147500000.0)
  {
    return sub_1124E4(a2, a3);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1124E4(int a1, uint64_t a2)
{
  v41 = a2;
  LODWORD(v42) = a1;
  v51 = sub_1397B0();
  v46 = *(v51 - 8);
  v2 = __chkstk_darwin(v51);
  v44 = v3;
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v49 = &v38 - v4;
  v50 = sub_1394E0();
  v43 = *(v50 - 8);
  v5 = *(v43 + 64);
  v6 = __chkstk_darwin(v50);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v47 = sub_139500();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v47);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_1398C0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v17 = sub_139AF0();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = sub_1398D0();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    sub_10F6DC();
    v38 = v20;
    v40 = v13;
    sub_113A8C(v13);
    v39 = v8;
    sub_1394D0();
    v42 = v5;
    v21 = v49;
    sub_114F88();
    v22 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v22, v13, v47);
    v23 = v43;
    (*(v43 + 16))(v48, v8, v50);
    v24 = v45;
    v25 = v46;
    (*(v46 + 16))(v45, v21, v51);
    v26 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v27 = (v10 + *(v23 + 80) + v26) & ~*(v23 + 80);
    v28 = (v42 + *(v25 + 80) + v27) & ~*(v25 + 80);
    v29 = swift_allocObject();
    v30 = v38;
    *(v29 + 16) = v38;
    v31 = v22;
    v32 = v47;
    (*(v9 + 32))(v29 + v26, v31, v47);
    v33 = v29 + v27;
    v34 = v50;
    (*(v23 + 32))(v33, v48, v50);
    v35 = v29 + v28;
    v36 = v51;
    (*(v25 + 32))(v35, v24, v51);
    v37 = v30;
    sub_139750();

    (*(v25 + 8))(v49, v36);
    (*(v23 + 8))(v39, v34);
    return (*(v9 + 8))(v40, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_112AB8(char a1)
{
  v2 = sub_139640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = &enum case for DoNotDisturbStatus.on(_:);
    if ((a1 & 1) == 0)
    {
      v8 = &enum case for DoNotDisturbStatus.off(_:);
    }

    (*(v3 + 104))(v5, *v8, v2);
    v9 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_doNotDisturbStatusAtStart;
    swift_beginAccess();
    (*(v3 + 40))(&v7[v9], v5, v2);
    swift_endAccess();
  }
}

uint64_t sub_112C0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_112C60(void *a1)
{
  sub_11BF80(0, &qword_22C5A8);
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_139AE0();
}

uint64_t sub_112CF4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionHost);
  if (v2)
  {
    [v2 listeningSessionWillEnd];
  }

  v3 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion;
  v4 = *(a1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion);
  if (v4)
  {
    [v4 invalidate];
  }

  *(a1 + v3) = 0;

  return swift_unknownObjectRelease();
}

id sub_112D64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v87 = a2;
  v86 = a1;
  v4 = sub_11B940(&qword_22C9E0);
  __chkstk_darwin(v4 - 8);
  v100 = &v71 - v5;
  v101 = sub_1397B0();
  v85 = *(v101 - 8);
  v6 = __chkstk_darwin(v101);
  v98 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  __chkstk_darwin(v6);
  v97 = &v71 - v8;
  v99 = sub_1394E0();
  v84 = *(v99 - 8);
  v9 = __chkstk_darwin(v99);
  v95 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v10;
  __chkstk_darwin(v9);
  v96 = &v71 - v11;
  v80 = sub_139620();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1396D0();
  __chkstk_darwin(v13 - 8);
  v77 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1396C0();
  v93 = *(v15 - 8);
  v94 = v15;
  v16 = __chkstk_darwin(v15);
  v90 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v17;
  __chkstk_darwin(v16);
  v91 = &v71 - v18;
  v103 = sub_139670();
  v92 = *(v103 - 8);
  v19 = *(v92 + 64);
  v20 = __chkstk_darwin(v103);
  v89 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v102 = sub_139500();
  v88 = *(v102 - 8);
  v23 = *(v88 + 64);
  v24 = __chkstk_darwin(v102);
  __chkstk_darwin(v24);
  v26 = &v71 - v25;
  v27 = sub_1398C0();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = (&v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v30 = sub_139AF0();
  (*(v28 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v27);
  v31 = sub_1398D0();
  result = (*(v28 + 8))(v30, v27);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = v3;
  sub_10F6DC();
  v35 = v34;
  v36 = *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_player];
  result = [v36 isStreaming];
  v76 = v35;
  v75 = v19;
  if (!result)
  {
LABEL_6:
    v38 = v26;
    v74 = v26;
    sub_113A8C(v26);
    *&v39 = *&v33[OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionStartMediaTime];
    v40 = v39;
    [v36 positionInCurrentAudiobook];
    *&v41 = v41;
    v105 = 0;
    v42 = v22;
    v73 = v22;
    sub_1146A0(v40, LODWORD(v41));
    sub_1149F4(v77);
    v43 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentRoute;
    swift_beginAccess();
    (*(v79 + 16))(v78, &v33[v43], v80);
    v44 = v91;
    sub_1396B0();
    v104 = 0;
    v45 = v96;
    sub_1394D0();
    v46 = v97;
    sub_114F88();
    v47 = sub_139AB0();
    (*(*(v47 - 8) + 56))(v100, 1, 1, v47);
    v48 = v88;
    v49 = *(v88 + 16);
    v72 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49(v72, v38, v102);
    v50 = v92;
    (*(v92 + 16))(v89, v42, v103);
    v51 = v93;
    (*(v93 + 16))(v90, v44, v94);
    v52 = v84;
    (*(v84 + 16))(v95, v45, v99);
    v53 = v85;
    (*(v85 + 16))(v98, v46, v101);
    v54 = (*(v48 + 80) + 48) & ~*(v48 + 80);
    v55 = v50;
    v56 = (v23 + *(v50 + 80) + v54) & ~*(v50 + 80);
    v57 = *(v51 + 80);
    v71 = v33;
    v58 = (v75 + v57 + v56) & ~v57;
    v59 = (v81 + *(v52 + 80) + v58) & ~*(v52 + 80);
    v82 = (v82 + *(v53 + 80) + v59) & ~*(v53 + 80);
    v83 = (v83 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 2) = 0;
    *(v60 + 3) = 0;
    *(v60 + 4) = v33;
    v61 = v76;
    *(v60 + 5) = v76;
    (*(v48 + 32))(&v60[v54], v72, v102);
    (*(v55 + 32))(&v60[v56], v89, v103);
    v62 = v93;
    v63 = &v60[v58];
    v64 = v94;
    (*(v93 + 32))(v63, v90, v94);
    v65 = v99;
    (*(v52 + 32))(&v60[v59], v95, v99);
    v66 = v101;
    (*(v53 + 32))(&v60[v82], v98, v101);
    v67 = &v60[v83];
    v68 = v87;
    *v67 = v86;
    *(v67 + 1) = v68;
    v69 = v71;
    v70 = v61;

    sub_117C40(0, 0, v100, &unk_193BD8, v60);

    (*(v53 + 8))(v97, v66);
    (*(v52 + 8))(v96, v65);
    (*(v62 + 8))(v91, v64);
    (*(v92 + 8))(v73, v103);
    return (*(v88 + 8))(v74, v102);
  }

  v37 = *&v3[OBJC_IVAR___AEAudiobookAnalyticsRecorder_currentBitrate];
  if ((LODWORD(v37) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_8;
  }

  if (v37 <= -2147500000.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v37 < 2147500000.0)
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_113824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1398C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v7 = sub_139AF0();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_1398D0();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if ([*(v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player) currentAudiobook])
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = 0;
    }

    *(v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionAudiobook) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = [v10 representativeItem];
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 bk_storeID];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 longLongValue];

      if (v14 > 0)
      {
        v15 = &enum case for ContentAcquisitionType.storeBought(_:);
LABEL_14:
        v16 = *v15;
        v17 = sub_1396A0();
        return (*(*(v17 - 8) + 104))(a1, v16, v17);
      }
    }

    else
    {
    }

    v15 = &enum case for ContentAcquisitionType.nonStoreBought(_:);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_113A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_11B940(&qword_22C958);
  __chkstk_darwin(v4 - 8);
  v6 = &v82 - v5;
  v7 = sub_11B940(&qword_22C960);
  __chkstk_darwin(v7 - 8);
  v9 = &v82 - v8;
  v10 = sub_11B940(&qword_22C968);
  __chkstk_darwin(v10 - 8);
  v99 = &v82 - v11;
  v12 = sub_11B940(&qword_22C970);
  __chkstk_darwin(v12 - 8);
  v98 = &v82 - v13;
  v14 = sub_139510();
  v94 = *(v14 - 8);
  __chkstk_darwin(v14);
  v97 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_139800();
  v103 = *(v16 - 8);
  __chkstk_darwin(v16);
  v100 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_11B940(&qword_22C978);
  v19 = __chkstk_darwin(v18 - 8);
  v95 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v102 = &v82 - v21;
  v22 = sub_1398C0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v25 = sub_139AF0();
  (*(v23 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v22);
  v26 = sub_1398D0();
  v28 = *(v23 + 8);
  v27 = v23 + 8;
  v28(v25, v22);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v92 = v14;
  v29 = *(v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player);
  v30 = [v29 currentAudiobook];
  v89 = a1;
  if (v30)
  {
    v31 = [v30 assetID];
    swift_unknownObjectRelease();
    v27 = sub_1399A0();
    v14 = v32;
  }

  else
  {
    v27 = 0;
    v14 = 0xE000000000000000;
  }

  v33 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionHost;
  v34 = *(v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionHost);
  v101 = v2;
  v88 = v6;
  if (v34)
  {
    v35 = v9;
    swift_unknownObjectRetain();
    v36 = sub_139990();
    v37 = v14;
    v38 = v27;
    v39 = [v34 contentPrivateIDForContentID:v36];

    swift_unknownObjectRelease();
    v85 = sub_1399A0();
    v84 = v40;

    v2 = v101;
    v41 = *(v101 + v33);
    if (v41)
    {
      swift_unknownObjectRetain();
      v42 = sub_139990();
      v43 = [v41 contentUserIDForContentID:v42];

      swift_unknownObjectRelease();
      v83 = sub_1399A0();
      v82 = v44;

      v2 = v101;
    }

    else
    {
      v83 = 0;
      v82 = 0;
    }

    v27 = v38;
    v14 = v37;
    v9 = v35;
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v83 = 0;
    v82 = 0;
  }

  v45 = [v29 currentTrack];
  v93 = v9;
  if (!v45 || (v46 = [v45 audiobook], swift_unknownObjectRelease(), !v46))
  {
    v49 = v16;
    i = 0;
    goto LABEL_17;
  }

  v47 = [v46 supplementalContents];
  swift_unknownObjectRelease();
  sub_11BF80(0, &qword_22C998);
  v48 = sub_139A40();

  if (v48 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)); ; i = sub_139C70())
  {
    v49 = v16;

LABEL_17:
    v87 = v27;
    v86 = v14;
    sub_139560();
    v50 = enum case for BooksFeatureFlag.unifiedProductPage(_:);
    v51 = v103;
    v52 = v100;
    v90 = *(v103 + 104);
    v90(v100, enum case for BooksFeatureFlag.unifiedProductPage(_:), v49);
    sub_11EC0C(&qword_22C980, &type metadata accessor for BooksFeatureFlag);
    sub_11BED4();
    v53 = sub_139A00();
    v54 = *(v51 + 8);
    v91 = v49;
    v103 = v51 + 8;
    v54(v52, v49);
    if ((v53 & 1) != 0 && (v55 = v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_dataSource, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()) && (v56 = *(v55 + 8), ObjectType = swift_getObjectType(), v58 = (*(v56 + 8))(ObjectType, v56), swift_unknownObjectRelease(), v58))
    {
      v59 = sub_1394B0();

      v2 = v59 & 1;
    }

    else
    {
      v2 = 2;
    }

    v60 = v100;
    v61 = v50;
    v62 = v91;
    v90(v100, v61, v91);
    v63 = sub_139A00();
    v54(v60, v62);
    if (v63)
    {
      v27 = v101;
      v64 = v101 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_dataSource;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v14 = v93;
      v66 = v102;
      if (Strong && (v67 = *(v64 + 8), v68 = swift_getObjectType(), v69 = (*(v67 + 8))(v68, v67), swift_unknownObjectRelease(), v69))
      {
        sub_1394A0();
        v16 = v70;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v14 = v93;
      v27 = v101;
      v66 = v102;
    }

    (*(v94 + 104))(v97, enum case for ContentType.audiobook(_:), v92);
    v71 = v98;
    sub_113824(v98);
    v72 = sub_1396A0();
    (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
    v73 = sub_1395C0();
    (*(*(v73 - 8) + 56))(v99, 1, 1, v73);
    if (i < 0xFFFFFFFF80000000)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (i <= 0x7FFFFFFF)
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  sub_11D398(v66, v95, &qword_22C978);
  v74 = [objc_opt_self() sharedInstance];
  v75 = [v74 currentAudiobook];

  if (v75)
  {
    v76 = [v75 isSG];
    swift_unknownObjectRelease();
    v77 = sub_1395D0();
    if (v76)
    {
      v78 = &enum case for ProductionType.sgProduction(_:);
    }

    else
    {
      v78 = &enum case for ProductionType.nonSGProduction(_:);
    }

    (*(*(v77 - 8) + 104))(v14, *v78, v77);
  }

  else
  {
    v79 = enum case for ProductionType.unknown(_:);
    v77 = sub_1395D0();
    (*(*(v77 - 8) + 104))(v14, v79, v77);
  }

  sub_1395D0();
  (*(*(v77 - 8) + 56))(v14, 0, 1, v77);
  v80 = sub_1397C0();
  (*(*(v80 - 8) + 56))(v88, 1, 1, v80);
  v104 = 0;
  sub_1394F0();
  return sub_11CE98(v102, &qword_22C978);
}

uint64_t sub_1146A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1398C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_11BF80(0, &qword_22C5A8);
  *v8 = sub_139AF0();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = sub_1398D0();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = *(v3 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player);
    v12 = [v11 currentAudiobook];
    if (v12 && ([v12 duration], v14 = v13, swift_unknownObjectRelease(), (a2 & 0x100000000) == 0))
    {
      v16 = v14;
      v15 = 1;
      if (v16 > 0.0 && *&a2 >= 0.0)
      {
        v15 = v16 < *&a2;
      }
    }

    else
    {
      v15 = 1;
    }

    v17 = [v11 currentAudiobook];
    if (v17)
    {
      v18 = [v17 respondsToSelector:"isAudiobookPreview"];
      swift_unknownObjectRelease();
      if (v18)
      {
        v19 = [v11 currentAudiobook];
        if (v19)
        {
          [v19 isAudiobookPreview];
          swift_unknownObjectRelease();
        }
      }
    }

    [v11 playbackRate];
    [v11 isStreaming];
    v20 = [v11 timeRemainingInBuffer];
    [v20 intValue];

    v21 = [objc_opt_self() sharedApplication];
    [v21 applicationState];

    v22[4] = 0;
    v22[0] = v15;
    return sub_139660();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1149F4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_mediaRemoteAdaptor) currentEvent];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 mediaRemoteOptions];
    if (!v5 || (v6 = v5, v7 = sub_1398F0(), v6, !v7))
    {
      v29 = 0u;
      v30 = 0u;
      sub_11CE98(&v29, &qword_22C8D0);
      v12 = 0;
      v11 = 0;
      goto LABEL_31;
    }

    sub_139BC0();
    if (*(v7 + 16) && (v8 = sub_130194(&v27), (v9 & 1) != 0))
    {
      sub_11C0B4(*(v7 + 56) + 32 * v8, &v29);
      sub_11C060(&v27);

      if (*(&v30 + 1))
      {
        v10 = swift_dynamicCast();
        if (v10)
        {
          v11 = v27;
        }

        else
        {
          v11 = 0;
        }

        if (v10)
        {
          v12 = v28;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_19;
      }
    }

    else
    {

      sub_11C060(&v27);
      v29 = 0u;
      v30 = 0u;
    }

    sub_11CE98(&v29, &qword_22C8D0);
    v12 = 0;
    v11 = 0;
LABEL_19:
    sub_139BC0();
    if (*(v7 + 16))
    {
      v17 = sub_130194(&v27);
      if (v18)
      {
        sub_11C0B4(*(v7 + 56) + 32 * v17, &v29);
        sub_11C060(&v27);

        if (*(&v30 + 1))
        {
          v19 = swift_dynamicCast();
          if (v19)
          {
            v20 = v27;
          }

          else
          {
            v20 = 0;
          }

          if (v19)
          {
            v21 = v28;
          }

          else
          {
            v21 = 0;
          }

          if (!v12)
          {
LABEL_45:
            if (v21)
            {
              v27 = v20;
              v28 = v21;
              *&v29 = 0xD000000000000018;
              *(&v29 + 1) = 0x80000000001850A0;
              sub_11C00C();
              v24 = sub_139B60();

              if (v24)
              {
                v22 = &enum case for ListeningActionSourceType.watch(_:);
                goto LABEL_50;
              }
            }

            else
            {
            }

            v22 = &enum case for ListeningActionSourceType.inApp(_:);
            goto LABEL_50;
          }

LABEL_33:
          if (v12 == 0x80000000001850C0 && v11 == 0xD000000000000014 || (sub_139CC0() & 1) != 0)
          {

            v22 = &enum case for ListeningActionSourceType.nowPlaying(_:);
          }

          else
          {
            v27 = v11;
            v28 = v12;
            *&v29 = 0x79616C50726143;
            *(&v29 + 1) = 0xE700000000000000;
            sub_11C00C();
            if (sub_139B60())
            {

              v22 = &enum case for ListeningActionSourceType.carPlay(_:);
            }

            else
            {
              v27 = v11;
              v28 = v12;
              *&v29 = 0x5043525641;
              *(&v29 + 1) = 0xE500000000000000;
              if (sub_139B60() & 1) != 0 && v21 && (v27 = v20, v28 = v21, *&v29 = 0x70637276415442, *(&v29 + 1) = 0xE700000000000000, (sub_139B60()))
              {

                v22 = &enum case for ListeningActionSourceType.blueTooth(_:);
              }

              else
              {
                v27 = v11;
                v28 = v12;
                *&v29 = 0xD000000000000016;
                *(&v29 + 1) = 0x80000000001850E0;
                v23 = sub_139B60();

                if ((v23 & 1) == 0)
                {
                  goto LABEL_45;
                }

                v22 = &enum case for ListeningActionSourceType.usb(_:);
              }
            }
          }

LABEL_50:
          v25 = *v22;
          v26 = sub_1396D0();
          return (*(*(v26 - 8) + 104))(a1, v25, v26);
        }

LABEL_32:
        sub_11CE98(&v29, &qword_22C8D0);
        v20 = 0;
        v21 = 0;
        if (!v12)
        {
          goto LABEL_45;
        }

        goto LABEL_33;
      }
    }

    sub_11C060(&v27);
LABEL_31:
    v29 = 0u;
    v30 = 0u;
    goto LABEL_32;
  }

  v13 = enum case for ListeningActionSourceType.inApp(_:);
  v14 = sub_1396D0();
  v15 = *(*(v14 - 8) + 104);

  return v15(a1, v13, v14);
}

void sub_114F88()
{
  if ([*(v0 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player) lastError] && (sub_11B940(&qword_22C948), sub_11BF80(0, &qword_22C950), (swift_dynamicCast() & 1) != 0))
  {
    [v2 code];
    sub_139CA0();
    v1 = [v2 description];
    sub_1399A0();

    sub_1397A0();
  }

  else
  {
    sub_1397A0();
  }
}

uint64_t sub_1150D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1395E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 104);
  v8(v7, enum case for SkipActionType.unknown(_:), v4);
  sub_11EC0C(&qword_22CA48, &type metadata accessor for SkipActionType);
  sub_139A10();
  sub_139A10();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    (*(v5 + 8))(v7, v4);

    return (v8)(a2, enum case for SkipActionType.buttonTap(_:), v4);
  }

  v9 = sub_139CC0();
  (*(v5 + 8))(v7, v4);

  if (v9)
  {
    return (v8)(a2, enum case for SkipActionType.buttonTap(_:), v4);
  }

  return (*(v5 + 16))(a2, a1, v4);
}

uint64_t sub_1152EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_1395E0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v42 - v9;
  v51 = sub_1395A0();
  v10 = *(v51 - 8);
  v11 = __chkstk_darwin(v51);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v42 - v14;
  __chkstk_darwin(v13);
  v52 = &v42 - v16;
  v17 = sub_1398C0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11BF80(0, &qword_22C5A8);
  *v20 = sub_139AF0();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v21 = sub_1398D0();
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v23 = v6;
    v44 = a1;
    v24 = *(v3 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player);
    v25 = [v24 skipController];
    v26 = *(v3 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionStartMediaTime);
    [v24 positionInCurrentAudiobook];
    v27 = *(v10 + 104);
    v46 = v23;
    if (v28 >= v26)
    {
      v30 = v51;
      v27(v52, enum case for SkipDirection.forward(_:), v51);
      v29 = enum case for SkipDirection.back(_:);
    }

    else
    {
      v29 = enum case for SkipDirection.back(_:);
      v30 = v51;
      v27(v52, enum case for SkipDirection.back(_:), v51);
    }

    v45 = v5;
    v27(v15, v29, v30);
    sub_11EC0C(&qword_22CA40, &type metadata accessor for SkipDirection);
    sub_139A10();
    sub_139A10();
    v31 = &selRef_backwardSkipTime;
    if ((v55 != v53 || v56 != v54) && (sub_139CC0() & 1) == 0)
    {
      v31 = &selRef_forwardSkipTime;
    }

    v43 = *(v10 + 8);
    v32 = v51;
    v43(v15, v51);

    v33 = *v31;
    v42 = v25;
    [v25 v33];
    v35 = v34;
    v36 = v49;
    sub_1150D8(v44, v49);
    *&v37 = v35;
    v44 = v37;
    v38 = v52;
    (*(v10 + 16))(v47, v52, v32);
    v39 = v45;
    v40 = v46;
    (*(v46 + 16))(v48, v36, v45);
    v41 = [objc_opt_self() sharedApplication];
    [v41 applicationState];

    LOBYTE(v55) = 0;
    sub_139710();

    (*(v40 + 8))(v36, v39);
    return (v43)(v38, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_115880(char a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v6 = sub_139640();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = sub_139600();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v12, a4, v6);
  v17 = &enum case for DoNotDisturbStatus.on(_:);
  if ((a1 & 1) == 0)
  {
    v17 = &enum case for DoNotDisturbStatus.off(_:);
  }

  (*(v7 + 104))(v10, *v17, v6);
  sub_1395F0();
  v20(v16);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_115A70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_115A90, 0, 0);
}

uint64_t sub_115A90()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_115B38;
  v2 = *(v0 + 16);

  return EventReporter.userEmbeddingData()(v2);
}

uint64_t sub_115B38()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_115C6C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_115C6C()
{
  if (qword_22C560 != -1)
  {
    swift_once();
  }

  v1 = sub_139840();
  sub_11CE60(v1, qword_22C568);
  swift_errorRetain();
  v2 = sub_139820();
  v3 = sub_139AD0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = sub_1393F0();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to create UserEmbeddingData: %@", v4, 0xCu);
    sub_11CE98(v5, &qword_22CA18);
  }

  else
  {
  }

  v7 = *(v0 + 16);
  v8 = sub_139630();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_115E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v28;
  v8[17] = v29;
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  v9 = sub_139600();
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v8[20] = *(v10 + 64);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v11 = sub_1397B0();
  v8[23] = v11;
  v12 = *(v11 - 8);
  v8[24] = v12;
  v8[25] = *(v12 + 64);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v13 = sub_1394E0();
  v8[29] = v13;
  v14 = *(v13 - 8);
  v8[30] = v14;
  v8[31] = *(v14 + 64);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v15 = sub_1396C0();
  v8[35] = v15;
  v16 = *(v15 - 8);
  v8[36] = v16;
  v8[37] = *(v16 + 64);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v17 = sub_139670();
  v8[41] = v17;
  v18 = *(v17 - 8);
  v8[42] = v18;
  v8[43] = *(v18 + 64);
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v19 = sub_139500();
  v8[47] = v19;
  v20 = *(v19 - 8);
  v8[48] = v20;
  v8[49] = *(v20 + 64);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v21 = sub_139640();
  v8[53] = v21;
  v22 = *(v21 - 8);
  v8[54] = v22;
  v8[55] = *(v22 + 64);
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  sub_11B940(&qword_22C9E8);
  v23 = swift_task_alloc();
  v8[59] = v23;
  v24 = sub_139630();
  v8[60] = v24;
  v8[61] = *(v24 - 8);
  v8[62] = swift_task_alloc();
  v25 = swift_task_alloc();
  v8[63] = v25;
  *v25 = v8;
  v25[1] = sub_1162EC;

  return sub_115A70(v23);
}

uint64_t sub_1162EC()
{

  return _swift_task_switch(sub_1163E8, 0, 0);
}

uint64_t sub_1163E8()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[59];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_11CE98(v3, &qword_22C9E8);
  }

  else
  {
    v4 = v0[62];
    (*(v2 + 32))(v4, v3, v1);
    sub_11B940(&qword_22C8E8);
    v5 = sub_139490();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1939C0;
    (*(v6 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
    sub_11EC0C(&qword_22C9F0, &type metadata accessor for UserEmbeddingData);
    sub_11EC0C(&qword_22C9F8, &type metadata accessor for UserEmbeddingData);
    sub_139760();

    (*(v2 + 8))(v4, v1);
  }

  v9 = v0[54];
  v103 = v0[53];
  v105 = v0[58];
  v10 = v0[52];
  v113 = v10;
  v76 = v0[51];
  v11 = v0[48];
  v94 = v0[49];
  v13 = v0[46];
  v12 = v0[47];
  v111 = v12;
  v115 = v13;
  v117 = v11;
  v77 = v0[45];
  v14 = v0[42];
  v92 = v0[43];
  v118 = v14;
  v107 = v0[41];
  v125 = v0[40];
  v78 = v0[39];
  v89 = v0[37];
  v109 = v0[35];
  v127 = v0[34];
  v128 = v0[36];
  v80 = v0[33];
  v87 = v0[31];
  v129 = v0[30];
  v121 = v0[28];
  v123 = v0[29];
  v82 = v0[27];
  v85 = v0[25];
  v130 = v0[24];
  v119 = v0[23];
  v15 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_doNotDisturbStatusAtStart;
  v74 = v0[16];
  v75 = v0[17];
  v100 = v0[15];
  v16 = v0[13];
  v72 = v0[14];
  v17 = v0[11];
  v83 = v0[12];
  swift_beginAccess();
  v97 = *(v9 + 16);
  v97(v105, v17 + v15, v103);
  v106 = *(v11 + 16);
  v106(v10, v16, v12);
  v104 = *(v14 + 16);
  v104(v13, v72, v107);
  v18 = *(v128 + 16);
  v18(v125, v100, v109);
  v101 = *(v129 + 16);
  v101(v127, v74, v123);
  v19 = *(v130 + 16);
  v19(v121, v75, v119);
  v106(v76, v10, v12);
  v104(v77, v115, v107);
  v20 = v78;
  v79 = v18;
  v18(v20, v125, v109);
  v101(v80, v127, v123);
  v81 = v19;
  v19(v82, v121, v119);
  v21 = (*(v117 + 80) + 24) & ~*(v117 + 80);
  v22 = (v94 + *(v118 + 80) + v21) & ~*(v118 + 80);
  v23 = (v92 + *(v128 + 80) + v22) & ~*(v128 + 80);
  v24 = (v89 + *(v129 + 80) + v23) & ~*(v129 + 80);
  v25 = (v87 + *(v130 + 80) + v24) & ~*(v130 + 80);
  v90 = v25 + v85;
  v26 = swift_allocObject();
  *(v26 + 16) = v83;
  v95 = v21;
  v27 = v111;
  v117 += 32;
  v112 = *v117;
  (*v117)(v26 + v21, v113, v27);
  v114 = v22;
  v28 = v107;
  v118 += 32;
  v108 = *v118;
  (*v118)(v26 + v22, v115, v28);
  v116 = v23;
  v29 = v109;
  v110 = *(v128 + 32);
  v110(v26 + v23, v125, v29);
  v30 = *(v129 + 32);
  v126 = v24;
  v30(v26 + v24, v127, v123);
  v124 = *(v130 + 32);
  v124(v26 + v25, v121, v119);
  v31 = v83;
  v32 = sub_139790();
  v34 = v0[57];
  v33 = v0[58];
  v35 = v0[53];
  v36 = v0[54];
  if (v32)
  {
    v37 = objc_opt_self();
    v97(v34, v33, v35);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_11C994;
    *(v39 + 24) = v26;
    (*(v36 + 32))(v39 + v38, v34, v35);
    v0[6] = sub_11CE44;
    v0[7] = v39;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_112C0C;
    v0[5] = &unk_1E6750;
    v40 = _Block_copy(v0 + 2);

    [v37 fetchCurrentState:v40];
    _Block_release(v40);
  }

  else
  {
    v84 = v25;
    v41 = v0[56];
    v42 = v0[50];
    v43 = v0[47];
    v44 = v0[44];
    v60 = v0[51];
    v61 = v0[45];
    v86 = v0[41];
    v88 = v0[38];
    v62 = v0[35];
    v63 = v0[39];
    v65 = v0[33];
    v120 = v0[32];
    v64 = v0[29];
    v68 = v0[27];
    v66 = v0[26];
    v122 = v0[23];
    v73 = v30;
    v45 = v0[22];
    v70 = v0[21];
    v67 = v0[19];
    v69 = v0[18];
    v71 = v0[12];
    v97(v34, v33, v35);
    (*(v36 + 104))(v41, enum case for DoNotDisturbStatus.unknown(_:), v35);
    sub_1395F0();
    v106(v42, v60, v43);
    v104(v44, v61, v86);
    v79(v88, v63, v62);
    v101(v120, v65, v64);
    v81(v66, v68, v122);
    (*(v67 + 16))(v70, v45, v69);
    v46 = (v90 + *(v67 + 80)) & ~*(v67 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v71;
    v112(v47 + v95, v42, v43);
    v108(v47 + v114, v44, v86);
    v110(v47 + v116, v88, v62);
    v73(v47 + v126, v120, v64);
    v124(v47 + v84, v66, v122);
    (*(v67 + 32))(v47 + v46, v70, v69);
    v48 = v71;
    sub_139750();

    (*(v67 + 8))(v45, v69);
  }

  v49 = v0[54];
  v99 = v0[53];
  v102 = v0[58];
  v98 = v0[51];
  v50 = v0[48];
  v96 = v0[47];
  v93 = v0[45];
  v51 = v0[42];
  v91 = v0[41];
  v52 = v0[39];
  v54 = v0[35];
  v53 = v0[36];
  v55 = v0[33];
  v56 = v0[29];
  v57 = v0[30];
  (*(v0[24] + 8))();
  (*(v57 + 8))(v55, v56);
  (*(v53 + 8))(v52, v54);
  (*(v51 + 8))(v93, v91);
  (*(v50 + 8))(v98, v96);
  (*(v49 + 8))(v102, v99);

  v58 = v0[1];

  return v58();
}

uint64_t sub_116FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v45 = a7;
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v48 = a2;
  v46 = a1;
  v57 = sub_139600();
  v53 = *(v57 - 8);
  v47 = *(v53 + 64);
  __chkstk_darwin(v57);
  v56 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1397B0();
  v50 = *(v55 - 8);
  v43 = *(v50 + 64);
  __chkstk_darwin(v55);
  v54 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1394E0();
  v49 = *(v52 - 8);
  v39 = *(v49 + 64);
  __chkstk_darwin(v52);
  v51 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1396C0();
  v35 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v38 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_139670();
  v34 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v37 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_139500();
  v16 = *(v33 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v33);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))();
  (*(v14 + 16))(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v13);
  v32 = v11;
  (*(v11 + 16))(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v10);
  v18 = v49;
  (*(v49 + 16))(v51, v44, v52);
  v19 = v50;
  (*(v50 + 16))(v54, v45, v55);
  v20 = v53;
  (*(v53 + 16))(v56, v46, v57);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = (v17 + *(v14 + 80) + v21) & ~*(v14 + 80);
  v23 = (v15 + *(v11 + 80) + v22) & ~*(v11 + 80);
  v24 = (v12 + *(v18 + 80) + v23) & ~*(v18 + 80);
  v25 = (v39 + *(v19 + 80) + v24) & ~*(v19 + 80);
  v26 = (v43 + *(v20 + 80) + v25) & ~*(v20 + 80);
  v27 = swift_allocObject();
  v28 = v48;
  *(v27 + 16) = v48;
  (*(v16 + 32))(v27 + v21, v36, v33);
  (*(v14 + 32))(v27 + v22, v37, v34);
  (*(v32 + 32))(v27 + v23, v38, v35);
  (*(v49 + 32))(v27 + v24, v51, v52);
  (*(v50 + 32))(v27 + v25, v54, v55);
  (*(v53 + 32))(v27 + v26, v56, v57);
  v29 = v28;
  sub_139750();
}

uint64_t sub_117598()
{
  sub_11B940(&qword_22C8E8);
  v11 = sub_139490();
  v0 = *(v11 - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1939C0;
  v3 = enum case for DataEventTrait.onlyOnce(_:);
  v4 = *(v0 + 104);
  v4(v2 + v1, enum case for DataEventTrait.onlyOnce(_:), v11);
  sub_139500();
  sub_11EC0C(&qword_22C910, &type metadata accessor for ContentData);
  sub_11EC0C(&qword_22C918, &type metadata accessor for ContentData);
  sub_139760();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1939C0;
  v4(v5 + v1, v3, v11);
  sub_139670();
  sub_11EC0C(&qword_22C9A0, &type metadata accessor for ListeningSessionData);
  sub_11EC0C(&qword_22C9A8, &type metadata accessor for ListeningSessionData);
  sub_139760();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1939C0;
  v4(v6 + v1, v3, v11);
  sub_1396C0();
  sub_11EC0C(&qword_22C9B0, &type metadata accessor for ListeningActionSourceData);
  sub_11EC0C(&qword_22C9B8, &type metadata accessor for ListeningActionSourceData);
  sub_139760();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1939C0;
  v4(v7 + v1, v3, v11);
  sub_1394E0();
  sub_11EC0C(&qword_22C920, &type metadata accessor for BitRateData);
  sub_11EC0C(&qword_22C928, &type metadata accessor for BitRateData);
  sub_139760();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1939C0;
  v4(v8 + v1, v3, v11);
  sub_1397B0();
  sub_11EC0C(&qword_22C930, &type metadata accessor for ErrorData);
  sub_11EC0C(&qword_22C938, &type metadata accessor for ErrorData);
  sub_139760();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1939C0;
  v4(v9 + v1, v3, v11);
  sub_139600();
  sub_11EC0C(&qword_22CA00, &type metadata accessor for DoNotDisturbData);
  sub_11EC0C(&qword_22CA08, &type metadata accessor for DoNotDisturbData);
  sub_139760();

  sub_139610();
  sub_11EC0C(&qword_22CA10, &type metadata accessor for PlayAttemptEvent);
  return sub_139780();
}

uint64_t sub_117C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_11B940(&qword_22C9E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_11D398(a3, v25 - v10, &qword_22C9E0);
  v12 = sub_139AB0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_11CE98(v11, &qword_22C9E0);
  }

  else
  {
    sub_139AA0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_139A90();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1399D0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_11CE98(a3, &qword_22C9E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_11CE98(a3, &qword_22C9E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_117F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v29;
  *(v8 + 152) = v30;
  *(v8 + 128) = v28;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = sub_139600();
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 + 64);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v11 = sub_1397B0();
  *(v8 + 200) = v11;
  v12 = *(v11 - 8);
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 + 64);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v13 = sub_1394E0();
  *(v8 + 248) = v13;
  v14 = *(v13 - 8);
  *(v8 + 256) = v14;
  *(v8 + 264) = *(v14 + 64);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v15 = sub_1396C0();
  *(v8 + 296) = v15;
  v16 = *(v15 - 8);
  *(v8 + 304) = v16;
  *(v8 + 312) = *(v16 + 64);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v17 = sub_139670();
  *(v8 + 344) = v17;
  v18 = *(v17 - 8);
  *(v8 + 352) = v18;
  *(v8 + 360) = *(v18 + 64);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v19 = sub_139500();
  *(v8 + 392) = v19;
  v20 = *(v19 - 8);
  *(v8 + 400) = v20;
  *(v8 + 408) = *(v20 + 64);
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v21 = sub_139640();
  *(v8 + 440) = v21;
  v22 = *(v21 - 8);
  *(v8 + 448) = v22;
  *(v8 + 456) = *(v22 + 64);
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  sub_11B940(&qword_22C9E8);
  v23 = swift_task_alloc();
  *(v8 + 488) = v23;
  v24 = sub_139630();
  *(v8 + 496) = v24;
  *(v8 + 504) = *(v24 - 8);
  *(v8 + 512) = swift_task_alloc();
  v25 = swift_task_alloc();
  *(v8 + 520) = v25;
  *v25 = v8;
  v25[1] = sub_1183E8;

  return sub_115A70(v23);
}

uint64_t sub_1183E8()
{

  return _swift_task_switch(sub_1184E4, 0, 0);
}

uint64_t sub_1184E4()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[61];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_11CE98(v3, &qword_22C9E8);
  }

  else
  {
    v4 = v0[64];
    (*(v2 + 32))(v4, v3, v1);
    sub_11B940(&qword_22C8E8);
    v5 = sub_139490();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1939C0;
    (*(v6 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
    sub_11EC0C(&qword_22C9F0, &type metadata accessor for UserEmbeddingData);
    sub_11EC0C(&qword_22C9F8, &type metadata accessor for UserEmbeddingData);
    sub_139760();

    (*(v2 + 8))(v4, v1);
  }

  v9 = v0[56];
  v109 = v0[55];
  v111 = v0[60];
  v10 = v0[54];
  v119 = v10;
  v77 = v0[53];
  v11 = v0[50];
  v93 = v0[51];
  v121 = v11;
  v12 = v0[49];
  v117 = v12;
  v129 = v0[48];
  v78 = v0[47];
  v13 = v0[44];
  v91 = v0[45];
  v122 = v13;
  v127 = v0[43];
  v131 = v0[42];
  v79 = v0[41];
  v90 = v0[39];
  v113 = v0[37];
  v133 = v0[36];
  v135 = v0[38];
  v81 = v0[35];
  v88 = v0[33];
  v136 = v0[32];
  v115 = v0[31];
  v125 = v0[30];
  v83 = v0[29];
  v86 = v0[27];
  v137 = v0[26];
  v123 = v0[25];
  v14 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_doNotDisturbStatusAtStart;
  v97 = v0[18];
  v100 = v0[19];
  v75 = v0[16];
  v76 = v0[17];
  v106 = v0[15];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[11];
  v84 = v0[12];
  swift_beginAccess();
  v103 = *(v9 + 16);
  v103(v111, v17 + v14, v109);
  v112 = *(v11 + 16);
  v112(v10, v15, v12);
  v110 = *(v13 + 16);
  v110(v129, v16, v127);
  v18 = *(v135 + 16);
  v18(v131, v106, v113);
  v107 = *(v136 + 16);
  v107(v133, v75, v115);
  v19 = *(v137 + 16);
  v19(v125, v76, v123);
  v112(v77, v10, v117);
  v110(v78, v129, v127);
  v20 = v79;
  v80 = v18;
  v18(v20, v131, v113);
  v107(v81, v133, v115);
  v82 = v19;
  v19(v83, v125, v123);
  v21 = (*(v121 + 80) + 24) & ~*(v121 + 80);
  v22 = (v93 + *(v122 + 80) + v21) & ~*(v122 + 80);
  v23 = (v91 + *(v135 + 80) + v22) & ~*(v135 + 80);
  v24 = (v90 + *(v136 + 80) + v23) & ~*(v136 + 80);
  v25 = (v88 + *(v137 + 80) + v24) & ~*(v137 + 80);
  v89 = v25 + v86;
  v94 = (v25 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v84;
  v92 = v21;
  v27 = v117;
  v121 += 32;
  v118 = *v121;
  (*v121)(v26 + v21, v119, v27);
  v28 = v26;
  v120 = v22;
  v122 += 32;
  v87 = *v122;
  (*v122)(v26 + v22, v129, v127);
  v128 = *(v135 + 32);
  v130 = v23;
  v128(v26 + v23, v131, v113);
  v29 = v133;
  v132 = v24;
  v134 = *(v136 + 32);
  v134(v26 + v24, v29, v115);
  v30 = v125;
  v126 = *(v137 + 32);
  v126(v26 + v25, v30, v123);
  v31 = (v26 + v94);
  *v31 = v97;
  v31[1] = v100;

  v32 = v84;
  v33 = sub_139790();
  v34 = v0[59];
  v35 = v0[60];
  v37 = v0[55];
  v36 = v0[56];
  if (v33)
  {
    v38 = objc_opt_self();
    v103(v34, v35, v37);
    v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = sub_11DD20;
    *(v40 + 24) = v28;
    (*(v36 + 32))(v40 + v39, v34, v37);
    v0[6] = sub_11ECA8;
    v0[7] = v40;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_112C0C;
    v0[5] = &unk_1E68B8;
    v41 = _Block_copy(v0 + 2);

    [v38 fetchCurrentState:v41];
    _Block_release(v41);
  }

  else
  {
    v74 = v25;
    v42 = v0[58];
    v43 = v0[52];
    v44 = v0[49];
    v45 = v0[46];
    v61 = v0[53];
    v62 = v0[43];
    v63 = v0[47];
    v64 = v0[41];
    v95 = v0[40];
    v98 = v0[37];
    v65 = v0[35];
    v101 = v0[34];
    v114 = v0[31];
    v68 = v0[29];
    v116 = v0[28];
    v67 = v0[25];
    v85 = v0[24];
    v124 = v0[23];
    v66 = v0[21];
    v69 = v0[20];
    v70 = v0[22];
    v72 = v0[18];
    v73 = v0[19];
    v71 = v0[12];
    v103(v34, v35, v37);
    (*(v36 + 104))(v42, enum case for DoNotDisturbStatus.unknown(_:), v37);
    sub_1395F0();
    v112(v43, v61, v44);
    v110(v45, v63, v62);
    v80(v95, v64, v98);
    v107(v101, v65, v114);
    v82(v116, v68, v67);
    (*(v66 + 16))(v124, v85, v69);
    v46 = (v89 + *(v66 + 80)) & ~*(v66 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v71;
    v118(v47 + v92, v43, v44);
    v87(v47 + v120, v45, v62);
    v128(v47 + v130, v95, v98);
    v134(v47 + v132, v101, v114);
    v126(v47 + v74, v116, v67);
    (*(v66 + 32))(v47 + v46, v124, v69);
    v48 = (v47 + ((v70 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v48 = v72;
    v48[1] = v73;

    v49 = v71;
    sub_139750();

    (*(v66 + 8))(v85, v69);
  }

  v50 = v0[56];
  v105 = v0[55];
  v108 = v0[60];
  v104 = v0[53];
  v51 = v0[50];
  v102 = v0[49];
  v99 = v0[47];
  v52 = v0[44];
  v96 = v0[43];
  v53 = v0[41];
  v55 = v0[37];
  v54 = v0[38];
  v56 = v0[35];
  v57 = v0[31];
  v58 = v0[32];
  (*(v0[26] + 8))();
  (*(v58 + 8))(v56, v57);
  (*(v54 + 8))(v53, v55);
  (*(v52 + 8))(v99, v96);
  (*(v51 + 8))(v104, v102);
  (*(v50 + 8))(v108, v105);

  v59 = v0[1];

  return v59();
}

uint64_t sub_119108(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a6;
  v51 = a7;
  v47 = a4;
  v48 = a5;
  v46 = a3;
  v54 = a2;
  v52 = a1;
  v55 = a9;
  v56 = a8;
  v64 = sub_139600();
  v61 = *(v64 - 8);
  v53 = *(v61 + 64);
  __chkstk_darwin(v64);
  v63 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1397B0();
  v58 = *(v62 - 8);
  v49 = *(v58 + 64);
  __chkstk_darwin(v62);
  v60 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1394E0();
  v11 = *(v59 - 8);
  v45 = *(v11 + 64);
  __chkstk_darwin(v59);
  v57 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1396C0();
  v40 = v13;
  v14 = *(v13 - 8);
  v44 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v16;
  v17 = sub_139670();
  v39 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v42 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_139500();
  v20 = *(v38 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v38);
  v41 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))();
  (*(v18 + 16))(&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v17);
  v36 = v14;
  (*(v14 + 16))(v16, v48, v13);
  v37 = v11;
  (*(v11 + 16))(v57, v50, v59);
  v22 = v58;
  (*(v58 + 16))(v60, v51, v62);
  v23 = v61;
  (*(v61 + 16))(v63, v52, v64);
  v24 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v25 = (v21 + *(v18 + 80) + v24) & ~*(v18 + 80);
  v26 = (v19 + *(v14 + 80) + v25) & ~*(v14 + 80);
  v27 = (v44 + *(v11 + 80) + v26) & ~*(v11 + 80);
  v28 = (v45 + *(v22 + 80) + v27) & ~*(v22 + 80);
  v52 = (v49 + *(v23 + 80) + v28) & ~*(v23 + 80);
  v29 = (v53 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v54;
  *(v30 + 16) = v54;
  (*(v20 + 32))(v30 + v24, v41, v38);
  (*(v18 + 32))(v30 + v25, v42, v39);
  (*(v36 + 32))(v30 + v26, v43, v40);
  (*(v37 + 32))(v30 + v27, v57, v59);
  (*(v58 + 32))(v30 + v28, v60, v62);
  (*(v61 + 32))(v30 + v52, v63, v64);
  v32 = (v30 + v29);
  v33 = v55;
  *v32 = v56;
  v32[1] = v33;
  v34 = v31;

  sub_139750();
}

uint64_t sub_119714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  sub_11B940(&qword_22C8E8);
  v20 = sub_139490();
  v8 = *(v20 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1939C0;
  v21 = enum case for DataEventTrait.onlyOnce(_:);
  v11 = *(v8 + 104);
  v11(v10 + v9);
  sub_139500();
  sub_11EC0C(&qword_22C910, &type metadata accessor for ContentData);
  sub_11EC0C(&qword_22C918, &type metadata accessor for ContentData);
  sub_139760();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1939C0;
  (v11)(v12 + v9, v21, v20);
  sub_139670();
  sub_11EC0C(&qword_22C9A0, &type metadata accessor for ListeningSessionData);
  sub_11EC0C(&qword_22C9A8, &type metadata accessor for ListeningSessionData);
  sub_139760();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1939C0;
  (v11)(v13 + v9, v21, v20);
  sub_1396C0();
  sub_11EC0C(&qword_22C9B0, &type metadata accessor for ListeningActionSourceData);
  sub_11EC0C(&qword_22C9B8, &type metadata accessor for ListeningActionSourceData);
  sub_139760();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1939C0;
  (v11)(v14 + v9, v21, v20);
  sub_1394E0();
  sub_11EC0C(&qword_22C920, &type metadata accessor for BitRateData);
  sub_11EC0C(&qword_22C928, &type metadata accessor for BitRateData);
  sub_139760();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1939C0;
  (v11)(v15 + v9, v21, v20);
  sub_1397B0();
  sub_11EC0C(&qword_22C930, &type metadata accessor for ErrorData);
  sub_11EC0C(&qword_22C938, &type metadata accessor for ErrorData);
  sub_139760();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1939C0;
  (v11)(v16 + v9, v21, v20);
  sub_139600();
  sub_11EC0C(&qword_22CA00, &type metadata accessor for DoNotDisturbData);
  sub_11EC0C(&qword_22CA08, &type metadata accessor for DoNotDisturbData);
  sub_139760();

  sub_1397D0();
  sub_11EC0C(&qword_22CA20, &type metadata accessor for PlayEvent);
  v17 = sub_139780();
  return a8(v17);
}

uint64_t sub_119DC4()
{
  sub_11B940(&qword_22C8E8);
  v11 = sub_139490();
  v0 = *(v11 - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1939C0;
  v3 = enum case for DataEventTrait.onlyOnce(_:);
  v4 = *(v0 + 104);
  v4(v2 + v1, enum case for DataEventTrait.onlyOnce(_:), v11);
  sub_139500();
  sub_11EC0C(&qword_22C910, &type metadata accessor for ContentData);
  sub_11EC0C(&qword_22C918, &type metadata accessor for ContentData);
  sub_139760();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1939C0;
  v4(v5 + v1, v3, v11);
  sub_139670();
  sub_11EC0C(&qword_22C9A0, &type metadata accessor for ListeningSessionData);
  sub_11EC0C(&qword_22C9A8, &type metadata accessor for ListeningSessionData);
  sub_139760();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1939C0;
  v4(v6 + v1, v3, v11);
  sub_1396C0();
  sub_11EC0C(&qword_22C9B0, &type metadata accessor for ListeningActionSourceData);
  sub_11EC0C(&qword_22C9B8, &type metadata accessor for ListeningActionSourceData);
  sub_139760();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1939C0;
  v4(v7 + v1, v3, v11);
  sub_1394E0();
  sub_11EC0C(&qword_22C920, &type metadata accessor for BitRateData);
  sub_11EC0C(&qword_22C928, &type metadata accessor for BitRateData);
  sub_139760();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1939C0;
  v4(v8 + v1, v3, v11);
  sub_1397B0();
  sub_11EC0C(&qword_22C930, &type metadata accessor for ErrorData);
  sub_11EC0C(&qword_22C938, &type metadata accessor for ErrorData);
  sub_139760();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1939C0;
  v4(v9 + v1, v3, v11);
  sub_139690();
  sub_11EC0C(&qword_22C9C0, &type metadata accessor for AudioPlaybackSpeedData);
  sub_11EC0C(&qword_22C9C8, &type metadata accessor for AudioPlaybackSpeedData);
  sub_139760();

  sub_1396F0();
  sub_11EC0C(&qword_22C9D0, &type metadata accessor for AudioPlaybackSpeedChangeEvent);
  return sub_139780();
}

uint64_t sub_11A46C()
{
  sub_11B940(&qword_22C8E8);
  v10 = sub_139490();
  v0 = *(v10 - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1939C0;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v3 = *(v0 + 104);
  v3(v2 + v1);
  sub_139500();
  sub_11EC0C(&qword_22C910, &type metadata accessor for ContentData);
  sub_11EC0C(&qword_22C918, &type metadata accessor for ContentData);
  sub_139760();

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939C0;
  (v3)(v4 + v1, v9, v10);
  sub_1396C0();
  sub_11EC0C(&qword_22C9B0, &type metadata accessor for ListeningActionSourceData);
  sub_11EC0C(&qword_22C9B8, &type metadata accessor for ListeningActionSourceData);
  sub_139760();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1939C0;
  (v3)(v5 + v1, v9, v10);
  sub_1394E0();
  sub_11EC0C(&qword_22C920, &type metadata accessor for BitRateData);
  sub_11EC0C(&qword_22C928, &type metadata accessor for BitRateData);
  sub_139760();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1939C0;
  (v3)(v6 + v1, v9, v10);
  sub_1397B0();
  sub_11EC0C(&qword_22C930, &type metadata accessor for ErrorData);
  sub_11EC0C(&qword_22C938, &type metadata accessor for ErrorData);
  sub_139760();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1939C0;
  (v3)(v7 + v1, v9, v10);
  sub_139720();
  sub_11EC0C(&qword_22CA28, &type metadata accessor for SkipData);
  sub_11EC0C(&qword_22CA30, &type metadata accessor for SkipData);
  sub_139760();

  sub_1395B0();
  sub_11EC0C(&qword_22CA38, &type metadata accessor for AudioSkipEvent);
  return sub_139780();
}

uint64_t sub_11AA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_11B940(&qword_22C8E8);
  v4 = sub_139490();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1939C0;
  (*(v5 + 104))(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v4);
  sub_139550();
  sub_11EC0C(&qword_22C8F0, &type metadata accessor for CellularData);
  sub_11EC0C(&qword_22C8F8, &type metadata accessor for CellularData);
  sub_139760();

  sub_139650();
  sub_11EC0C(&qword_22C900, &type metadata accessor for CellularToggleEvent);
  sub_139780();
  sub_11BF80(0, &qword_22C5A8);
  *(swift_allocObject() + 16) = a3;
  swift_unknownObjectRetain();
  sub_139AE0();
}

uint64_t sub_11AC98()
{
  sub_11B940(&qword_22C8E8);
  v8 = sub_139490();
  v0 = *(v8 - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1939C0;
  v7 = enum case for DataEventTrait.onlyOnce(_:);
  v6 = *(v0 + 104);
  v6(v2 + v1);
  sub_139500();
  sub_11EC0C(&qword_22C910, &type metadata accessor for ContentData);
  sub_11EC0C(&qword_22C918, &type metadata accessor for ContentData);
  sub_139760();

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1939C0;
  (v6)(v3 + v1, v7, v8);
  sub_1394E0();
  sub_11EC0C(&qword_22C920, &type metadata accessor for BitRateData);
  sub_11EC0C(&qword_22C928, &type metadata accessor for BitRateData);
  sub_139760();

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939C0;
  (v6)(v4 + v1, v7, v8);
  sub_1397B0();
  sub_11EC0C(&qword_22C930, &type metadata accessor for ErrorData);
  sub_11EC0C(&qword_22C938, &type metadata accessor for ErrorData);
  sub_139760();

  sub_1396E0();
  sub_11EC0C(&qword_22C940, &type metadata accessor for StreamingBitrateChangeEvent);
  return sub_139780();
}

uint64_t sub_11B068(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_11B160;

  return v6(a1);
}

uint64_t sub_11B160()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_11B258(void *a1, uint64_t a2)
{
  if ((a2 - 3) >= 2)
  {
    if (a2 == 2 && !*(v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion))
    {
      v6 = [objc_msgSend(a1 "skipController")];
      swift_unknownObjectRelease();
      if ((v6 & 1) == 0 && ([a1 isScrubbing] & 1) == 0)
      {
        sub_1104D4();

        sub_110A24();
      }
    }
  }

  else if (*(v2 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion))
  {
    v4 = [objc_msgSend(a1 "skipController")];
    swift_unknownObjectRelease();
    if ((v4 & 1) == 0 && ([a1 isScrubbing] & 1) == 0)
    {

      sub_10EF30();
    }
  }
}

void sub_11B3A0()
{
  sub_11B764();
  if (v0 <= 0x3F)
  {
    sub_139640();
    if (v1 <= 0x3F)
    {
      sub_139620();
      if (v2 <= 0x3F)
      {
        sub_139700();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_11B764()
{
  if (!qword_22C6C8)
  {
    sub_139430();
    v0 = sub_139B50();
    if (!v1)
    {
      atomic_store(v0, &qword_22C6C8);
    }
  }
}

__n128 sub_11B7D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_11B7F4(uint64_t a1, int a2)
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

uint64_t sub_11B814(uint64_t result, int a2, int a3)
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

__n128 sub_11B850(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_11B85C(uint64_t a1, int a2)
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

uint64_t sub_11B87C(uint64_t result, int a2, int a3)
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

void sub_11B8BC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_11B908()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11B940(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_11B988()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11B9EC()
{
  v1 = sub_139550();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_11BAC4()
{
  v1 = *(sub_139550() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_11AA30(v3, v0 + v2, v4);
}

uint64_t sub_11BB54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_11BB8C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

uint64_t sub_11BBCC()
{
  v17 = sub_139500();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_1394E0();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1397B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_11BDA8()
{
  sub_139500();
  sub_1394E0();
  sub_1397B0();

  return sub_11AC98();
}

unint64_t sub_11BED4()
{
  result = qword_22C988;
  if (!qword_22C988)
  {
    sub_11BF38(&qword_22C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C988);
  }

  return result;
}

uint64_t sub_11BF38(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_11BF80(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_11C00C()
{
  result = qword_22C9D8;
  if (!qword_22C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C9D8);
  }

  return result;
}

uint64_t sub_11C0B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_11C110()
{
  v29 = sub_139500();
  v22 = *(v29 - 8);
  v1 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v25 = *(v22 + 80);
  v26 = v1;
  v2 = *(v22 + 64);
  v28 = sub_139670();
  v3 = *(v28 - 8);
  v4 = *(v3 + 80);
  v5 = (v1 + v2 + v4) & ~v4;
  v23 = v5;
  v6 = *(v3 + 64);
  v27 = sub_1396C0();
  v7 = *(v27 - 8);
  v8 = *(v7 + 80);
  v20 = (v5 + v6 + v8) & ~v8;
  v9 = *(v7 + 64);
  v24 = sub_1394E0();
  v10 = *(v24 - 8);
  v11 = *(v10 + 80);
  v12 = (v20 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v21 = sub_1397B0();
  v14 = *(v21 - 8);
  v15 = *(v14 + 80);
  v16 = (v12 + v13 + v15) & ~v15;
  v19 = *(v14 + 64);
  v17 = v25 | v4 | v8 | v11 | v15;
  swift_unknownObjectRelease();

  (*(v22 + 8))(v0 + v26, v29);
  (*(v3 + 8))(v0 + v23, v28);
  (*(v7 + 8))(v0 + v20, v27);
  (*(v10 + 8))(v0 + v12, v24);
  (*(v14 + 8))(v0 + v16, v21);

  return _swift_deallocObject(v0, v16 + v19, v17 | 7);
}

uint64_t sub_11C418(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_139500() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_139670() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1396C0() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  sub_1394E0();
  sub_1397B0();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = v1[5];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_11EC90;

  return sub_115E4C(a1, v12, v13, v14, v15, v1 + v5, v1 + v8, v1 + v11);
}

uint64_t sub_11C6A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_11EC90;

  return sub_11B068(a1, v4);
}

uint64_t sub_11C75C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11C794(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_11C84C;

  return sub_11B068(a1, v4);
}

uint64_t sub_11C84C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_11C994(uint64_t a1)
{
  v3 = *(sub_139500() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_139670() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1396C0() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1394E0() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_1397B0() - 8);
  v16 = *(v1 + 16);
  v17 = v1 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80));

  return sub_116FE8(a1, v16, v1 + v4, v1 + v7, v1 + v10, v1 + v13, v17);
}

uint64_t sub_11CBD4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_139500() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_139670() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1396C0() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1394E0() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(sub_1397B0() - 8);
  v17 = (v14 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = *(v16 + 64);
  v19 = *(a1(0) - 8);
  v20 = *(v2 + 16);
  v21 = v2 + ((v17 + v18 + *(v19 + 80)) & ~*(v19 + 80));

  return a2(v20, v2 + v5, v2 + v8, v2 + v11, v2 + v14, v2 + v17, v21);
}