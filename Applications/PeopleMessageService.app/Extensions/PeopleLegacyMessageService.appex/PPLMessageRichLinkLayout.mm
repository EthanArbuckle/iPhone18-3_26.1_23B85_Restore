@interface PPLMessageRichLinkLayout
+ (id)createRichLinkLayoutWithURL:(id)a3 title:(id)a4 imageData:(id)a5;
@end

@implementation PPLMessageRichLinkLayout

+ (id)createRichLinkLayoutWithURL:(id)a3 title:(id)a4 imageData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(LPLinkMetadata);
  [v10 setTitle:v8];

  [v10 setURL:v9];
  if (v7)
  {
    v11 = [[LPImage alloc] initWithData:v7 MIMEType:@"image/png"];
    [v10 setImage:v11];
  }

  v12 = [[MSMessageRichLinkLayout alloc] initWithLinkMetadata:v10];

  return v12;
}

@end