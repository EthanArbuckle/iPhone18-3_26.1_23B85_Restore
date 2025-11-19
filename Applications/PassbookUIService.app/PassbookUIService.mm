void sub_100001464(id a1)
{
  PKLinkNearField();

  +[PKAuthenticator preheatAuthenticator];
}

void sub_100001FA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to re-direct url: %@ to Safari with error: %@", &v9, 0x16u);
    }
  }
}

void sub_1000021BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000024F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    v4 = [a1 viewIfLoaded];
    if (!v4)
    {
LABEL_18:

      goto LABEL_19;
    }

    v5 = *(a1 + 184);
    v6 = v5 != 0;
    if (v5)
    {
      v7 = PKFontForDefaultDesign(v3, UIFontTextStyleTitle2);
      [v5 setFont:v7];
    }

    v8 = *(a1 + 192);
    if (v8)
    {
      v9 = PKFontForDefaultDesign(v3, UIFontTextStyleTitle2);
      [v8 setFont:v9];

      v6 = 1;
    }

    v10 = *(a1 + 136);
    if (v10)
    {
      v11 = PKFontForDefaultDesign(v3, UIFontTextStyleTitle2);
      [v10 setFont:v11];

      if (!*(a1 + 160))
      {
LABEL_17:
        [v4 setNeedsLayout];
        goto LABEL_18;
      }
    }

    else if (!*(a1 + 160))
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v12 = *(a1 + 200);
    if (v12)
    {
      [v12 removeFromSuperview];
    }

    v13 = PKLocalizedApplicationAuthorizationString(@"PASSCODE_BUTTON");
    v14 = v3;
    PKFloatRoundToPixel();
    v16 = v15;
    v17 = UIContentSizeCategoryAccessibilityLarge;
    v18 = [(UITraitCollection *)v14 preferredContentSizeCategory];
    v19 = UIContentSizeCategoryCompareToCategory(v18, v17);

    if (v19 == NSOrderedDescending)
    {
      location[0] = _NSConcreteStackBlock;
      location[1] = 3221225472;
      location[2] = sub_100007BC0;
      location[3] = &unk_100010A48;
      location[4] = v17;
      v20 = [(UITraitCollection *)v14 traitCollectionByModifyingTraits:location];

      v14 = v20;
    }

    v21 = PKFontForDefaultDesign(v14, UIFontTextStyleCallout);
    [v21 lineHeight];
    PKFloatRoundToPixel();
    v35 = v22;
    v36 = xmmword_10000E740;
    v37 = vdupq_n_s64(2uLL);
    v23 = [[PKContinuousButton alloc] initWithConfiguration:&v35];
    [v23 setContentEdgeInsets:{v16, 25.0, 16.0 - v16, 25.0}];
    v24 = [v23 titleLabel];
    [v24 setFont:v21];
    [v24 setMinimumScaleFactor:0.5];
    [v24 setTextAlignment:1];
    [v24 setLineBreakMode:4];
    [v23 setTitle:v13 forState:0];
    [v23 _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
    [v23 setExclusiveTouch:1];
    [v23 sizeToFit];

    v25 = *(a1 + 200);
    *(a1 + 200) = v23;

    v26 = *(a1 + 200);
    [v26 setAnchorPoint:{0.5, 0.0}];
    [v26 setUserInteractionEnabled:1];
    [v26 _setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];

    v27 = [*(a1 + 200) layer];
    sub_100004964(v27);

    objc_initWeak(location, a1);
    v28 = *(a1 + 200);
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_1000082B4;
    v33 = &unk_100010708;
    objc_copyWeak(&v34, location);
    v29 = [UIAction actionWithHandler:&v30];
    [v28 addAction:v29 forControlEvents:{64, v30, v31, v32, v33}];

    [*(a1 + 160) addSubview:*(a1 + 200)];
    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
    goto LABEL_17;
  }

LABEL_19:
}

