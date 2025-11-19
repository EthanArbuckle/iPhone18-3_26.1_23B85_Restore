id sub_1007D1F80(uint64_t a1)
{
  [*(*(a1 + 32) + 72) setActive:(*(a1 + 40) & 1) == 0];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);

  return [v3 setActive:v2];
}

id sub_1007D2514(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = *&CGAffineTransformIdentity.c;
  v6[0] = *&CGAffineTransformIdentity.a;
  v6[1] = v3;
  v6[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v6];
  v4 = [*(*(a1 + 32) + 32) layer];
  [v4 setAnchorPoint:{0.5, 0.5}];

  [*(a1 + 32) updateTheme];
  if ([*(a1 + 40) length])
  {
    [*(*(a1 + 32) + 32) setText:*(a1 + 40)];
  }

  return [*(a1 + 32) layoutIfNeeded];
}

id sub_1007D25C0(void *a1)
{
  [*(a1[4] + 32) setText:a1[5]];
  result = a1[6];
  if (result)
  {

    return [result setActive:0];
  }

  return result;
}

id sub_1007D36F4()
{
  if (qword_10195D878 != -1)
  {
    dispatch_once(&qword_10195D878, &stru_10162A670);
  }

  v1 = qword_10195D870;

  return v1;
}

void sub_1007D3748(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFVIOSessionDistanceMonitor");
  v2 = qword_10195D870;
  qword_10195D870 = v1;
}

void sub_1007D3834(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = *(a1 + 40);
    v4 = +[MKLocationManager sharedLocationManager];
    v5 = v4;
    if (v3 == 1)
    {
      [v4 startLocationUpdateWithObserver:v6];
    }

    else
    {
      [v4 stopLocationUpdateWithObserver:v6];
    }

    WeakRetained = v6;
  }
}

id sub_1007D50F0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [*(a1 + 32) reportID];
  v4 = [NSString stringWithFormat:@"'%@'", v3];
  v5 = [UIImage systemImageNamed:@"doc.on.doc"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007D5254;
  v9[3] = &unk_101658910;
  v10 = *(a1 + 32);
  v6 = [UIAction actionWithTitle:v4 image:v5 identifier:0 handler:v9];
  [v2 addObject:v6];

  v7 = [UIMenu menuWithChildren:v2];

  return v7;
}

void sub_1007D5254(uint64_t a1)
{
  v2 = [*(a1 + 32) reportID];
  if ([v2 length])
  {
    v1 = +[UIPasteboard generalPasteboard];
    [v1 setString:v2];
  }
}

void sub_1007D5F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, char a33)
{
  objc_destroyWeak((v33 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D5F58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007D5F70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = +[SectionHeaderCollectionReusableView reuseIdentifier];
    v5 = [v3 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v4 forIndexPath:*(a1 + 40)];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = +[SectionHeaderCollectionReusableView reuseIdentifier];
    [*(*(*(a1 + 56) + 8) + 40) setAccessibilityIdentifier:v8];

    v9 = [*(a1 + 48) string];
    [*(*(*(a1 + 56) + 8) + 40) setTitle:v9];

    [*(*(*(a1 + 56) + 8) + 40) setShowsBottomHairline:0];
    [*(*(*(a1 + 56) + 8) + 40) setFirstNonEmptySection:*(a1 + 48) != 0];
    if (!*(a1 + 48))
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 72);
    switch(v10)
    {
      case 4:
        v11 = 178;
        break;
      case 3:
        if (WeakRetained[177] != 1)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      case 2:
        v11 = 176;
        break;
      default:
LABEL_12:
        [*(*(*(a1 + 56) + 8) + 40) setNeedsLayout];
        [*(*(*(a1 + 56) + 8) + 40) layoutIfNeeded];
        goto LABEL_13;
    }

    if (WeakRetained[v11])
    {
LABEL_11:
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"More [RAP In Review Section]" value:@"localized string not found" table:0];

      v14 = *(*(*(a1 + 56) + 8) + 40);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1007D62E8;
      v16[3] = &unk_101661650;
      v15 = *(a1 + 72);
      v16[4] = WeakRetained;
      v16[5] = v15;
      [v14 setActionTitle:v13 completionHandler:v16];

      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
}

id sub_1007D61A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v6 forIndexPath:*(a1 + 40)];

  v8 = [[UserProfileSectionFooterViewModel alloc] initWithContentString:v4];
  v9 = [v4 length];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) numberOfSections];
    v10 = v11 != [*(a1 + 40) section] + 1;
  }

  [(UserProfileSectionFooterViewModel *)v8 setCollapsed:v10];
  if (!*(a1 + 56))
  {
    [(UserProfileSectionFooterViewModel *)v8 setContainsLink:1];
    [(UserProfileSectionFooterViewModel *)v8 setTarget:*(a1 + 48)];
    [(UserProfileSectionFooterViewModel *)v8 setAction:"privacyTextTapped"];
  }

  [v7 configureWithViewModel:v8];
  [v7 setNeedsLayout];
  [v7 layoutIfNeeded];

  return v7;
}

void sub_1007D75B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1007D75DC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _layoutManagerDidLoadLayoutItems:v5];
  }
}

id sub_1007D7FB4()
{
  if (qword_10195D888 != -1)
  {
    dispatch_once(&qword_10195D888, &stru_10162A7E8);
  }

  v1 = qword_10195D880;

  return v1;
}

NSString *__cdecl sub_1007D8008(id a1, GEOComposedRoute *a2, unint64_t a3)
{
  v3 = [(GEOComposedRoute *)a2 uniqueRouteID];
  v4 = [v3 UUIDString];

  return v4;
}

void sub_1007D8058(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RouteAnnotationsResponder");
  v2 = qword_10195D880;
  qword_10195D880 = v1;
}

GEOComposedRoute *__cdecl sub_1007D809C(id a1, NSArray *a2, GEOComposedRoute *a3)
{
  v4 = a2;
  v5 = sub_1007D8124(v4, v4, a3);
  if (!v5)
  {
    v6 = [(NSArray *)v4 sortedArrayUsingComparator:&stru_10162A778];
    v5 = [v6 firstObject];
  }

  return v5;
}

id sub_1007D8124(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && (v6 = [v4 indexOfObject:v5], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [v4 objectAtIndexedSubscript:{(v6 + 1) % objc_msgSend(v4, "count")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

int64_t sub_1007D81C0(id a1, GEOComposedRoute *a2, GEOComposedRoute *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInt:[(GEOComposedRoute *)a2 expectedTime]];
  v6 = [(GEOComposedRoute *)v4 expectedTime];

  v7 = [NSNumber numberWithUnsignedInt:v6];
  v8 = [v5 compare:v7];

  return v8;
}

void *sub_1007D8258(void *a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007D8310;
  v5[3] = &unk_10162A7C8;
  v6 = a1;
  v1 = v6;
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

id sub_1007D8310(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = sub_1007D8124(v5, v5, a3);
  if (!v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1007D83F8;
    v9[3] = &unk_10162A7A0;
    v10 = *(a1 + 32);
    v7 = [v5 sortedArrayUsingComparator:v9];
    v6 = [v7 firstObject];
  }

  return v6;
}

id sub_1007D83F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 displayETAInfoForRoute:a2];
  v8 = [v7 displayRemainingMinutesToEndOfRoute];

  v9 = [*(a1 + 32) displayETAInfoForRoute:v6];

  v10 = [v9 displayRemainingMinutesToEndOfRoute];
  v11 = [NSNumber numberWithUnsignedInteger:v8];
  v12 = [NSNumber numberWithUnsignedInteger:v10];
  v13 = [v11 compare:v12];

  return v13;
}

void sub_1007D91D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46)
{
  objc_destroyWeak(&a46);
  objc_destroyWeak((v46 - 224));
  objc_destroyWeak((v46 - 216));
  _Unwind_Resume(a1);
}

void sub_1007D9208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invokeSelectionWithSourceType:1];
    WeakRetained = v2;
  }
}

void sub_1007D9250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invokeSelectionWithSourceType:2];
    WeakRetained = v2;
  }
}

void sub_1007DB604(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  [WeakRetained popContainee];
}

void sub_1007DB650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  [WeakRetained pushContainee];
}

void sub_1007DB69C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  [WeakRetained popContext];
}

void sub_1007DB6E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  [WeakRetained pushContext:objc_opt_class()];
}

void sub_1007DB748(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  [WeakRetained pushContext:objc_opt_class()];
}

void sub_1007DB7A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  [WeakRetained pushContextWithFloatingControls:0];
}

id sub_1007DB7F8(uint64_t a1)
{
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = +[UIColor whiteColor];
  [v2 setTextColor:v3];

  [v2 setTextAlignment:1];
  v4 = [UIFont boldSystemFontOfSize:17.0];
  [v2 setFont:v4];

  v5 = [*(a1 + 32) title];
  [v2 setText:v5];

  LODWORD(v6) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v7];

  return v2;
}

void sub_1007DB908(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 heightAnchor];
  v3 = [v4 constraintGreaterThanOrEqualToConstant:40.0];
  [v2 addObject:v3];
}

void sub_1007DB978(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 heightAnchor];
  v3 = [v4 constraintGreaterThanOrEqualToConstant:40.0];
  [v2 addObject:v3];
}

void sub_1007DB9E8(id a1, UIButton *a2, unint64_t a3, BOOL *a4)
{
  v7 = a2;
  [(UIButton *)v7 _setContinuousCornerRadius:8.0];
  [(UIButton *)v7 setClipsToBounds:1];
  v4 = +[UIColor whiteColor];
  [(UIButton *)v7 setBackgroundColor:v4];

  v5 = [(UIButton *)v7 titleLabel];
  [v5 setNumberOfLines:2];

  LODWORD(v6) = 1148846080;
  [(UIButton *)v7 setContentCompressionResistancePriority:1 forAxis:v6];
}

void sub_1007DC670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007DC690(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_1007DD214(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _debug_datasetId];
  v5 = [NSString stringWithFormat:@"Dataset Id: %@", v4];
  v6 = [v3 addEmptySectionBannerRowWithTitle:v5];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1007DE334;
  v10[3] = &unk_101658E28;
  v11 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007DE384;
  v8[3] = &unk_10165EF00;
  v9 = *(a1 + 32);
  v7 = [v3 addTextFieldRowWithTitle:@"Bucket Id:" placeholderText:0 inputType:1 get:v10 set:v8];
}

id sub_1007DD378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007DD3FC;
  v6[3] = &unk_10162A9A0;
  v6[4] = a2;
  v7 = a3;
  return [v4 addSectionWithTitle:a4 content:v6];
}

id sub_1007DD3FC(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007DD4D4;
  v5[3] = &unk_10162A960;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007DD534;
  v3[3] = &unk_10162A980;
  v3[4] = v6;
  v4 = v7;
  return [a2 addTextFieldRowWithTitle:0 placeholderText:0 inputType:0 get:v5 set:v3];
}

id sub_1007DD4D4(uint64_t a1)
{
  v2 = +[GEOExperimentConfiguration sharedConfiguration];
  v3 = [v2 _debug_customQuerySubstringForType:*(a1 + 32) dispatcherRequestType:*(a1 + 40)];

  return v3;
}

void sub_1007DD534(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  [v4 _debug_setCustomQuerySubstring:v3 forExperimentType:*(a1 + 32) dispatcherRequestType:*(a1 + 40)];
}

void sub_1007DD5AC(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addNavigationRowForViewControllerClass:objc_opt_class()];
}

void sub_1007DD6C4(uint64_t a1, void *a2)
{
  v18 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v25;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = [v6 name];
        v8 = [v6 identifier];
        v9 = [NSString stringWithFormat:@"%@ (%@)", v7, v8];

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v6 branches];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          while (2)
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v20 + 1) + 8 * j) isActive])
              {

                [NSString stringWithFormat:@"🔵 %@", v9];
                v9 = v10 = v9;
                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1007DD958;
        v19[3] = &unk_101658F18;
        v19[4] = v6;
        v15 = [v18 addNavigationRowWithTitle:v9 viewControllerContent:v19];
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }
}

id sub_1007DD958(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007DD9DC;
  v3[3] = &unk_1016612C8;
  v3[4] = *(a1 + 32);
  return [a2 addSectionWithTitle:@"Branches" content:v3];
}

void sub_1007DD9DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) branches];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v8 label];
        v11 = [NSString stringWithFormat:@"%@ (%@)", v9, v10];

        if ([v8 isActive])
        {
          v12 = [NSString stringWithFormat:@"🔵 %@", v11];

          v11 = v12;
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1007DDBD8;
        v15[3] = &unk_101658F18;
        v15[4] = v8;
        v13 = [v3 addNavigationRowWithTitle:v11 viewControllerContent:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

void sub_1007DDBD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007DDD74;
  v13[3] = &unk_1016612C8;
  v13[4] = *(a1 + 32);
  v4 = [v3 addSectionWithTitle:0 content:v13];
  v5 = +[GEOExperimentConfiguration sharedConfiguration];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007DDE3C;
  v11[3] = &unk_10162A9F0;
  v11[4] = *(a1 + 32);
  v6 = v3;
  v12 = v6;
  [v5 _debug_forEachExperimentType:v11];

  v7 = [*(a1 + 32) clientConfigValues];
  if ([v7 count])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1007DDF14;
    v9[3] = &unk_1016612C8;
    v10 = v7;
    v8 = [v6 addSectionWithTitle:@"Client Keys" content:v9];
  }
}

id sub_1007DDD74(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007DE0A0;
  v4[3] = &unk_101651FD0;
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007DE0A8;
  v3[3] = &unk_101661738;
  v3[4] = v5;
  return [a2 addSwitchRowWithTitle:@"Active" get:v4 set:v3];
}

void sub_1007DDE3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [*(a1 + 32) querySubstringForType:a2 dispatcherRequestType:a3];
  if ([v8 length])
  {
    v9 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1007DE078;
    v11[3] = &unk_1016612C8;
    v12 = v8;
    v10 = [v9 addSectionWithTitle:v7 content:v11];
  }
}

void sub_1007DDF14(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
        v10 = [NSString stringWithFormat:@"%@ = %@", v8, v9];

        v11 = [v3 addEmptySectionBannerRowWithTitle:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_1007DE0A8(uint64_t a1, int a2)
{
  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  if (a2)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  [v4 _debug_setActiveExperimentBranch:v5];
}

void sub_1007DE1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007DE208(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007DE2C0;
  v5[3] = &unk_101661340;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1007DE2C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 12, *(a1 + 32));
    [v3 rebuildSections];
    WeakRetained = v3;
  }
}

id sub_1007DE334(uint64_t a1)
{
  v1 = [*(a1 + 32) _debug_bucketId];
  v2 = [v1 stringValue];

  return v2;
}

void sub_1007DE384(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v7 = @"bucketId";
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 integerValue]);
    v8 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [v2 _debug_setBucketIdDictionaryRepresentation:v4];

    v5 = +[GEOMapService sharedService];
    v6 = [v5 ticketForDatasetCheckWithTraits:0];

    [v6 submitWithHandler:&stru_10162A900 networkActivity:&stru_10162A920];
  }
}

void sub_1007DE498(id a1, MapsDebugTableSection *a2)
{
  v8 = a2;
  v2 = [(MapsDebugTableSection *)v8 addButtonRowWithTitle:@"Refresh Experiments Config" action:&stru_10162A8E0];
  v3 = +[GEOExperimentConfiguration sharedConfiguration];
  v4 = [v3 _debug_configurationDate];

  if (v4)
  {
    v5 = objc_alloc_init(NSDateFormatter);
    [v5 setDateStyle:1];
    [v5 setTimeStyle:2];
    v6 = [v5 stringFromDate:v4];
    v7 = [NSString stringWithFormat:@"Last updated: %@", v6];
    [(MapsDebugTableSection *)v8 setFooter:v7];
  }
}

void sub_1007DE598(id a1)
{
  v1 = +[GEOExperimentConfiguration sharedConfiguration];
  [v1 _debug_forceUpdate];
}

void sub_1007DE844(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a2 values];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      (*(*(a1 + 32) + 16))();
      if (*a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_1007DEBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007DEBC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1007DEBDC(uint64_t a1, void *a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007DEC54;
  v4[3] = &unk_10162AA40;
  v4[4] = *(a1 + 32);
  v4[5] = a3;
  return [a2 enumerateValidComponentValuesOfType:6 usingBlock:v4];
}

void sub_1007DEC54(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = [a2 thirdPartyPhotoSharingPreferences];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 40);
  *a3 = *(*(*(a1 + 32) + 8) + 40) != 0;
  *v8 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_1007DEDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1007DEDD4(uint64_t a1, void *a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007DEE4C;
  v4[3] = &unk_10162AA40;
  v4[4] = *(a1 + 32);
  v4[5] = a3;
  return [a2 enumerateValidComponentValuesOfType:7 usingBlock:v4];
}

void sub_1007DEE4C(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = [a2 photoAttributionPreferences];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 40);
  *a3 = *(*(*(a1 + 32) + 8) + 40) != 0;
  *v8 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_1007E1068(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) lockScreenWindow];
  [v2 setRootViewController:v1];
}

void sub_1007E14EC(uint64_t a1)
{
  v2 = [*(a1 + 32) lockScreenWindow];
  [v2 setRootViewController:0];

  [*(a1 + 32) setLockScreenWindow:0];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) window];
  [v4 setRootViewController:v3];
}

void sub_1007E1AEC(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  [v2 setRootViewController:0];

  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) lockScreenWindow];
  [v4 setRootViewController:v3];
}

void sub_1007E1CD8(id a1)
{
  byte_10195D8B0 = GEOConfigGetBOOL();
  v1 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/Utils/RideBookingUtils.m");
    v3 = [NSString alloc];
    v4 = [v3 initWithFormat:@"isRidebookingOverridenOniPad: %d", byte_10195D8B0];
    *buf = 136315394;
    v7 = v2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  byte_10195D8B1 = MGGetSInt32Answer() == 3;
  v5 = _GEOConfigAddBlockListenerForKey();
}

void sub_1007E1E98(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195D898;
  qword_10195D898 = v1;
}

