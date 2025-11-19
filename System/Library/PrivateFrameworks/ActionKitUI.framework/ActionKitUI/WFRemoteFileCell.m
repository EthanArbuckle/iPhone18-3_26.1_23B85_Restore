@interface WFRemoteFileCell
- (WFRemoteFileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setFile:(id)a3 checked:(BOOL)a4 dateFormatter:(id)a5;
@end

@implementation WFRemoteFileCell

- (void)setFile:(id)a3 checked:(BOOL)a4 dateFormatter:(id)a5
{
  v6 = a4;
  v32 = a3;
  v8 = a5;
  v9 = [v32 wfIsDirectory];
  if (v9)
  {
    v10 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"Folder"];
  }

  else
  {
    v11 = [v32 wfFileType];
    v10 = [v11 documentIcon];
  }

  v12 = [v32 wfPath];
  v13 = [v12 lastPathComponent];
  v14 = [(WFRemoteFileCell *)self textLabel];
  [v14 setText:v13];

  v15 = [v10 UIImage];
  v16 = [(WFRemoteFileCell *)self imageView];
  [v16 setImage:v15];

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = [v32 wfFileSize];
  v19 = [v18 longLongValue];

  v20 = [MEMORY[0x277CCA8E8] stringFromByteCount:v19 countStyle:0];
  if (v19)
  {
    v21 = v9;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    [v17 addObject:v20];
  }

  v22 = [v32 wfLastModifiedDate];
  v23 = [v8 stringFromDate:v22];

  if ([v23 length])
  {
    v24 = MEMORY[0x277CCACA8];
    v25 = WFLocalizedString(@"modified %@");
    v26 = [v23 lowercaseString];
    v27 = [v24 localizedStringWithFormat:v25, v26];
    [v17 addObject:v27];
  }

  v28 = [v17 componentsJoinedByString:{@", "}];
  v29 = [(WFRemoteFileCell *)self detailTextLabel];
  [v29 setText:v28];

  v30 = 3;
  if (!v6)
  {
    v30 = 0;
  }

  if (v9)
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
  v3 = [(WFRemoteFileCell *)self contentView];
  [v3 bounds];
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
  v16 = [(WFRemoteFileCell *)self imageView];
  [v16 setFrame:{x, y, width, height}];

  v17 = [(WFRemoteFileCell *)self textLabel];
  [v17 frame];
  v19 = v18;
  v21 = v20;

  v22 = remainder.origin.x;
  v23 = remainder.size.width;
  v24 = [(WFRemoteFileCell *)self textLabel];
  [v24 setFrame:{v22, v19, v23, v21}];

  v25 = [(WFRemoteFileCell *)self detailTextLabel];
  [v25 frame];
  v27 = v26;
  v29 = v28;

  v30 = remainder.origin.x;
  v31 = remainder.size.width;
  v32 = [(WFRemoteFileCell *)self detailTextLabel];
  [v32 setFrame:{v30, v27, v31, v29}];
}

- (WFRemoteFileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = WFRemoteFileCell;
  v4 = [(WFRemoteFileCell *)&v9 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(WFRemoteFileCell *)v4 imageView];
    [v6 setContentMode:1];

    [(WFRemoteFileCell *)v5 setSeparatorInset:0.0, 49.0, 0.0, 0.0];
    v7 = v5;
  }

  return v5;
}

@end