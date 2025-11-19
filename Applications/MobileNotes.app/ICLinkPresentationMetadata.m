@interface ICLinkPresentationMetadata
- (ICLinkPresentationMetadata)initWithTitle:(id)a3 image:(id)a4;
- (ICLinkPresentationMetadata)initWithTitle:(id)a3 imageName:(id)a4;
@end

@implementation ICLinkPresentationMetadata

- (ICLinkPresentationMetadata)initWithTitle:(id)a3 imageName:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v18 = [UIImage imageNamed:v7];
    v19 = [v17 initWithPlatformImage:v18 properties:v14];

    [v11 setImage:v19];
    [v11 setTitle:v6];
    [(ICLinkPresentationMetadata *)v8 setLinkMetadata:v11];
  }

  return v8;
}

- (ICLinkPresentationMetadata)initWithTitle:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v18 = [v7 ic_PNGData];
    v19 = [UTTypePNG preferredMIMEType];
    v20 = [v17 initWithData:v18 MIMEType:v19 properties:v14];

    [v11 setImage:v20];
    [v11 setTitle:v6];
    [(ICLinkPresentationMetadata *)v8 setLinkMetadata:v11];
  }

  return v8;
}

@end