void sub_100002980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000029A0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = [a1 viewIfLoaded];
    if (!v6)
    {
      sub_100008670(v5);
      goto LABEL_14;
    }

    v91 = a2;
    v7 = [*(a1 + 32) copy];
    v8 = objc_alloc_init(NSMutableArray);
    v9 = *(a1 + 32);
    *(a1 + 32) = v8;

    if (v5)
    {
      v10 = *(a1 + 32);
      v11 = objc_retainBlock(v5);
      [v10 addObject:v11];
    }

    v12 = *(a1 + 32);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v95 objects:v99 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v96;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v96 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (*(*(*(&v95 + 1) + 8 * i) + 16))();
        }

        v15 = [v13 countByEnumeratingWithState:&v95 objects:v99 count:16];
      }

      while (v15);
    }

    if (*(a1 + 32) != v12)
    {
LABEL_13:

LABEL_14:
      goto LABEL_15;
    }

    if (*(a1 + 26) == 1)
    {
      *(a1 + 40) = 1;
    }

    v90 = [v6 layer];
    [v90 setAllowsHitTesting:*(a1 + 26)];
    [v6 setUserInteractionEnabled:*(a1 + 26)];
    v18 = *(a1 + 112);
    v19 = v18 == 0;
    if (*(a1 + 26) == 1)
    {
      if (!v18)
      {
        v20 = objc_alloc_init(PKBackdropView);
        v21 = *(a1 + 112);
        *(a1 + 112) = v20;

        [v6 insertSubview:*(a1 + 112) atIndex:0];
        v87 = *(a1 + 112);
        v22 = [v87 layer];
        if (!v22)
        {
          goto LABEL_59;
        }

        v23 = v22;
        v24 = sub_100007B44();
        [v24 setValue:&__kCFBooleanTrue forKey:@"inputNormalizeEdges"];
        v100[0] = v24;
        v25 = CAColorMatrixIdentity[3];
        v103 = CAColorMatrixIdentity[2];
        v104 = v25;
        v105 = CAColorMatrixIdentity[4];
        v26 = CAColorMatrixIdentity[1];
        v101 = CAColorMatrixIdentity[0];
        v102 = v26;
        v27 = [CAFilter filterWithType:kCAFilterColorMatrix];
        [v27 setName:@"colorMatrix"];
        v28 = [NSValue valueWithCAColorMatrix:&v101];
        [v27 setValue:v28 forKey:@"inputColorMatrix"];

        v100[1] = v27;
        v29 = [NSArray arrayWithObjects:v100 count:2];
        [v23 setFilters:v29];

        v19 = 1;
      }

      if (!*(a1 + 160))
      {
        v30 = objc_alloc_init(UIView);
        v31 = *(a1 + 160);
        *(a1 + 160) = v30;

        [*(a1 + 160) setOpaque:0];
        [*(a1 + 160) setAnchorPoint:{0.5, 0.0}];
        v32 = [*(a1 + 160) layer];
        if (v32)
        {
          v33 = v32;
          v34 = sub_100007B44();
          *&v101 = v34;
          v35 = [NSArray arrayWithObjects:&v101 count:1];
          [v33 setFilters:v35];

          v36 = v33;
          [v36 setAllowsGroupOpacity:0];
          [v36 setAllowsGroupBlending:0];

          v37 = +[UIColor blackColor];
          [v36 setShadowColor:{objc_msgSend(v37, "CGColor")}];

          [v6 addSubview:*(a1 + 160)];
          v38 = [*(a1 + 56) process];
          v88 = v38;
          if (v38)
          {
            [v38 auditToken];
          }

          else
          {
            v101 = 0u;
            v102 = 0u;
          }

          v39 = [LSApplicationRecord bundleRecordForAuditToken:&v101 error:0];
          v40 = v39;
          v89 = v39;
          if (v39)
          {
            v41 = [v39 URL];
            PKScreenScale();
            v43 = v42;
            v44 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorLargeHomeScreen];
            [v44 setScale:v43];
            v85 = v41;
            v45 = [[ISIcon alloc] initWithURL:v41];
            v46 = [v45 prepareImageForDescriptor:v44];
            v47 = CGImageRetain([v46 CGImage]);
            if (v47)
            {
              v49 = v47;
              v48 = [[UIImage alloc] initWithCGImage:v47 scale:0 orientation:v43];
              CGImageRelease(v49);
            }

            else
            {
              v48 = 0;
            }

            v40 = v89;
            if (v48)
            {
              v50 = [[UIImageView alloc] initWithImage:v48];
              v51 = *(a1 + 176);
              *(a1 + 176) = v50;

              v52 = *(a1 + 176);
              [v52 setAnchorPoint:{0.5, 0.0}];
              [v52 setUserInteractionEnabled:1];
              [v52 _setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];

              v53 = [*(a1 + 176) layer];
              sub_100004964(v53);

              [*(a1 + 160) addSubview:*(a1 + 176)];
            }
          }

          v54 = objc_alloc_init(UILabel);
          v55 = *(a1 + 184);
          *(a1 + 184) = v54;

          v56 = *(a1 + 184);
          [v56 setAnchorPoint:{0.5, 0.0}];
          [v56 setUserInteractionEnabled:1];
          [v56 _setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];

          v57 = [*(a1 + 184) layer];
          sub_100004964(v57);

          v58 = *(a1 + 184);
          v59 = [v40 localizedName];
          [v58 setText:v59];

          [*(a1 + 160) addSubview:*(a1 + 184)];
          v60 = objc_alloc_init(UILabel);
          v61 = *(a1 + 192);
          *(a1 + 192) = v60;

          v62 = *(a1 + 192);
          [v62 setAnchorPoint:{0.5, 0.0}];
          [v62 setUserInteractionEnabled:1];
          [v62 _setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];

          v63 = [*(a1 + 192) layer];
          sub_100004964(v63);
          v86 = v63;
          sub_100004A14(v63);
          [*(a1 + 192) setNumberOfLines:0];
          v64 = *(a1 + 192);
          v65 = [*(a1 + 48) name];
          v66 = PKLocalizedApplicationAuthorizationString(@"APPLICATION_AUTHORIZATION_SUBTITLE", @"%@", v65);
          [v64 setText:v66];

          v67 = *(a1 + 192);
          v68 = [UIColor colorWithWhite:1.0 alpha:0.6];
          [v67 setTextColor:v68];

          [*(a1 + 160) addSubview:*(a1 + 192)];
          if ((PKSystemApertureIsAvailable() & 1) == 0)
          {
            if (PKPearlIsAvailable())
            {
              v69 = 6;
            }

            else
            {
              v69 = 3;
            }

            v70 = [[PKGlyphView alloc] initWithStyle:v69];
            v71 = *(a1 + 120);
            *(a1 + 120) = v70;

            v72 = *(a1 + 120);
            [v72 setAnchorPoint:{0.5, 0.0}];
            [v72 setUserInteractionEnabled:1];
            [v72 _setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];

            v73 = [*(a1 + 120) layer];
            sub_100004964(v73);
            if (PKPearlIsAvailable())
            {
              sub_100004A14(v73);
            }

            [*(a1 + 160) addSubview:*(a1 + 120)];
          }

          v74 = *(a1 + 128);
          if (v74 == 2)
          {
            v75 = @"ACCESSIBILITY_PUSH_BUTTON_ASSISTIVE_TOUCH";
          }

          else
          {
            if (v74 != 3)
            {
              goto LABEL_54;
            }

            v75 = @"ACCESSIBILITY_PUSH_BUTTON_SWITCH_CONTROL";
          }

          v76 = PKLocalizedPearlString(&v75->isa);
          if (v76)
          {
            v77 = v76;
            v78 = objc_alloc_init(UILabel);
            v79 = *(a1 + 136);
            *(a1 + 136) = v78;

            v80 = *(a1 + 136);
            [v80 setAnchorPoint:{0.5, 0.0}];
            [v80 setUserInteractionEnabled:1];
            [v80 _setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];

            v81 = [*(a1 + 136) layer];
            sub_100004964(v81);
            sub_100004A14(v81);
            [*(a1 + 136) setNumberOfLines:0];
            [*(a1 + 136) setText:v77];
            v82 = *(a1 + 136);
            v83 = [UIColor colorWithWhite:1.0 alpha:0.6];
            [v82 setTextColor:v83];

            [*(a1 + 160) addSubview:*(a1 + 136)];
          }

LABEL_54:
          v84 = [a1 traitCollection];
          sub_1000024F8(a1, v84);

          if (v91)
          {
LABEL_55:
            sub_100008570(a1, v6);
LABEL_56:
            sub_1000085D8(v93, a1, v12, v6);
            goto LABEL_58;
          }

          goto LABEL_57;
        }

LABEL_59:
        __break(1u);
      }
    }

    else
    {
      if (!v18 && !*(a1 + 160))
      {
        sub_1000084B8(a1, v94, v12);
LABEL_58:

        goto LABEL_13;
      }

      v19 = 0;
    }

    if (v91)
    {
      if (!v19)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_57:
    sub_1000084B8(a1, v92, v12);
    goto LABEL_58;
  }

