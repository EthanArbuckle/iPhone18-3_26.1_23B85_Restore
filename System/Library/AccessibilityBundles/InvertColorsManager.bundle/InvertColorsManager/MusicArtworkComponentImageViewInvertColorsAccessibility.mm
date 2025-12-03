@interface MusicArtworkComponentImageViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)addSubview:(id)subview;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation MusicArtworkComponentImageViewInvertColorsAccessibility

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MusicArtworkComponentImageViewInvertColorsAccessibility;
  [(MusicArtworkComponentImageViewInvertColorsAccessibility *)&v3 didMoveToSuperview];
  [(MusicArtworkComponentImageViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)addSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = MusicArtworkComponentImageViewInvertColorsAccessibility;
  [(MusicArtworkComponentImageViewInvertColorsAccessibility *)&v4 addSubview:subview];
  [(MusicArtworkComponentImageViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MusicArtworkComponentImageViewInvertColorsAccessibility;
  [(MusicArtworkComponentImageViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(MusicArtworkComponentImageViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  subviews = [(MusicArtworkComponentImageViewInvertColorsAccessibility *)self subviews];
  v3 = [subviews axFilterObjectsUsingBlock:&stru_449A8];
  firstObject = [v3 firstObject];

  subviews2 = [firstObject subviews];
  v6 = [subviews2 indexOfObjectPassingTest:&stru_449E8];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    layer = [firstObject layer];
    [AXInvertColorsAppHelper toggleInvertColors:layer];

    v8 = +[AXSubsystemInvertColors sharedInstance];
    LOBYTE(layer) = [v8 ignoreLogging];

    if ((layer & 1) == 0)
    {
      v9 = +[AXSubsystemInvertColors identifier];
      v10 = AXLoggerForFacility();

      v11 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = AXColorizeFormatLog();
        v13 = _AXStringForArgs();
        if (os_log_type_enabled(v10, v11))
        {
          *buf = 138543362;
          v15 = v13;
          _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
        }
      }
    }
  }
}

@end