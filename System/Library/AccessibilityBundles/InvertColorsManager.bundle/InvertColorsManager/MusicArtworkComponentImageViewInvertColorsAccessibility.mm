@interface MusicArtworkComponentImageViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)addSubview:(id)a3;
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

- (void)addSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = MusicArtworkComponentImageViewInvertColorsAccessibility;
  [(MusicArtworkComponentImageViewInvertColorsAccessibility *)&v4 addSubview:a3];
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
  v2 = [(MusicArtworkComponentImageViewInvertColorsAccessibility *)self subviews];
  v3 = [v2 axFilterObjectsUsingBlock:&stru_449A8];
  v4 = [v3 firstObject];

  v5 = [v4 subviews];
  v6 = [v5 indexOfObjectPassingTest:&stru_449E8];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 layer];
    [AXInvertColorsAppHelper toggleInvertColors:v7];

    v8 = +[AXSubsystemInvertColors sharedInstance];
    LOBYTE(v7) = [v8 ignoreLogging];

    if ((v7 & 1) == 0)
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