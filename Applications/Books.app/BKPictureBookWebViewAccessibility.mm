@interface BKPictureBookWebViewAccessibility
- (BKPictureBookWebViewAccessibility)initWithFrame:(CGRect)frame;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_imaxPageStatus:(BOOL)status window:(id)window;
@end

@implementation BKPictureBookWebViewAccessibility

- (BKPictureBookWebViewAccessibility)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = BKPictureBookWebViewAccessibility;
  v3 = [(BKPictureBookWebViewAccessibility *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [(BKPictureBookWebViewAccessibility *)v3 imaxValueForKey:@"_internal"];
  v5 = [v4 imaxValueForKey:@"browserView"];

  v6 = [(BKPictureBookWebViewAccessibility *)v3 imaxValueForKey:@"_internal"];
  v7 = [v6 imaxValueForKey:@"scroller"];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000FCB58;
  v11[3] = &unk_100A03440;
  v12 = v5;
  v13 = v7;
  v8 = v7;
  v9 = v5;
  sub_1000763A0(v11);

  return v3;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  LOBYTE(v17) = 0;
  objc_opt_class();
  v5 = [(BKPictureBookWebViewAccessibility *)self imaxValueForKey:@"bkWebViewDelegate"];
  v6 = __IMAccessibilityCastAsClass();

  parentViewController = [v6 parentViewController];

  if (!parentViewController)
  {
    v11 = 0;
    goto LABEL_14;
  }

  viewIfLoaded = [parentViewController viewIfLoaded];
  window = [viewIfLoaded window];

  v10 = [parentViewController safeIntegerForKey:@"pageOffset"] + 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100027394;
  v21 = sub_100027610;
  v22 = 0;
  if (scroll <= 4)
  {
    if (scroll != 1)
    {
      if (scroll != 2)
      {
        goto LABEL_11;
      }

LABEL_9:
      v12 = v16;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000FCE4C;
      v16[3] = &unk_100A072F0;
      v16[7] = &v17;
      v16[4] = self;
      v16[5] = window;
      v16[6] = parentViewController;
      v16[8] = v10;
      if (!__IMAccessibilityPerformSafeBlock())
      {
LABEL_10:

        goto LABEL_11;
      }

LABEL_16:
      abort();
    }

LABEL_15:
    v12 = v15;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000FCEB4;
    v15[3] = &unk_100A072F0;
    v15[7] = &v17;
    v15[4] = self;
    v15[5] = window;
    v15[6] = parentViewController;
    v15[8] = v10;
    if (!__IMAccessibilityPerformSafeBlock())
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (scroll == 6)
  {
    goto LABEL_15;
  }

  if (scroll == 5)
  {
    goto LABEL_9;
  }

LABEL_11:
  v13 = v18[5];
  v11 = v13 != 0;
  if (v13)
  {
    UIAccessibilityPostNotification(UIAccessibilityPageScrolledNotification, v13);
  }

  _Block_object_dispose(&v17, 8);

LABEL_14:
  return v11;
}

- (id)_imaxPageStatus:(BOOL)status window:(id)window
{
  statusCopy = status;
  windowCopy = window;
  v6 = sub_10007643C(windowCopy);
  v31 = [v6 imaxValueForKey:@"paginationController"];
  v7 = [v31 imaxValueForKey:@"_chapterInfo"];
  v8 = sub_10007656C(windowCopy);
  if ([v7 count])
  {
    v9 = 0;
    do
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3010000000;
      v36 = &unk_1008EB423;
      v37 = 0;
      v38 = 0;
      v32 = v31;
      if (__IMAccessibilityPerformSafeBlock())
      {
        goto LABEL_33;
      }

      v11 = v34[4];
      v10 = v34[5];
      _Block_object_dispose(&v33, 8);
      if (v8 >= v11 && v8 < &v11[v10])
      {
        goto LABEL_8;
      }

      ++v9;
    }

    while (v9 < [v7 count]);
    v10 = 0;
    v11 = 0;
LABEL_8:
    if (!statusCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    if (!statusCopy)
    {
LABEL_13:
      v12 = statusCopy;
      v13 = (v11 == v8) & ~statusCopy;
      goto LABEL_14;
    }
  }

  if (&v11[v10] != v8 + 1)
  {
    goto LABEL_13;
  }

  v12 = statusCopy;
  v13 = 1;
LABEL_14:
  v14 = [v6 imaxValueForKey:@"pageCountIncludingUpsell"];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  windowScene = [windowCopy windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if ((interfaceOrientation - 3) <= 1 && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 userInterfaceIdiom], v18, v19 == 1))
  {
    v20 = v12;
    v21 = v12 == 0;
    v22 = 2;
  }

  else
  {
    v20 = v12;
    v21 = v12 == 0;
    v22 = 1;
  }

  if (v21)
  {
    v22 = -v22;
  }

  v23 = &v8[v22];
  if (v23 >= unsignedIntegerValue)
  {
    v27 = @" ";
  }

  else
  {
    if (v13)
    {
      if (v20)
      {
        v24 = @"chapter.change.next";
      }

      else
      {
        v24 = @"chapter.change.previous";
      }

      v25 = sub_1000765EC(v24);
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = sub_100027394;
      v37 = sub_100027610;
      v38 = 0;
      v26 = v25;
      if (__IMAccessibilityPerformSafeBlock())
      {
LABEL_33:
        abort();
      }

      v27 = v34[5];
      _Block_object_dispose(&v33, 8);
    }

    else
    {
      v26 = sub_1000765EC(@"page.num.of %@ %@");
      v28 = [NSNumber numberWithUnsignedInteger:v23];
      v29 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
      v27 = [NSString stringWithFormat:v26, v28, v29];
    }
  }

  return v27;
}

@end