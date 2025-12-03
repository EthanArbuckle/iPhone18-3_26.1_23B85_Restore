@interface ENWebResource
+ (id)webResourceWithDictionary:(id)dictionary;
- (ENWebResource)initWithData:(id)data URL:(id)l MIMEType:(id)type textEncodingName:(id)name frameName:(id)frameName;
- (id)propertyList;
@end

@implementation ENWebResource

- (id)propertyList
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  data = [(ENWebResource *)self data];

  if (data)
  {
    data2 = [(ENWebResource *)self data];
    [v3 setObject:data2 forKeyedSubscript:@"WebResourceData"];
  }

  v6 = [(ENWebResource *)self URL];

  if (v6)
  {
    v7 = [(ENWebResource *)self URL];
    absoluteString = [v7 absoluteString];
    [v3 setObject:absoluteString forKeyedSubscript:@"WebResourceURL"];
  }

  mIMEType = [(ENWebResource *)self MIMEType];

  if (mIMEType)
  {
    mIMEType2 = [(ENWebResource *)self MIMEType];
    [v3 setObject:mIMEType2 forKeyedSubscript:@"WebResourceMIMEType"];
  }

  textEncodingName = [(ENWebResource *)self textEncodingName];

  if (textEncodingName)
  {
    textEncodingName2 = [(ENWebResource *)self textEncodingName];
    [v3 setObject:textEncodingName2 forKeyedSubscript:@"WebResourceTextEncodingName"];
  }

  frameName = [(ENWebResource *)self frameName];

  if (frameName)
  {
    frameName2 = [(ENWebResource *)self frameName];
    [v3 setObject:frameName2 forKeyedSubscript:@"WebResourceFrameName"];
  }

  return v3;
}

- (ENWebResource)initWithData:(id)data URL:(id)l MIMEType:(id)type textEncodingName:(id)name frameName:(id)frameName
{
  dataCopy = data;
  lCopy = l;
  typeCopy = type;
  nameCopy = name;
  frameNameCopy = frameName;
  v20.receiver = self;
  v20.super_class = ENWebResource;
  v17 = [(ENWebResource *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(ENWebResource *)v17 setData:dataCopy];
    [(ENWebResource *)v18 setURL:lCopy];
    [(ENWebResource *)v18 setMIMEType:typeCopy];
    [(ENWebResource *)v18 setTextEncodingName:nameCopy];
    [(ENWebResource *)v18 setFrameName:frameNameCopy];
  }

  return v18;
}

+ (id)webResourceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [ENWebResource alloc];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"WebResourceData"];
  v6 = MEMORY[0x277CBEBC0];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"WebResourceURL"];
  v8 = [v6 URLWithString:v7];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"WebResourceMIMEType"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"WebResourceTextEncodingName"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"WebResourceFrameName"];

  v12 = [(ENWebResource *)v4 initWithData:v5 URL:v8 MIMEType:v9 textEncodingName:v10 frameName:v11];

  return v12;
}

@end