void sub_1007E23C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E2404(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1007E241C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1007E2450(void *a1)
{
  v2 = [*(a1[4] + 16) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_retainBlock(*(a1[4] + 8));
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1007E2864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1007E28A4(void *a1)
{
  v2 = [*(a1[4] + 16) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_retainBlock(*(a1[4] + 8));
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1007E29D8(uint64_t a1)
{
  if (!*(*(a1 + 32) + 40))
  {
    v2 = sub_100798A3C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 16);
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Creating private route updater for routes: %@", &v9, 0xCu);
    }

    v4 = [[GEOTransitRouteUpdater alloc] initWithDelegate:*(a1 + 32) andInitialTTL:15.0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(*(a1 + 32) + 40) setRequests:*(*(a1 + 32) + 24)];
    v7 = *(a1 + 32);
    if (*(v7 + 8))
    {
      v8 = +[MKApplicationStateMonitor sharedInstance];
      [*(*(a1 + 32) + 40) setActive:{objc_msgSend(v8, "isInBackground") ^ 1}];
    }

    else
    {
      [*(v7 + 40) setActive:0];
    }
  }
}

void sub_1007E2C14(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = sub_100798A3C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 16);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Destroying private route updater to observe navd for routes: %@", &v6, 0xCu);
    }

    [*(*(a1 + 32) + 40) setActive:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void sub_1007E2ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007E2EF0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1007E307C(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = sub_100798A3C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 16);
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Resuming realtime updates in private route updater for routes: %@", &v9, 0xCu);
    }

    [*(*(a1 + 32) + 40) setActive:1];
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    v5 = [v4 state];

    if (v5 == 2)
    {
      v6 = sub_100798A3C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(*(a1 + 32) + 16);
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Resuming realtime updates in navd for routes: %@", &v9, 0xCu);
      }

      v8 = +[MNNavigationService sharedService];
      [v8 resumeRealtimeUpdates];
    }
  }
}

void sub_1007E325C(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = sub_100798A3C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 16);
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Pausing realtime updates in private route updater for routes: %@", &v9, 0xCu);
    }

    [*(*(a1 + 32) + 40) setActive:0];
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    v5 = [v4 state];

    if (v5 == 2)
    {
      v6 = sub_100798A3C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(*(a1 + 32) + 16);
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Pausing realtime updates in navd for routes: %@", &v9, 0xCu);
      }

      v8 = +[MNNavigationService sharedService];
      [v8 pauseRealtimeUpdates];
    }
  }
}

void sub_1007E34B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007E34C8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8) == 0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v1 = *(a1 + 32);
    v2 = *(v1 + 8);
    *(v1 + 8) = 0;
  }
}

void sub_1007E35FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007E3614(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 8) != 0;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;
  }
}

void sub_1007E39F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8)
  {
    v9 = objc_alloc_init(GEORPCorrectedSearch);
    [*(a1 + 32) applyToCorrectedSearch:v9];
    [v8 setCorrectedSearchTemplate:v9];
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1007E3B28;
    v11[3] = &unk_10162AB70;
    v12 = v8;
    v13 = v6;
    [RAPAuxiliaryControlsRecorder fetchCurrentlyConnectedControlsRecordingOrigin:v10 completion:v11];
  }
}

void sub_1007E3B28(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 auxiliaryControls];
  v4 = [v3 mutableCopy];
  [*(a1 + 32) setAuxiliaryControls:v4];

  if ([v5 hasOriginatingAuxiliaryControlIndex])
  {
    [*(a1 + 32) setOriginatingAuxiliaryControlIndex:{objc_msgSend(v5, "originatingAuxiliaryControlIndex")}];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1007E47CC(id a1)
{
  v1 = objc_alloc_init(MacPlacePhotoViewerScene);
  v2 = qword_10195D8B8;
  qword_10195D8B8 = v1;
}

id sub_1007E68A8(void *a1)
{
  v1 = a1;
  v2 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = +[UIColor systemBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = [v1 traitCollection];
  [UISegmentedControl _cornerRadiusForTraitCollection:v4 size:0];
  [v2 _setContinuousCornerRadius:?];

  v5 = +[UIScreen mainScreen];
  [v5 nativeScale];
  v7 = 1.0 / v6;

  v8 = [v2 layer];
  [v8 setBorderWidth:v7];

  v9 = [v2 theme];
  v10 = [v9 hairlineColor];
  v11 = [v10 CGColor];
  v12 = [v2 layer];
  [v12 setBorderColor:v11];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v1];
  v26 = [v1 leadingAnchor];
  v25 = [v2 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:9.0];
  v27[0] = v24;
  v23 = [v1 trailingAnchor];
  v13 = [v2 trailingAnchor];
  v14 = [v23 constraintEqualToAnchor:v13 constant:-9.0];
  v27[1] = v14;
  v15 = [v1 topAnchor];
  v16 = [v2 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:9.0];
  v27[2] = v17;
  v18 = [v1 bottomAnchor];

  v19 = [v2 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-9.0];
  v27[3] = v20;
  v21 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v21];

  return v2;
}

uint64_t sub_1007E6F74(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(GEOComposedWaypoint);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || ![v13 readFrom:a2])
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id sub_1007E8FAC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32) - 1;
  v3 = sub_100798874();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will reroute, routeIndex: %lu", &v5, 0xCu);
  }

  return [*(a1 + 32) _replaceUserPathWithRouteIndex:v2 stepIndex:objc_msgSend(*(*(a1 + 32) + 80) traversal:{"stepIndex"), 2}];
}

void *sub_1007E910C(void *result)
{
  v1 = *(result[4] + 32);
  if (v1)
  {
    v2 = result;
    if (result[5] <= 0x7FFFFFFFFFFFFFFEuLL)
    {
      v3 = v1 - 1;
      v4 = sub_100798874();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = v2[5];
        v6 = v2[6];
        v8 = 134218496;
        v9 = v3;
        v10 = 2048;
        v11 = v5;
        v12 = 2048;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Route %lu did update step: %lu, segment: %lu", &v8, 0x20u);
      }

      v7 = 0;
      do
      {
        result = [v2[4] _replaceUserPathWithRouteIndex:v3 stepIndex:v7++ traversal:1];
      }

      while (v7 <= v2[5]);
    }
  }

  return result;
}

void sub_1007E9418(uint64_t a1)
{
  v2 = [*(a1 + 40) routeMatch];
  [*(a1 + 32) setLastGoodLocation:v2];
}

void sub_1007E9628(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1007E9760(uint64_t a1)
{
  v2 = objc_alloc_init(RAPDirectionsRecording);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  *(*(a1 + 32) + 32) = [*(*(a1 + 32) + 24) directionsResponsesCount];
  v5 = sub_100798874();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "clearAll: num recorded routes = %lu", &v7, 0xCu);
  }
}

void sub_1007E98F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) geoWaypointRoute];
  [v2 addRoute:v3];

  v4 = *(*(a1 + 32) + 32) - 1;
  v5 = sub_100798874();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) uniqueRouteID];
    v10 = 138412546;
    v11 = v6;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Recorded new Route with ID: %@ routeIndex: %lu", &v10, 0x16u);
  }

  for (i = *(a1 + 48); ; ++i)
  {
    v8 = [*(a1 + 40) steps];
    v9 = [v8 count];

    if (i >= v9)
    {
      break;
    }

    [*(a1 + 32) _storeUserPathWithRouteIndex:v4 stepIndex:i];
  }
}

void sub_1007E9ADC(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addDirectionsResponses:*(a1 + 40)];
  *(*(a1 + 32) + 32) = [*(*(a1 + 32) + 24) directionsResponsesCount];
  v2 = sub_100798874();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 32);
    v5 = 134218240;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "recordNewResponse: %p _numRecordedRoutes: %lu", &v5, 0x16u);
  }
}

void sub_1007E9C50(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addDirectionsRequests:*(a1 + 40)];
  v2 = sub_100798874();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "recordNewRequest: %p", &v4, 0xCu);
  }
}

id sub_1007E9E3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 updateFromGEOComposedWaypoint:v3];

  v5 = [*(a1 + 32) _userSearchInputForWaypoint:v4];

  return v5;
}

void sub_1007E9EB8(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(*(a1 + 32) + 24) setWaypoints:v2];

  v6 = objc_alloc_init(GEORPCorrectedSearch);
  [*(a1 + 48) applyToCorrectedSearch:v6];
  [*(*(a1 + 32) + 24) setStartWaypointCorrectedSearchTemplate:v6];
  v3 = [*(a1 + 40) firstObject];
  [*(*(a1 + 32) + 24) setStartWaypoint:v3];

  v4 = objc_alloc_init(GEORPCorrectedSearch);
  [*(a1 + 56) applyToCorrectedSearch:v4];
  [*(*(a1 + 32) + 24) setEndWaypointCorrectedSearchTemplate:v4];
  v5 = [*(a1 + 40) lastObject];
  [*(*(a1 + 32) + 24) setEndWaypoint:v5];
}

void sub_1007EA3E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(a1 + 56) != 1)
    {
LABEL_5:
      v14 = [v2 directionsResponseID];
      v4 = [*(*(a1 + 40) + 24) directionsResponses];
      v5 = [v4 count];

      if (!v5)
      {
        goto LABEL_14;
      }

      v6 = 0;
      while (1)
      {
        v7 = [*(*(a1 + 40) + 24) directionsResponses];
        v8 = [v7 objectAtIndexedSubscript:v6];

        v9 = [v8 directionsResponseID];
        v10 = [v9 isEqual:v14];

        if (v10)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_14;
        }
      }

      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(*(a1 + 40) + 24) setSelectedDirectionsResponseIndex:v6];
        if (*(a1 + 56) == 1)
        {
          v12 = [*(a1 + 32) indexOfSuggestedRoute];
        }

        else
        {
          v13 = [*(a1 + 48) indexOfObject:*(a1 + 32)];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = 0;
          }

          else
          {
            v12 = v13;
          }
        }

        [*(*(a1 + 40) + 24) setSelectedSuggestedRouteIndexInDirectionsResponse:v12];
      }

      else
      {
LABEL_14:
        if ((*(a1 + 56) & 1) == 0)
        {
LABEL_24:

          return;
        }

        [*(*(a1 + 40) + 24) setHasSelectedDirectionsResponseIndex:0];
        [*(*(a1 + 40) + 24) setHasSelectedSuggestedRouteIndexInDirectionsResponse:0];
      }

      if (*(a1 + 56) == 1)
      {
        [*(a1 + 40) _updateRideSelectionsWithComposedRoute:*(a1 + 32)];
      }

      goto LABEL_24;
    }

    v3 = [v2 originalSuggestedRoute];

    if (v3)
    {
      v2 = *(a1 + 32);
      goto LABEL_5;
    }
  }

  [*(*(a1 + 40) + 24) setHasSelectedDirectionsResponseIndex:0];
  v11 = *(*(a1 + 40) + 24);

  [v11 setHasSelectedSuggestedRouteIndexInDirectionsResponse:0];
}

void sub_1007EB228(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007EB41C;
    block[3] = &unk_1016605F8;
    v11 = v7;
    v9 = v5;
    v10 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1007EB300(uint64_t a1)
{
  [*(a1 + 32) _immediatelyUpdateRecording:*(*(a1 + 32) + 24) withAuxiliaryControlsRecording:*(a1 + 40)];
  [*(a1 + 32) _optimizeRecordingData];
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) historyItemIdentifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007EB3F0;
  v7[3] = &unk_10165E240;
  v5 = *(a1 + 56);
  v8 = v2;
  v9 = v5;
  v6 = v2;
  [v3 saveRecording:v6 forHistoryEntryWithStorageIdentifier:v4 completion:v7];
}

uint64_t sub_1007EB3F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

void sub_1007EB6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EB6C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007EB6D8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1007EBD40(uint64_t a1)
{
  v1 = [*(a1 + 32) chromeViewController];
  [v1 setNeedsUpdateComponent:@"floatingControls" animated:1];
}

void sub_1007EC4E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [v3 contactForSharingToMessages];
    v6 = [ShareItem shareItemWithSearchResult:v3 contact:v4 includePrintActivity:0];

    v5 = [*(a1 + 32) actionCoordinator];
    [v5 viewController:0 doShareSheetForShareItem:v6 completion:0];

    [*(a1 + 32) _addRecentPlaceForSearchResult:v3];
  }
}

void sub_1007EC5A4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v13 = v5;
    v14 = v4;
    v15 = v2;
    v16 = v3;
    v7 = +[MKLocationManager sharedLocationManager];
    v8 = [v7 isAuthorizedForPreciseLocation];

    if (v8)
    {
      v9 = +[MKLocationManager sharedLocationManager];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1007EC6A8;
      v11[3] = &unk_10165D568;
      v12 = *(a1 + 32);
      v10 = [v9 singleLocationUpdateWithDesiredAccuracy:v11 handler:kCLLocationAccuracyBest];

      [v10 start];
    }
  }
}

void sub_1007EC6A8(uint64_t a1)
{
  v2 = +[SearchResult currentLocationSearchResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007EC758;
  v5[3] = &unk_101655D58;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 tryUpdatingCurrentLocationSearchResultWithCompletion:v5];
}

uint64_t sub_1007EC758(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32));
  }

  return result;
}

void sub_1007ECF94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1007ECFB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained actionCoordinator];
  [v3 dismissPedestrianARTeachableMomentCardIfNecessary];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _resignTopContextInChromeViewController:*(a1 + 32)];
}

void sub_1007ED37C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1007ED398(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _becomeTopContextInChromeViewController:*(a1 + 32)];
}

void sub_1007EF8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EF900(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007EF918(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_initWeak(&location, *(a1 + 32));
  if ([v5 isSelected])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Collection Filter Menu] Selected Filter Title" value:@"localized string not found" table:0];

    v8 = [v5 filterTitle];
    v9 = [NSString stringWithFormat:v7, v8, *(a1 + 48)];

    v10 = objc_loadWeakRetained(&location);
    v11 = [v10 menuButton];
    [v11 setTitle:v9 forState:0];
  }

  else
  {
    v9 = [v5 filterTitle];
  }

  v12 = [v5 filterTitle];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1007EFB34;
  v14[3] = &unk_101658B58;
  objc_copyWeak(v15, &location);
  v15[1] = a3;
  v13 = [UIAction actionWithTitle:v9 image:0 identifier:v12 handler:v14];

  [v13 setState:{objc_msgSend(v5, "isSelected")}];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void sub_1007EFB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007EFB34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [NSIndexPath indexPathForItem:*(a1 + 40) inSection:0];
  [WeakRetained filterSelectedAtIndexPath:v2];
}

void sub_1007F0974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007F0990(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = [v6 feedbackResult];
    v10 = [v9 queryResult];

    v11 = [v10 feedbackInfos];
    v12 = [v11 firstObject];

    v13 = [v12 feedbackComponents];
    v14 = [v13 firstObject];

    v15 = [v14 values];
    v16 = [v15 firstObject];
    v17 = [v16 poiEnrichment];

    v18 = [v6 feedbackResult];
    v19 = [v18 queryResult];

    v20 = [v19 feedbackInfos];
    v21 = [v20 firstObject];

    v22 = [v21 feedbackId];

    if (v7)
    {
      v23 = sub_1007F0D54();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [v7 code];
        v24 = GEOStringForError();
        *buf = 138412546;
        v40 = v7;
        v41 = 2112;
        v42 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Received error %@ error with reason %@", buf, 0x16u);
      }

      v25 = [[UGCSubmissionLookupResult alloc] initWithError:v7];
      if ([(UGCSubmissionLookupResult *)v25 status]== 3)
      {
        v26 = sub_1007F0D54();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = *(a1 + 48);
          *buf = 134217984;
          v40 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "We received a no result error, so delete entry %llu from MapsSync", buf, 0xCu);
        }
      }

      v28 = *(a1 + 32);
      if (!v28)
      {
        goto LABEL_14;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007F0DA8;
      block[3] = &unk_1016605F8;
      v29 = &v38;
      v38 = v28;
      v30 = &v36;
      v25 = v25;
      v36 = v25;
      v37 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v25 = [[UGCSubmissionLookupResult alloc] initWithSubmissionIdentifier:v22 previousSubmission:v17];
      v31 = *(a1 + 32);
      if (!v31)
      {
LABEL_14:

        goto LABEL_15;
      }

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1007F0DC0;
      v32[3] = &unk_101661090;
      v29 = &v34;
      v34 = v31;
      v30 = &v33;
      v25 = v25;
      v33 = v25;
      dispatch_async(&_dispatch_main_q, v32);
    }

    goto LABEL_14;
  }

LABEL_15:
}

id sub_1007F0D54()
{
  if (qword_10195D8D8 != -1)
  {
    dispatch_once(&qword_10195D8D8, &stru_10162AD38);
  }

  v1 = qword_10195D8D0;

  return v1;
}

void sub_1007F0DD8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCSubmissionLookupTicket");
  v2 = qword_10195D8D0;
  qword_10195D8D0 = v1;
}

id sub_1007F10E0(uint64_t a1, void *a2)
{
  result = [a2 isEqual:*(*(a1 + 32) + 16)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1007F111C(uint64_t a1, void *a2)
{
  result = [a2 isEqual:*(*(a1 + 32) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1007F1394(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007F13AC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [NSString stringWithFormat:@" %@>", a2];
  v4 = [v3 stringByReplacingOccurrencesOfString:@">" withString:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1007F1440(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [NSString stringWithFormat:@" %@>", a2];
  v4 = [v3 stringByReplacingOccurrencesOfString:@">" withString:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

UIFont *__cdecl sub_1007F2060(id a1)
{
  v1 = +[MKFontManager sharedManager];
  v2 = [v1 subtitleFont];
  v3 = [UIFont _maps_cappedFont:v2 withMaxPoint:30.0];

  return v3;
}

UIFont *__cdecl sub_1007F20E0(id a1)
{
  v1 = +[MKFontManager sharedManager];
  v2 = [v1 largeTitleFont];
  v3 = [UIFont _maps_cappedFont:v2 withMaxPoint:40.0];

  return v3;
}

void sub_1007F4860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 4);
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1007F4930;
    v6[3] = &unk_101654BC0;
    objc_copyWeak(&v7, (a1 + 40));
    [v4 offlineSuggestionsForLocation:v5 completion:v6];
    objc_destroyWeak(&v7);
  }
}

void sub_1007F4930(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 count];
    v6 = sub_10003D9F4();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Called back in OfflineMapsFeatureDiscoverySource with suggestions, showing the first one.", v8, 2u);
      }

      v6 = [v3 objectAtIndexedSubscript:0];
      [WeakRetained _showTipFromModelData:v6];
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Called back in OfflineMapsFeatureDiscoverySource with 0 suggestions, showing nothing", buf, 2u);
    }
  }
}

void sub_1007F4CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v35 + 40));
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v36 - 112));
  _Unwind_Resume(a1);
}

void sub_1007F4CEC(uint64_t a1)
{
  v2 = sub_10003D9F4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Offline Tip Action Button Tapped in Maps Home", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 8);

    if (v5)
    {
      v6 = objc_loadWeakRetained(v4 + 8);
      v7 = [*(a1 + 32) mapRegion];
      v8 = [*(a1 + 32) regionName];
      [v6 presentOfflineMapsSelectorFromTipWithRegion:v7 name:v8];

      [v4[4] dismissedTipWithType:{objc_msgSend(*(a1 + 32), "suggestionType")}];
      [v4 setShowFeature:0];
      [v4 _notifyObservers];
      [v4 updateFeatureEligibility];
      v9 = [*(a1 + 32) suggestionType] - 1;
      if (v9 > 2)
      {
        v10 = @"unknown";
      }

      else
      {
        v10 = *(&off_10162ADE0 + v9);
      }

      [GEOAPPortal captureUserAction:371 target:8 value:v10];
    }

    else
    {
      v11 = sub_10003D9F4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Offline Tip Action Delegate is nil", v12, 2u);
      }
    }
  }
}

