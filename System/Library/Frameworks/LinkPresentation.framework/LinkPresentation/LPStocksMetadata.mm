@interface LPStocksMetadata
- (BOOL)isEqual:(id)a3;
- (LPStocksMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPStocksMetadata

- (LPStocksMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = LPStocksMetadata;
  v5 = [(LPStocksMetadata *)&v18 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"combinedTitle");
    combinedTitle = v5->_combinedTitle;
    v5->_combinedTitle = v6;

    v8 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = decodeStringForKey(v4, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = decodeStringForKey(v4, @"footnote");
    footnote = v5->_footnote;
    v5->_footnote = v12;

    v14 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_combinedTitle forKey:@"combinedTitle"];
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [v4 _lp_encodeStringIfNotNil:self->_subtitle forKey:@"subtitle"];
  [v4 _lp_encodeStringIfNotNil:self->_footnote forKey:@"footnote"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPStocksMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPStocksMetadata *)self combinedTitle];
    [(LPStocksMetadata *)v4 setCombinedTitle:v5];

    v6 = [(LPStocksMetadata *)self title];
    [(LPStocksMetadata *)v4 setTitle:v6];

    v7 = [(LPStocksMetadata *)self subtitle];
    [(LPStocksMetadata *)v4 setSubtitle:v7];

    v8 = [(LPStocksMetadata *)self footnote];
    [(LPStocksMetadata *)v4 setFootnote:v8];

    v9 = [(LPStocksMetadata *)self icon];
    [(LPStocksMetadata *)v4 setIcon:v9];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPStocksMetadata;
  if ([(LPStocksMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(self->_combinedTitle, v6[2]) & 1) != 0 && objectsAreEqual_0(self->_title, v6[3]) && objectsAreEqual_0(self->_subtitle, v6[4]) && objectsAreEqual_0(self->_footnote, v6[5]))
      {
        v5 = objectsAreEqual_0(self->_icon, v6[6]);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:51];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v7 - 2) < 2)
  {
    v17 = [(LPStocksMetadata *)self title];
    v18 = [v5 captionBar];
    v19 = [v18 top];
    v20 = [v19 leading];
    [v20 setText:v17];

    v21 = [(LPStocksMetadata *)self subtitle];
    v22 = [v5 captionBar];
    v23 = [v22 bottom];
    v24 = [v23 leading];
    [v24 setText:v21];

    v12 = [(LPStocksMetadata *)self footnote];
    v13 = LPLocalizedString(v12);
    v14 = [v5 captionBar];
    v15 = [v14 belowBottom];
    v16 = [v15 leading];
    [v16 setText:v13];
  }

  else
  {
    if (!v7)
    {
      v12 = [(LPStocksMetadata *)self combinedTitle];
      v13 = [v5 captionBar];
      v14 = [v13 top];
      v15 = [v14 leading];
      [v15 setText:v12];
      goto LABEL_8;
    }

    if (v7 != 1)
    {
      goto LABEL_9;
    }

    v8 = [(LPStocksMetadata *)self combinedTitle];
    v9 = [v5 captionBar];
    v10 = [v9 top];
    v11 = [v10 leading];
    [v11 setText:v8];

    v12 = [(LPStocksMetadata *)self footnote];
    v13 = LPLocalizedString(v12);
    v14 = [v5 captionBar];
    v15 = [v14 bottom];
    v16 = [v15 leading];
    [v16 setText:v13];
  }

LABEL_8:
LABEL_9:
  v25 = [(LPStocksMetadata *)self icon];
  v26 = [v5 captionBar];
  [v26 setLeadingIcon:v25];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"%@: %@");
  v6 = LPLocalizedString(@"Stocks");
  v7 = [(LPStocksMetadata *)self combinedTitle];
  v8 = [v4 localizedStringWithFormat:v5, v6, v7];

  return v8;
}

- (id)previewImageForTransformer:(id)a3
{
  v3 = [(LPStocksMetadata *)self icon];

  return v3;
}

@end