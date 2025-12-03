@interface PHHandsetDialerDeleteButton
- (void)traitCollectionDidChange:(id)change;
- (void)updateImageViewAlpha;
@end

@implementation PHHandsetDialerDeleteButton

- (void)updateImageViewAlpha
{
  if ([(PHHandsetDialerDeleteButton *)self isHighlighted])
  {
    +[PHHandsetDialerNumberPadButton highlightedCircleViewAlpha];
  }

  else
  {
    if (_UISolariumEnabled())
    {
      v4 = TPNumberPadDynamicButton;
    }

    else
    {
      v4 = PHHandsetDialerNumberPadButton;
    }

    [(__objc2_class *)v4 unhighlightedCircleViewAlpha];
  }

  v5 = v3;
  imageView = [(PHHandsetDialerDeleteButton *)self imageView];
  [imageView setAlpha:v5];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PHHandsetDialerDeleteButton;
  [(PHHandsetDialerDeleteButton *)&v4 traitCollectionDidChange:change];
  [(PHHandsetDialerDeleteButton *)self updateImageViewAlpha];
}

@end