void sub_1007F4E98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_10003D9F4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) tipTitle];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Offline Tip %@ Displayed in Maps Home", &v7, 0xCu);
    }

    [WeakRetained[4] displayedTipWithType:{objc_msgSend(*(a1 + 32), "suggestionType")}];
    v5 = [*(a1 + 32) suggestionType] - 1;
    if (v5 > 2)
    {
      v6 = @"unknown";
    }

    else
    {
      v6 = *(&off_10162ADE0 + v5);
    }

    [GEOAPPortal captureUserAction:392 target:8 value:v6];
  }
}

void sub_1007F4FC8(uint64_t a1)
{
  v2 = sub_10003D9F4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) tipTitle];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Offline Tip %@ Dismissed in Maps Home", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] dismissedTipWithType:{objc_msgSend(*(a1 + 32), "suggestionType")}];
    [v5 setShowFeature:0];
    [v5 _notifyObservers];
    [v5 updateFeatureEligibility];
  }
}

void sub_1007F50D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setShowFeature:1];
    [v2 _notifyObservers];
    WeakRetained = v2;
  }
}

void sub_1007F993C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005610();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "URLHandlingTask showDirectionsFrom mapItemsRefined error: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (![v5 count])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v8 = [v5 firstObject];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v8;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    v11 = objc_alloc_init(NSDictionary);
    [v9 URLHandler:v10 launchIntoSearchWithMapItems:v7 options:v11 context:0];
  }

LABEL_8:
  [*(a1 + 32) URLHandler:*(a1 + 40) didFinishAsynchronousHandlingWithError:v6];
}

void sub_1007FC114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007FC14C(uint64_t a1, void *a2, unint64_t a3)
{
  v14 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v14];
  }

  else
  {
    if ([v14 isCurrentLocation])
    {
      v5 = [[GEOComposedWaypoint alloc] initWithLocation:0 isCurrentLocation:1];
      [*(a1 + 32) addObject:v5];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if ([*(a1 + 40) count] <= a3)
      {
        v5 = 0;
      }

      else
      {
        v5 = [*(a1 + 40) objectAtIndex:a3];
        if ((MapsFeature_IsEnabled_MapsWally() & 1) == 0)
        {
          v6 = [[_TtC4Maps16MapsFindMyHandle alloc] initWithIdentifier:v5];
          v7 = [(MapsFindMyHandle *)v6 prettyName];

          if (v7)
          {
            v8 = [(MapsFindMyHandle *)v6 prettyName];
            [v14 setName:v8];
          }
        }
      }

      v9 = [v14 _geoMapItemStorageForPersistence];
      if (v9)
      {
        if (v5 && MapsFeature_IsEnabled_MapsWally())
        {
          v10 = [GEOLocation alloc];
          [v9 coordinate];
          v11 = [v10 initWithGEOCoordinate:?];
          v12 = +[NSDate date];
          [v12 timeIntervalSinceReferenceDate];
          [v11 setTimestamp:?];

          v13 = [[GEOComposedWaypoint alloc] initWithLocation:v11 findMyHandleID:v5];
        }

        else
        {
          v13 = [[GEOComposedWaypoint alloc] initWithMapItem:v9];
        }

        [*(a1 + 32) addObject:v13];
      }
    }
  }
}

BOOL sub_1007FC358(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1007FDD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007FDD38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[1];
    WeakRetained[1] = 0;

    v2 = [WeakRetained updateBlock];

    if (v2)
    {
      v3 = [WeakRetained updateBlock];
      (v3)[2](v3, WeakRetained);
    }
  }
}

void sub_1007FE504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007FE520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshRouteETAIfCalculating];
}

void sub_1008006E0(id a1)
{
  v1 = objc_alloc_init(MKDistanceFormatter);
  v2 = qword_10195D8E0;
  qword_10195D8E0 = v1;

  v3 = qword_10195D8E0;

  [v3 setUnitStyle:1];
}

uint64_t sub_10080113C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100801154(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 query];
  [*(a1 + 32) setFirstLine:v3];

  v4 = [v8 locationDisplayString];
  if ([v4 length])
  {
    v5 = [v8 locationDisplayString];
    [*(a1 + 32) setSecondLine:v5];
  }

  else
  {
    [*(a1 + 32) setSecondLine:0];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = @"Search";
}

void sub_100801224(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  [SearchResult newStartWaypointSearchResult:0 endWaypointSearchResult:&v14 forRouteHistoryEntry:v3];
  v4 = v14;
  [v4 updateModel:*(a1 + 32)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 waypoints];
    v6 = [v5 count];

    if (v6 >= 3)
    {
      v7 = [v3 waypoints];
      v8 = [v7 count] - 2;

      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"[CarPlay] Recent cell stop count" value:@"localized string not found" table:0];
      v11 = [NSString localizedStringWithFormat:v10, v8];

      [*(a1 + 32) setChargerNumberString:v11];
      [*(a1 + 32) setIsShowingStops:1];
    }
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = @"Route";
}

void sub_100801394(uint64_t a1, void *a2)
{
  v6 = [a2 geoMapItem];
  v3 = [[MKMapItem alloc] initWithGeoMapItem:v6 isPlaceHolderPlace:0];
  [v3 updateModel:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = @"Place";
}

void sub_100801424(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = @"Transit Line";
}

void sub_100801720(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) mapItem];
  v4 = [v3 isEqual:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setMapItem:v5];
    [*(a1 + 32) markAsUpdated];
  }
}

void sub_10080194C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) mapItem];
  v4 = [v3 isEqual:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setMapItem:v5];
    [*(a1 + 32) markAsUpdated];
  }
}

void sub_100801EA0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) mapItem];
  v4 = [v3 isEqual:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setMapItem:v5];
    [*(a1 + 32) markAsUpdated];
  }
}

uint64_t sub_1008038B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mapKitHandle];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    v7 = *(a1 + 32);
    v8 = [v3 mapKitHandle];
    v9 = [v3 title];
    [v6 mapsDragDestinationHandler:v7 didReceiveMapKitHandle:v8 title:v9];

    v10 = 1;
  }

  else
  {
    v6 = [v3 value];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_12;
    }

    v11 = [v3 title];
    v12 = [v11 length];

    if (!v12)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v6 = [v3 value];
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
    v15 = [v6 scheme];
    v16 = [v15 isEqualToString:@"geo"];

    if (v16)
    {
      v17 = [v6 resourceSpecifier];
      v18 = [v17 componentsSeparatedByString:{@", "}];
      if ([v18 count] >= 2)
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        [v19 doubleValue];
        latitude = v20;

        v21 = [v18 objectAtIndexedSubscript:1];
        [v21 doubleValue];
        longitude = v22;
      }
    }

    v23 = *(a1 + 32);
    v8 = [v3 title];
    v10 = [v23 _handleString:v8 nearCoordinate:{latitude, longitude}];
  }

LABEL_12:
LABEL_13:

  return v10;
}

void sub_100803CEC(id a1)
{
  v1 = +[MKMapService sharedService];
  [v1 captureUserAction:17005 onTarget:0 eventValue:0 placeActionDetails:0];
}

void sub_100804388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose((v70 - 232), 8);
  _Block_object_dispose((v70 - 200), 8);
  _Block_object_dispose((v70 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1008043D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1008043E8(uint64_t a1, void *a2)
{
  v7 = a2;
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) handleMapItems:?];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v3 = [v7 firstObject];
    v4 = [[MapsAnalyticsHelper alloc] initWithMapItem:v3];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), MKMapItemTypeIdentifier);
  }

  dispatch_group_leave(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void sub_1008044C0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100804DEC;
  block[3] = &unk_10162AE90;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v8 = v3;
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  v9 = v5;
  v10 = *(a1 + 56);
  v6 = v3;
  dispatch_group_notify(v4, &_dispatch_main_q, block);
}

void sub_1008045A4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100804B0C;
  block[3] = &unk_10162AE90;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v8 = v3;
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  v9 = v5;
  v10 = *(a1 + 56);
  v6 = v3;
  dispatch_group_notify(v4, &_dispatch_main_q, block);
}

void sub_100804688(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100804A1C;
  block[3] = &unk_10162AE90;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v8 = v3;
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  v9 = v5;
  v10 = *(a1 + 56);
  v6 = v3;
  dispatch_group_notify(v4, &_dispatch_main_q, block);
}

void sub_10080476C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v7 = *(a1 + 48);
  v11 = *(a1 + 64);
  block[2] = sub_100804978;
  block[3] = &unk_10162AEE0;
  v4 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v9 = v3;
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_group_notify(v4, &_dispatch_main_q, block);
}

void sub_10080483C(void *a1)
{
  if ([*(*(a1[4] + 8) + 40) length])
  {
    v2 = +[UIApplication sharedMapsDelegate];
    v3 = [v2 appCoordinator];
    v4 = [v3 chromeViewController];
    v5 = [v4 interruptionManager];
    [v5 displayAlertWithTitle:*(*(a1[4] + 8) + 40) message:0 postAlertSearchType:0];
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = @"not handled";
  }

  v11 = +[MKMapService sharedService];
  v8 = a1[7];
  v9 = *(*(a1[6] + 8) + 40);
  v10 = [*(*(v8 + 8) + 40) actionDetails];
  [v11 captureUserAction:17006 onTarget:0 eventValue:v9 placeActionDetails:v10];
}

void sub_100804978(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && !*(*(*(a1 + 64) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) handleStrings:*(a1 + 40)];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v2 = [UTTypeText identifier];
      v3 = *(*(a1 + 72) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }
  }

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void sub_100804A1C(uint64_t a1)
{
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) handleURLs:*(a1 + 40)];
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v2 = [UTTypeURL identifier];
      v3 = *(*(a1 + 72) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    else
    {
      if (![*(a1 + 40) count])
      {
        goto LABEL_7;
      }

      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"No address for URL" value:@"localized string not found" table:0];
      v6 = *(*(a1 + 80) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 48));
  v8 = *(a1 + 56);

  dispatch_group_leave(v8);
}

void sub_100804B0C(uint64_t a1)
{
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) handleCalendarEvents:*(a1 + 40)];
    v2 = *(a1 + 40);
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v3 = [v2 firstObject];
      v4 = v3;
      if (!v3)
      {
LABEL_8:

        goto LABEL_9;
      }

      v5 = [v3 typeIdentifier];
      v6 = 72;
    }

    else
    {
      if (![v2 count])
      {
        goto LABEL_9;
      }

      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"No address for event" value:@"localized string not found" table:0];
      v6 = 80;
    }

    v7 = *(*(a1 + v6) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    goto LABEL_8;
  }

LABEL_9:
  dispatch_group_leave(*(a1 + 48));
  v9 = *(a1 + 56);

  dispatch_group_leave(v9);
}

void sub_100804DEC(uint64_t a1)
{
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) handleVCards:*(a1 + 40)];
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v2 = [UTTypeVCard identifier];
      v3 = *(*(a1 + 72) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    else
    {
      if (![*(a1 + 40) count])
      {
        goto LABEL_7;
      }

      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"No address for contact" value:@"localized string not found" table:0];
      v6 = *(*(a1 + 80) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 48));
  v8 = *(a1 + 56);

  dispatch_group_leave(v8);
}

void sub_100805A4C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v5 setVisible:{objc_msgSend(v4, "containsIndex:", objc_msgSend(a2, "unsignedIntegerValue"))}];
}

void sub_1008070F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100807114(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v3 = +[GEOPlaceActionDetails actionDetailsWithMapItem:timestamp:resultIndex:](GEOPlaceActionDetails, "actionDetailsWithMapItem:timestamp:resultIndex:", v10, [*(a1 + 32) row], CFAbsoluteTimeGetCurrent());
    v4 = +[MKMapService sharedService];
    v5 = *(a1 + 56);
    v6 = [*(a1 + 40) delegate];
    if ([v6 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate])
    {
      v7 = [v6 currentUITargetForAnalytics];
    }

    else
    {
      v7 = 0;
    }

    [v4 captureUserAction:v5 onTarget:v7 eventValue:*(a1 + 48) placeActionDetails:v3];
  }

  else
  {
    v8 = *(a1 + 56);
    v3 = [*(a1 + 40) delegate];
    if ([v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate])
    {
      v9 = [v3 currentUITargetForAnalytics];
    }

    else
    {
      v9 = 0;
    }

    [GEOAPPortal captureUserAction:v8 target:v9 value:*(a1 + 48)];
  }
}

uint64_t sub_100807280(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1008072B4(uint64_t a1, void *a2)
{
  v3 = [a2 geoMapItem];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

void sub_100807694(id a1, int a2, double a3, int a4, NSArray *a5)
{
  v5 = *&a4;
  v7 = *&a2;
  v8 = a5;
  v10 = [NSNumber numberWithInt:v7];
  v9 = [NSNumber numberWithDouble:a3 * 1000.0];
  [GEOAPPortal captureProactiveSuggestionWithListType:v5 interactedItemIndex:v10 duration:v9 proactiveItems:v8];
}

void sub_100807F08(uint64_t a1)
{
  v2 = objc_alloc_init(MKLocationManager);
  [v2 setEffectiveBundleIdentifier:@"com.apple.Maps"];
  [v2 setDistanceFilter:100.0];
  [v2 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
  [v2 startLocationUpdateWithObserver:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

void sub_100808350(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 selectedVehicle];
  (*(v2 + 16))(v2, v3);
}

void sub_1008083B0(id a1, VGVehicle *a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = +[VGVirtualGarageService sharedService];
    v3 = [(VGVehicle *)v2 identifier];

    [v4 virtualGarageGetLatestStateOfVehicleWithIdentifier:v3 syncAcrossDevices:1 withReply:&stru_10162B1D0];
  }
}

void sub_100808440(id a1, VGVehicle *a2, NSError *a3)
{
  v4 = a3;
  v5 = sub_100022C48();
  v6 = v5;
  if (!a2 || v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v4;
      v7 = "Failed to get state of selected vehicle with error: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    v7 = "Successfully saved the state of selected vehicle.";
    v8 = v6;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 2;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
  }
}

void sub_100808608(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _checkBatteryStateWithGarage:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_10080873C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100808760(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v10 = sub_100022C48();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get virtual garage with error: %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = WeakRetained[2];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1008088C4;
      v11[3] = &unk_101661090;
      v13 = *(a1 + 32);
      v12 = v5;
      dispatch_async(v9, v11);

      v10 = v13;
    }
  }
}

void sub_100808AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100808AF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100808B20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 vehicles];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100808C94;
    v11[3] = &unk_1016588C0;
    v12 = *(a1 + 32);
    v6 = sub_1000282CC(v5, v11);

    v7 = [v6 firstObject];
    if ([v7 isPureElectricVehicle])
    {
      v8 = [v7 manufacturer];
      v9 = [v7 model];
      [v7 batteryPercentageBasedOfCapacity];
      v10 = [NSNumber numberWithDouble:?];
      [GEOAPPortal captureEvRoutingVehicleDetailsWithMake:v8 model:v9 towingNotSupported:0 batteryCapacity:v10];
    }

    WeakRetained[10] = 1;
  }
}

id sub_100808C94(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

void sub_100808DF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() & 1;
    WeakRetained[8] = isKindOfClass & 1;
    v5 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    [WeakRetained setRoutePlanningSession:v7];
    v8 = +[VGVirtualGarageService sharedService];
    v9 = v8;
    if (isKindOfClass)
    {
      [v8 registerObserver:WeakRetained];
    }

    else
    {
      [v8 unregisterObserver:WeakRetained];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100808F80;
    v10[3] = &unk_10162B0E0;
    objc_copyWeak(&v11, (a1 + 48));
    v12 = isKindOfClass & 1;
    v13 = v4;
    [WeakRetained _loadGarageWithCompletion:v10];
    objc_destroyWeak(&v11);
  }
}

void sub_100808F80(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1 && ([WeakRetained _checkBatteryStateWithGarage:v5], (*(a1 + 40) & 1) != 0) || *(a1 + 41) == 1)
    {
      [v4 _syncSelectedVehicleStateWithGarage:v5];
    }
  }
}

RoutePlanningWaypointRequest *sub_10080E66C(void *a1)
{
  v2 = a1;
  v3 = [v2 routePlanningWaypointRequest];
  v4 = [v3 waypointRequest];

  if (v4)
  {
    v5 = [v2 routePlanningWaypointRequest];
    goto LABEL_164;
  }

  v6 = v2;
  v7 = [v6 searchResult];
  if (!v7 || ([v6 searchResult], v1 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v1, "isDynamicCurrentLocation")))
  {
    v8 = [v6 composedWaypoint];
    if (v8)
    {
      v9 = v8;
      v10 = [v6 composedWaypoint];
      v11 = [v10 isCurrentLocation];

      if (v7)
      {

        if (v11)
        {
          goto LABEL_13;
        }
      }

      else if (v11)
      {
        goto LABEL_13;
      }
    }

    else if (v7)
    {
    }

    v13 = [v6 searchResult];
    v14 = [v13 routeData];

    if (v14)
    {
      v15 = sub_100798F84();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        *v170 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Using saved route as waypoint: %{private}@", buf, 0xCu);
      }

      v12 = [[SavedRouteWaypointRequest alloc] initWithSavedRouteData:v14];
      goto LABEL_150;
    }

    v16 = [v6 composedWaypoint];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      v18 = sub_100798F84();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        *v170 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Using waypoint-to-route as waypoint: %{private}@", buf, 0xCu);
      }

      v19 = [SavedRouteWaypointRequest alloc];
      v20 = [(MapsFindMyHandle *)v17 route];
      v21 = [(SavedRouteWaypointRequest *)v19 initWithSavedRoute:v20];
LABEL_22:
      v12 = v21;
LABEL_149:

LABEL_150:
      goto LABEL_151;
    }

    v22 = [v6 _maps_findMyHandle];
    if (v22)
    {
      v17 = v22;
      v23 = sub_100798F84();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Using MapsFindMyHandle", buf, 2u);
      }

