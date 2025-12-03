@interface BKLibraryBookshelfCollectionViewCellAccessibility
- (BOOL)accessibilityActivate;
- (BOOL)shouldInterceptTapsForFKAWorkaround;
- (id)bkaxIndexPathOfTarget;
- (id)bkaxTarget;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)applyLayoutAttributes:(id)attributes;
- (void)didReceiveSingleTap;
- (void)prepareForReuse;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)updateGestureRecognizerForFKAWorkaround;
@end

@implementation BKLibraryBookshelfCollectionViewCellAccessibility

- (BOOL)accessibilityActivate
{
  bkaxTarget = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  delegate = [bkaxTarget delegate];
  bkaxIndexPathOfTarget = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxIndexPathOfTarget];
  v6 = [delegate isAudiobookAtIndexpath:bkaxIndexPathOfTarget];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1000000000;
  }

  v8 = dispatch_time(0, v7);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100122380;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
  return 1;
}

- (void)accessibilityElementDidBecomeFocused
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfCollectionViewCellAccessibility;
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)&v6 accessibilityElementDidBecomeFocused];
  bkaxTarget = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  delegate = [bkaxTarget delegate];
  bkaxIndexPathOfTarget = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxIndexPathOfTarget];
  [delegate selectItemAtIndexPath:bkaxIndexPathOfTarget animated:1 scrollPosition:0];
}

- (void)accessibilityElementDidLoseFocus
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfCollectionViewCellAccessibility;
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)&v6 accessibilityElementDidLoseFocus];
  bkaxTarget = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  delegate = [bkaxTarget delegate];
  bkaxIndexPathOfTarget = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxIndexPathOfTarget];
  [delegate deselectItemAtIndexPath:bkaxIndexPathOfTarget animated:1];
}

- (void)didReceiveSingleTap
{
  if ([(BKLibraryBookshelfCollectionViewCellAccessibility *)self shouldInterceptTapsForFKAWorkaround])
  {
    if (__IMAccessibilityPerformSafeBlock())
    {
      abort();
    }
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfCollectionViewCellAccessibility;
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)self updateGestureRecognizerForFKAWorkaround];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfCollectionViewCellAccessibility;
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)&v3 prepareForReuse];
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)self updateGestureRecognizerForFKAWorkaround];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfCollectionViewCellAccessibility;
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)&v5 touchesBegan:began withEvent:event];
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)self updateGestureRecognizerForFKAWorkaround];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCollectionViewCellAccessibility;
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)&v4 applyLayoutAttributes:attributes];
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)self updateGestureRecognizerForFKAWorkaround];
}

- (id)bkaxTarget
{
  objc_opt_class();
  v2 = __IMAccessibilityCastAsClass();

  return v2;
}

- (id)bkaxIndexPathOfTarget
{
  bkaxTarget = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  delegate = [bkaxTarget delegate];
  bkaxTarget2 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  v6 = [delegate indexPathForCell:bkaxTarget2];

  return v6;
}

- (BOOL)shouldInterceptTapsForFKAWorkaround
{
  if (!_AXSFullKeyboardAccessEnabled() || !GSEventIsHardwareKeyboardAttached())
  {
    return 0;
  }

  bkaxTarget = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  delegate = [bkaxTarget delegate];
  allowsOpeningBooks = [delegate allowsOpeningBooks];

  return allowsOpeningBooks;
}

- (void)updateGestureRecognizerForFKAWorkaround
{
  singleTapGestureRecognizer = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self singleTapGestureRecognizer];

  if (!singleTapGestureRecognizer)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"didReceiveSingleTap"];
    [(BKLibraryBookshelfCollectionViewCellAccessibility *)self setSingleTapGestureRecognizer:v4];

    singleTapGestureRecognizer2 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self singleTapGestureRecognizer];
    [(BKLibraryBookshelfCollectionViewCellAccessibility *)self addGestureRecognizer:singleTapGestureRecognizer2];
  }

  shouldInterceptTapsForFKAWorkaround = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self shouldInterceptTapsForFKAWorkaround];
  singleTapGestureRecognizer3 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self singleTapGestureRecognizer];
  [singleTapGestureRecognizer3 setEnabled:shouldInterceptTapsForFKAWorkaround];
}

@end