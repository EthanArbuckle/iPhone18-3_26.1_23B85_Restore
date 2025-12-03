@interface LPAppleNewsMetadata
- (BOOL)canGeneratePresentationPropertiesForURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (LPAppleNewsMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayNameForOriginatingApp:(unint64_t)app;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPAppleNewsMetadata

- (LPAppleNewsMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = LPAppleNewsMetadata;
  v5 = [(LPAppleNewsMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"source");
    source = v5->_source;
    v5->_source = v6;

    v8 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = LPAppleNewsMetadata;
  [(LPSpecializationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy _lp_encodeStringIfNotNil:self->_source forKey:@"source"];
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPAppleNewsMetadata allocWithZone:zone];
  if (v4)
  {
    source = [(LPAppleNewsMetadata *)self source];
    [(LPAppleNewsMetadata *)v4 setSource:source];

    title = [(LPAppleNewsMetadata *)self title];
    [(LPAppleNewsMetadata *)v4 setTitle:title];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPAppleNewsMetadata;
  if ([(LPAppleNewsMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if (objectsAreEqual_0(v6[2], self->_source))
      {
        v5 = objectsAreEqual_0(v6[3], self->_title);
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
  v6 = [transformerCopy commonPresentationPropertiesForStyle:0];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  if (sizeClassAllowsMedia([transformerCopy effectiveSizeClass]))
  {
    goto LABEL_2;
  }

  metadata = [transformerCopy metadata];
  v12 = [metadata URL];
  if ([v12 _lp_isNewsSportsEventURL])
  {
  }

  else
  {
    metadata2 = [transformerCopy metadata];
    v13 = [metadata2 URL];
    _lp_isNewsPuzzleURL = [v13 _lp_isNewsPuzzleURL];

    if ((_lp_isNewsPuzzleURL & 1) == 0)
    {
LABEL_2:
      metadata3 = [transformerCopy metadata];
      image = [metadata3 image];
      icon = image;
      if (!image)
      {
        metadata2 = [transformerCopy metadata];
        icon = [metadata2 icon];
      }

      [transformerCopy _populateProperties:v6 withPrimaryImage:icon];
      goto LABEL_11;
    }
  }

  metadata3 = [transformerCopy metadata];
  image = [metadata3 icon];
  icon = image;
  if (!image)
  {
    metadata2 = [transformerCopy metadata];
    icon = [metadata2 image];
  }

  [transformerCopy _populateProperties:v6 withPrimaryIcon:icon];
LABEL_11:
  if (!image)
  {
  }

  metadata4 = [transformerCopy metadata];
  v16 = [metadata4 URL];
  v17 = [LPPresentationSpecializations isStocksNewsURL:v16];

  metadata5 = [transformerCopy metadata];
  title = [metadata5 title];

  v20 = [title rangeOfString:@" — " options:4];
  v22 = v21;
  v23 = [title rangeOfString:@" - " options:4];
  if (v22)
  {
    v25 = v20;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v26 = v23 <= v20;
    v27 = v22 != 0;
    v25 = v26 && v27 ? v20 : v23;
    if (!v26 || !v27)
    {
      v22 = v24;
    }
  }

  v28 = 0;
  if (v22 && v25)
  {
    if (v22 + v25 == [title length])
    {
      v28 = 0;
    }

    else
    {
      v29 = [title substringFromIndex:?];
      v30 = [title substringToIndex:v25];

      title = v30;
      v28 = v29;
    }
  }

  v31 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v6, "style")}];
  if ((v31 - 2) < 2)
  {
    captionBar = [v6 captionBar];
    v36 = [captionBar top];
    leading = [v36 leading];
    [leading setText:title];

    captionBar2 = [v6 captionBar];
    bottom = [captionBar2 bottom];
    leading2 = [bottom leading];
    [leading2 setText:v28];

    captionBar5 = [(LPAppleNewsMetadata *)self displayNameForOriginatingApp:v17];
    captionBar3 = [v6 captionBar];
    belowBottom = [captionBar3 belowBottom];
    leading3 = [belowBottom leading];
    [leading3 setText:captionBar5];
    goto LABEL_35;
  }

  if (v31 == 1)
  {
    captionBar4 = [v6 captionBar];
    v43 = [captionBar4 top];
    leading4 = [v43 leading];
    [leading4 setText:title];

    if ([transformerCopy effectiveSizeClass] == 2)
    {
      captionBar5 = [v6 captionBar];
      captionBar3 = [captionBar5 bottom];
      belowBottom = [captionBar3 leading];
      [belowBottom setText:v28];
      goto LABEL_36;
    }

    captionBar5 = [(LPAppleNewsMetadata *)self displayNameForOriginatingApp:v17];
    captionBar3 = joinedBySpace(v28, captionBar5);
    belowBottom = [v6 captionBar];
    leading3 = [belowBottom bottom];
    v41Leading = [leading3 leading];
    [v41Leading setText:captionBar3];

LABEL_35:
    goto LABEL_36;
  }

  if (v31)
  {
    goto LABEL_37;
  }

  captionBar5 = [v6 captionBar];
  captionBar3 = [captionBar5 top];
  belowBottom = [captionBar3 leading];
  [belowBottom setText:title];
LABEL_36:

LABEL_37:

  return v6;
}

- (id)displayNameForOriginatingApp:(unint64_t)app
{
  if (app)
  {
    if (app != 1)
    {
      goto LABEL_6;
    }

    v4 = @"Stocks";
  }

  else
  {
    v4 = @" News";
  }

  self = LPLocalizedString(v4);
LABEL_6:

  return self;
}

- (BOOL)canGeneratePresentationPropertiesForURL:(id)l
{
  lCopy = l;
  v4 = [LPPresentationSpecializations isAppleNewsURL:lCopy]|| [LPPresentationSpecializations isStocksNewsURL:lCopy];

  return v4;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  transformerCopy = transformer;
  metadata = [transformerCopy metadata];
  v5 = [metadata URL];
  v6 = [LPPresentationSpecializations isStocksNewsURL:v5];

  v7 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    LPLocalizedString(@"Stocks: %@");
  }

  else
  {
    LPLocalizedString(@"News: %@");
  }
  v8 = ;
  metadata2 = [transformerCopy metadata];
  title = [metadata2 title];
  v11 = [v7 localizedStringWithFormat:v8, title];

  return v11;
}

- (id)previewImageForTransformer:(id)transformer
{
  metadata = [transformer metadata];
  image = [metadata image];

  return image;
}

@end