LABEL_27:
      v24 = [v6 searchResult];
      v25 = [v24 composedWaypoint];
      v26 = [v25 location];
      v27 = [v26 hasTimestamp];

      if (v27)
      {
        v167 = v17;
        v164 = v16;
        v28 = [CLLocation alloc];
        v162 = [v6 searchResult];
        v159 = [v162 composedWaypoint];
        v157 = [v159 location];
        v156 = [v157 latLng];
        [v156 lat];
        v30 = v29;
        v154 = [v6 searchResult];
        v31 = [v154 composedWaypoint];
        v32 = [v31 location];
        v33 = [v32 latLng];
        [v33 lng];
        v35 = CLLocationCoordinate2DMake(v30, v34);
        v36 = [v6 searchResult];
        v37 = [v36 composedWaypoint];
        v38 = [v37 location];
        [v38 timestamp];
        v39 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        v20 = [v28 initWithCoordinate:v39 altitude:v35.latitude horizontalAccuracy:v35.longitude verticalAccuracy:0.0 timestamp:{0.0, 0.0}];

        v40 = sub_100798F84();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          [v20 coordinate];
          v42 = v41;
          [v20 coordinate];
          *buf = 134283777;
          *v170 = v42;
          *&v170[8] = 2049;
          *&v170[10] = v43;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Create CLLocation from search result coordinate {%{private}f, %{private}f}", buf, 0x16u);
        }

        v16 = v164;
        v14 = 0;
        v17 = v167;
      }

      else
      {
        v20 = 0;
      }

      v12 = [[_TtC4Maps27FindMyHandleWaypointRequest alloc] initWithHandle:v17 location:v20];
      v50 = sub_100798F84();
      v51 = v50;
      if (v12)
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v52 = "Using find my handle for waypoint request";
LABEL_60:
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, v52, buf, 2u);
          goto LABEL_61;
        }

        goto LABEL_61;
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v170 = v17;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to construct a find my handle request for handle: %@", buf, 0xCu);
      }

      goto LABEL_42;
    }

    v44 = [v6 searchResult];

    if (v44)
    {
      v45 = [v6 searchResult];
      v46 = [v45 locationType];

      v47 = sub_100798F84();
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);
      if (v46 != 4)
      {
        if (v48)
        {
          v93 = [v6 searchResult];
          *buf = 67109120;
          *v170 = [v93 locationType];
          v20 = v47;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Not using AutoCompletePerson handle because the locationType is wrong: %u", buf, 8u);

          v17 = 0;
        }

        else
        {
          v17 = 0;
          v20 = v47;
        }

LABEL_42:

        goto LABEL_43;
      }

      if (!v48)
      {
LABEL_49:

        v59 = [v6 _maps_autoCompletePerson];
        v60 = [v59 handle];
        v61 = [v60 handle];

        if (v61)
        {
          v62 = sub_100798F84();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Create MapsFindMyHandle from search handle", buf, 2u);
          }

          v17 = [[_TtC4Maps16MapsFindMyHandle alloc] initWithSearchFindMyHandle:v61];
          if (v17)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v17 = 0;
        }

LABEL_43:
        v53 = [v6 _maps_autoCompletePerson];
        v54 = [v53 contact];

        if (v54)
        {
          v55 = [v6 searchResult];
          v56 = [v55 address];
          if (v56)
          {
            v57 = [v6 searchResult];
            v58 = [v57 address];
          }

          else
          {
            v57 = [v6 _maps_autoCompletePerson];
            v63 = [v57 contact];
            v58 = [AddressBookAddress singleAddressForContact:v63];
          }

          v64 = sub_100798F84();
          v20 = v58;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v170 = v58;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "Found AddressBookAddress: %@", buf, 0xCu);
          }

          v65 = [AddressBookAddressWaypointRequest alloc];
          v66 = [v6 mapItemIfGeocoded];
          v12 = [(AddressBookAddressWaypointRequest *)v65 initWithAddress:v20 mapItem:v66];

          v67 = sub_100798F84();
          v51 = v67;
          if (v12)
          {
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v52 = "Using auto complete person contact for waypoint request";
              goto LABEL_60;
            }

LABEL_61:

            goto LABEL_149;
          }

          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = [v6 _maps_autoCompletePerson];
            *buf = 138412546;
            *v170 = v68;
            *&v170[8] = 2112;
            *&v170[10] = v20;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to construct an address book request for autocompletePerson: %@ address: %@", buf, 0x16u);
          }
        }

        v69 = [v6 searchResult];

        if (!v69)
        {
          v89 = [v6 address];

          if (v89)
          {
            v90 = [AddressBookAddressWaypointRequest alloc];
            v91 = [v6 address];
            v12 = [(AddressBookAddressWaypointRequest *)v90 initWithAddress:v91];

            v92 = sub_100798F84();
            v20 = v92;
            if (v12)
            {
              if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Using search field item address book address for waypoint request", buf, 2u);
              }

              goto LABEL_149;
            }

            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              v101 = [v6 address];
              *buf = 138412290;
              *v170 = v101;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to construct an address book request for address: %@", buf, 0xCu);
            }
          }

          v102 = [v6 coreRecentContact];

          if (v102)
          {
            v103 = sub_100798F84();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "Using search field item core recent contact for waypoint request", buf, 2u);
            }

            v104 = [SearchStringWaypointRequest alloc];
            v20 = [v6 coreRecentContact];
            v51 = [v20 address];
            v12 = [(SearchStringWaypointRequest *)v104 initWithSearchString:v51 completionItem:0];
            goto LABEL_61;
          }

          v105 = [v6 completion];

          if (v105)
          {
            v106 = [v6 completion];
            v107 = [v106 queryLine];

            v108 = [SearchStringWaypointRequest alloc];
            v109 = [v6 completion];
            v110 = [v109 geoCompletionItem];
            v12 = [(SearchStringWaypointRequest *)v108 initWithSearchString:v107 completionItem:v110];

            v111 = sub_100798F84();
            v112 = v111;
            if (v12)
            {
              if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_INFO, "Using search field item search string for waypoint request", buf, 2u);
              }

              v20 = v107;
              goto LABEL_149;
            }

            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v170 = v6;
              *&v170[8] = 2112;
              *&v170[10] = v107;
              _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "(completion) Failed to construct a request for search field item: %@ string: %@", buf, 0x16u);
            }
          }

          v140 = [v6 composedWaypoint];

          if (v140)
          {
            v141 = sub_100798F84();
            if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_INFO, "Using search field composed waypoint for waypoint request", buf, 2u);
            }

            v142 = [GEOComposedWaypointRequest alloc];
            v20 = [v6 composedWaypoint];
            v21 = [(GEOComposedWaypointRequest *)v142 initWithComposedWaypoint:v20];
            goto LABEL_22;
          }

          v20 = [v6 searchString];
          if (v20)
          {
            v12 = [[SearchStringWaypointRequest alloc] initWithSearchString:v20 completionItem:0];
            v143 = sub_100798F84();
            v51 = v143;
            if (v12)
            {
              if (!os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
              {
                goto LABEL_61;
              }

              *buf = 0;
              v52 = "Using search field item search string for waypoint request";
              goto LABEL_60;
            }

            if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v170 = v6;
              *&v170[8] = 2112;
              *&v170[10] = v20;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "(searchString) Failed to construct a request for search field item: %@ string: %@", buf, 0x16u);
            }
          }

          v144 = v20;
          v145 = [v6 externalURLQuery];

          if (v145 && (v146 = [URLQueryWaypointRequest alloc], [v6 externalURLQuery], v147 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "externalQueryName"), v148 = objc_claimAutoreleasedReturnValue(), v12 = -[URLQueryWaypointRequest initWithURLQuery:title:](v146, "initWithURLQuery:title:", v147, v148), v148, v147, v12))
          {
            v149 = sub_100798F84();
            if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_INFO, "Using search field item url query for waypoint request", buf, 2u);
            }
          }

          else
          {
            v150 = sub_100798F84();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              v151 = [v6 searchString];
              *buf = 138412290;
              *v170 = v151;
              _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_ERROR, "Failed to construct a request for search string: %@", buf, 0xCu);
            }

            [NSException raise:NSGenericException format:@"Failed to construct a WaypointRequest for %@", v6];
            v12 = 0;
          }

          v20 = v144;
          goto LABEL_149;
        }

        v20 = [v6 searchResult];
        v168 = v17;
        if (-[NSObject hasExplicitlyProvidedComposedWaypoint](v20, "hasExplicitlyProvidedComposedWaypoint") && (-[NSObject composedWaypoint](v20, "composedWaypoint"), v70 = objc_claimAutoreleasedReturnValue(), v71 = [v70 needsAdditionalNavData], v70, (v71 & 1) == 0))
        {
          v94 = sub_100798F84();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v95 = "Using search result explicitly provided waypoint for waypoint request";
            v96 = v94;
            v97 = 2;
            goto LABEL_104;
          }
        }

        else
        {
          v72 = [v20 mapItem];

          if (v72)
          {
            v73 = [v20 mapItem];
            [v20 coordinate];
            v75 = v74;
            v77 = v76;
            v78 = v20;
            v166 = v14;
            if (fabs(v76) > 180.0 || v74 < -90.0 || v74 > 90.0)
            {
              v99 = sub_100798F84();
              if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "Corrected coordinate for request was invalid, falling back to mapItem", buf, 2u);
              }

              v100 = v16;
            }

            else
            {
              v165 = [v73 _hasCorrectedHomeWorkCoordinate];
              v79 = [v20 type];
              v80 = [v20 originalType];
              v81 = v80;
              v87 = v79 == 3 || v80 == 3 || v79 == 12 || v80 == 12 || v79 == 13 || v80 == 13;
              v163 = v87;
              v160 = v79;
              if ([v73 _maps_isHomeWorkOrSchool])
              {
                v88 = 0;
              }

              else
              {
                v113 = [v73 _styleAttributes];
                v88 = ([v113 hasAttributes] & 1) == 0 && objc_msgSend(v73, "_muid") == 0;
              }

              v114 = [v78 composedWaypoint];

              if (v114)
              {
                v115 = [v78 composedWaypoint];
                if ([v115 type] != 1)
                {
                  v116 = [v78 composedWaypoint];
                  if ([v116 type])
                  {
                    v88 = 0;
                  }
                }
              }

              v100 = v16;
              if (((v165 | v163) & 1) != 0 || v88)
              {
                v117 = [[CorrectedLocationMapItemWaypointRequest alloc] initWithCorrectedCoordinate:v73 mapItem:v75, v77];
                if (v117)
                {
                  v12 = v117;
                  v118 = sub_100798F84();
                  if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
                  {
                    v158 = v160;
                    v155 = [v73 _maps_isHomeWorkOrSchool];
                    v161 = [v73 _styleAttributes];
                    v153 = [v161 hasAttributes];
                    v152 = [v73 _muid];
                    v119 = [v78 composedWaypoint];
                    v120 = [v119 type];
                    *buf = 67111681;
                    *v170 = v165;
                    *&v170[4] = 2049;
                    *&v170[6] = v75;
                    *&v170[14] = 2049;
                    *&v170[16] = v77;
                    v171 = 1024;
                    v172 = v163;
                    v173 = 2048;
                    v174 = v158;
                    v175 = 2048;
                    v176 = v81;
                    v177 = 1024;
                    v178 = v88;
                    v20 = v78;
                    v179 = 1024;
                    v180 = v155;
                    v181 = 1024;
                    v182 = v153;
                    v183 = 2048;
                    v184 = v152;
                    v185 = 2048;
                    v186 = v120;
                    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_INFO, "Using search result corrected location map item for waypoint request, hasCorrectedCoordinate: %d (%{private}f, %{private}f), correctedLocationIsRequiredForSearchType: %d (type: %lu, originalType: %lu), mapItemIsDroppedPin: %d (HWS: %d, hasAttributes: %d, muid: %llu, waypointType: %ld)", buf, 0x5Cu);

                    v14 = v166;
                  }

                  else
                  {
                    v14 = v166;
                    v20 = v78;
                  }

LABEL_147:

                  v16 = v100;
                  goto LABEL_148;
                }
              }
            }

            v20 = v78;
            v118 = [v78 address];
            v14 = v166;
            if (v118)
            {
              v12 = [[AddressBookAddressWaypointRequest alloc] initWithAddress:v118 mapItem:v73];
              v121 = sub_100798F84();
              v122 = v121;
              if (v12)
              {
                if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_INFO, "Using search result address book address for waypoint request", buf, 2u);
                }

                goto LABEL_147;
              }

              if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v170 = v118;
                _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "Failed to construct an address book request for address: %@", buf, 0xCu);
              }
            }

            v123 = sub_100798F84();
            if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_INFO, "Using search result map item for waypoint request", buf, 2u);
            }

            v12 = [[MapItemWaypointRequest alloc] initWithMapItem:v73];
            goto LABEL_147;
          }

          v94 = sub_100798F84();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v170 = v20;
            v95 = "Falling back to composedWaypoint for searchResult: %@";
            v96 = v94;
            v97 = 12;
LABEL_104:
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, v95, buf, v97);
          }
        }

        v98 = [GEOComposedWaypointRequest alloc];
        v73 = [v20 composedWaypoint];
        v12 = [(GEOComposedWaypointRequest *)v98 initWithComposedWaypoint:v73];
LABEL_148:

        v17 = v168;
        goto LABEL_149;
      }

      *buf = 0;
      v49 = "Using AutoCompletePerson handle";
    }

    else
    {
      v47 = sub_100798F84();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v49 = "No search result; trying AutoCompletePerson handle";
    }

    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, v49, buf, 2u);
    goto LABEL_49;
  }

LABEL_13:
  v12 = objc_alloc_init(CurrentLocationWaypointRequest);
LABEL_151:

  v124 = sub_100798F84();
  if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v170 = v6;
    *&v170[8] = 2112;
    *&v170[10] = v12;
    _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_INFO, "Converted %@\ninto %@", buf, 0x16u);
  }

  v125 = [v6 personalizedDirectionsWaypoint];
  v126 = 0;
  if (([v6 isFindMyPerson] & 1) == 0 && !v125)
  {
    v127 = [v6 waypoint];
    v128 = [v127 requestSearchString];
    v129 = [v128 length];

    if (v129)
    {
      v126 = 1;
    }

    else
    {
      v130 = [v6 externalURLQuery];
      v131 = [v130 query];
      if (v131)
      {

        v126 = 0;
      }

      else
      {
        v132 = [v6 externalURLQuery];
        v126 = [v132 muid] != 0;
      }
    }
  }

  v133 = [v6 personalizedAddressName];
  v134 = [v125 responseSearch];
  v135 = v134;
  if (v134)
  {
    v136 = v134;
  }

  else
  {
    v136 = [v125 requestSearch];
  }

  v137 = v136;

  v138 = [[WaypointPlaceholder alloc] initWithName:v133 displayableMarker:v137];
  v5 = [[RoutePlanningWaypointRequest alloc] initWithWaypointPlaceholder:v138 request:v12 preferredNameSource:v126];

LABEL_164:

  return v5;
}

id sub_1008100D0(uint64_t a1)
{
  result = [*(a1 + 32) shouldRecordExtendedLaunchTime];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 finishedTest:@"launch" extraResults:0];
  }

  return result;
}

void sub_100810728(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v12 = [v7 mapSelectionState];
    v10 = [v7 searchFieldItem];
    v11 = [v7 searchInfo];

    (*(v4 + 16))(v4, v9, v8, v12, v10, v11);
  }
}

id sub_100811BD0(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = a2;
  v4 = [v2 maneuvers];
  v5 = [v3 cpIndex];

  v6 = [v4 objectAtIndexedSubscript:{objc_msgSend(v5, "unsignedIntValue")}];

  return v6;
}

id sub_100811F0C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _cpConnectorTypeForConnectorType:{objc_msgSend(v3, "type")}];
  v5 = [CPChargingStationConnector alloc];
  v6 = [v3 maximumVoltage];
  v7 = [v3 maximumPower];

  v8 = [v5 initWithType:v4 voltage:v6 power:v7];

  return v8;
}

void sub_100811FC0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarMetadataNavigationListener");
  v2 = qword_10195D908;
  qword_10195D908 = v1;
}

void sub_100812410(id a1)
{
  v12[0] = NSLocaleMeasurementSystemUS;
  v10[0] = &off_1016E7100;
  v10[1] = &off_1016E7118;
  v11[0] = &off_1016ECC80;
  v11[1] = &off_1016ECCE0;
  v10[2] = &off_1016E7130;
  v11[2] = &off_1016ECD40;
  v1 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  v13[0] = v1;
  v12[1] = NSLocaleMeasurementSystemMetric;
  v8[0] = &off_1016E7100;
  v8[1] = &off_1016E7118;
  v9[0] = &off_1016ECDA0;
  v9[1] = &off_1016ECE00;
  v8[2] = &off_1016E7130;
  v9[2] = &off_1016ECE60;
  v2 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  v12[2] = NSLocaleMeasurementSystemUK;
  v13[1] = v2;
  v6[0] = &off_1016E7100;
  v6[1] = &off_1016E7118;
  v7[0] = &off_1016ECEC0;
  v7[1] = &off_1016ECF20;
  v6[2] = &off_1016E7130;
  v7[2] = &off_1016ECF80;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
  v13[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  v5 = qword_10195D8F8;
  qword_10195D8F8 = v4;
}

id sub_100812788(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 directions];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1008128E8;
  v10[3] = &unk_10162B2E8;
  v10[4] = *(a1 + 32);
  v5 = [v4 _geo_map:v10];

  if (([v3 isPreferredLaneForManeuver] & 1) != 0 || objc_msgSend(v3, "isLaneForManeuver"))
  {
    v6 = [v5 firstObject];
    v7 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];
    v8 = [[CPLane alloc] initWithAngles:v7 highlightedAngle:v6 isPreferred:{objc_msgSend(v3, "isPreferredLaneForManeuver")}];
  }

  else
  {
    v8 = [[CPLane alloc] initWithAngles:v5];
  }

  return v8;
}

id sub_1008128E8(uint64_t a1, void *a2)
{
  [*(a1 + 32) _angleForGeoLaneDirection:{objc_msgSend(a2, "direction")}];
  v3 = v2;
  v4 = [NSMeasurement alloc];
  v5 = +[NSUnitAngle degrees];
  v6 = [v4 initWithDoubleValue:v5 unit:v3];

  return v6;
}

id sub_100812BCC(uint64_t a1, void *a2)
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100812D5C;
  v15 = &unk_10162B298;
  v4 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v4;
  v18 = *(a1 + 48);
  v5 = a2;
  v6 = [v5 optionsWithArgumentHandler:&v12];
  [v6 setShouldUpdateFormatStrings:{0, v12, v13, v14, v15, v16}];
  v7 = [v5 composedStringWithOptions:v6];

  v19 = NSFontAttributeName;
  v8 = +[UIFont system12];
  v20 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v10 = [NSAttributedString _mapkit_attributedStringForComposedString:v7 defaultAttributes:v9];

  return v10;
}

id sub_100812E64(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100812F50;
  v9[3] = &unk_10162B298;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v4;
  v11 = *(a1 + 48);
  v5 = a2;
  v6 = [v5 optionsWithArgumentHandler:v9];
  v7 = [v5 stringWithOptions:v6];

  return v7;
}

void sub_1008130CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1008130E8(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  [*(a1 + 32) endValidRouteCoordinate];
  if (GEOPolylineCoordinateIsABeforeOrEqualToB())
  {
    [*(a1 + 40) distanceBetweenRouteCoordinate:a2 andRouteCoordinate:{objc_msgSend(*(a1 + 32), "endValidRouteCoordinate")}];
    *a6 = 1;
    a4 = v11 * a4 / a3;
  }

  v12 = *(*(a1 + 48) + 8);
  result = *(v12 + 24) + a4;
  *(v12 + 24) = result;
  return result;
}

