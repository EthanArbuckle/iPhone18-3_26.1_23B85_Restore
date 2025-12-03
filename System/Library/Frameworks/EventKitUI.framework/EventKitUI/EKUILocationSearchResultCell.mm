@interface EKUILocationSearchResultCell
- (EKUILocationSearchResultCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)defaultContentConfiguration;
- (void)updateSeparatorInset;
@end

@implementation EKUILocationSearchResultCell

- (EKUILocationSearchResultCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = EKUILocationSearchResultCell;
  v4 = [(EKUILocationSearchResultCell *)&v7 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(EKUILocationSearchResultCell *)v4 updateSeparatorInset];
  }

  return v5;
}

- (void)updateSeparatorInset
{
  CalInterfaceIsLeftToRight();
  [(EKUILocationSearchResultCell *)self safeAreaInsets];
  [(EKUILocationSearchResultCell *)self separatorInset];

  [(EKUILocationSearchResultCell *)self setSeparatorInset:?];
}

- (id)defaultContentConfiguration
{
  v12.receiver = self;
  v12.super_class = EKUILocationSearchResultCell;
  defaultContentConfiguration = [(EKUILocationSearchResultCell *)&v12 defaultContentConfiguration];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setNumberOfLines:1];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:secondaryLabelColor];

  secondaryTextProperties2 = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setNumberOfLines:1];

  [defaultContentConfiguration setImageToTextPadding:10.0];
  [defaultContentConfiguration setAxesPreservingSuperviewLayoutMargins:1];
  [defaultContentConfiguration setDirectionalLayoutMargins:{11.0, 0.0, 11.0, 0.0}];
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v8 = v7;
  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setReservedLayoutSize:{v8, v8}];

  imageProperties2 = [defaultContentConfiguration imageProperties];
  [imageProperties2 setMaximumSize:{v8, v8}];

  return defaultContentConfiguration;
}

@end