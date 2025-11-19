@interface ENWebResource
+ (id)webResourceWithDictionary:(id)a3;
- (ENWebResource)initWithData:(id)a3 URL:(id)a4 MIMEType:(id)a5 textEncodingName:(id)a6 frameName:(id)a7;
- (id)propertyList;
@end

@implementation ENWebResource

- (id)propertyList
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(ENWebResource *)self data];

  if (v4)
  {
    v5 = [(ENWebResource *)self data];
    [v3 setObject:v5 forKeyedSubscript:@"WebResourceData"];
  }

  v6 = [(ENWebResource *)self URL];

  if (v6)
  {
    v7 = [(ENWebResource *)self URL];
    v8 = [v7 absoluteString];
    [v3 setObject:v8 forKeyedSubscript:@"WebResourceURL"];
  }

  v9 = [(ENWebResource *)self MIMEType];

  if (v9)
  {
    v10 = [(ENWebResource *)self MIMEType];
    [v3 setObject:v10 forKeyedSubscript:@"WebResourceMIMEType"];
  }

  v11 = [(ENWebResource *)self textEncodingName];

  if (v11)
  {
    v12 = [(ENWebResource *)self textEncodingName];
    [v3 setObject:v12 forKeyedSubscript:@"WebResourceTextEncodingName"];
  }

  v13 = [(ENWebResource *)self frameName];

  if (v13)
  {
    v14 = [(ENWebResource *)self frameName];
    [v3 setObject:v14 forKeyedSubscript:@"WebResourceFrameName"];
  }

  return v3;
}

- (ENWebResource)initWithData:(id)a3 URL:(id)a4 MIMEType:(id)a5 textEncodingName:(id)a6 frameName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = ENWebResource;
  v17 = [(ENWebResource *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(ENWebResource *)v17 setData:v12];
    [(ENWebResource *)v18 setURL:v13];
    [(ENWebResource *)v18 setMIMEType:v14];
    [(ENWebResource *)v18 setTextEncodingName:v15];
    [(ENWebResource *)v18 setFrameName:v16];
  }

  return v18;
}

+ (id)webResourceWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [ENWebResource alloc];
  v5 = [v3 objectForKeyedSubscript:@"WebResourceData"];
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v3 objectForKeyedSubscript:@"WebResourceURL"];
  v8 = [v6 URLWithString:v7];
  v9 = [v3 objectForKeyedSubscript:@"WebResourceMIMEType"];
  v10 = [v3 objectForKeyedSubscript:@"WebResourceTextEncodingName"];
  v11 = [v3 objectForKeyedSubscript:@"WebResourceFrameName"];

  v12 = [(ENWebResource *)v4 initWithData:v5 URL:v8 MIMEType:v9 textEncodingName:v10 frameName:v11];

  return v12;
}

@end