LABEL_15:
}

void sub_1000035F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[18])
  {
    [v2[18] updateFrame];
    v2 = *(a1 + 32);
  }

  v3 = [v2 view];
  [v3 setNeedsLayout];
}

void sub_100004030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000404C(uint64_t a1)
{
  *(*(a1 + 32) + 168) = *(a1 + 48);
  sub_1000041B8(*(*(a1 + 32) + 160), *(*(a1 + 32) + 168), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 168);
  v15 = *(v2 + 160);
  v5 = v3;
  if (v15)
  {
    if (v5)
    {
      Tracker = PKCATrackedLayoutGetTracker();
    }

    else
    {
      Tracker = 0;
    }

    v7 = [Tracker beginTrackingAnimation];
    v8 = 0.35;
    if (v4)
    {
      v9 = 33.3333333;
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }

    height = CGSizeZero.height;
    if (v4)
    {
      width = 0.0;
    }

    else
    {
      width = CGSizeZero.width;
    }

    if (v4)
    {
      v12 = -16.6666667;
    }

    else
    {
      v12 = CGSizeZero.height;
    }

    [v15 pkui_setShadowOpacity:v5 withAnimationFactory:v7 completion:v8];

    v13 = [Tracker beginTrackingAnimation];
    [v15 pkui_setShadowRadius:v5 withAdditiveAnimationFactory:v13 completion:v9];

    v14 = [Tracker beginTrackingAnimation];
    [v15 pkui_setShadowOffset:v5 withAdditiveAnimationFactory:v14 completion:{width, v12}];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000041B8(void *a1, unsigned int a2, void *a3)
{
  v12 = a1;
  v5 = a3;
  if (v12)
  {
    if (v5)
    {
      Tracker = PKCATrackedLayoutGetTracker();
    }

    else
    {
      Tracker = 0;
    }

    v7 = [v12 layer];
    v8 = v7;
    v9 = 6.17666667;
    if (a2)
    {
      v9 = 0.0;
    }

    sub_100007A14(v7, v5, v9);
    v10 = a2;
    v11 = [Tracker beginTrackingAnimation];
    [v12 pkui_setAlpha:v5 withAnimationFactory:v11 completion:v10];
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_100004298(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --WeakRetained[169];
  }

  return a2 == 0;
}

double sub_1000042E8(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 56);
  v6 = round((*(a1 + 72) - a2) * 0.5);
  v63 = 0;
  v64 = &v63;
  v7 = v5 + v6;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100004834;
  v50[3] = &unk_100010668;
  v55 = a2;
  v56 = a3;
  v53 = &v59;
  v54 = &v63;
  v57 = v5 + v6;
  v58 = 0;
  v51 = *(a1 + 32);
  v52 = *(a1 + 40);
  v8 = objc_retainBlock(v50);
  v9 = *(a1 + 48);
  v10 = *(v9 + 120);
  if (v10)
  {
    [v10 frame];
    height = v11;
    width = v13;
    v9 = *(a1 + 48);
  }

  else
  {
    height = CGSizeZero.height;
    width = CGSizeZero.width;
  }

  v47 = v7;
  v14 = *(v9 + 41);
  if (*(v9 + 41))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v9 + 136) != 0;
  }

  [*(v9 + 200) frame];
  v48 = v17;
  v18 = *(a1 + 48);
  v19 = 10.0;
  if (v18[22])
  {
    v20 = 10.0;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = v18[23];
  if (v18[24])
  {
    v22 = 10.0;
  }

  else
  {
    v22 = 0.0;
  }

  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.0;
  }

  if (v21)
  {
    v24 = 10.0;
  }

  else
  {
    v24 = v22;
  }

  if (v18[15])
  {
    v25 = 10.0;
  }

  else
  {
    v25 = 0.0;
  }

  v44 = v15;
  if (!v15)
  {
    v19 = 0.0;
  }

  v49 = v19;
  v26 = v64;
  v64[3] = 0.0;
  v27 = *(*(a1 + 48) + 120);
  v28 = height + 0.0;
  if (!v27)
  {
    v28 = 0.0;
  }

  v46 = v16;
  if (v14 == 2)
  {
    v28 = v16 + v28;
  }

  if (v27 || v14 == 2)
  {
    v26[3] = v28;
  }

  v26[3] = v49 + v20 + v23 + v24 + v25 + v28;
  v29 = *(a1 + 48);
  v30 = v29[22];
  if (v30)
  {
    v31 = [v30 image];
    [v31 size];
    v33 = v32;
    v35 = v34;

    (v8[2])(v8, *(*(a1 + 48) + 176), 1, v33, v35);
    v64[3] = v64[3] - v20;
    (v8[2])(v8, 0, 1, 0.0, v20);
    v29 = *(a1 + 48);
  }

  v36 = v29[23];
  if (!v36)
  {
    v38 = v29[24];
    if (!v38)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  [v36 sizeThatFits:{a2, 1.79769313e308}];
  (v8[2])(v8, *(*(a1 + 48) + 184), 1, fmin(v37, a2));
  v29 = *(a1 + 48);
  v38 = v29[24];
  if (v38)
  {
LABEL_37:
    if (v29[23])
    {
      v64[3] = v64[3] - v23;
      (v8[2])(v8, 0, 1, 0.0, v23);
      v38 = *(*(a1 + 48) + 192);
    }

    [v38 sizeThatFits:{a2, 1.79769313e308}];
    (v8[2])(v8, *(*(a1 + 48) + 192), 1, fmin(v39, a2));
  }

  v64[3] = v64[3] - v24;
  (v8[2])(v8, 0, 1, 0.0, v24);
  v29 = *(a1 + 48);
LABEL_41:
  if (v29[15])
  {
    v64[3] = v64[3] - height;
    (v8[2])(v8, *(*(a1 + 48) + 120), 1, width, height);
    v64[3] = v64[3] - v25;
    (v8[2])(v8, 0, 1, 0.0, v25);
    v29 = *(a1 + 48);
  }

  v40 = v29[17];
  if (v40)
  {
    [v40 sizeThatFits:{a2, 1.79769313e308}];
    (v8[2])(v8, *(*(a1 + 48) + 136), v44, fmin(v41, a2));
    v64[3] = v64[3] - v49;
    (v8[2])(v8, 0, 1, 0.0);
  }

  v64[3] = 0.0;
  (v8[2])(v8, *(*(a1 + 48) + 200), v14 == 2, v48, v46);
  v42 = v60[3];

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  return v47;
}

void sub_1000047F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_100004834(uint64_t a1, void *a2, unsigned int a3, double a4, double a5)
{
  v8 = a2;
  if ((a3 & 1) == 0)
  {
    v17 = *(a1 + 80);
    v18 = *(a1 + 88) + *(*(*(a1 + 48) + 8) + 24);
    v19 = *(a1 + 64);
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 24);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72) - v10;
  v13 = *(*(*(a1 + 56) + 8) + 24);
  v14 = fmax(v12 - v13, 0.0);
  if (v13 > 0.0)
  {
    v12 = v14;
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 88) + v10;
  *(v9 + 24) = fmin(a5, v12) + v10;
  if (v8)
  {
LABEL_7:
    v30 = v8;
    PKSizeAlignedInRect();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_1000041B8(v30, a3, *(a1 + 32));
    v28 = *(a1 + 32);
    v29 = [*(a1 + 40) beginTrackingAnimation];
    [v30 pkui_setFrame:v28 withAdditiveAnimationFactory:v29 completion:{v21, v23, v25, v27}];

    v8 = v30;
  }

LABEL_8:
}