void sub_10081371C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100813740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100813758(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (!v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 origin];
    v4 = [v5 _lightMapItemForWaypoint:v6];
  }

  v7 = *(a1 + 32);
  v8 = [v3 destination];
  v9 = [v7 _lightMapItemForWaypoint:v8];

  v10 = [v3 pointCount];
  v11 = malloc_type_malloc(24 * v10, 0x1000040504FFAC1uLL);
  v12 = v11;
  if (v10)
  {
    v13 = 0;
    v14 = v11 + 2;
    do
    {
      [*(a1 + 40) pointAt:{&v13[objc_msgSend(v3, "pointRange")]}];
      *(v14 - 2) = v15;
      *(v14 - 1) = v16;
      *v14 = v17;
      v14 += 3;
      ++v13;
    }

    while (v10 != v13);
  }

  v18 = [[CPRouteLeg alloc] initWithOrigin:v4 destination:v9 coordinates3D:v12 coordinates3DCount:v10];
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v9;

  free(v12);

  return v18;
}

void sub_100815EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100815F14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100815F2C(uint64_t a1)
{
  GEOConfigRemoveBlockListener();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_1008161E8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195D918;
  qword_10195D918 = v1;
}

uint64_t sub_100817D60(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100819684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1008196A8(uint64_t a1)
{
  sub_1008197D4();
  result = objc_getClass("RadarDraft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10195D950 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_100819718(v3);
  }

  return result;
}

Class sub_100819718(uint64_t a1)
{
  sub_1008197D4();
  result = objc_getClass("RadarComponent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10195D958 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_100819788(v3, v4, v5);
  }

  return result;
}

id sub_100819788(id a1, MapsRadarKeyword *a2, unint64_t a3)
{
  v3 = [(MapsRadarKeyword *)a2 number];

  return [NSNumber numberWithUnsignedInteger:v3];
}

void sub_1008197D4()
{
  if (!sub_100819824())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

uint64_t sub_100819824()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_10195D948;
  v5 = qword_10195D948;
  if (!qword_10195D948)
  {
    v6 = off_10162B520;
    v3[3] = _sl_dlopen();
    qword_10195D948 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_100819930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100819948(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10195D948 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100819B28(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100819BB8;
  v3[3] = &unk_10162B4C0;
  v3[4] = *(a1 + 32);
  [v2 getServiceSettingsWithCompletionHandler:v3];
}

void sub_100819BB8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  qword_10195D938 = [v5 authorizationStatus];
  objc_sync_exit(v3);

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"TapToRadarAuthorizationChangedNotification" object:*(a1 + 32)];
}

id sub_100819C90()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10195D940;
  v7 = qword_10195D940;
  if (!qword_10195D940)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100819D70;
    v3[3] = &unk_1016608A8;
    v3[4] = &v4;
    sub_100819D70(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100819D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100819D70(uint64_t a1)
{
  sub_1008197D4();
  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10195D940 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(MapsRadarDraft *)v3];
  }

  return result;
}

void sub_10081B1D4(uint64_t a1)
{
  [*(a1 + 32) updateViewForCurrentState];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

id sub_10081C690(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsString:@"%[origin]"])
  {
    v4 = *(a1 + 32);
    v5 = [v4 localSearchCompletion];
    v6 = [v5 directionIntent];
    v7 = [v6 origin];
    v8 = [*(a1 + 32) localSearchCompletion];
    v9 = [v8 directionIntentOrigin];
    v10 = [v4 _titleOfResolvedItem:v7 withSearchCompletion:v9];

    if (v10)
    {
      v11 = [v3 stringByReplacingOccurrencesOfString:@"%[origin]" withString:v10];

      v3 = v11;
    }
  }

  if ([v3 containsString:@"%[destination]"])
  {
    v12 = *(a1 + 32);
    v13 = [v12 localSearchCompletion];
    v14 = [v13 directionIntent];
    v15 = [v14 destination];
    v16 = [*(a1 + 32) localSearchCompletion];
    v17 = [v16 directionIntentDestination];
    v18 = [v12 _titleOfResolvedItem:v15 withSearchCompletion:v17];

    if (v18)
    {
      v19 = [v3 stringByReplacingOccurrencesOfString:@"%[destination]" withString:v18];

      v3 = v19;
    }
  }

  return v3;
}

void sub_10081CE18(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];
  v2 = qword_10195D960;
  qword_10195D960 = v1;
}

void sub_10081DD64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10081DD80(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10081DF04;
  v9[3] = &unk_10162B598;
  objc_copyWeak(&v10, (a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10081E06C;
  v7[3] = &unk_101653F10;
  objc_copyWeak(&v8, (a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10081E0FC;
  v5[3] = &unk_10165EF68;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addCheckmarkRowsGroupWithContent:v9 get:v7 set:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
}

void sub_10081DEE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_10081DF04(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained environmentURLs];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_loadWeakRetained((a1 + 32));
        v12 = [v11 environmentURLs];
        v13 = [v12 objectForKeyedSubscript:v10];
        v14 = [v3 addRowWithTitle:v10 value:v13];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

id sub_10081E06C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained submissionURL];
  v3 = GEOGetURL();
  v4 = [v3 absoluteString];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 selectedEnvironmentURLWithSubmissionURL:v4];

  return v6;
}

void sub_10081E0FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [v3 stringByAppendingString:@"v1/feedback/submission.arpc"];
    v3 = v6;
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained submissionURL];
      GEOURLConfigKey();
      GEOConfigSetString();

      v3 = v6;
    }
  }
}

void sub_10081EA88(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [GEOLatLng alloc];
    [*(a1 + 32) coordinate];
    v5 = [v2 initWithCoordinate:?];
  }

  else
  {
    v5 = 0;
  }

  v3 = +[GEOAPSharedStateData sharedData];
  v4 = [*(a1 + 32) _bestAvailableCountryCode];
  [v3 setMeCardHomeCountry:v4 andHomeLocation:v5];
}

void sub_10081EBE4(id a1)
{
  v4 = +[GEOAPSharedStateData sharedData];
  v1 = +[MKLocationManager sharedLocationManager];
  v2 = [v1 currentLocation];
  v3 = [v2 latLng];
  [v4 setCurrentMetro:v3];
}

void sub_10081ED40(id a1)
{
  v4 = +[GEOAPSharedStateData sharedData];
  v1 = +[MKLocationManager sharedLocationManager];
  v2 = [v1 currentLocation];
  v3 = [v2 latLng];
  [v4 setCurrentMetro:v3];
}

void sub_10081F014(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195D970;
  qword_10195D970 = v1;
}

id sub_10081FF9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 viewModel];
  v3 = [v1 _buildDeferredMenuElementForMediaIntegration:v2];

  if (v3)
  {
    v7 = v3;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
    v5 = [UIMenu menuWithChildren:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100820230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100820258(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 mediaIntegrationCell:v4 didSelectChildLink:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void sub_100820548(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100820564(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) childViewModels];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained _allMenuElementsForMediaIntegration:*(a1 + 32)];
      v7[2](v7, v6);
    }
  }

  else
  {
    v7[2](v7, &__NSArray0__struct);
  }
}

void sub_100822070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100822094(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = sub_100822290();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to load integration artwork: %@", buf, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [WeakRetained viewModel];
    v12 = *(a1 + 32);

    if (v11 == v12)
    {
      if (a4)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 0.300000012;
      }

      v14 = objc_loadWeakRetained((a1 + 40));
      v15 = [v14 artworkImageView];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1008222E4;
      v16[3] = &unk_101661340;
      objc_copyWeak(&v18, (a1 + 40));
      v17 = v7;
      [UIView transitionWithView:v15 duration:5242882 options:v16 animations:&stru_10162B620 completion:v13];

      objc_destroyWeak(&v18);
    }
  }
}

id sub_100822290()
{
  if (qword_10195D988 != -1)
  {
    dispatch_once(&qword_10195D988, &stru_10162B668);
  }

  v1 = qword_10195D980;

  return v1;
}

void sub_1008222E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained artworkImageView];
  [v2 setImage:v1];
}

void sub_100822344(id a1, BOOL a2)
{
  v2 = sub_100822290();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Successfully displayed artwork.", v3, 2u);
  }
}

void sub_1008223AC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CuratedCollectionMediaIntegrationTableViewCell");
  v2 = qword_10195D980;
  qword_10195D980 = v1;
}

void sub_1008224D4(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained viewModel];
  obj = [v3 childViewModels];

  v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v4)
  {
    v6 = *v22;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 artworkURL];
        v10 = v9 == 0;

        if (v10)
        {
          v11 = sub_100822290();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = [v8 title];
            *buf = v15;
            v26 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "View model for %@ had no artwork URL", buf, 0xCu);
          }
        }

        v13 = +[MKAppImageManager sharedImageManager];
        v14 = [v8 artworkURL];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100822754;
        v17[3] = &unk_10162B600;
        v17[4] = v8;
        objc_copyWeak(&v18, (a1 + 32));
        v19 = *(a1 + 40);
        v20 = *(a1 + 56);
        [v13 loadAppImageAtURL:v14 completionHandler:v17];

        objc_destroyWeak(&v18);
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }
}

void sub_100822754(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = sub_100822290();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) title];
      v12 = [*(a1 + 32) artworkURL];
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch app icon for %@ at url %@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = [[ISImageDescriptor alloc] initWithSize:*(a1 + 48) scale:{*(a1 + 56), *(a1 + 64)}];
    [v14 setShape:1];
    v15 = [[IFImage alloc] initWithCGImage:objc_msgSend(v7 scale:{"CGImage"), *(a1 + 64)}];
    v16 = [ISIcon alloc];
    v23 = v15;
    v17 = [NSArray arrayWithObjects:&v23 count:1];
    v18 = [v16 initWithImages:v17];

    v19 = [v18 prepareImageForDescriptor:v14];
    v20 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v19 CGImage]);
    v21 = WeakRetained[13];
    v22 = [*(a1 + 32) identifier];
    [v21 setObject:v20 forKeyedSubscript:v22];
  }
}

void sub_10082374C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1008237F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10082380C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 localizedStandardRangeOfString:*(a1 + 32)];
  v10 = v9;
  v11 = *(a1 + 120);
  v12 = v11 == 1 && v8 == 0;
  if (v12 || (v11 & 1) == 0 && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *(*(*(a1 + 72) + 8) + 24) += v9;
    [*(a1 + 40) addObject:v7];
    *(*(*(a1 + 80) + 8) + 24) = a3;
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 32));
    v13 = [v7 length];
    if (v13)
    {
      *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24) + v10 / v13;
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100823D88;
    v22[3] = &unk_10162B690;
    v23 = v7;
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    v14 = objc_retainBlock(v22);
    v15 = v14;
    v16 = a1 + 104;
    if (*(*(*(a1 + 104) + 8) + 40))
    {
      v18 = *(a1 + 112);
      v17 = a1 + 112;
      if (*(*(v18 + 8) + 40))
      {
LABEL_13:

        goto LABEL_14;
      }

      v16 = v17;
    }

    v19 = (v14[2])(v14);
    v20 = *(*v16 + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    goto LABEL_13;
  }

LABEL_14:
}

id sub_1008239E0()
{
  if (qword_10195D998 != -1)
  {
    dispatch_once(&qword_10195D998, &stru_10162B6D8);
  }

  v1 = qword_10195D990;

  return v1;
}

void sub_100823CE4(id a1)
{
  v5 = objc_alloc_init(NSMutableCharacterSet);
  v1 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v5 formUnionWithCharacterSet:v1];

  v2 = +[NSCharacterSet punctuationCharacterSet];
  [v5 formUnionWithCharacterSet:v2];

  v3 = [v5 copy];
  v4 = qword_10195D990;
  qword_10195D990 = v3;
}

_TtC4Maps22AutocompleteQueryToken *sub_100823D88(id *a1)
{
  v2 = [a1[4] length];
  v3 = [a1[5] rangeOfString:a1[4]];
  if (qword_10195D9A8 != -1)
  {
    dispatch_once(&qword_10195D9A8, &stru_10162B6F8);
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = -1;
  }

  v4 = [qword_10195D9A0 numberFromString:a1[4]];
  v5 = -[AutocompleteQueryToken initWithMatchLength:matchPosition:isNumber:matchLocation:]([_TtC4Maps22AutocompleteQueryToken alloc], "initWithMatchLength:matchPosition:isNumber:matchLocation:", v2, v3, v4 != 0, [a1[6] indexOfObject:a1[4]]);

  return v5;
}

void sub_100823E70(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_10195D9A0;
  qword_10195D9A0 = v1;

  v3 = qword_10195D9A0;

  [v3 setNumberStyle:1];
}

id sub_100824934()
{
  if (qword_10195D9B8 != -1)
  {
    dispatch_once(&qword_10195D9B8, &stru_10162B718);
  }

  v1 = qword_10195D9B0;

  return v1;
}

void sub_100824988(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavTrayHeaderView");
  v2 = qword_10195D9B0;
  qword_10195D9B0 = v1;
}

void sub_100827244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a66);
  objc_destroyWeak(&a71);
  objc_destroyWeak(&STACK[0x218]);
  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&STACK[0x268]);
  objc_destroyWeak(&STACK[0x290]);
  objc_destroyWeak(&STACK[0x2B8]);
  objc_destroyWeak(&STACK[0x2C0]);
  _Unwind_Resume(a1);
}

void sub_10082737C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 resumeNavigation];

    WeakRetained = v3;
  }
}

void sub_1008273D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 viewOtherStations];

    WeakRetained = v3;
  }
}

void sub_100827434(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 pauseNavigation];

    WeakRetained = v3;
  }
}

void sub_100827490(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 endNavigation];

    WeakRetained = v3;
  }
}

void sub_1008274EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 switchToWalking];

    WeakRetained = v3;
  }
}

void sub_100827548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 viewFindMy];

    WeakRetained = v3;
  }
}

void sub_1008275A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 startCustomRoute];

    WeakRetained = v3;
  }
}

void sub_100828B00(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ChromeMapSelection");
  v2 = qword_10195D9C0;
  qword_10195D9C0 = v1;
}

void sub_10082B75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10082B794(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRouteSearchSuggestionsTableViewHidden:a2 ^ 1u];
}

void sub_10082B7E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained cardPresentationController];
  if ([v2 containeeLayout] <= 2)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 cardPresentationController];
    v5 = [v4 containeeLayout];

    if (v5 > 3)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained cardPresentationController];
    [v2 updateHeightForCurrentLayout];
  }
}

void sub_10082C244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10082C26C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _displayRouteOptions];
}

void sub_10082D86C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dismissRoutePlanningPlaceCardIfNeeded];

  v3 = [*(a1 + 32) dataCoordinator];
  [v3 updateCurrentRouteDisplayedMapRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void sub_10082E9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10082EA30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained cardPresentationController];
    v3 = [v2 containeeLayout];

    WeakRetained = v5;
    if ((v3 - 1) <= 1)
    {
      v4 = [v5 cardPresentationController];
      [v4 updateHeightForCurrentLayout];

      WeakRetained = v5;
    }
  }
}

void sub_10082EAB8(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained dataCoordinator];
    [v5 updateTiming:v6];
  }
}

void sub_10082EB2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained cardPresentationController];
    [v2 updateHeightForCurrentLayout];

    WeakRetained = v3;
  }
}

void sub_10082F7A0(uint64_t a1)
{
  v2 = sub_100798A3C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Launching TTR draft with a familiar route wrong", v4, 2u);
  }

  [*(a1 + 32) setTitle:@"Familiar route wrong"];
  (*(*(a1 + 40) + 16))();
  v3 = +[MapsRadarController sharedInstance];
  [v3 launchTTRWithRadar:*(a1 + 32)];
}

void sub_10082F84C(uint64_t a1)
{
  v2 = sub_100798A3C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Launching TTR draft with a familiar route missing", v4, 2u);
  }

  [*(a1 + 32) setTitle:@"Familiar route missing"];
  (*(*(a1 + 40) + 16))();
  v3 = +[MapsRadarController sharedInstance];
  [v3 launchTTRWithRadar:*(a1 + 32)];
}

void sub_10082F8F8(uint64_t a1)
{
  v2 = sub_100798A3C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Launching TTR draft with something unrelated to familiar routes", v4, 2u);
  }

  v3 = +[MapsRadarController sharedInstance];
  [v3 launchTTRWithRadar:*(a1 + 32)];
}

void sub_10082F984(id a1, MapsRadarDraft *a2)
{
  v2 = a2;
  [(MapsRadarDraft *)v2 addDiagnosticExtensionID:@"com.apple.CoreRoutine.RTDiagnosticExtension"];
  [(MapsRadarDraft *)v2 setClassification:6];
  [(MapsRadarDraft *)v2 setReproducibility:6];
  v3 = +[MapsRadarComponent mapsLocationIntelligenceComponent];
  [(MapsRadarDraft *)v2 setComponent:v3];
}

NSString *__cdecl sub_10082FA0C(id a1, GEOComposedRoute *a2, unint64_t a3)
{
  v3 = a2;
  if ([(GEOComposedRoute *)v3 isFamiliarRoute])
  {
    v4 = [(GEOComposedRoute *)v3 uniqueRouteID];

    v5 = [v4 UUIDString];
    v6 = [NSString stringWithFormat:@"%@ <-- familiar route", v5];
  }

  else
  {
    v4 = [(GEOComposedRoute *)v3 uniqueRouteID];

    v6 = [v4 UUIDString];
  }

  return v6;
}

void sub_1008309A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained shouldRefreshRoutePlanningWithCurrentGarage:*(a1 + 32) previousGarage:WeakRetained[18]];
    objc_storeStrong(v3 + 17, *(a1 + 32));
    [v3 _refreshSelectedVehicleDisplay];
    if (v4)
    {
      v5 = sub_100798A3C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Garage did change significantly, updating route planning", v6, 2u);
      }

      [v3 _cancelAutoLaunch];
      objc_storeStrong(v3 + 18, *(a1 + 32));
      [v3 _refreshRoutePlanning];
    }
  }
}

void sub_1008317B4(uint64_t a1)
{
  v1 = [*(a1 + 32) cardPresentationController];
  [v1 updateHeightForCurrentLayout];
}

id *sub_1008317F8(id *result, int a2)
{
  if (a2)
  {
    return [result[4] setIsAnimatingHeightForMediumLayout:0];
  }

  return result;
}

id sub_1008319B0()
{
  if (qword_10195D9E8 != -1)
  {
    dispatch_once(&qword_10195D9E8, &stru_10162B9A8);
  }

  v1 = qword_10195D9E0;

  return v1;
}

