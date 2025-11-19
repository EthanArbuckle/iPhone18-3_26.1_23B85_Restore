@interface BKBookViewControllerAccessibility
- (BOOL)accessibilityPerformEscape;
- (NSArray)bkaxWebDocumentViews;
- (NSString)bkaxLocalizedScrollStatus;
- (_NSRange)bkaxCurrentPages;
- (id)bkaxTarget;
- (int64_t)bkaxPageCount;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)bkaxDeleteAnnotation:(id)a3;
- (void)bkaxEditNoteForAnnotation:(id)a3;
- (void)bkaxScrub:(id)a3;
- (void)bkaxTurnToPageNumber:(int64_t)a3 animated:(BOOL)a4;
- (void)directoryContent:(id)a3 didSelectLocation:(id)a4;
- (void)goToPath:(id)a3 fragment:(id)a4 animated:(BOOL)a5;
- (void)resume:(id)a3;
- (void)scrub:(id)a3;
- (void)showTOC:(id)a3;
- (void)tocViewController:(id)a3 didSelectChapter:(id)a4;
- (void)viewDidLoad;
@end

@implementation BKBookViewControllerAccessibility

- (id)bkaxTarget
{
  objc_opt_class();
  v2 = __IMAccessibilityCastAsClass();

  return v2;
}

- (int64_t)bkaxPageCount
{
  v2 = [(BKBookViewControllerAccessibility *)self bkaxTarget];
  v3 = [v2 pageCountIncludingUpsell];

  return v3;
}

- (NSString)bkaxLocalizedScrollStatus
{
  v3 = [(BKBookViewControllerAccessibility *)self bkaxTarget];
  v4 = [v3 currentPages];
  v6 = v5;

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = sub_1000765EC(@"page.num.of.loading");
  }

  else if (v6 < 2)
  {
    v9 = sub_1000765EC(@"page.num.of.with.total.single %lu %lu");
    v7 = [NSString stringWithFormat:v9, v4, [(BKBookViewControllerAccessibility *)self bkaxPageCount]];
  }

  else
  {
    v8 = sub_1000765EC(@"page.num.of.with.total.spread %lu %lu %lu");
    v7 = [NSString stringWithFormat:v8, v4, &v4[v6 - 1], [(BKBookViewControllerAccessibility *)self bkaxPageCount]];
  }

  return v7;
}

- (NSArray)bkaxWebDocumentViews
{
  v2 = +[NSMutableArray array];
  v18 = 0;
  objc_opt_class();
  v3 = __IMAccessibilityCastAsClass();
  v4 = [v3 view];
  v5 = [v4 _accessibleSubviews];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        NSClassFromString(@"UIWebDocumentView");
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v11, v14}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v2 copy];

  return v12;
}

- (void)bkaxTurnToPageNumber:(int64_t)a3 animated:(BOOL)a4
{
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }
}

- (void)bkaxEditNoteForAnnotation:(id)a3
{
  v3 = a3;
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }
}

- (void)bkaxDeleteAnnotation:(id)a3
{
  v3 = a3;
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v3 viewDidLoad];
  [(BKBookViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)showTOC:(id)a3
{
  v3.receiver = self;
  v3.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v3 showTOC:a3];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)resume:(id)a3
{
  v3.receiver = self;
  v3.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v3 resume:a3];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)scrub:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(BKBookViewControllerAccessibility *)self bkaxScrub:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = BKBookViewControllerAccessibility;
    [(BKBookViewControllerAccessibility *)&v5 scrub:v4];
  }
}

- (void)bkaxScrub:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = __IMAccessibilityCastAsClass();
  v6 = [v5 pageNumber];

  if (objc_opt_respondsToSelector())
  {
    [(BKBookViewControllerAccessibility *)self bkaxTurnToPageNumber:v6 animated:0];
  }

  [(BKBookViewControllerAccessibility *)self performSelector:"_axSendLayoutChange" withObject:0 afterDelay:0.5];
}

- (void)tocViewController:(id)a3 didSelectChapter:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(BKBookViewControllerAccessibility *)self _axSetAssociatedObject:v6 forKey:@"SelectedChapter"];
  v8.receiver = self;
  v8.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v8 tocViewController:v7 didSelectChapter:v6];
}

- (void)directoryContent:(id)a3 didSelectLocation:(id)a4
{
  v11.receiver = self;
  v11.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v11 directoryContent:a3 didSelectLocation:a4];
  v5 = [(BKBookViewControllerAccessibility *)self _axAssociatedObjectForKey:@"SelectedChapter"];
  v6 = +[NSMutableDictionary dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 name];

    if (v7)
    {
      v8 = [v5 name];
      [v6 setObject:v8 forKey:@"lineString"];
    }
  }

  UIAccessibilityPostNotification(dword_100ACC9D0, v6);
  UIAccessibilityPostNotification(UIAccessibilityPageScrolledNotification, &stru_100A30A68);
  v9 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089AA8;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)goToPath:(id)a3 fragment:(id)a4 animated:(BOOL)a5
{
  v5.receiver = self;
  v5.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v5 goToPath:a3 fragment:a4 animated:a5];
  UIAccessibilityPostNotification(UIAccessibilityPageScrolledNotification, &stru_100A30A68);
}

- (BOOL)accessibilityPerformEscape
{
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }

  return 1;
}

- (_NSRange)bkaxCurrentPages
{
  p_bkaxCurrentPages = &self->_bkaxCurrentPages;
  location = self->_bkaxCurrentPages.location;
  length = p_bkaxCurrentPages->length;
  result.length = length;
  result.location = location;
  return result;
}

@end