void sub_100004964(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = sub_100007B44();
  v5 = v3;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 setFilters:v4];
}

void sub_100004A14(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v3 = v1;
    v2 = [CAFilter filterWithType:kCAFilterPlusL];
    [v3 setCompositingFilter:v2];
  }

  else
  {
    __break(1u);
  }
}

void sub_100004A8C(id *a1)
{
  Tracker = PKCATrackedLayoutGetTracker();
  if (Tracker)
  {
    objc_initWeak(&location, a1[4]);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100004B7C;
    v3[3] = &unk_1000106B8;
    objc_copyWeak(&v5, &location);
    v4 = a1[5];
    [Tracker addCompletion:v3];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  [a1[6] layoutIfNeeded];
}

void sub_100004B60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100004B7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 4);
    if (v4 == *(a1 + 32))
    {
      *(WeakRetained + 4) = 0;

      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = *(a1 + 32);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

void sub_100004CC4(id val)
{
  if (!val || (*(val + 8) & 1) != 0)
  {
    return;
  }

  v2 = *(val + 6);
  if (!v2 || *(val + 73) == 1 || *(val + 72) == 1)
  {
    goto LABEL_24;
  }

  if (*(val + 16) == -1)
  {
    objc_initWeak(&location, val);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000508C;
    v23[3] = &unk_100010758;
    objc_copyWeak(&v24, &location);
    v7 = objc_retainBlock(v23);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000050D4;
    v21[3] = &unk_100010780;
    objc_copyWeak(&v22, &location);
    v8 = objc_retainBlock(v21);
    AccesibilityIntentUnavailable = PKAlertCreateAccesibilityIntentUnavailable();
    [val presentViewController:AccesibilityIntentUnavailable animated:1 completion:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    return;
  }

  v3 = [v2 type];
  v4 = v3;
  v5 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3 != 1)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v5 = 2;
LABEL_10:
  v6 = [PKAuthenticator currentStateForPolicy:v5];
  if (v6)
  {
    v10 = [[PKAuthenticatorEvaluationRequest alloc] initWithPolicy:v5];
    v11 = [*(val + 6) externalizedContext];
    [v10 setExternalizedContext:v11];

    [v10 setInitialAuthenticatorState:v6];
    v12 = PKLocalizedApplicationAuthorizationString(@"PASSCODE_TITLE");
    [v10 setPasscodeTitle:v12];

    [v10 setAssumeUserIntentAvailable:v4 == 0];
    *(val + 72) = 1;
    if (v4)
    {
      IsAvailable = PKUserIntentIsAvailable();
      v14 = 3;
      if (!IsAvailable)
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    *(val + 10) = v14;
    if (!*(val + 8))
    {
      v15 = [[PKAuthenticator alloc] initWithDelegate:val];
      v16 = *(val + 8);
      *(val + 8) = v15;
    }

    Current = CFAbsoluteTimeGetCurrent();
    objc_initWeak(&location, val);
    v18 = *(val + 8);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000051D0;
    v19[3] = &unk_1000107A8;
    objc_copyWeak(v20, &location);
    v20[1] = *&Current;
    [v18 evaluateRequest:v10 withCompletion:v19];
    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  else
  {

    sub_100005B4C(val, 0);
  }
}

void sub_10000505C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10000508C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_100005B4C(WeakRetained, 0);
    WeakRetained = v2;
  }
}

void sub_1000050D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    sub_100005B4C(WeakRetained, 0);
    v6 = objc_alloc_init(_LSOpenConfiguration);
    [v6 setSensitive:1];
    v8 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v9 = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v6 setFrontBoardOptions:v7];

    PKOpenApplication();
  }
}

