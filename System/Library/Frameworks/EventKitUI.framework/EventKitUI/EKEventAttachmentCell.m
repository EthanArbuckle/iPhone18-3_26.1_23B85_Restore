@interface EKEventAttachmentCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (EKEventAttachmentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_iconForDocumentProxy:(id)a3;
- (void)layoutSubviews;
- (void)setAttachment:(id)a3;
- (void)showSpinner:(BOOL)a3;
@end

@implementation EKEventAttachmentCell

- (EKEventAttachmentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = EKEventAttachmentCell;
  v4 = [(EKEventAttachmentCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(EKEventAttachmentCell *)v4 traitCollection];
    if (EKUIUsesLargeTextLayout(v6))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [(EKEventAttachmentCell *)v5 textLabel];
    [v8 setNumberOfLines:v7];
  }

  return v5;
}

- (id)_iconForDocumentProxy:(id)a3
{
  v3 = a3;
  if (v3 && (([MEMORY[0x1E69DCAB8] _iconForResourceProxy:v3 format:3], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(MEMORY[0x1E69DCAB8], "_iconForResourceProxy:format:", v3, 6), (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(MEMORY[0x1E69DCAB8], "_iconForResourceProxy:format:", v3, 4), (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(MEMORY[0x1E69DCAB8], "_iconForResourceProxy:format:", v3, 7), (v4 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAttachment:(id)a3
{
  v28 = a3;
  v5 = [(EKEventAttachmentCell *)self textLabel];
  [v5 setText:0];

  v6 = [(EKEventAttachmentCell *)self detailTextLabel];
  [v6 setText:0];

  v7 = [(EKEventAttachmentCell *)self imageView];
  [v7 setImage:0];

  [(EKEventAttachmentCell *)self setAccessoryType:0];
  v8 = v28;
  if (v28)
  {
    v9 = [v28 fileName];
    v10 = v9;
    if (!v9)
    {
      v3 = EventKitUIBundle();
      v10 = [v3 localizedStringForKey:@"Untitled Attachment" value:&stru_1F4EF6790 table:0];
    }

    v11 = [(EKEventAttachmentCell *)self textLabel];
    [v11 setText:v10];

    if (!v9)
    {
    }

    v12 = [v28 fileSize];
    v13 = v12;
    if (v12)
    {
      v14 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v12 countStyle:{"longLongValue"), 0}];
      v15 = [(EKEventAttachmentCell *)self detailTextLabel];
      [v15 setText:v14];
    }

    v16 = [v28 fileName];
    v17 = [v16 pathExtension];

    if (v17)
    {
      v18 = MEMORY[0x1E6982C40];
      v19 = [v28 fileName];
      v20 = [v19 pathExtension];
      v21 = [v18 typeWithFilenameExtension:v20];

      v22 = [v21 identifier];
    }

    else
    {
      v22 = 0;
    }

    v23 = MEMORY[0x1E6963658];
    v24 = [v28 fileName];
    v25 = [v23 documentProxyForName:v24 type:v22 MIMEType:0];

    v26 = [(EKEventAttachmentCell *)self _iconForDocumentProxy:v25];
    if (v26)
    {
      v27 = [(EKEventAttachmentCell *)self imageView];
      [v27 setImage:v26];
    }

    v8 = v28;
  }
}

- (void)showSpinner:(BOOL)a3
{
  activityIndicator = self->_activityIndicator;
  if (a3)
  {
    if (!activityIndicator)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v6 = self->_activityIndicator;
      self->_activityIndicator = v5;

      activityIndicator = self->_activityIndicator;
    }

    [(UIActivityIndicatorView *)activityIndicator startAnimating];
    v7 = self->_activityIndicator;

    [(EKEventAttachmentCell *)self setAccessoryView:v7];
  }

  else if (activityIndicator)
  {
    [(EKEventAttachmentCell *)self setAccessoryView:0];
    [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
    v8 = self->_activityIndicator;
    self->_activityIndicator = 0;
  }
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = EKEventAttachmentCell;
  [(EKEventAttachmentCell *)&v32 layoutSubviews];
  v3 = [(EKEventAttachmentCell *)self traitCollection];
  if (!EKUIUsesLargeTextLayout(v3))
  {
    v4 = [(EKEventAttachmentCell *)self imageView];
    v5 = [v4 image];
    if (v5)
    {
      v6 = v5;
      v7 = [(EKEventAttachmentCell *)self imageView];
      v8 = [v7 image];
      [v8 size];
      v10 = v9;

      if (v10 <= 0.0)
      {
        return;
      }

      v11 = [(EKEventAttachmentCell *)self imageView];
      [v11 frame];

      v12 = [(EKEventAttachmentCell *)self imageView];
      v13 = [v12 image];
      [v13 size];
      v15 = v14;
      v17 = v16;

      v18 = v15 / v17;
      v19 = [(EKEventAttachmentCell *)self imageView];
      [v19 setContentMode:1];

      v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v3 _scaledValueForValue:57.0];
      if (v20 >= v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = v20;
      }

      v22 = v18 * v21;
      if (CalInterfaceIsLeftToRight())
      {
        v23 = [(EKEventAttachmentCell *)self textLabel];
        [v23 frame];
        v25 = (v24 - v22) * 0.5;
      }

      else
      {
        [(EKEventAttachmentCell *)self bounds];
        v27 = v26;
        v28 = [(EKEventAttachmentCell *)self textLabel];
        [v28 frame];
        MaxX = CGRectGetMaxX(v33);

        v25 = MaxX + (v27 - MaxX - v22) * 0.5;
      }

      [(EKEventAttachmentCell *)self frame];
      v31 = (v30 - v21) * 0.5;
      v4 = [(EKEventAttachmentCell *)self imageView];
      [v4 setFrame:{v25, v31, v22, v21}];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = EKEventAttachmentCell;
  [(EKEventAttachmentCell *)&v5 sizeThatFits:a3.width, a3.height];
  if (v4 < 54.0)
  {
    v4 = 54.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

@end