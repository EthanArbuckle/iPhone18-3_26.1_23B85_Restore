@interface LPStocksMetadata
- (BOOL)isEqual:(id)equal;
- (LPStocksMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPStocksMetadata

- (LPStocksMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = LPStocksMetadata;
  v5 = [(LPStocksMetadata *)&v18 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"combinedTitle");
    combinedTitle = v5->_combinedTitle;
    v5->_combinedTitle = v6;

    v8 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = decodeStringForKey(coderCopy, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = decodeStringForKey(coderCopy, @"footnote");
    footnote = v5->_footnote;
    v5->_footnote = v12;

    v14 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_combinedTitle forKey:@"combinedTitle"];
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [coderCopy _lp_encodeStringIfNotNil:self->_subtitle forKey:@"subtitle"];
  [coderCopy _lp_encodeStringIfNotNil:self->_footnote forKey:@"footnote"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPStocksMetadata allocWithZone:zone];
  if (v4)
  {
    combinedTitle = [(LPStocksMetadata *)self combinedTitle];
    [(LPStocksMetadata *)v4 setCombinedTitle:combinedTitle];

    title = [(LPStocksMetadata *)self title];
    [(LPStocksMetadata *)v4 setTitle:title];

    subtitle = [(LPStocksMetadata *)self subtitle];
    [(LPStocksMetadata *)v4 setSubtitle:subtitle];

    footnote = [(LPStocksMetadata *)self footnote];
    [(LPStocksMetadata *)v4 setFootnote:footnote];

    icon = [(LPStocksMetadata *)self icon];
    [(LPStocksMetadata *)v4 setIcon:icon];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPStocksMetadata;
  if ([(LPStocksMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:51];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v7 - 2) < 2)
  {
    title = [(LPStocksMetadata *)self title];
    captionBar = [v5 captionBar];
    v19 = [captionBar top];
    leading = [v19 leading];
    [leading setText:title];

    subtitle = [(LPStocksMetadata *)self subtitle];
    captionBar2 = [v5 captionBar];
    bottom = [captionBar2 bottom];
    leading2 = [bottom leading];
    [leading2 setText:subtitle];

    footnote = [(LPStocksMetadata *)self footnote];
    captionBar4 = LPLocalizedString(footnote);
    captionBar3 = [v5 captionBar];
    belowBottom = [captionBar3 belowBottom];
    leading3 = [belowBottom leading];
    [leading3 setText:captionBar4];
  }

  else
  {
    if (!v7)
    {
      footnote = [(LPStocksMetadata *)self combinedTitle];
      captionBar4 = [v5 captionBar];
      captionBar3 = [captionBar4 top];
      belowBottom = [captionBar3 leading];
      [belowBottom setText:footnote];
      goto LABEL_8;
    }

    if (v7 != 1)
    {
      goto LABEL_9;
    }

    combinedTitle = [(LPStocksMetadata *)self combinedTitle];
    captionBar5 = [v5 captionBar];
    v10 = [captionBar5 top];
    leading4 = [v10 leading];
    [leading4 setText:combinedTitle];

    footnote = [(LPStocksMetadata *)self footnote];
    captionBar4 = LPLocalizedString(footnote);
    captionBar3 = [v5 captionBar];
    belowBottom = [captionBar3 bottom];
    leading3 = [belowBottom leading];
    [leading3 setText:captionBar4];
  }

LABEL_8:
LABEL_9:
  icon = [(LPStocksMetadata *)self icon];
  captionBar6 = [v5 captionBar];
  [captionBar6 setLeadingIcon:icon];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"%@: %@");
  v6 = LPLocalizedString(@"Stocks");
  combinedTitle = [(LPStocksMetadata *)self combinedTitle];
  v8 = [v4 localizedStringWithFormat:v5, v6, combinedTitle];

  return v8;
}

- (id)previewImageForTransformer:(id)transformer
{
  icon = [(LPStocksMetadata *)self icon];

  return icon;
}

@end