void sub_1000051D0(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && (WeakRetained[1] & 1) == 0)
  {
    if ((WeakRetained[9] & 1) == 0)
    {
      __break(1u);
      return;
    }

    *(WeakRetained + 72) = 0;
    IsAvailable = PKUserIntentIsAvailable();
    v6 = 3;
    if (!IsAvailable)
    {
      v6 = 0;
    }

    v4[10] = v6;
    v7 = [v9 result];
    if (v7 <= 3)
    {
      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            sub_100004CC4(v4);
          }
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          sub_1000052FC(v4, v9, fmax(Current - *(a1 + 40), 0.0));
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if ((v7 - 6) < 2 || v7 == 4 || v7 == 5)
    {
LABEL_14:
      sub_100005B4C(v4, 0);
    }
  }

LABEL_15:
}

void sub_1000052FC(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  if (!a1)
  {
LABEL_22:

    return;
  }

  if (*(a1 + 73) != 1)
  {
    *(a1 + 73) = 1;
    if ((*(a1 + 8) & 1) == 0)
    {
      objc_initWeak(&location, a1);
      v6 = *(a1 + 120);
      v7 = a3 >= 0.1 || v6 == 0;
      if (!v7 && ([v6 fadeOnRecognized] & 1) == 0)
      {
        [*(a1 + 120) setFadeOnRecognized:1];
      }

      if (*(a1 + 120))
      {
        v8 = dispatch_group_create();
      }

      else
      {
        v8 = 0;
      }

      if ([v5 biometricMatch])
      {
        +[PKGlyphView invokeSuccessFeedback];
        if (*(a1 + 120))
        {
          dispatch_group_enter(v8);
          v9 = *(a1 + 120);
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1000056BC;
          v24[3] = &unk_100010730;
          v25 = v8;
          [v9 setState:12 animated:1 completionHandler:v24];
        }
      }

      if (v8)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000056C4;
        block[3] = &unk_100010758;
        objc_copyWeak(&v23, &location);
        dispatch_group_notify(v8, &_dispatch_main_q, block);
        objc_destroyWeak(&v23);
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100005730;
      v19[3] = &unk_100010818;
      v10 = v8;
      v20 = v10;
      objc_copyWeak(&v21, &location);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100005930;
      v16[3] = &unk_100010840;
      v11 = objc_retainBlock(v19);
      v17 = v11;
      objc_copyWeak(&v18, &location);
      v12 = sub_10000836C(a1, v16);
      if (v12)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100005A34;
        v13[3] = &unk_100010890;
        v14 = v11;
        objc_copyWeak(&v15, &location);
        [v12 performActionWithReply:v13];
        objc_destroyWeak(&v15);
      }

      else
      {
        (v11[2])(v11, a1, 0);
      }

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v21);

      objc_destroyWeak(&location);
    }

    goto LABEL_22;
  }

  __break(1u);
}

