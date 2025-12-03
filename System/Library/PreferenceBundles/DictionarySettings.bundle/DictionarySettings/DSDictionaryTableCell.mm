@interface DSDictionaryTableCell
- (DSDictionaryTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)subtitle;
- (id)title;
- (void)handleDownloadButtonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)reloadDataWithAssetOperationState:(id)state;
- (void)updateLabels;
@end

@implementation DSDictionaryTableCell

- (DSDictionaryTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v21.receiver = self;
  v21.super_class = DSDictionaryTableCell;
  v9 = [(DSDictionaryTableCell *)&v21 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:PSValueKey];
    [(DSDictionaryTableCell *)v9 setDefinitionDictionary:v10];

    v11 = [[DSDownloadProgressButton alloc] initWithStyle:1];
    [(DSDictionaryTableCell *)v9 setDownloadButton:v11];
    [(DSDownloadProgressButton *)v11 setProgressType:3];
    contentView = [(DSDictionaryTableCell *)v9 contentView];
    [contentView bounds];
    MaxX = CGRectGetMaxX(v22);
    [(DSDownloadProgressButton *)v11 frame];
    v14 = MaxX - CGRectGetWidth(v23) + -20.0;
    contentView2 = [(DSDictionaryTableCell *)v9 contentView];
    [contentView2 bounds];
    v16 = CGRectGetHeight(v24) * 0.5;
    [(DSDownloadProgressButton *)v11 frame];
    v17 = v16 - CGRectGetHeight(v25) * 0.5;
    [(DSDownloadProgressButton *)v11 frame];
    Width = CGRectGetWidth(v26);
    [(DSDownloadProgressButton *)v11 frame];
    [(DSDownloadProgressButton *)v11 setFrame:v14, v17, Width, CGRectGetHeight(v27)];

    v19 = +[UIColor systemBlueColor];
    [(DSDownloadProgressButton *)v11 setTintColor:v19];

    [(DSDownloadProgressButton *)v11 addTarget:v9 action:"handleDownloadButtonPressed:" forEvents:64];
    [(DSDictionaryTableCell *)v9 setSeparatorInset:0.0, 44.0, 0.0, 0.0];
    [(DSDictionaryTableCell *)v9 updateLabels];
    [(DSDictionaryTableCell *)v9 reloadData];
  }

  return v9;
}

- (void)handleDownloadButtonPressed:(id)pressed
{
  specifier = [(DSDictionaryTableCell *)self specifier];
  [specifier performButtonAction];
}

- (void)updateLabels
{
  title = [(DSDictionaryTableCell *)self title];
  textLabel = [(DSDictionaryTableCell *)self textLabel];
  [textLabel setText:title];

  subtitle = [(DSDictionaryTableCell *)self subtitle];
  detailTextLabel = [(DSDictionaryTableCell *)self detailTextLabel];
  [detailTextLabel setText:subtitle];
}

- (id)title
{
  definitionDictionary = [(DSDictionaryTableCell *)self definitionDictionary];
  if ([definitionDictionary isAppleDictionary])
  {

LABEL_4:
    definitionDictionary2 = [(DSDictionaryTableCell *)self definitionDictionary];
    localizedDictionaryName = [definitionDictionary2 localizedDictionaryName];
    goto LABEL_6;
  }

  definitionDictionary3 = [(DSDictionaryTableCell *)self definitionDictionary];
  isTTYDictionary = [definitionDictionary3 isTTYDictionary];

  if (isTTYDictionary)
  {
    goto LABEL_4;
  }

  definitionDictionary2 = [(DSDictionaryTableCell *)self definitionDictionary];
  localizedDictionaryName = [definitionDictionary2 localizedLanguageName];
LABEL_6:
  v8 = localizedDictionaryName;

  return v8;
}

- (id)subtitle
{
  definitionDictionary = [(DSDictionaryTableCell *)self definitionDictionary];
  if ([definitionDictionary isAppleDictionary])
  {
    localizedDictionaryName = 0;
  }

  else
  {
    definitionDictionary2 = [(DSDictionaryTableCell *)self definitionDictionary];
    isTTYDictionary = [definitionDictionary2 isTTYDictionary];

    if (isTTYDictionary)
    {
      localizedDictionaryName = 0;
      goto LABEL_7;
    }

    definitionDictionary = [(DSDictionaryTableCell *)self definitionDictionary];
    localizedDictionaryName = [definitionDictionary localizedDictionaryName];
  }

LABEL_7:

  return localizedDictionaryName;
}

- (void)reloadDataWithAssetOperationState:(id)state
{
  stateCopy = state;
  downloadButton = [(DSDictionaryTableCell *)self downloadButton];
  definitionDictionary = [(DSDictionaryTableCell *)self definitionDictionary];
  v6 = [stateCopy objectForKeyedSubscript:@"MAProgressNotification"];
  v7 = [stateCopy objectForKeyedSubscript:@"completed"];

  bOOLValue = [v7 BOOLValue];
  rawAsset = [definitionDictionary rawAsset];
  state = [rawAsset state];
  activated = [definitionDictionary activated];
  imageView = [(DSDictionaryTableCell *)self imageView];
  [imageView setHidden:activated ^ 1];

  if (bOOLValue)
  {
    [downloadButton setProgressType:4];
LABEL_7:
    [(DSDictionaryTableCell *)self setAccessoryView:0];
    v13 = 0.0;
LABEL_8:
    v14 = downloadButton;
    v15 = 0;
    goto LABEL_9;
  }

  if (state != &dword_4)
  {
    goto LABEL_7;
  }

  [downloadButton setProgressType:3];
  [(DSDictionaryTableCell *)self setAccessoryView:downloadButton];
  if (!v6)
  {
    [definitionDictionary progress];
    v13 = v16;
    goto LABEL_8;
  }

  if ([v6 isStalled])
  {
    [downloadButton setProgressType:2];
    goto LABEL_10;
  }

  totalWritten = [v6 totalWritten];
  v18 = (totalWritten / [v6 totalExpected]);
  [downloadButton setProgressType:3];
  v14 = downloadButton;
  v13 = v18;
  v15 = 1;
LABEL_9:
  [v14 setProgress:v15 animated:v13];
LABEL_10:
}

- (void)layoutSubviews
{
  v3 = [(DSDictionaryTableCell *)self _checkmarkImage:0];
  imageView = [(DSDictionaryTableCell *)self imageView];
  [imageView setImage:v3];

  v5 = [(DSDictionaryTableCell *)self _checkmarkImage:1];
  imageView2 = [(DSDictionaryTableCell *)self imageView];
  [imageView2 setHighlightedImage:v5];

  imageView3 = [(DSDictionaryTableCell *)self imageView];
  [imageView3 sizeToFit];

  v8.receiver = self;
  v8.super_class = DSDictionaryTableCell;
  [(DSDictionaryTableCell *)&v8 layoutSubviews];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = DSDictionaryTableCell;
  specifierCopy = specifier;
  [(DSDictionaryTableCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{PSValueKey, v6.receiver, v6.super_class}];

  [(DSDictionaryTableCell *)self setDefinitionDictionary:v5];
  [(DSDictionaryTableCell *)self updateLabels];
  [(DSDictionaryTableCell *)self reloadData];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = DSDictionaryTableCell;
  [(DSDictionaryTableCell *)&v3 prepareForReuse];
  [(DSDictionaryTableCell *)self setDefinitionDictionary:0];
}

@end