void sub_100831A04(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RoutePlanningTray");
  v2 = qword_10195D9E0;
  qword_10195D9E0 = v1;
}

void sub_100832374(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1008323B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 presentRoutePlanningViewType:6];
}

void sub_10083240C(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 openURL:*(a1 + 32) options:&__NSDictionary0__struct completionHandler:0];
}

void sub_100832470(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 viewController:WeakRetained openTransitIncidents:*(a1 + 32) fromView:0 withUserInfo:0];
}

void sub_1008324DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _maps_mapsSceneDelegate];
  v2 = [v1 appCoordinator];
  v3 = [v2 baseActionCoordinator];

  [v3 viewControllerShowOfflineMaps:WeakRetained];
}

void sub_100832564(id a1, id a2)
{
  v2 = +[VGVirtualGarageService sharedService];
  [v2 virtualGarageSelectVehicle:0];
}

void sub_1008325B0(id a1, id a2)
{
  v2 = +[VGVirtualGarageService sharedService];
  [v2 virtualGarageSelectVehicle:0];
}

void sub_100832ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100832F08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100832F20(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 shouldAlwaysShowAdvisoryCard])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100832F98(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = sub_100798A3C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Familiar Route Footer is tapped to open the Settings App .", buf, 2u);
      }

      v9 = [*(a1 + 32) delegate];
      [v9 presentMapsSettingInSettingsApp];
    }

    else if (*(*(*(a1 + 40) + 8) + 40) && [WeakRetained _areWaypointsInCountryCode:@"FR"])
    {
      v10 = [v7 delegate];
      v11 = [v7 dataCoordinator];
      v12 = [v11 advisoriesInfo];
      [v10 setRoutePlanningAdvisoriesInfo:v12];

      v13 = [v7 delegate];
      [v13 setRoutePlanningIncidentsSourceView:v5];

      v9 = [v7 delegate];
      [v9 presentRoutePlanningViewType:5];
    }

    else
    {
      v9 = sub_100798A3C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
      }
    }
  }
}

void sub_100834B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100834B8C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    WeakRetained = sub_100798A3C();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_INFO, "Navigation simulation popup was dismissed.", v8, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    v8[2] = *(a2 + 32);
    v9 = *(a2 + 48);
    [WeakRetained _startNavigationForRouteCollection:v6 navigationDetailsOptions:v8];
  }
}

void sub_100834CFC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100832F08;
    v19 = sub_100832F18;
    v20 = 0;
    v5 = [PushNotificationPrompt alloc];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100834E70;
    v12[3] = &unk_101660778;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v14 = &v15;
    v12[4] = v6;
    v13 = v7;
    v8 = [(PushNotificationPrompt *)v5 initWithReason:4 authorizationStatus:a3 completion:v12];
    v9 = v16[5];
    v16[5] = v8;

    [*(a1 + 32) _maps_topMostPresentViewController:v16[5] animated:1 completion:0];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);

    [v10 _promptForSimulationAndStartNavigationForRouteCollection:v11];
  }
}

void sub_100834E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100834E70(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) presentingViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100834F20;
  v4[3] = &unk_101661A90;
  v3 = a1[5];
  v4[4] = a1[4];
  v5 = v3;
  [v2 dismissViewControllerAnimated:1 completion:v4];
}

void sub_100835FA8(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadSections:*(a1 + 40)];

  v3 = [*(a1 + 32) collectionView];
  [v3 deleteSections:*(a1 + 48)];

  v4 = [*(a1 + 32) collectionView];
  [v4 insertSections:*(a1 + 56)];
}

void sub_1008362A4(uint64_t a1)
{
  v3 = [*(a1 + 32) collectionView];
  v2 = [NSIndexSet indexSetWithIndex:*(a1 + 40)];
  [v3 reloadSections:v2];
}

id sub_100836318(uint64_t a1)
{
  result = [*(a1 + 32) isDisplayingSingleTrip];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _scrollToCellToShowAtMediumLayoutAnimated:0];
  }

  return result;
}

void sub_100838324(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100838348(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = sub_100022C48();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get virtual garage with error: %@", buf, 0xCu);
      }
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100838498;
      v10[3] = &unk_101661A90;
      v10[4] = WeakRetained;
      v11 = v5;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }
}

id sub_100838498(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 136), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _refreshSelectedVehicleDisplay];
}

void sub_100839F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100839F40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _shouldShowPedestrianARTeachableMomentCard];

  v4 = sub_100798A3C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Showing feature intro teachable moment card", buf, 2u);
    }

    v4 = objc_loadWeakRetained((a1 + 32));
    v6 = [v4 delegate];
    [v6 showPedestrianARFeatureIntroTeachableMomentCard];
  }

  else if (v5)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "No longer eligible to show teachable moment card", v7, 2u);
  }
}

void sub_10083AE10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPedestrianARFeatureIntroTeachableMomentCardIfNecessary];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary];
}

void sub_10083AF60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPedestrianARFeatureIntroTeachableMomentCardIfNecessary];
}

id *sub_10083B950(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] viewControllerShowOfflineMaps:0];
  }

  return result;
}

void sub_10083C488(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = [[RoutePlanningDisplayHintsRefinementModel alloc] initWithDelegate:a1[5] transitPreferences:a1[6] displayHints:a1[7] refinementField:a2];
  [v2 addObject:v3];
}

void sub_10083D488(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPedestrianARFeatureIntroTeachableMomentCardIfNecessary];
}

void sub_10083E9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10083E9F8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isFamiliarRoute];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_10083F920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10083F940(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTransitionScrollPosition];
}

void sub_100840BC4(uint64_t a1)
{
  v2 = [*(a1 + 32) labelViewModel];
  [v2 setString:*(a1 + 40)];

  v3 = [*(a1 + 32) distanceLabel];
  [v3 setNeedsLayout];
}

void sub_100841744(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sub_1007982D8();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = [v5 description];
        v12 = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "AppClip request for URL: %@ failed with error: %@", &v12, 0x16u);
      }
    }

    else if (v7)
    {
      v10 = *(a1 + 32);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "AppClip request for URL: %@ failed", &v12, 0xCu);
    }

    v11 = +[MKSystemController sharedInstance];
    [v11 openURL:*(a1 + 32) completionHandler:0];
  }
}

void sub_100841AAC(uint64_t a1)
{
  [*(a1 + 32) _updateHeaderAndTableViewValues];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_1008422C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1008422EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[153] = 0;
    v6 = WeakRetained;
    v2 = [WeakRetained errorView];
    [v2 removeFromSuperview];

    [v6 _attachLoadingView];
    v3 = [v6 collectionProvider];
    [v3 refresh];

    v4 = [v6 errorView];
    [v4 setButtonTitle:0 handler:0];

    v5 = [v6 analyticsController];
    [v5 logTryAgain];

    WeakRetained = v6;
  }
}

void sub_100842518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100842534(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_1007982D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error when refining mapItem prior to adding to user collection: %@", buf, 0xCu);
    }
  }

  v8 = [v5 firstObject];
  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [(CollectionEditSession *)[CollectionAddOrRemoveSession alloc] initWithCollection:a1[4]];
    [(CollectionEditSession *)v10 setSuppressAnalytics:1];
    [(CollectionEditSession *)v10 addSelectedObject:v8];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100842810;
    v19[3] = &unk_10165E240;
    v20 = a1[4];
    v21 = a1[6];
    [(CollectionEditSession *)v10 setResultBlock:v19];
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v12 = WeakRetained;
    if (WeakRetained)
    {
      if (a1[4])
      {
        objc_storeStrong(WeakRetained + 17, v10);
        v13 = [(CollectionEditSession *)v10 collection];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100842904;
        v16[3] = &unk_10165D288;
        objc_copyWeak(&v18, a1 + 7);
        v17 = v10;
        [(CollectionAddOrRemoveSession *)v17 applyToCollection:v13 completion:v16];

        objc_destroyWeak(&v18);
      }

      else
      {
        v14 = objc_alloc_init(MUPresentationOptions);
        [v14 setSourceView:a1[5]];
        [a1[5] bounds];
        [v14 setSourceRect:?];
        v15 = [v12 actionDelegate];
        [v15 curatedCollectionViewController:v12 pickCollectionWithSession:v10 presentationOptions:v14];
      }
    }
  }
}

void sub_100842810(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1007982D8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) identifier];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error adding place to collection '%@': %@", &v7, 0x16u);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }
}

void sub_100842904(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10000BDA4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error saving collection session: %@", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 17);
    if (v7 == *(a1 + 32))
    {
      *(WeakRetained + 17) = 0;
    }
  }
}

void sub_100842B64(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_1007982D8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error when refining mapItem prior to adding to Library: %@", &v8, 0xCu);
    }
  }

  else
  {
    v7 = [a2 firstObject];
    if (v7)
    {
      [*(a1 + 32) addPlaceToLibraryWithRefinedMapItem:v7];
    }
  }
}

id sub_1008434F8(uint64_t a1)
{
  [*(*(a1 + 32) + 128) contentInset];
  v3 = *(*(a1 + 32) + 128);

  return [v3 setContentOffset:{0.0, -v2}];
}

id sub_10084354C(uint64_t a1)
{
  v2 = [*(a1 + 32) fakeHeaderView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) cardHeaderView];
  [v3 setAlpha:1.0];

  v4 = *(*(a1 + 32) + 128);

  return [v4 setAlpha:1.0];
}

void sub_1008435C8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PPTTest_CuratedCollectionView_DidDisplayCollection" object:*(a1 + 32)];
}

id sub_100843878()
{
  if (qword_10195D9F8 != -1)
  {
    dispatch_once(&qword_10195D9F8, &stru_10162BAE0);
  }

  v1 = qword_10195D9F0;

  return v1;
}

void sub_1008438CC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CuratedCollectionViewController");
  v2 = qword_10195D9F0;
  qword_10195D9F0 = v1;
}

void sub_1008445F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a36);
  objc_destroyWeak((v37 - 160));
  _Unwind_Resume(a1);
}

void sub_1008446D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addToMyGuidesMenuButtonTapped];
}

void sub_100844714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained headerViewPublisherLogoTapped];
}

void sub_100844754(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained seeAllGuidesMenuButtonTapped];
}

void sub_100844794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained websiteMenuButtonTapped];
}

void sub_1008447D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportAnIssueMenuButtonTapped];
}

void sub_100844898(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_1007982D8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error saving curated collection to history: %@", &v4, 0xCu);
    }
  }
}

void sub_100845640(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[153] & 1) == 0)
  {
    v3 = [v2 contentView];
    v4 = [*(a1 + 32) loadingView];
    [v3 addSubview:v4];

    v25 = [*(a1 + 32) loadingView];
    v23 = [v25 topAnchor];
    v24 = [*(a1 + 32) view];
    v22 = [v24 topAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v26[0] = v21;
    v20 = [*(a1 + 32) loadingView];
    v18 = [v20 leadingAnchor];
    v19 = [*(a1 + 32) contentView];
    v17 = [v19 leadingAnchor];
    v16 = [v18 constraintEqualToAnchor:v17];
    v26[1] = v16;
    v15 = [*(a1 + 32) loadingView];
    v5 = [v15 trailingAnchor];
    v6 = [*(a1 + 32) contentView];
    v7 = [v6 trailingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    v26[2] = v8;
    v9 = [*(a1 + 32) loadingView];
    v10 = [v9 bottomAnchor];
    v11 = [*(a1 + 32) contentView];
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v26[3] = v13;
    v14 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v14];
  }
}

id sub_100848440()
{
  if (qword_10195DA08 != -1)
  {
    dispatch_once(&qword_10195DA08, &stru_10162BB00);
  }

  v1 = qword_10195DA00;

  return v1;
}

void sub_100848494(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CardFramingTransitionController");
  v2 = qword_10195DA00;
  qword_10195DA00 = v1;
}

void sub_100849C54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(*(a1 + 32) + 104) isEqual:*(a1 + 40)])
  {
    [*(a1 + 32) _setImageForSnapshot:v4];
  }
}

void sub_10084AB94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10084AC14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pressedDownload];
}

void sub_10084AC54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pressedDirections];
}

void sub_10084AC94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pressedEdit];
}

void sub_10084ACD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pressedDelete];
}

void sub_10084D5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10084D604(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10084D61C(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___GEOMapItem])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v5];
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
  }

  (*(*(a1 + 32) + 16))();
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v9 = [[NSString alloc] initWithFormat:@"Finished looking up the name after issuing a Ticket. MapItem has been cleaned.  %llu", objc_msgSend(v5, "_muid")];
    *buf = 136315394;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }
}

void sub_10084D978(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v4 = [[NSString alloc] initWithFormat:@"Enabling applications: %@", *(a1 + 32)];
    *buf = 136315394;
    v18 = v3;
    v19 = 2112;
    *v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          [v11 enableForUse];
          [WeakRetained _updateRideOptionStatusMapForOrigin:WeakRetained[5] destination:WeakRetained[6] application:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "RideBookingDataCoordinator.m";
      v19 = 1026;
      *v20 = 1057;
      *&v20[4] = 2082;
      *&v20[6] = "[RideBookingDataCoordinator enableRideBookingApplications:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10084DE70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v5 = [[NSString alloc] initWithFormat:@"Sending a request to cancel the ride %@", *(a1 + 32)];
      *buf = 136315394;
      v18 = v4;
      v19 = 2112;
      v20[0] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v6 = WeakRetained[4];
    v7 = [*(a1 + 32) application];
    v8 = [v7 identifier];
    v9 = [v6 objectForKey:v8];

    v10 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10084E0DC;
    v14[3] = &unk_10162BDE0;
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v15 = v11;
    v16 = v12;
    v14[4] = *(a1 + 40);
    [v9 cancelRideWithRideStatus:v10 completion:v14];
    v13 = v15;
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "RideBookingDataCoordinator.m";
      v19 = 1026;
      LODWORD(v20[0]) = 1026;
      WORD2(v20[0]) = 2082;
      *(v20 + 6) = "[RideBookingDataCoordinator cancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v9 = v13;
  }
}

void sub_10084E0DC(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v6 = [NSString alloc];
      v7 = NSStringFromSelector(*(a1 + 48));
      v8 = [v3 localizedDescription];
      v9 = [v6 initWithFormat:@"Received an error in %@:, %@", v7, v8];
      *buf = 136315394;
      v13 = v5;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }
  }

  else
  {
    GEOConfigGetDouble();
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    dispatch_after(v11, *(*(a1 + 32) + 16), &stru_10162BDB8);
  }
}

void sub_10084E278(id a1)
{
  v1 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v3 = [[NSString alloc] initWithFormat:@"Sending a MapsSuggestionsRidesharingSourceShouldRefresh notify. Triggered by a successful cancellation."];
    v4 = 136315394;
    v5 = v2;
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", &v4, 0x16u);
  }

  notify_post("MapsSuggestionsRidesharingSourceShouldRefresh");
}

void sub_10084E610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v5 = [[NSString alloc] initWithFormat:@"Checking if ride can be cancelled for ride %@", *(a1 + 32)];
      *buf = 136315394;
      v16 = v4;
      v17 = 2112;
      v18[0] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v6 = WeakRetained[4];
    v7 = [*(a1 + 32) application];
    v8 = [v7 identifier];
    v9 = [v6 objectForKey:v8];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10084E878;
    v12[3] = &unk_10162BD98;
    v14 = *(a1 + 56);
    v10 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v9 checkIfCanCancelRideWithRideStatus:v10 completion:v12];
    v11 = v13;
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "RideBookingDataCoordinator.m";
      v17 = 1026;
      LODWORD(v18[0]) = 1004;
      WORD2(v18[0]) = 2082;
      *(v18 + 6) = "[RideBookingDataCoordinator checkIfCanCancelRideWithRideStatus:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v9 = v11;
  }
}

void sub_10084E878(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v12 = [NSString alloc];
      v13 = NSStringFromSelector(*(a1 + 40));
      v14 = [v9 localizedDescription];
      v15 = [v12 initWithFormat:@"Received an error in %@:, %@", v13, v14];
      *buf = 136315394;
      v17 = v11;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10084ECE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v5 = [[NSString alloc] initWithFormat:@"Sending feedback for ride status: %@", *(a1 + 32)];
      *buf = 136315394;
      v18 = v4;
      v19 = 2112;
      v20[0] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v6 = WeakRetained[4];
    v7 = [*(a1 + 32) application];
    v8 = [v7 identifier];
    v9 = [v6 objectForKey:v8];

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10084EF5C;
    v14[3] = &unk_10162BD48;
    v16 = *(a1 + 72);
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    [v9 sendFeedbackForRideStatus:v10 feedbackRating:v11 feedbackTip:v12 completion:v14];
    v13 = v15;
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "RideBookingDataCoordinator.m";
      v19 = 1026;
      LODWORD(v20[0]) = 979;
      WORD2(v20[0]) = 2082;
      *(v20 + 6) = "[RideBookingDataCoordinator sendFeedbackForRideStatus:feedbackRating:feedbackTip:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v9 = v13;
  }
}