void sub_100005678(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1000056C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[1] & 1) == 0)
  {
    v2 = WeakRetained;
    [WeakRetained[15] setState:7 animated:1 completionHandler:0];
    WeakRetained = v2;
  }
}

void sub_100005730(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && (v5[1] & 1) == 0)
  {
    v7 = +[UIApplication sharedApplication];
    [v7 pkui_consumeSharedRootAuthenticationContext];

    v8 = v6[8];
    if (v8)
    {
      [v8 invalidate];
      v9 = v6[8];
      v6[8] = 0;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100008328;
    v16[3] = &unk_1000107C8;
    v17 = a3;
    v10 = objc_retainBlock(v16);
    v11 = v10;
    v12 = *(a1 + 32);
    if (v12)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000058C0;
      block[3] = &unk_1000107F0;
      objc_copyWeak(&v15, (a1 + 40));
      v14 = v11;
      dispatch_group_notify(v12, &_dispatch_main_q, block);

      objc_destroyWeak(&v15);
    }

    else
    {
      (v10[2])(v10, v6);
    }
  }
}

uint64_t sub_1000058C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (WeakRetained[8] & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  return _objc_release_x1();
}

void sub_100005930(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000059D4;
  v2[3] = &unk_100010840;
  v3 = *(a1 + 32);
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v4);
}

void sub_1000059D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained, 0);
}

void sub_100005A34(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005AE8;
  block[3] = &unk_100010868;
  v5 = *(a1 + 32);
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
}

void sub_100005AE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v2 + 16))(v2, WeakRetained, *(a1 + 48));
}

void sub_100005B4C(uint64_t a1, char a2)
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
    v4 = +[UIApplication sharedApplication];
    [v4 pkui_resetSharedRootAuthenticationContext];

    v5 = *(a1 + 64);
    if (v5)
    {
      [v5 invalidate];
      v6 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    [*(a1 + 144) setAnimating:0];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100005F10;
    v23[3] = &unk_1000107C8;
    v24 = a2;
    v7 = objc_retainBlock(v23);
    v8 = v7;
    if (*(a1 + 26) == 1)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = a1;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PKRemoteApplicationAuthorizationViewController (%p): dismissing.", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v26 = 0x2020000000;
      v27 = UIBackgroundTaskInvalid;
      v10 = +[UIApplication sharedApplication];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000604C;
      v22[3] = &unk_1000108B8;
      v22[4] = &buf;
      v11 = [v10 beginBackgroundTaskWithExpirationHandler:v22];
      *(*(&buf + 1) + 24) = v11;

      objc_initWeak(&location, a1);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000060C8;
      v17[3] = &unk_100010908;
      objc_copyWeak(&v20, &location);
      v18 = v8;
      p_buf = &buf;
      v12 = objc_retainBlock(v17);
      v13 = [a1 presentedViewController];
      if (v13)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000062BC;
        v14[3] = &unk_100010840;
        v15 = v12;
        objc_copyWeak(&v16, &location);
        [a1 dismissViewControllerAnimated:1 completion:v14];
        objc_destroyWeak(&v16);
      }

      else
      {
        (v12[2])(v12, a1);
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      (v7[2])(v7, a1);
    }
  }
}

void sub_100005EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v24 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100005F10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PKRemoteApplicationAuthorizationViewController (%p): invalidating.", &v11, 0xCu);
  }

  v5 = v3;
  v6 = v5;
  if (*(a1 + 32) != 1)
  {
    v7 = [v5 _remoteViewControllerProxy];
    [v7 invalidate];
  }

  [v6 dismissViewControllerAnimated:0 completion:0];
  v8 = v6[2];
  if (v8)
  {
    v9 = v8;
    v10 = v6[2];
    v6[2] = 0;

    if (*(a1 + 32) != 2)
    {
      [v9 invalidate];
    }
  }
}

