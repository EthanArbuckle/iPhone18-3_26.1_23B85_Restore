@interface WFRemoteFileCell
- (WFRemoteFileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setFile:(id)file checked:(BOOL)checked dateFormatter:(id)formatter;
@end

@implementation WFRemoteFileCell

- (void)setFile:(id)file checked:(BOOL)checked dateFormatter:(id)formatter
{
  checkedCopy = checked;
  fileCopy = file;
  formatterCopy = formatter;
  wfIsDirectory = [fileCopy wfIsDirectory];
  if (wfIsDirectory)
  {
    documentIcon = [MEMORY[0x277D79FC8] actionKitImageNamed:@"Folder"];
  }

  else
  {
    wfFileType = [fileCopy wfFileType];
    documentIcon = [wfFileType documentIcon];
  }

  wfPath = [fileCopy wfPath];
  lastPathComponent = [wfPath lastPathComponent];
  textLabel = [(WFRemoteFileCell *)self textLabel];
  [textLabel setText:lastPathComponent];

  uIImage = [documentIcon UIImage];
  imageView = [(WFRemoteFileCell *)self imageView];
  [imageView setImage:uIImage];

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  wfFileSize = [fileCopy wfFileSize];
  longLongValue = [wfFileSize longLongValue];

  v20 = [MEMORY[0x277CCA8E8] stringFromByteCount:longLongValue countStyle:0];
  if (longLongValue)
  {
    v21 = wfIsDirectory;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    [v17 addObject:v20];
  }

  wfLastModifiedDate = [fileCopy wfLastModifiedDate];
  v23 = [formatterCopy stringFromDate:wfLastModifiedDate];

  if ([v23 length])
  {
    v24 = MEMORY[0x277CCACA8];
    v25 = WFLocalizedString(@"modified %@");
    lowercaseString = [v23 lowercaseString];
    v27 = [v24 localizedStringWithFormat:v25, lowercaseString];
    [v17 addObject:v27];
  }

  v28 = [v17 componentsJoinedByString:{@", "}];
  detailTextLabel = [(WFRemoteFileCell *)self detailTextLabel];
  [detailTextLabel setText:v28];

  v30 = 3;
  if (!checkedCopy)
  {
    v30 = 0;
  }

  if (wfIsDirectory)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  [(WFRemoteFileCell *)self setAccessoryType:v31];
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = WFRemoteFileCell;
  [(WFRemoteFileCell *)&v35 layoutSubviews];
  contentView = [(WFRemoteFileCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  remainder.origin.x = v4;
  remainder.origin.y = v6;
  remainder.size.width = v8;
  remainder.size.height = v10;

  memset(&v33, 0, sizeof(v33));
  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  CGRectDivide(v36, &v33, &remainder, 5.0, CGRectMinXEdge);
  CGRectDivide(remainder, &v33, &remainder, 44.0, CGRectMinXEdge);
  v37 = CGRectInset(v33, 5.0, 5.0);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  imageView = [(WFRemoteFileCell *)self imageView];
  [imageView setFrame:{x, y, width, height}];

  textLabel = [(WFRemoteFileCell *)self textLabel];
  [textLabel frame];
  v19 = v18;
  v21 = v20;

  v22 = remainder.origin.x;
  v23 = remainder.size.width;
  textLabel2 = [(WFRemoteFileCell *)self textLabel];
  [textLabel2 setFrame:{v22, v19, v23, v21}];

  detailTextLabel = [(WFRemoteFileCell *)self detailTextLabel];
  [detailTextLabel frame];
  v27 = v26;
  v29 = v28;

  v30 = remainder.origin.x;
  v31 = remainder.size.width;
  detailTextLabel2 = [(WFRemoteFileCell *)self detailTextLabel];
  [detailTextLabel2 setFrame:{v30, v27, v31, v29}];
}

- (WFRemoteFileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = WFRemoteFileCell;
  v4 = [(WFRemoteFileCell *)&v9 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    imageView = [(WFRemoteFileCell *)v4 imageView];
    [imageView setContentMode:1];

    [(WFRemoteFileCell *)v5 setSeparatorInset:0.0, 49.0, 0.0, 0.0];
    v7 = v5;
  }

  return v5;
}

@end