void sub_10084EF5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v6 = [NSString alloc];
      v7 = NSStringFromSelector(*(a1 + 40));
      v8 = [v3 localizedDescription];
      v9 = [v6 initWithFormat:@"Received an error in %@:, %@", v7, v8];
      *buf = 136315394;
      v11 = v5;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10084F290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v5 = [NSString alloc];
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = [v5 initWithFormat:@"%@, %@", v6, *(a1 + 32)];
      *buf = 136315394;
      v10 = v4;
      v11 = 2112;
      v12[0] = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v8 = [*(a1 + 32) application];
    [WeakRetained _updateRideStatusMapWithApplication:v8 status:*(a1 + 32)];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "RideBookingDataCoordinator.m";
      v11 = 1026;
      LODWORD(v12[0]) = 961;
      WORD2(v12[0]) = 2082;
      *(v12 + 6) = "[RideBookingDataCoordinator rideStatusDidChange:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10084F678(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isValidRide])
    {
      if ([*(a1 + 32) phase] == 4)
      {
        v3 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
          v5 = [[NSString alloc] initWithFormat:@"Handling completed rides"];
          *buf = 136315394;
          v51 = v4;
          v52 = 2112;
          v53[0] = v5;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        v6 = WeakRetained[23];
        v7 = *(a1 + 32);
        v8 = [*(a1 + 40) identifier];
        [v6 setObject:v7 forKey:v8];

        v9 = WeakRetained[24];
        v10 = [*(a1 + 40) identifier];
        v11 = [v9 objectForKey:v10];
        v12 = [v11 mutableCopy];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = objc_opt_new();
        }

        v15 = v14;

        v29 = [*(a1 + 32) identifier];
        v21 = [v15 objectForKey:v29];

        if (v21)
        {
          [v21 timeIntervalSinceNow];
          v31 = v30;
          GEOConfigGetDouble();
          if (v31 >= -v32)
          {
LABEL_24:
            v44 = WeakRetained[24];
            v45 = [*(a1 + 40) identifier];
            [v44 setObject:v15 forKey:v45];

            v46 = +[NSUserDefaults standardUserDefaults];
            [v46 setObject:WeakRetained[24] forKey:@"RideBookingCompletedRideIdentifiersAndDates"];

            v47 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              v48 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
              v49 = [[NSString alloc] initWithFormat:@"Completed rides: %@", WeakRetained[24]];
              *buf = 136315394;
              v51 = v48;
              v52 = 2112;
              v53[0] = v49;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
            }

            [WeakRetained _broadcastRideStatusDidChange];
            goto LABEL_27;
          }

          v33 = WeakRetained[23];
          v34 = [*(a1 + 40) identifier];
          [v33 removeObjectForKey:v34];

          v35 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
            v37 = [NSString alloc];
            v38 = [*(a1 + 40) identifier];
            v39 = [v37 initWithFormat:@"Ride is too old, removing application from the status map: %@", v38];
            *buf = 136315394;
            v51 = v36;
            v52 = 2112;
            v53[0] = v39;
LABEL_22:
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
          }
        }

        else
        {
          v40 = objc_alloc_init(NSDate);
          v41 = [*(a1 + 32) identifier];
          [v15 setObject:v40 forKey:v41];

          v35 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v42 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
            v43 = [NSString alloc];
            v38 = [*(a1 + 40) identifier];
            v39 = [v43 initWithFormat:@"Saving the ride identifier %@ with a time stamp", v38];
            *buf = 136315394;
            v51 = v42;
            v52 = 2112;
            v53[0] = v39;
            goto LABEL_22;
          }
        }

        goto LABEL_24;
      }

      v22 = WeakRetained[23];
      v23 = *(a1 + 32);
      v24 = [*(a1 + 40) identifier];
      [v22 setObject:v23 forKey:v24];

      [WeakRetained _broadcastRideStatusDidChange];
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v25 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v26 = [NSString alloc];
        v27 = NSStringFromSelector(*(a1 + 56));
        v28 = [v26 initWithFormat:@"Returning from %@ because status.phase != RideBookingRideStatusPhaseCompleted. status.phase is %lu", v27, objc_msgSend(*(a1 + 32), "phase")];
        *buf = 136315394;
        v51 = v25;
        v52 = 2112;
        v53[0] = v28;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = WeakRetained[23];
      v17 = [*(a1 + 40) identifier];
      [v16 removeObjectForKey:v17];

      [WeakRetained _broadcastRideStatusDidChange];
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v19 = [NSString alloc];
        v20 = NSStringFromSelector(*(a1 + 56));
        v21 = [v19 initWithFormat:@"Returning from %@ because ride it's not a valid ride", v20];
        *buf = 136315394;
        v51 = v18;
        v52 = 2112;
        v53[0] = v21;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);

LABEL_27:
      }
    }
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v51 = "RideBookingDataCoordinator.m";
      v52 = 1026;
      LODWORD(v53[0]) = 884;
      WORD2(v53[0]) = 2082;
      *(v53 + 6) = "[RideBookingDataCoordinator _updateRideStatusMapWithApplication:status:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10084FF94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100850048;
  v3[3] = &unk_10162BCF8;
  objc_copyWeak(v4, (a1 + 40));
  v4[1] = *(a1 + 48);
  [v2 getRideStatusWithCompletion:v3];
  objc_destroyWeak(v4);
}

void sub_100850048(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = v5;
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v11 = [NSString alloc];
      v12 = NSStringFromSelector(*(a1 + 40));
      v13 = [v11 initWithFormat:@"%@, Got ride status: %@", v12, v8];
      *buf = 136315394;
      v16 = v10;
      v17 = 2112;
      v18[0] = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v14 = [v8 application];
    [WeakRetained _updateRideStatusMapWithApplication:v14 status:v8];
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "RideBookingDataCoordinator.m";
      v17 = 1026;
      LODWORD(v18[0]) = 868;
      WORD2(v18[0]) = 2082;
      *(v18 + 6) = "[RideBookingDataCoordinator _updateRideStatusMapForApplication:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v8 = v14;
  }
}

void sub_1008504D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[22] removeObject:*(a1 + 32)];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v6 = [[NSString alloc] initWithFormat:@"Removed RideStatus observer: %@", *(a1 + 32)];
      *buf = 136315394;
      v8 = v5;
      v9 = 2112;
      v10[0] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "RideBookingDataCoordinator.m";
      v9 = 1026;
      LODWORD(v10[0]) = 829;
      WORD2(v10[0]) = 2082;
      *(v10 + 6) = "[RideBookingDataCoordinator removeRideBookingDataCoordinatorRideStatusObserver:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1008508F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "RideBookingDataCoordinator.m";
      v13 = 1026;
      LODWORD(v14[0]) = 810;
      WORD2(v14[0]) = 2082;
      *(v14 + 6) = "[RideBookingDataCoordinator addRideBookingDataCoordinatorRideStatusObserver:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  [WeakRetained[22] addObject:*(a1 + 32)];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [[NSString alloc] initWithFormat:@"Added RideStatus observer: %@", *(a1 + 32)];
    *buf = 136315394;
    v12 = v5;
    v13 = 2112;
    v14[0] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v3[23] copy];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v10 = [[NSString alloc] initWithFormat:@"Notifying observer %@ of ride status change %@", *(a1 + 32), v7];
      *buf = 136315394;
      v12 = v9;
      v13 = 2112;
      v14[0] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    [*(a1 + 32) rideStatusMapDidChange:v7];
LABEL_11:
  }
}

void sub_100850E08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *v22 = 0;
    *&v22[8] = v22;
    *&v22[16] = 0x3032000000;
    *&v22[24] = sub_10084D604;
    v23 = sub_10084D614;
    v24 = 0;
    [WeakRetained _stopRequestRideExpireTimer];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v6 = [[NSString alloc] initWithFormat:@"Requested ride with ride option %@", *(*(a1 + 32) + 104)];
      *buf = 136315394;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v7 = *(v3 + 15);
    v8 = *(v3 + 16);
    v9 = *(v3 + 13);
    v10 = *(v3 + 14);
    v11 = [*(v3 + 20) numberOfPassengers];
    v12 = *(v3 + 19);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100851124;
    v14[3] = &unk_10162BCD0;
    objc_copyWeak(v17, (a1 + 48));
    v17[1] = *(a1 + 56);
    v16 = v22;
    v15 = *(a1 + 40);
    [v10 getRideStatusWithPickupLocation:v7 dropOffLocation:v8 rideOption:v9 partySize:v11 paymentMethod:v12 completion:v14];

    objc_destroyWeak(v17);
    _Block_object_dispose(v22, 8);
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136446722;
      *&v22[4] = "RideBookingDataCoordinator.m";
      *&v22[12] = 1026;
      *&v22[14] = 775;
      *&v22[18] = 2082;
      *&v22[20] = "[RideBookingDataCoordinator requestRideWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", v22, 0x1Cu);
    }
  }
}

void sub_1008510EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100851124(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v7)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = v6;
        v10 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v11 = [NSString alloc];
        v12 = NSStringFromSelector(*(a1 + 56));
        v13 = [v7 localizedDescription];
        v14 = [v11 initWithFormat:@"Received an error in %@:, %@", v12, v13];
        *buf = 136315394;
        v21 = v10;
        v6 = v19;
        v22 = 2112;
        v23[0] = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v17 = [[NSString alloc] initWithFormat:@"Received ride status: %@", *(*(*(a1 + 40) + 8) + 40)];
      *buf = 136315394;
      v21 = v16;
      v22 = 2112;
      v23[0] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    [WeakRetained _updateRideStatusMapWithApplication:WeakRetained[14] status:*(*(*(a1 + 40) + 8) + 40)];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "RideBookingDataCoordinator.m";
      v22 = 1026;
      LODWORD(v23[0]) = 785;
      WORD2(v23[0]) = 2082;
      *(v23 + 6) = "[RideBookingDataCoordinator requestRideWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: anotherStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1008516AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v5 = [NSString alloc];
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = [v5 initWithFormat:@"%@, updated passengers from %lu to %lu", v6, objc_msgSend(WeakRetained[20], "numberOfPassengers"), objc_msgSend(*(a1 + 32), "numberOfPassengers")];
      *buf = 136315394;
      v11 = v4;
      v12 = 2112;
      v13[0] = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = WeakRetained[20];
    WeakRetained[20] = v8;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "RideBookingDataCoordinator.m";
      v12 = 1026;
      LODWORD(v13[0]) = 762;
      WORD2(v13[0]) = 2082;
      *(v13 + 6) = "[RideBookingDataCoordinator updateRequestRidePassengers:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100851A74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 19, *(a1 + 32));
    [v3 _updateRequestRideStatus:v3[21]];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "RideBookingDataCoordinator.m";
      v7 = 1026;
      v8 = 749;
      v9 = 2082;
      v10 = "[RideBookingDataCoordinator updateRequestRidePaymentMethod:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_100851D48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v5 = [NSString alloc];
      v6 = [WeakRetained[14] identifier];
      v7 = [v5 initWithFormat:@"%@ updateRequestRideStartingWaypointCoordinate: (%f, %f)", v6, *(a1 + 40), *(a1 + 48)];
      *buf = 136315394;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_10084D604;
    v20 = sub_10084D614;
    v21 = 0;
    v8 = [RideBookingRequestRideStatus statusWithApplication:WeakRetained[14] rideOption:WeakRetained[13] startingWaypointCoordinate:WeakRetained[15] origin:WeakRetained[16] destination:1 loadingRequestRideStatus:0 etaMinutesAtStartWaypoint:*(a1 + 40), *(a1 + 48)];
    v9 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v8;

    [WeakRetained _updateRequestRideStatus:*(*&buf[8] + 40)];
    v10 = +[GEOMapService sharedService];
    v11 = [v10 defaultTraits];

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = +[GEOMapService sharedService];
    v15 = [v14 ticketForReverseGeocodeCoordinate:0 includeEntryPoints:0 shiftLocationsIfNeeded:1 preserveOriginalLocation:v11 traits:{v12, v13}];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1008520D0;
    v17[3] = &unk_10162BCA8;
    objc_copyWeak(&v18, (a1 + 32));
    v17[4] = WeakRetained;
    v17[5] = buf;
    [v15 submitWithHandler:v17 networkActivity:0];
    objc_destroyWeak(&v18);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "RideBookingDataCoordinator.m";
      *&buf[12] = 1026;
      *&buf[14] = 667;
      *&buf[18] = 2082;
      *&buf[20] = "[RideBookingDataCoordinator updateRequestRideStartingWaypointCoordinate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100852098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1008520D0(uint64_t a1, void *a2, void *a3)
{
  v41 = a2;
  v40 = a3;
  if (v40)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v7 = [NSString alloc];
      v8 = [v40 localizedDescription];
      v9 = [v7 initWithFormat:@"Received an error inside the completion handler of -[MKMapServiceTicket submitWithHandler:networkActivity:]:, %@", v8];
      *buf = 136315394;
      v47 = v6;
      v48 = 2112;
      v49[0] = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = [v41 firstObject];
    if ([v11 conformsToProtocol:&OBJC_PROTOCOL___GEOMapItem])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v13];
    if (v14)
    {
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v39 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v16 = [NSString alloc];
        v17 = [WeakRetained[14] identifier];
        [v14 coordinate];
        v20 = [NSString stringWithFormat:@"%+.8f, %+.8f", v18, v19];
        v21 = [v14 addressDictionary];
        v22 = [v16 initWithFormat:@"%@ Sucessfully rev-geo'd pickup coordinate. Pickup Coordinates: %@, Address: %@", v17, v20, v21];
        *buf = 136315394;
        v47 = v39;
        v48 = 2112;
        v49[0] = v22;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      v23 = [CLPlacemark placemarkWithGEOMapItem:v14];
      v24 = WeakRetained[15];
      WeakRetained[15] = v23;

      v25 = +[NSUUID UUID];
      v26 = [v25 copy];
      v27 = WeakRetained[18];
      WeakRetained[18] = v26;

      v28 = WeakRetained[15];
      v29 = WeakRetained[16];
      v30 = WeakRetained[13];
      v31 = WeakRetained[14];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10085260C;
      v42[3] = &unk_10162BC80;
      objc_copyWeak(&v45, (a1 + 48));
      v32 = v25;
      v33 = *(a1 + 40);
      v43 = v32;
      v44 = v33;
      [v31 getRequestRideStatusWithPickupLocation:v28 dropOffLocation:v29 rideOption:v30 completion:v42];

      objc_destroyWeak(&v45);
    }

    else
    {
      v32 = [RideBookingRequestRideStatus statusWithApplication:*(*(a1 + 32) + 112) error:2];
      [WeakRetained _updateRequestRideStatus:v32];
      v34 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v36 = [NSString alloc];
        v37 = [WeakRetained[14] identifier];
        v38 = [v36 initWithFormat:@"%@ Rev-geo of pickup coordinate failed. Returning.", v37];
        *buf = 136315394;
        v47 = v35;
        v48 = 2112;
        v49[0] = v38;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v47 = "RideBookingDataCoordinator.m";
      v48 = 1026;
      LODWORD(v49[0]) = 698;
      WORD2(v49[0]) = 2082;
      *(v49 + 6) = "[RideBookingDataCoordinator updateRequestRideStartingWaypointCoordinate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: anotherStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v13 = v14;
  }
}

void sub_10085260C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v7)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v11 = [NSString alloc];
        v12 = [v7 localizedDescription];
        v13 = [v11 initWithFormat:@"Received an error inside the completion block of -[RideBookingApplication getRequestRideStatusWithPickupLocation:dropOffLocation:rideOption:completion:], %@", v12];
        *buf = 136315394;
        v21 = v10;
        v22 = 2112;
        v23[0] = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }
    }

    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v16 = [[NSString alloc] initWithFormat:@"Got request ride status %@", v6];
      *buf = 136315394;
      v21 = v15;
      v22 = 2112;
      v23[0] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    if ([*(a1 + 32) isEqual:WeakRetained[18]])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      if (![*(*(*(a1 + 40) + 8) + 40) requestRideStatusError])
      {
        v17 = [*(*(*(a1 + 40) + 8) + 40) origin];
        v18 = WeakRetained[15];
        WeakRetained[15] = v17;
      }

      [WeakRetained _updateRequestRideStatus:*(*(*(a1 + 40) + 8) + 40)];
    }
  }

  else
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "RideBookingDataCoordinator.m";
      v22 = 1026;
      LODWORD(v23[0]) = 723;
      WORD2(v23[0]) = 2082;
      *(v23 + 6) = "[RideBookingDataCoordinator updateRequestRideStartingWaypointCoordinate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: yetAnotherStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100852AE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 21, *(a1 + 32));
    v4 = [*(a1 + 32) rideOption];
    v5 = v3[13];
    v3[13] = v4;

    if (v3[19])
    {
      [v3[21] setPaymentMethod:?];
    }

    [v3 _broadcastRequestRideStatusDidChange];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "RideBookingDataCoordinator.m";
      v9 = 1026;
      v10 = 649;
      v11 = 2082;
      v12 = "[RideBookingDataCoordinator _updateRequestRideStatus:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100852DCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_10084D604;
    v20 = sub_10084D614;
    v21 = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_10084D604;
    v17[4] = sub_10084D614;
    v18 = 0;
    v3 = dispatch_group_create();
    dispatch_group_enter(v3);
    dispatch_group_enter(v3);
    v4 = WeakRetained[5];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1008530FC;
    v14[3] = &unk_10162BC58;
    v16 = buf;
    v5 = v3;
    v15 = v5;
    [WeakRetained cleanMapItemName:v4 completion:v14];
    v6 = WeakRetained[6];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10085315C;
    v11[3] = &unk_10162BC58;
    v13 = v17;
    v7 = v5;
    v12 = v7;
    [WeakRetained cleanMapItemName:v6 completion:v11];
    v8 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008531BC;
    block[3] = &unk_10165DEF0;
    block[4] = WeakRetained;
    block[5] = buf;
    block[6] = v17;
    dispatch_group_notify(v7, v8, block);

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "RideBookingDataCoordinator.m";
      *&buf[12] = 1026;
      *&buf[14] = 608;
      *&buf[18] = 2082;
      *&buf[20] = "[RideBookingDataCoordinator _cleanRequestLocationNames]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1008530D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1008530FC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10085315C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1008531BC(void *a1)
{
  v2 = [CLPlacemark placemarkWithGEOMapItem:*(*(a1[5] + 8) + 40)];
  v3 = a1[4];
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
  v5 = v2;

  v6 = [CLPlacemark placemarkWithGEOMapItem:*(*(a1[6] + 8) + 40)];
  v7 = a1[4];
  v8 = *(v7 + 128);
  *(v7 + 128) = v6;
  v9 = v6;

  v10 = a1[4];
  v11 = [v5 location];
  [v11 coordinate];
  [v10 updateRequestRideStartingWaypointCoordinate:?];
}

