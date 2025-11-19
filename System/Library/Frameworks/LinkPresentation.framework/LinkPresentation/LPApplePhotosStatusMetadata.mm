@interface LPApplePhotosStatusMetadata
- (BOOL)isEqual:(id)a3;
- (LPApplePhotosStatusMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
@end

@implementation LPApplePhotosStatusMetadata

- (LPApplePhotosStatusMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LPApplePhotosStatusMetadata;
  v5 = [(LPApplePhotosStatusMetadata *)&v10 init];
  if (v5)
  {
    v6 = decodeAttributedStringForKey(v4, @"title");
    status = v5->_status;
    v5->_status = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPApplePhotosStatusMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPApplePhotosStatusMetadata *)self status];
    [(LPApplePhotosStatusMetadata *)v4 setStatus:v5];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LPApplePhotosStatusMetadata;
  if ([(LPApplePhotosStatusMetadata *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_0(v4[2], self->_status);
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
  if (sizeClassAllowsStatusTransformation([v4 effectiveSizeClass]))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [v4 metadata];
    v7 = [v6 image];

    if (v7)
    {
      v8 = [v4 metadata];
      v9 = [v8 image];
      [v5 addObject:v9];
    }

    v10 = [v4 metadata];
    v11 = [v10 alternateImages];

    if (v11)
    {
      v12 = [v4 metadata];
      v13 = [v12 alternateImages];
      [v5 addObjectsFromArray:v13];
    }

    v14 = [v4 metadata];
    v15 = [v14 icon];

    if (v15)
    {
      v16 = [v4 metadata];
      v17 = [v16 icon];
      [v5 addObject:v17];
    }

    if (![v5 count])
    {
      v18 = [v4 sourceContextIcon];
      [v5 addObject:v18];
    }

    v19 = [LPCardHeadingPresentationProperties alloc];
    v20 = [v4 metadata];
    v21 = [v20 title];
    v22 = [(LPApplePhotosStatusMetadata *)self status];
    v23 = [(LPCardHeadingPresentationProperties *)v19 initWithStyle:38 topCaption:v21 attributedBottomCaption:v22 icons:v5];
  }

  else
  {
    v23 = [v4 unspecializedPresentationProperties];
  }

  return v23;
}

@end