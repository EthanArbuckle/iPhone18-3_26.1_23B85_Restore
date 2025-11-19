@interface _SFReaderExtractedData
- (_SFReaderExtractedData)initWithCoder:(id)a3;
- (_SFReaderExtractedData)initWithReaderContent:(id)a3 url:(id)a4;
- (id)_initWithAuthor:(id)a3 body:(id)a4 publishedDate:(id)a5 title:(id)a6 mainImageURL:(id)a7 url:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFReaderExtractedData

- (_SFReaderExtractedData)initWithReaderContent:(id)a3 url:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 safari_stringForKey:@"imageURL"];
  v9 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:v8];
  v10 = [v7 safari_stringForKey:@"body"];
  v11 = [v10 dataUsingEncoding:4];

  v12 = [v7 safari_stringForKey:@"author"];
  v13 = [v7 safari_stringForKey:@"publishedDate"];
  v14 = [v7 safari_stringForKey:@"title"];

  v15 = [(_SFReaderExtractedData *)self _initWithAuthor:v12 body:v11 publishedDate:v13 title:v14 mainImageURL:v9 url:v6];
  return v15;
}

- (id)_initWithAuthor:(id)a3 body:(id)a4 publishedDate:(id)a5 title:(id)a6 mainImageURL:(id)a7 url:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v29.receiver = self;
  v29.super_class = _SFReaderExtractedData;
  v20 = [(_SFReaderExtractedData *)&v29 init];
  if (v20)
  {
    v21 = [v14 copy];
    author = v20->_author;
    v20->_author = v21;

    objc_storeStrong(&v20->_body, a4);
    v23 = [v16 copy];
    publishedDate = v20->_publishedDate;
    v20->_publishedDate = v23;

    v25 = [v17 copy];
    title = v20->_title;
    v20->_title = v25;

    objc_storeStrong(&v20->_mainImageURL, a7);
    objc_storeStrong(&v20->_url, a8);
    v27 = v20;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  publishedDate = self->_publishedDate;
  body = self->_body;
  title = self->_title;
  author = self->_author;
  mainImageURL = self->_mainImageURL;
  url = self->_url;

  return [v4 _initWithAuthor:author body:body publishedDate:publishedDate title:title mainImageURL:mainImageURL url:url];
}

- (void)encodeWithCoder:(id)a3
{
  author = self->_author;
  v5 = a3;
  [v5 encodeObject:author forKey:@"author"];
  [v5 encodeObject:self->_body forKey:@"body"];
  [v5 encodeObject:self->_publishedDate forKey:@"publishedDate"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_mainImageURL forKey:@"imageURL"];
  [v5 encodeObject:self->_url forKey:@"url"];
}

- (_SFReaderExtractedData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"author"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publishedDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  v11 = [(_SFReaderExtractedData *)self _initWithAuthor:v5 body:v8 publishedDate:v6 title:v7 mainImageURL:v9 url:v10];
  return v11;
}

@end