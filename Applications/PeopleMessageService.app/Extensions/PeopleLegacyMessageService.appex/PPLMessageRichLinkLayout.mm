@interface PPLMessageRichLinkLayout
+ (id)createRichLinkLayoutWithURL:(id)l title:(id)title imageData:(id)data;
@end

@implementation PPLMessageRichLinkLayout

+ (id)createRichLinkLayoutWithURL:(id)l title:(id)title imageData:(id)data
{
  dataCopy = data;
  titleCopy = title;
  lCopy = l;
  v10 = objc_alloc_init(LPLinkMetadata);
  [v10 setTitle:titleCopy];

  [v10 setURL:lCopy];
  if (dataCopy)
  {
    v11 = [[LPImage alloc] initWithData:dataCopy MIMEType:@"image/png"];
    [v10 setImage:v11];
  }

  v12 = [[MSMessageRichLinkLayout alloc] initWithLinkMetadata:v10];

  return v12;
}

@end