void sub_100853430(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v4 = [NSString alloc];
      v5 = [WeakRetained[14] identifier];
      v6 = [v4 initWithFormat:@"%@ _stopRequestRideExpireTimer", v5];
      *buf = 136315394;
      v9 = v3;
      v10 = 2112;
      v11[0] = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    [WeakRetained _stopTimer:WeakRetained + 17];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "RideBookingDataCoordinator.m";
      v10 = 1026;
      LODWORD(v11[0]) = 596;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[RideBookingDataCoordinator _stopRequestRideExpireTimer]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1008537B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v4 = [NSString alloc];
      v5 = [WeakRetained[14] identifier];
      v6 = [v4 initWithFormat:@"%@ _expireRequestRideStatus", v5];
      *buf = 136315394;
      v9 = v3;
      v10 = 2112;
      v11[0] = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    [WeakRetained[21] setRequestExpired:1];
    [WeakRetained _updateRequestRideStatus:WeakRetained[21]];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "RideBookingDataCoordinator.m";
      v10 = 1026;
      LODWORD(v11[0]) = 583;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[RideBookingDataCoordinator _expireRequestRideStatus]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100853B5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v5 = [NSString alloc];
      v6 = [WeakRetained[14] identifier];
      v7 = [v5 initWithFormat:@"%@ _startRequestRideExpireTimerWithExpirationDate: %@", v6, *(a1 + 32)];
      *buf = 136315394;
      v14 = v4;
      v15 = 2112;
      v16[0] = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    [*(a1 + 32) timeIntervalSinceNow];
    v9 = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100853DD4;
    v11[3] = &unk_101661B98;
    objc_copyWeak(&v12, (a1 + 40));
    [WeakRetained _startTimer:WeakRetained + 17 withInterval:0 repeats:v11 block:v9];
    objc_destroyWeak(&v12);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "RideBookingDataCoordinator.m";
      v15 = 1026;
      LODWORD(v16[0]) = 564;
      WORD2(v16[0]) = 2082;
      *(v16 + 6) = "[RideBookingDataCoordinator _startRequestRideExpireTimerWithExpirationDate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100853DD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _expireRequestRideStatus];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "RideBookingDataCoordinator.m";
      v6 = 1026;
      v7 = 570;
      v8 = 2082;
      v9 = "[RideBookingDataCoordinator _startRequestRideExpireTimerWithExpirationDate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: anotherStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100854080(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [CLPlacemark placemarkWithGEOMapItem:*(WeakRetained + 5)];
    v3 = *(WeakRetained + 15);
    *(WeakRetained + 15) = v2;

    v4 = [CLPlacemark placemarkWithGEOMapItem:*(WeakRetained + 6)];
    v5 = *(WeakRetained + 16);
    *(WeakRetained + 16) = v4;

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v8 = [[NSString alloc] initWithFormat:@"Updated Pickup: %@, Dropoff: %@", *(WeakRetained + 5), *(WeakRetained + 6)];
      *buf = 136315394;
      v15 = v7;
      v16 = 2112;
      v17[0] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v9 = *(WeakRetained + 11);
    v10 = [*(WeakRetained + 13) application];
    v11 = [v10 identifier];
    v12 = [v9 objectForKey:v11];

    v13 = [v12 expirationDate];
    [WeakRetained _startRequestRideExpireTimerWithExpirationDate:v13];

    [WeakRetained _cleanRequestLocationNames];
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "RideBookingDataCoordinator.m";
      v16 = 1026;
      LODWORD(v17[0]) = 544;
      WORD2(v17[0]) = 2082;
      *(v17 + 6) = "[RideBookingDataCoordinator _updateRequestRidePickupAndDropoffLocations]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100854538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _stopRefreshRideOptionsTimer];
    [v3 _resetRequestRide];
    objc_storeStrong(v3 + 13, *(a1 + 32));
    v4 = [*(a1 + 32) paymentMethods];
    v5 = [v4 firstObject];
    v6 = v3[19];
    v3[19] = v5;

    v7 = v3[4];
    v8 = [*(a1 + 32) application];
    v9 = [v8 identifier];
    v10 = [v7 objectForKeyedSubscript:v9];
    v11 = v3[14];
    v3[14] = v10;

    [v3 _updateRequestRidePickupAndDropoffLocations];
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "RideBookingDataCoordinator.m";
      v15 = 1026;
      v16 = 528;
      v17 = 2082;
      v18 = "[RideBookingDataCoordinator startRequestRideForRideOption:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v13, 0x1Cu);
    }
  }
}

void sub_100854D9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[12] removeObject:*(a1 + 32)];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v6 = [[NSString alloc] initWithFormat:@"Removed RequestRide observer: %@", *(a1 + 32)];
      *buf = 136315394;
      v8 = v5;
      v9 = 2112;
      v10[0] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "RideBookingDataCoordinator.m";
      v9 = 1026;
      LODWORD(v10[0]) = 485;
      WORD2(v10[0]) = 2082;
      *(v10 + 6) = "[RideBookingDataCoordinator removeRideBookingDataCoordinatorRequestRideObserver:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1008551C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 12) addObject:*(a1 + 32)];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v6 = [[NSString alloc] initWithFormat:@"Added RequestRide observer: %@", *(a1 + 32)];
      *buf = 136315394;
      v12 = v5;
      v13 = 2112;
      v14[0] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v9 = [[NSString alloc] initWithFormat:@"Notifying observer %@ of request ride status change %@", *(a1 + 32), v3[21]];
        *buf = 136315394;
        v12 = v8;
        v13 = 2112;
        v14[0] = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      [*(a1 + 32) requestRideStatusDidChange:v3[21]];
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "RideBookingDataCoordinator.m";
      v13 = 1026;
      LODWORD(v14[0]) = 467;
      WORD2(v14[0]) = 2082;
      *(v14 + 6) = "[RideBookingDataCoordinator addRideBookingDataCoordinatorRequestRideObserver:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1008555F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _stopTimer:WeakRetained + 56];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "RideBookingDataCoordinator.m";
      v6 = 1026;
      v7 = 453;
      v8 = 2082;
      v9 = "[RideBookingDataCoordinator _stopRefreshRideOptionsTimer]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_1008558A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = [*(WeakRetained + 11) allValues];
    v20 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v20)
    {
      v4 = *v22;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v22 != v4)
          {
            objc_enumerationMutation(v3);
          }

          v6 = *(*(&v21 + 1) + 8 * i);
          v7 = [v6 expirationDate];

          if (v7)
          {
            v8 = objc_opt_new();
            v9 = [v6 expirationDate];
            [v8 timeIntervalSinceDate:v9];
            v11 = v10;

            v12 = v2[5];
            v13 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v19 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
              v14 = [[NSString alloc] initWithFormat:@"RideOptionStatus expired: %d, hasOrigin: %d, status: %@", v11 > 0.0, v12 != 0, v6];
              *buf = 136315394;
              v27 = v19;
              v28 = 2112;
              *v29 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
            }

            if (v11 > 0.0 && v12 != 0)
            {
              v16 = v2[5];
              v17 = v2[6];
              v18 = [v6 application];
              [v2 _updateRideOptionStatusMapForOrigin:v16 destination:v17 application:v18];
            }
          }
        }

        v20 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v27 = "RideBookingDataCoordinator.m";
      v28 = 1026;
      *v29 = 429;
      *&v29[4] = 2082;
      *&v29[6] = "[RideBookingDataCoordinator _refreshRideOptions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100855D78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    GEOConfigGetDouble();
    v4 = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100855F2C;
    v6[3] = &unk_101661B98;
    objc_copyWeak(&v7, (a1 + 32));
    [WeakRetained _startTimer:WeakRetained + 56 withInterval:1 repeats:v6 block:v4];
    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "RideBookingDataCoordinator.m";
      v10 = 1026;
      v11 = 412;
      v12 = 2082;
      v13 = "[RideBookingDataCoordinator _startRefreshRideOptionsTimer]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100855F2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _refreshRideOptions];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "RideBookingDataCoordinator.m";
      v6 = 1026;
      v7 = 417;
      v8 = 2082;
      v9 = "[RideBookingDataCoordinator _startRefreshRideOptionsTimer]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: anotherStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_1008562F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 11);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) identifier];
    [v4 setObject:v5 forKey:v6];

    [v3 _broadcastRideOptionStateDidChange];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "RideBookingDataCoordinator.m";
      v10 = 1026;
      v11 = 400;
      v12 = 2082;
      v13 = "[RideBookingDataCoordinator _updateRideOptionStatusMapWithApplication:status:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_1008568B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_100856900(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if ([v5 rideStatusError] == 2)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v10 = [[NSString alloc] initWithFormat:@"Returning from getRideStatus request. rideStatus timed out"];
        *buf = 136315394;
        v34 = v9;
        v35 = 2112;
        v36[0] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      v11 = [RideBookingRideOptionStatus statusWithApplication:*(a1 + 32) error:1];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      [WeakRetained _updateRideOptionStatusMapWithApplication:*(a1 + 32) status:*(*(*(a1 + 56) + 8) + 40)];
    }

    else
    {
      v15 = [v5 application];
      [WeakRetained _updateRideStatusMapWithApplication:v15 status:v5];

      v16 = [v5 isActiveRide];
      v17 = GEOFindOrCreateLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v16)
      {
        if (v18)
        {
          v19 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
          v20 = [[NSString alloc] initWithFormat:@"rideOptionStatusMap updated with the latest status"];
          *buf = 136315394;
          v34 = v19;
          v35 = 2112;
          v36[0] = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        v21 = [RideBookingRideOptionStatus statusWithApplication:*(a1 + 32) error:2];
        v22 = *(*(a1 + 56) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        [WeakRetained _updateRideOptionStatusMapWithApplication:*(a1 + 32) status:*(*(*(a1 + 56) + 8) + 40)];
      }

      else
      {
        if (v18)
        {
          v24 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
          v25 = [[NSString alloc] initWithFormat:@"Sending a -[id<RideBookingApplication> getRideOptionStatusWithPickupLocation:dropOffLocation:completion:] request."];
          *buf = 136315394;
          v34 = v24;
          v35 = 2112;
          v36[0] = v25;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(a1 + 48);
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100856D84;
        v29[3] = &unk_10162BC08;
        objc_copyWeak(&v32, (a1 + 64));
        v31 = *(a1 + 56);
        v30 = *(a1 + 32);
        [v26 getRideOptionStatusWithPickupLocation:v27 dropOffLocation:v28 completion:v29];

        objc_destroyWeak(&v32);
      }
    }
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v34 = "RideBookingDataCoordinator.m";
      v35 = 1026;
      LODWORD(v36[0]) = 365;
      WORD2(v36[0]) = 2082;
      *(v36 + 6) = "[RideBookingDataCoordinator _updateRideOptionStatusMapForOrigin:destination:application:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100856D84(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    [WeakRetained _updateRideOptionStatusMapWithApplication:*(a1 + 32) status:*(*(*(a1 + 40) + 8) + 40)];
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "RideBookingDataCoordinator.m";
      v12 = 1026;
      v13 = 386;
      v14 = 2082;
      v15 = "[RideBookingDataCoordinator _updateRideOptionStatusMapForOrigin:destination:application:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: anotherStrongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

void sub_1008571B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008571F0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v5 = [NSString alloc];
      [a1[4] coordinate];
      v8 = [NSString stringWithFormat:@"%+.8f, %+.8f", v6, v7];
      v9 = [a1[4] addressDictionary];
      v10 = [v5 initWithFormat:@"Origin: Coordinates = %@ \n Address = %@", v8, v9];
      *buf = 136315394;
      v32 = v4;
      v33 = 2112;
      *v34 = v10;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v13 = [NSString alloc];
      [a1[5] coordinate];
      v16 = [NSString stringWithFormat:@"%+.8f, %+.8f", v14, v15];
      v17 = [a1[5] addressDictionary];
      v18 = [v13 initWithFormat:@"Destination: Coordinates = %@ \n Address = %@", v16, v17];
      *buf = 136315394;
      v32 = v12;
      v33 = 2112;
      *v34 = v18;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v19 = objc_opt_new();
    v20 = *(WeakRetained + 11);
    *(WeakRetained + 11) = v19;

    [WeakRetained _startRefreshRideOptionsTimer];
    *(WeakRetained + 8) = 1;
    objc_storeStrong(WeakRetained + 5, a1[4]);
    objc_storeStrong(WeakRetained + 6, a1[5]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = [*(WeakRetained + 4) allValues];
    v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [WeakRetained _updateRideOptionStatusMapForOrigin:a1[4] destination:a1[5] application:*(*(&v26 + 1) + 8 * i)];
        }

        v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v32 = "RideBookingDataCoordinator.m";
      v33 = 1026;
      *v34 = 298;
      *&v34[4] = 2082;
      *&v34[6] = "[RideBookingDataCoordinator updateRideOptionStateForOrigin:destination:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1008575B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10085769C;
  block[3] = &unk_101661480;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void sub_10085769C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (a1[4])
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v5 = [NSString alloc];
        v6 = [a1[4] localizedDescription];
        v7 = [v5 initWithFormat:@"Received an error trying to fetch app store suggestions:, %@", v6];
        *buf = 136315394;
        v23 = v4;
        v24 = 2112;
        v25[0] = v7;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v10 = [[NSString alloc] initWithFormat:@"App Store suggestions: %@", a1[5]];
      *buf = 136315394;
      v23 = v9;
      v24 = 2112;
      v25[0] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    WeakRetained[8] = 0;
    v11 = [a1[5] notInstalledSuggestions];
    if (v11)
    {
      v12 = [a1[5] notInstalledSuggestions];
      v13 = [v12 mutableCopy];
      v14 = *(WeakRetained + 9);
      *(WeakRetained + 9) = v13;
    }

    else
    {
      v16 = +[NSMutableArray array];
      v12 = *(WeakRetained + 9);
      *(WeakRetained + 9) = v16;
    }

    v17 = [a1[5] installedSuggestions];
    if (v17)
    {
      v18 = [a1[5] installedSuggestions];
      v19 = [v18 mutableCopy];
      v20 = *(WeakRetained + 10);
      *(WeakRetained + 10) = v19;
    }

    else
    {
      v21 = +[NSMutableArray array];
      v18 = *(WeakRetained + 10);
      *(WeakRetained + 10) = v21;
    }

    [WeakRetained _broadcastRideOptionStateDidChange];
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "RideBookingDataCoordinator.m";
      v24 = 1026;
      LODWORD(v25[0]) = 322;
      WORD2(v25[0]) = 2082;
      *(v25 + 6) = "[RideBookingDataCoordinator updateRideOptionStateForOrigin:destination:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100857BA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[8] removeObject:*(a1 + 32)];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v6 = [[NSString alloc] initWithFormat:@"Removed observer: %@", *(a1 + 32)];
      *buf = 136315394;
      v12 = v5;
      v13 = 2112;
      v14[0] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    if (![v3[8] count])
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v9 = [[NSString alloc] initWithFormat:@"Stopping ride options timer because the observers count is now zero"];
        *buf = 136315394;
        v12 = v8;
        v13 = 2112;
        v14[0] = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      [v3 _stopRefreshRideOptionsTimer];
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "RideBookingDataCoordinator.m";
      v13 = 1026;
      LODWORD(v14[0]) = 256;
      WORD2(v14[0]) = 2082;
      *(v14 + 6) = "[RideBookingDataCoordinator removeRideBookingDataCoordinatorRideOptionStateObserver:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100857FE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "RideBookingDataCoordinator.m";
      v19 = 1026;
      LODWORD(v20[0]) = 231;
      WORD2(v20[0]) = 2082;
      *(v20 + 6) = "[RideBookingDataCoordinator addRideBookingDataCoordinatorRideOptionStateObserver:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v7 = v8;
    goto LABEL_19;
  }

  [WeakRetained[8] addObject:*(a1 + 32)];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
    v6 = [[NSString alloc] initWithFormat:@"Added RideOption observer: %@", *(a1 + 32)];
    *buf = 136315394;
    v18 = v5;
    v19 = 2112;
    v20[0] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if ([v3[3] readyToLoadApps] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v3[11] copy];
    if (v3[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v3[9] copy];
      if ((v3[1] & 1) == 0)
      {
        v9 = [v3[10] copy];
        goto LABEL_14;
      }
    }

    v9 = 0;
LABEL_14:
    v10 = [RideBookingRideOptionState stateWithRideOptionStatusMap:v7 appStoreSuggestions:v8 installedSuggestions:v9];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v13 = [[NSString alloc] initWithFormat:@"appStoreSuggestions:%@ installedSuggestions:%@", v8, v9];
      *buf = 136315394;
      v18 = v12;
      v19 = 2112;
      v20[0] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
      v16 = [[NSString alloc] initWithFormat:@"Notifying observer %@ of ride option state change %@", *(a1 + 32), v10];
      *buf = 136315394;
      v18 = v15;
      v19 = 2112;
      v20[0] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    [*(a1 + 32) rideOptionStateDidChange:v10];
LABEL_19:
  }
}

void sub_100858558(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v53 = a1;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (!v3)
    {
      goto LABEL_26;
    }

    v4 = v3;
    v5 = *v62;
    while (1)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v62 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v61 + 1) + 8 * i);
        v8 = [v7 identifier];
        if (!v8)
        {
          goto LABEL_15;
        }

        v9 = v8;
        v10 = *(WeakRetained + 4);
        v11 = [v7 identifier];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (!v12)
        {
          goto LABEL_15;
        }

        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
          v15 = [NSString alloc];
          v16 = [v7 identifier];
          v17 = [v15 initWithFormat:@"Already have application %@. Skipping it.", v16];
          *buf = 136315394;
          v68 = v14;
          v69 = 2112;
          *v70 = v17;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        v18 = [v7 identifier];
        v19 = isExtensionHidden();

        if (v19)
        {
          v20 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
            v22 = [NSString alloc];
            v23 = [v7 identifier];
            v24 = [v22 initWithFormat:@"Application %@ is hidden. Skipping it.", v23];
            *buf = 136315394;
            v68 = v21;
            v69 = 2112;
            *v70 = v24;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
          }

LABEL_15:
          [v7 setDelegate:WeakRetained];
          v25 = *(WeakRetained + 4);
          v26 = [v7 identifier];
          [v25 setObject:v7 forKey:v26];

          v27 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
            v29 = [[NSString alloc] initWithFormat:@"Origin is %@", *(WeakRetained + 5)];
            *buf = 136315394;
            v68 = v28;
            v69 = 2112;
            *v70 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
          }

          v30 = *(WeakRetained + 5);
          if (v30)
          {
            [WeakRetained _updateRideOptionStatusMapForOrigin:v30 destination:*(WeakRetained + 6) application:v7];
          }

          v31 = *(WeakRetained + 9);
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_100858D18;
          v60[3] = &unk_10162BB78;
          v60[4] = v7;
          v32 = [NSPredicate predicateWithBlock:v60];
          v33 = [v31 filteredArrayUsingPredicate:v32];

          if ([v33 count])
          {
            v34 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
              v36 = [[NSString alloc] initWithFormat:@"There are some old suggestions %@", v33];
              *buf = 136315394;
              v68 = v35;
              v69 = 2112;
              *v70 = v36;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
            }

            [*(WeakRetained + 9) removeObjectsInArray:v33];
          }

          continue;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (!v4)
      {
LABEL_26:

        v37 = sub_100021DB0(*(v53 + 32), &stru_10162BBB8);
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v38 = [*(WeakRetained + 4) allKeys];
        v39 = [v38 countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v57;
          v42 = DefaultLoggingSubsystem;
          v54 = WeakRetained;
          do
          {
            for (j = 0; j != v40; j = j + 1)
            {
              if (*v57 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v44 = *(*(&v56 + 1) + 8 * j);
              if (([v37 containsObject:v44]& 1) == 0)
              {
                v45 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  v46 = v40;
                  v47 = v41;
                  v48 = v37;
                  v49 = v42;
                  v50 = v38;
                  v51 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
                  v52 = [[NSString alloc] initWithFormat:@"App Uninstalled: %@", v44];
                  *buf = 136315394;
                  v68 = v51;
                  v38 = v50;
                  v42 = v49;
                  v37 = v48;
                  v41 = v47;
                  v40 = v46;
                  WeakRetained = v54;
                  v69 = 2112;
                  *v70 = v52;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
                }

                [*(WeakRetained + 4) removeObjectForKey:v44];
                [*(WeakRetained + 11) removeObjectForKey:v44];
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v40);
        }

        [WeakRetained _broadcastRideOptionStateDidChange];
        goto LABEL_41;
      }
    }
  }

  v37 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v68 = "RideBookingDataCoordinator.m";
    v69 = 1026;
    *v70 = 174;
    *&v70[4] = 2082;
    *&v70[6] = "[RideBookingDataCoordinator rideBookingApplicationsDidChange:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
  }

LABEL_41:
}