void sub_10000604C(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v2 = +[UIApplication sharedApplication];
    [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_1000060C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000061F8;
    v7[3] = &unk_1000108E0;
    objc_copyWeak(&v10, (a1 + 48));
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    sub_1000080E8(v3, 0, 1, v7);

    objc_destroyWeak(&v10);
  }

  else if (*(*(*(a1 + 40) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v6 = +[UIApplication sharedApplication];
    [v6 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];

    *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

uint64_t sub_1000061F8(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 48)))
  {
    (*(*(a1 + 32) + 16))();
  }

  if (*(*(*(a1 + 40) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v2 = +[UIApplication sharedApplication];
    [v2 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];

    *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
  }

  return _objc_release_x1();
}

void sub_1000062BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

void sub_1000068EC(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "PKRemoteApplicationAuthorizationViewController (%p): ui-connection %p remotely interrupted.", buf, 0x16u);
  }

  [*(a1 + 40) invalidate];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006A08;
  block[3] = &unk_100010930;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100006A14(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "PKRemoteApplicationAuthorizationViewController (%p): ui-connection %p remotely invalidated.", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006B28;
  block[3] = &unk_100010930;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100006EE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100006F18(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v9 && *(v9 + 8) != 1)
  {
    if (v7 && v8)
    {
      sub_100008980(v9, v7, v8, a1);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
      sub_100005B4C(v9, 0);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100006FEC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100007090;
  v2[3] = &unk_100010840;
  v3 = *(a1 + 32);
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v4);
}

void sub_100007090(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained, 0, 0);
}

void sub_1000070F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000071E0;
  v9[3] = &unk_1000109A8;
  v12 = *(a1 + 32);
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v9);

  objc_destroyWeak(&v13);
}

void sub_1000071E0(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  (*(v2 + 16))(v2, WeakRetained, *(a1 + 32), *(a1 + 40));
}

void sub_100007A14(void *a1, void *a2, double a3)
{
  v14 = a1;
  v5 = a2;
  if (v14)
  {
    v6 = [v14 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }

    if (v9 != a3)
    {
      if (v5)
      {
        Tracker = PKCATrackedLayoutGetTracker();
        v11 = [v5 springAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
        [v11 pkui_updateForAdditiveAnimationFromScalar:v9 toScalar:a3];
        [Tracker trackAnimation:v11];
        v12 = [v14 pkui_addAdditiveAnimation:v11];
      }

      v13 = [NSNumber numberWithDouble:a3];
      [v14 setValue:v13 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_100007B44()
{
  v0 = [CAFilter filterWithType:kCAFilterGaussianBlur];
  [v0 setName:@"gaussianBlur"];
  v1 = [NSNumber numberWithDouble:0.0];
  [v0 setValue:v1 forKey:@"inputRadius"];

  return v0;
}

id sub_100007BF4(void *a1, const char *a2)
{

  return [a1 countByEnumeratingWithState:v3 objects:v2 count:16];
}

uint64_t sub_100007C10()
{
  result = *(*(v0 + 8) + 8 * v1);
  v3 = *(result + 16);
  return result;
}

void sub_100007C34(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_autoreleasePoolPop(v5);
  LODWORD(argv) = UIApplicationMain(argc, argv, v7, v9);

  return argv;
}

void sub_100007CEC(void *a1)
{
  if (a1)
  {
    v2 = [a1 traitCollection];
    sub_1000024F8(a1, v2);
    sub_100007DC0(a1, v2, 1, 1);
  }
}

void sub_100007D5C(void *a1)
{
  if (a1)
  {
    v2 = [a1 traitCollection];
    sub_100007DC0(a1, v2, 1, 0);
  }
}

void sub_100007DC0(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  if (a1 && *(a1 + 128) == 1 && (*(a1 + 8) & 1) == 0)
  {
    v8 = [a1 viewIfLoaded];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = [v7 userInterfaceStyle] == 2;
    v10 = sub_100007C28();
    if (v10)
    {
      v12 = [v10 isAnimating];
      v13 = sub_100007C28();
      if (v13)
      {
        if ((a4 & 1) == 0)
        {
          v14 = [v13 style];
          v11 = 144;
          if (v14 == v9)
          {
            goto LABEL_16;
          }

          v13 = *(a1 + 144);
        }

        v15 = v13;
        v16 = *(a1 + 144);
        *(a1 + 144) = 0;

        if (a3)
        {
          [v15 setAnimating:0];
          v17 = *(a1 + 96);
          sub_100007BCC();
          v24 = 3221225472;
          v25 = sub_100004CBC;
          v26 = &unk_100010730;
          v27 = v15;
          [v27 pkui_setAlpha:v17 withAnimationFactory:v23 completion:0.0];
        }

        else
        {
          [v15 removeFromSuperview];
        }

        v11 = 144;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_16:
    if (!*(a1 + v11))
    {
      v18 = [[LAUIPhysicalButtonView alloc] initWithStyle:v9];
      v19 = *(a1 + 144);
      *(a1 + 144) = v18;

      [sub_100007C28() setAnimating:0];
      [sub_100007C28() setAlpha:1.0];
      v20 = *(a1 + 144);
      v21 = PKLocalizedApplicationAuthorizationString(@"DOUBLE_CLICK_TO_USE");
      [v20 setInstruction:v21];

      v22 = *(a1 + 144);
      if (!*(a1 + 112))
      {
        [v8 insertSubview:v22 atIndex:?];
        if (!v12)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      [v8 insertSubview:v22 aboveSubview:?];
      if (v12)
      {
LABEL_19:
        [sub_100007C28() setAnimating:1];
      }
    }

LABEL_20:
  }
}

void sub_100007FDC(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 8) & 1) != 0 || ([*(a1 + 144) setAnimating:*(a1 + 41) == 0], (*(a1 + 8)) || !*(a1 + 48))
    {
      v4 = 0;
    }

    else if (PKSystemApertureIsAvailable() && *(a1 + 41) == 1)
    {
      v4 = *(a1 + 40);
    }

    else
    {
      v4 = 1;
    }

    v5 = [a1 viewIfLoaded];
    if (v5)
    {
      PKUIViewLayoutIfNeeded();
    }

    sub_1000080E8(a1, v4 & 1, a2, 0);
  }
}

void sub_1000080E8(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    if (*(a1 + 26) == a2)
    {
      if (!v7)
      {
        goto LABEL_12;
      }

      v8 = *(a1 + 32);
      v11 = v7;
      if (v8)
      {
        v9 = objc_retainBlock(v7);
        [v8 addObject:v9];
      }

      else
      {
        (*(v7 + 2))(v7, 1);
      }
    }

    else
    {
      v11 = v7;
      v10 = [a1 viewIfLoaded];
      if (v10)
      {
        if (a3)
        {
          PKUIViewLayoutIfNeeded();
        }

        [v10 setNeedsLayout];
      }

      *(a1 + 26) = a2;
      sub_1000029A0(a1, a3, v11);
    }

    v7 = v11;
  }

LABEL_12:
}

void sub_1000081F8(_BYTE *a1, int a2, int a3)
{
  if (a1)
  {
    v3 = a2;
    if (a1[41] != a2)
    {
      v6 = [a1 viewIfLoaded];
      if (v6)
      {
        if (a3)
        {
          PKUIViewLayoutIfNeeded();
        }

        [v6 setNeedsLayout];
      }

      a1[41] = v3;
      sub_100007FDC(a1, a3);
    }
  }
}

void sub_1000082B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[1] & 1) == 0 && *(WeakRetained + 72) == 1)
  {
    v2 = WeakRetained;
    [WeakRetained[8] fallbackToSystemPasscodeUI];
    WeakRetained = v2;
  }
}

void sub_100008328(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_100005B4C(v2, 0);
    v2 = v3;
  }
}

