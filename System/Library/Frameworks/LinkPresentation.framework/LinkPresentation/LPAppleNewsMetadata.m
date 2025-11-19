@interface LPAppleNewsMetadata
- (BOOL)canGeneratePresentationPropertiesForURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LPAppleNewsMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)displayNameForOriginatingApp:(unint64_t)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPAppleNewsMetadata

- (LPAppleNewsMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LPAppleNewsMetadata;
  v5 = [(LPAppleNewsMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"source");
    source = v5->_source;
    v5->_source = v6;

    v8 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = LPAppleNewsMetadata;
  [(LPSpecializationMetadata *)&v5 encodeWithCoder:v4];
  [v4 _lp_encodeStringIfNotNil:self->_source forKey:@"source"];
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPAppleNewsMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPAppleNewsMetadata *)self source];
    [(LPAppleNewsMetadata *)v4 setSource:v5];

    v6 = [(LPAppleNewsMetadata *)self title];
    [(LPAppleNewsMetadata *)v4 setTitle:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPAppleNewsMetadata;
  if ([(LPAppleNewsMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v5 = a3;
  v6 = [v5 commonPresentationPropertiesForStyle:0];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  if (sizeClassAllowsMedia([v5 effectiveSizeClass]))
  {
    goto LABEL_2;
  }

  v11 = [v5 metadata];
  v12 = [v11 URL];
  if ([v12 _lp_isNewsSportsEventURL])
  {
  }

  else
  {
    v3 = [v5 metadata];
    v13 = [v3 URL];
    v14 = [v13 _lp_isNewsPuzzleURL];

    if ((v14 & 1) == 0)
    {
LABEL_2:
      v8 = [v5 metadata];
      v9 = [v8 image];
      v10 = v9;
      if (!v9)
      {
        v3 = [v5 metadata];
        v10 = [v3 icon];
      }

      [v5 _populateProperties:v6 withPrimaryImage:v10];
      goto LABEL_11;
    }
  }

  v8 = [v5 metadata];
  v9 = [v8 icon];
  v10 = v9;
  if (!v9)
  {
    v3 = [v5 metadata];
    v10 = [v3 image];
  }

  [v5 _populateProperties:v6 withPrimaryIcon:v10];
LABEL_11:
  if (!v9)
  {
  }

  v15 = [v5 metadata];
  v16 = [v15 URL];
  v17 = [LPPresentationSpecializations isStocksNewsURL:v16];

  v18 = [v5 metadata];
  v19 = [v18 title];

  v20 = [v19 rangeOfString:@" — " options:4];
  v22 = v21;
  v23 = [v19 rangeOfString:@" - " options:4];
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
    if (v22 + v25 == [v19 length])
    {
      v28 = 0;
    }

    else
    {
      v29 = [v19 substringFromIndex:?];
      v30 = [v19 substringToIndex:v25];

      v19 = v30;
      v28 = v29;
    }
  }

  v31 = [v5 _rowConfigurationForStyle:{objc_msgSend(v6, "style")}];
  if ((v31 - 2) < 2)
  {
    v35 = [v6 captionBar];
    v36 = [v35 top];
    v37 = [v36 leading];
    [v37 setText:v19];

    v38 = [v6 captionBar];
    v39 = [v38 bottom];
    v40 = [v39 leading];
    [v40 setText:v28];

    v32 = [(LPAppleNewsMetadata *)self displayNameForOriginatingApp:v17];
    v33 = [v6 captionBar];
    v34 = [v33 belowBottom];
    v41 = [v34 leading];
    [v41 setText:v32];
    goto LABEL_35;
  }

  if (v31 == 1)
  {
    v42 = [v6 captionBar];
    v43 = [v42 top];
    v44 = [v43 leading];
    [v44 setText:v19];

    if ([v5 effectiveSizeClass] == 2)
    {
      v32 = [v6 captionBar];
      v33 = [v32 bottom];
      v34 = [v33 leading];
      [v34 setText:v28];
      goto LABEL_36;
    }

    v32 = [(LPAppleNewsMetadata *)self displayNameForOriginatingApp:v17];
    v33 = joinedBySpace(v28, v32);
    v34 = [v6 captionBar];
    v41 = [v34 bottom];
    v45 = [v41 leading];
    [v45 setText:v33];

LABEL_35:
    goto LABEL_36;
  }

  if (v31)
  {
    goto LABEL_37;
  }

  v32 = [v6 captionBar];
  v33 = [v32 top];
  v34 = [v33 leading];
  [v34 setText:v19];
LABEL_36:

LABEL_37:

  return v6;
}

- (id)displayNameForOriginatingApp:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
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

- (BOOL)canGeneratePresentationPropertiesForURL:(id)a3
{
  v3 = a3;
  v4 = [LPPresentationSpecializations isAppleNewsURL:v3]|| [LPPresentationSpecializations isStocksNewsURL:v3];

  return v4;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];
  v5 = [v4 URL];
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
  v9 = [v3 metadata];
  v10 = [v9 title];
  v11 = [v7 localizedStringWithFormat:v8, v10];

  return v11;
}

- (id)previewImageForTransformer:(id)a3
{
  v3 = [a3 metadata];
  v4 = [v3 image];

  return v4;
}

@end