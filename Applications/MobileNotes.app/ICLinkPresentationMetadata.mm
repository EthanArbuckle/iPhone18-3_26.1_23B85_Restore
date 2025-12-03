@interface ICLinkPresentationMetadata
- (ICLinkPresentationMetadata)initWithTitle:(id)title image:(id)image;
- (ICLinkPresentationMetadata)initWithTitle:(id)title imageName:(id)name;
@end

@implementation ICLinkPresentationMetadata

- (ICLinkPresentationMetadata)initWithTitle:(id)title imageName:(id)name
{
  titleCopy = title;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = ICLinkPresentationMetadata;
  v8 = [(ICLinkPresentationMetadata *)&v21 init];
  if (v8)
  {
    sub_1004E9FC8(v9);
    v11 = objc_alloc_init(*(v10 + 56));
    sub_1004E9FA4(v12);
    v14 = objc_alloc_init(*(v13 + 48));
    [v14 setType:5];
    sub_1004E9F80(v15);
    v17 = objc_alloc(*(v16 + 40));
    v18 = [UIImage imageNamed:nameCopy];
    v19 = [v17 initWithPlatformImage:v18 properties:v14];

    [v11 setImage:v19];
    [v11 setTitle:titleCopy];
    [(ICLinkPresentationMetadata *)v8 setLinkMetadata:v11];
  }

  return v8;
}

- (ICLinkPresentationMetadata)initWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v22.receiver = self;
  v22.super_class = ICLinkPresentationMetadata;
  v8 = [(ICLinkPresentationMetadata *)&v22 init];
  if (v8)
  {
    sub_1004E9FC8(v9);
    v11 = objc_alloc_init(*(v10 + 56));
    sub_1004E9FA4(v12);
    v14 = objc_alloc_init(*(v13 + 48));
    [v14 setType:5];
    sub_1004E9F80(v15);
    v17 = objc_alloc(*(v16 + 40));
    ic_PNGData = [imageCopy ic_PNGData];
    preferredMIMEType = [UTTypePNG preferredMIMEType];
    v20 = [v17 initWithData:ic_PNGData MIMEType:preferredMIMEType properties:v14];

    [v11 setImage:v20];
    [v11 setTitle:titleCopy];
    [(ICLinkPresentationMetadata *)v8 setLinkMetadata:v11];
  }

  return v8;
}

@end