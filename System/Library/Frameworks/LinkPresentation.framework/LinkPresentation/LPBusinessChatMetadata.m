@interface LPBusinessChatMetadata
- (BOOL)isEqual:(id)a3;
- (LPBusinessChatMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
@end

@implementation LPBusinessChatMetadata

- (LPBusinessChatMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LPBusinessChatMetadata;
  v5 = [(LPBusinessChatMetadata *)&v10 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPBusinessChatMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPBusinessChatMetadata *)self subtitle];
    [(LPBusinessChatMetadata *)v4 setSubtitle:v5];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LPBusinessChatMetadata;
  if ([(LPBusinessChatMetadata *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_0(v4[2], self->_subtitle);
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
  v4 = [a3 unspecializedPresentationProperties];
  v5 = [(LPBusinessChatMetadata *)self subtitle];

  if (v5)
  {
    v6 = [(LPBusinessChatMetadata *)self subtitle];
    v7 = [v4 captionBar];
    v8 = [v7 bottom];
    v9 = [v8 leading];
    [v9 setText:v6];
  }

  return v4;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  v6 = [v5 title];
  if ([v6 length])
  {
    v7 = [(LPBusinessChatMetadata *)self subtitle];
    v8 = [v7 length];

    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = LPLocalizedString(@"%@: %@");
      v11 = [(LPBusinessChatMetadata *)self subtitle];
      v12 = [v4 metadata];
      v13 = [v12 title];
      v14 = [v9 localizedStringWithFormat:v10, v11, v13];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v15 = [v4 metadata];
  v16 = [v15 title];
  v17 = [v16 length];

  if (!v17)
  {
    v18 = [(LPBusinessChatMetadata *)self subtitle];
    v19 = [v18 length];

    if (v19)
    {
      [(LPBusinessChatMetadata *)self subtitle];
    }

    else
    {
      LPLocalizedString(@"Messages for Business");
    }
    v14 = ;
    goto LABEL_12;
  }

  v10 = [v4 metadata];
  v14 = [v10 title];
LABEL_7:

LABEL_12:

  return v14;
}

@end