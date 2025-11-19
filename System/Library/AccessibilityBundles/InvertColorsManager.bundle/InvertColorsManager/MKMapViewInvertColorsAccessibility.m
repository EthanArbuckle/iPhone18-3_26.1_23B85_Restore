@interface MKMapViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MKMapViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  [(MKMapViewInvertColorsAccessibility *)self safeValueForKey:@"preferredConfiguration"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x5810000000;
  v15 = &unk_2CA01;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v19 = 0;
  AXPerformSafeBlock();
  v5 = *(v13 + 2);
  v4 = *(v13 + 3);
  v23 = v13[10];
  v6 = *(v13 + 4);
  v21 = v4;
  v22 = v6;
  v20 = v5;

  _Block_object_dispose(&v12, 8);
  v7 = _MKMapTypeForCartographicConfiguration() - 1;
  v8 = [(MKMapViewInvertColorsAccessibility *)self traitCollection];
  v9 = [v8 userInterfaceStyle];

  v11 = v7 < 4 || v9 == &dword_0 + 2;
  if (v11 != [(MKMapViewInvertColorsAccessibility *)self accessibilityIgnoresInvertColors])
  {
    [(MKMapViewInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:v11];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = MKMapViewInvertColorsAccessibility;
  [(MKMapViewInvertColorsAccessibility *)&v4 traitCollectionDidChange:a3];
  [AXInvertColorsAppHelper toggleInvertColors:self];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKMapViewInvertColorsAccessibility;
  [(MKMapViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(MKMapViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end