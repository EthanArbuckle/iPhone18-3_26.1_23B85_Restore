@interface BKBookViewControllerAccessibility
- (BOOL)accessibilityPerformEscape;
- (NSArray)bkaxWebDocumentViews;
- (NSString)bkaxLocalizedScrollStatus;
- (_NSRange)bkaxCurrentPages;
- (id)bkaxTarget;
- (int64_t)bkaxPageCount;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)bkaxDeleteAnnotation:(id)annotation;
- (void)bkaxEditNoteForAnnotation:(id)annotation;
- (void)bkaxScrub:(id)scrub;
- (void)bkaxTurnToPageNumber:(int64_t)number animated:(BOOL)animated;
- (void)directoryContent:(id)content didSelectLocation:(id)location;
- (void)goToPath:(id)path fragment:(id)fragment animated:(BOOL)animated;
- (void)resume:(id)resume;
- (void)scrub:(id)scrub;
- (void)showTOC:(id)c;
- (void)tocViewController:(id)controller didSelectChapter:(id)chapter;
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
  bkaxTarget = [(BKBookViewControllerAccessibility *)self bkaxTarget];
  pageCountIncludingUpsell = [bkaxTarget pageCountIncludingUpsell];

  return pageCountIncludingUpsell;
}

- (NSString)bkaxLocalizedScrollStatus
{
  bkaxTarget = [(BKBookViewControllerAccessibility *)self bkaxTarget];
  currentPages = [bkaxTarget currentPages];
  v6 = v5;

  if (currentPages == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = sub_1000765EC(@"page.num.of.loading");
  }

  else if (v6 < 2)
  {
    v9 = sub_1000765EC(@"page.num.of.with.total.single %lu %lu");
    v7 = [NSString stringWithFormat:v9, currentPages, [(BKBookViewControllerAccessibility *)self bkaxPageCount]];
  }

  else
  {
    v8 = sub_1000765EC(@"page.num.of.with.total.spread %lu %lu %lu");
    v7 = [NSString stringWithFormat:v8, currentPages, &currentPages[v6 - 1], [(BKBookViewControllerAccessibility *)self bkaxPageCount]];
  }

  return v7;
}

- (NSArray)bkaxWebDocumentViews
{
  v2 = +[NSMutableArray array];
  v18 = 0;
  objc_opt_class();
  v3 = __IMAccessibilityCastAsClass();
  view = [v3 view];
  _accessibleSubviews = [view _accessibleSubviews];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = _accessibleSubviews;
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

- (void)bkaxTurnToPageNumber:(int64_t)number animated:(BOOL)animated
{
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }
}

- (void)bkaxEditNoteForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }
}

- (void)bkaxDeleteAnnotation:(id)annotation
{
  annotationCopy = annotation;
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

- (void)showTOC:(id)c
{
  v3.receiver = self;
  v3.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v3 showTOC:c];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)resume:(id)resume
{
  v3.receiver = self;
  v3.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v3 resume:resume];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)scrub:(id)scrub
{
  scrubCopy = scrub;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(BKBookViewControllerAccessibility *)self bkaxScrub:scrubCopy];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = BKBookViewControllerAccessibility;
    [(BKBookViewControllerAccessibility *)&v5 scrub:scrubCopy];
  }
}

- (void)bkaxScrub:(id)scrub
{
  scrubCopy = scrub;
  objc_opt_class();
  v5 = __IMAccessibilityCastAsClass();
  pageNumber = [v5 pageNumber];

  if (objc_opt_respondsToSelector())
  {
    [(BKBookViewControllerAccessibility *)self bkaxTurnToPageNumber:pageNumber animated:0];
  }

  [(BKBookViewControllerAccessibility *)self performSelector:"_axSendLayoutChange" withObject:0 afterDelay:0.5];
}

- (void)tocViewController:(id)controller didSelectChapter:(id)chapter
{
  chapterCopy = chapter;
  controllerCopy = controller;
  [(BKBookViewControllerAccessibility *)self _axSetAssociatedObject:chapterCopy forKey:@"SelectedChapter"];
  v8.receiver = self;
  v8.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v8 tocViewController:controllerCopy didSelectChapter:chapterCopy];
}

- (void)directoryContent:(id)content didSelectLocation:(id)location
{
  v11.receiver = self;
  v11.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v11 directoryContent:content didSelectLocation:location];
  v5 = [(BKBookViewControllerAccessibility *)self _axAssociatedObjectForKey:@"SelectedChapter"];
  v6 = +[NSMutableDictionary dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [v5 name];

    if (name)
    {
      name2 = [v5 name];
      [v6 setObject:name2 forKey:@"lineString"];
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

- (void)goToPath:(id)path fragment:(id)fragment animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = BKBookViewControllerAccessibility;
  [(BKBookViewControllerAccessibility *)&v5 goToPath:path fragment:fragment animated:animated];
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