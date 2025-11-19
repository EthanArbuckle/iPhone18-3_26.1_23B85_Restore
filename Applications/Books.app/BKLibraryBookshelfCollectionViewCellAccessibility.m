@interface BKLibraryBookshelfCollectionViewCellAccessibility
- (BOOL)accessibilityActivate;
- (BOOL)shouldInterceptTapsForFKAWorkaround;
- (id)bkaxIndexPathOfTarget;
- (id)bkaxTarget;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)applyLayoutAttributes:(id)a3;
- (void)didReceiveSingleTap;
- (void)prepareForReuse;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)updateGestureRecognizerForFKAWorkaround;
@end

@implementation BKLibraryBookshelfCollectionViewCellAccessibility

- (BOOL)accessibilityActivate
{
  v3 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  v4 = [v3 delegate];
  v5 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxIndexPathOfTarget];
  v6 = [v4 isAudiobookAtIndexpath:v5];

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
  v3 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  v4 = [v3 delegate];
  v5 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxIndexPathOfTarget];
  [v4 selectItemAtIndexPath:v5 animated:1 scrollPosition:0];
}

- (void)accessibilityElementDidLoseFocus
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfCollectionViewCellAccessibility;
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)&v6 accessibilityElementDidLoseFocus];
  v3 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  v4 = [v3 delegate];
  v5 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxIndexPathOfTarget];
  [v4 deselectItemAtIndexPath:v5 animated:1];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfCollectionViewCellAccessibility;
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)&v5 touchesBegan:a3 withEvent:a4];
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)self updateGestureRecognizerForFKAWorkaround];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCollectionViewCellAccessibility;
  [(BKLibraryBookshelfCollectionViewCellAccessibility *)&v4 applyLayoutAttributes:a3];
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
  v3 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  v4 = [v3 delegate];
  v5 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  v6 = [v4 indexPathForCell:v5];

  return v6;
}

- (BOOL)shouldInterceptTapsForFKAWorkaround
{
  if (!_AXSFullKeyboardAccessEnabled() || !GSEventIsHardwareKeyboardAttached())
  {
    return 0;
  }

  v3 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self bkaxTarget];
  v4 = [v3 delegate];
  v5 = [v4 allowsOpeningBooks];

  return v5;
}

- (void)updateGestureRecognizerForFKAWorkaround
{
  v3 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self singleTapGestureRecognizer];

  if (!v3)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"didReceiveSingleTap"];
    [(BKLibraryBookshelfCollectionViewCellAccessibility *)self setSingleTapGestureRecognizer:v4];

    v5 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self singleTapGestureRecognizer];
    [(BKLibraryBookshelfCollectionViewCellAccessibility *)self addGestureRecognizer:v5];
  }

  v6 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self shouldInterceptTapsForFKAWorkaround];
  v7 = [(BKLibraryBookshelfCollectionViewCellAccessibility *)self singleTapGestureRecognizer];
  [v7 setEnabled:v6];
}

@end