uint64_t sub_10000836C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v3)
    {
      sub_100007BCC();
      v8 = 3221225472;
      v9 = sub_100007884;
      v10 = &unk_100010A20;
      v11 = v4;
      a1 = [v5 remoteObjectProxyWithErrorHandler:v7];
    }

    else
    {
      a1 = [v5 remoteObjectProxy];
    }
  }

  return a1;
}

void sub_100008428(uint64_t a1, int a2, uint64_t a3, int a4)
{
  sub_1000081F8(*(a1 + 32), a2, 1);
  v7 = *(*(a1 + 32) + 120);
  if (v7)
  {
    [v7 setState:a3 animated:1 completionHandler:0];
  }

  if (a4 && (PKPearlIsAvailable() & 1) == 0)
  {

    AudioServicesPlaySystemSound(0x573u);
  }
}

void sub_1000084B8(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = *(a1 + 32);
  *(a1 + 32) = 0;

  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v6 = a3;
  v8 = sub_100007BF4(v6, v7);
  if (v8)
  {
    v9 = v8;
    v10 = **(a2 + 2);
    do
    {
      v11 = 0;
      do
      {
        if (**(a2 + 2) != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = sub_100007C10();
        v13(v12);
        ++v11;
      }

      while (v9 != v11);
      v9 = sub_100007BF4(v6, v14);
    }

    while (v9);
  }
}

id sub_100008570(uint64_t a1, void *a2)
{
  *(a1 + 26) ^= 1u;
  PKUIViewLayoutIfNeeded();
  *(a1 + 26) ^= 1u;
  return [a2 setNeedsLayout];
}

void sub_1000085D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *a1 = _NSConcreteStackBlock;
  *(a1 + 8) = 3221225472;
  *(a1 + 16) = sub_100004A8C;
  *(a1 + 24) = &unk_1000106E0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  PKCATrackedLayoutPerform();
}

uint64_t sub_100008670(uint64_t result)
{
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_100008688(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "PKRemoteApplicationAuthorizationViewController (%p): failed to create ui-connection.", &v2, 0xCu);
}

void sub_100008700(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "PKRemoteApplicationAuthorizationViewController (%p): failed to create listener endpoint.", &v2, 0xCu);
}

uint64_t sub_100008778(NSObject *a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_100007C34(&_mh_execute_header, v5, v6, "PKRemoteApplicationAuthorizationViewController (%p): already configured once - ignoring configuration request.", v7, v8, v9, v10, 0);
  }

  return (*(a3 + 16))(a3);
}

uint64_t sub_100008820(uint64_t a1, os_log_t oslog, uint64_t a3)
{
  if (a1)
  {
    return 1;
  }

  v6 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v6)
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "PKRemoteApplicationAuthorizationViewController (%p): activating while missing ui-connection - invalidating.", &v7, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_1000088D4(NSObject *a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_100007C34(&_mh_execute_header, v5, v6, "PKRemoteApplicationAuthorizationViewController (%p): already activated once - ignoring activation request.", v7, v8, v9, v10, 0);
  }

  return (*(a3 + 16))(a3);
}

void sub_100008980(id *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = [a1 view];
  objc_storeStrong(a1 + 6, a2);
  objc_storeStrong(a1 + 7, a3);
  sub_100007FDC(a1, 1);
  (*(*(a4 + 32) + 16))();

  sub_100004CC4(a1);
}