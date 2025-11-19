@interface DSDictionaryTableCell
- (DSDictionaryTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)subtitle;
- (id)title;
- (void)handleDownloadButtonPressed:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)reloadDataWithAssetOperationState:(id)a3;
- (void)updateLabels;
@end

@implementation DSDictionaryTableCell

- (DSDictionaryTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v21.receiver = self;
  v21.super_class = DSDictionaryTableCell;
  v9 = [(DSDictionaryTableCell *)&v21 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 propertyForKey:PSValueKey];
    [(DSDictionaryTableCell *)v9 setDefinitionDictionary:v10];

    v11 = [[DSDownloadProgressButton alloc] initWithStyle:1];
    [(DSDictionaryTableCell *)v9 setDownloadButton:v11];
    [(DSDownloadProgressButton *)v11 setProgressType:3];
    v12 = [(DSDictionaryTableCell *)v9 contentView];
    [v12 bounds];
    MaxX = CGRectGetMaxX(v22);
    [(DSDownloadProgressButton *)v11 frame];
    v14 = MaxX - CGRectGetWidth(v23) + -20.0;
    v15 = [(DSDictionaryTableCell *)v9 contentView];
    [v15 bounds];
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

- (void)handleDownloadButtonPressed:(id)a3
{
  v3 = [(DSDictionaryTableCell *)self specifier];
  [v3 performButtonAction];
}

- (void)updateLabels
{
  v3 = [(DSDictionaryTableCell *)self title];
  v4 = [(DSDictionaryTableCell *)self textLabel];
  [v4 setText:v3];

  v6 = [(DSDictionaryTableCell *)self subtitle];
  v5 = [(DSDictionaryTableCell *)self detailTextLabel];
  [v5 setText:v6];
}

- (id)title
{
  v3 = [(DSDictionaryTableCell *)self definitionDictionary];
  if ([v3 isAppleDictionary])
  {

LABEL_4:
    v6 = [(DSDictionaryTableCell *)self definitionDictionary];
    v7 = [v6 localizedDictionaryName];
    goto LABEL_6;
  }

  v4 = [(DSDictionaryTableCell *)self definitionDictionary];
  v5 = [v4 isTTYDictionary];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [(DSDictionaryTableCell *)self definitionDictionary];
  v7 = [v6 localizedLanguageName];
LABEL_6:
  v8 = v7;

  return v8;
}

- (id)subtitle
{
  v3 = [(DSDictionaryTableCell *)self definitionDictionary];
  if ([v3 isAppleDictionary])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(DSDictionaryTableCell *)self definitionDictionary];
    v6 = [v5 isTTYDictionary];

    if (v6)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [(DSDictionaryTableCell *)self definitionDictionary];
    v4 = [v3 localizedDictionaryName];
  }

LABEL_7:

  return v4;
}

- (void)reloadDataWithAssetOperationState:(id)a3
{
  v4 = a3;
  v19 = [(DSDictionaryTableCell *)self downloadButton];
  v5 = [(DSDictionaryTableCell *)self definitionDictionary];
  v6 = [v4 objectForKeyedSubscript:@"MAProgressNotification"];
  v7 = [v4 objectForKeyedSubscript:@"completed"];

  v8 = [v7 BOOLValue];
  v9 = [v5 rawAsset];
  v10 = [v9 state];
  v11 = [v5 activated];
  v12 = [(DSDictionaryTableCell *)self imageView];
  [v12 setHidden:v11 ^ 1];

  if (v8)
  {
    [v19 setProgressType:4];
LABEL_7:
    [(DSDictionaryTableCell *)self setAccessoryView:0];
    v13 = 0.0;
LABEL_8:
    v14 = v19;
    v15 = 0;
    goto LABEL_9;
  }

  if (v10 != &dword_4)
  {
    goto LABEL_7;
  }

  [v19 setProgressType:3];
  [(DSDictionaryTableCell *)self setAccessoryView:v19];
  if (!v6)
  {
    [v5 progress];
    v13 = v16;
    goto LABEL_8;
  }

  if ([v6 isStalled])
  {
    [v19 setProgressType:2];
    goto LABEL_10;
  }

  v17 = [v6 totalWritten];
  v18 = (v17 / [v6 totalExpected]);
  [v19 setProgressType:3];
  v14 = v19;
  v13 = v18;
  v15 = 1;
LABEL_9:
  [v14 setProgress:v15 animated:v13];
LABEL_10:
}

- (void)layoutSubviews
{
  v3 = [(DSDictionaryTableCell *)self _checkmarkImage:0];
  v4 = [(DSDictionaryTableCell *)self imageView];
  [v4 setImage:v3];

  v5 = [(DSDictionaryTableCell *)self _checkmarkImage:1];
  v6 = [(DSDictionaryTableCell *)self imageView];
  [v6 setHighlightedImage:v5];

  v7 = [(DSDictionaryTableCell *)self imageView];
  [v7 sizeToFit];

  v8.receiver = self;
  v8.super_class = DSDictionaryTableCell;
  [(DSDictionaryTableCell *)&v8 layoutSubviews];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = DSDictionaryTableCell;
  v4 = a3;
  [(DSDictionaryTableCell *)&v6 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{PSValueKey, v6.receiver, v6.super_class}];

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