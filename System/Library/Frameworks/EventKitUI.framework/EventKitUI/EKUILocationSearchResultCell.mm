@interface EKUILocationSearchResultCell
- (EKUILocationSearchResultCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)defaultContentConfiguration;
- (void)updateSeparatorInset;
@end

@implementation EKUILocationSearchResultCell

- (EKUILocationSearchResultCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = EKUILocationSearchResultCell;
  v4 = [(EKUILocationSearchResultCell *)&v7 initWithStyle:3 reuseIdentifier:a4];
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
  v2 = [(EKUILocationSearchResultCell *)&v12 defaultContentConfiguration];
  v3 = [v2 textProperties];
  [v3 setNumberOfLines:1];

  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5 = [v2 secondaryTextProperties];
  [v5 setColor:v4];

  v6 = [v2 secondaryTextProperties];
  [v6 setNumberOfLines:1];

  [v2 setImageToTextPadding:10.0];
  [v2 setAxesPreservingSuperviewLayoutMargins:1];
  [v2 setDirectionalLayoutMargins:{11.0, 0.0, 11.0, 0.0}];
  [MEMORY[0x1E69669E0] conferenceImageSize];
  v8 = v7;
  v9 = [v2 imageProperties];
  [v9 setReservedLayoutSize:{v8, v8}];

  v10 = [v2 imageProperties];
  [v10 setMaximumSize:{v8, v8}];

  return v2;
}

@end