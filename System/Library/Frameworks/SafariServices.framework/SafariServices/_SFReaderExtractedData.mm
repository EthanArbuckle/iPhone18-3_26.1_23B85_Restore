@interface _SFReaderExtractedData
- (_SFReaderExtractedData)initWithCoder:(id)coder;
- (_SFReaderExtractedData)initWithReaderContent:(id)content url:(id)url;
- (id)_initWithAuthor:(id)author body:(id)body publishedDate:(id)date title:(id)title mainImageURL:(id)l url:(id)url;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFReaderExtractedData

- (_SFReaderExtractedData)initWithReaderContent:(id)content url:(id)url
{
  urlCopy = url;
  contentCopy = content;
  v8 = [contentCopy safari_stringForKey:@"imageURL"];
  v9 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:v8];
  v10 = [contentCopy safari_stringForKey:@"body"];
  v11 = [v10 dataUsingEncoding:4];

  v12 = [contentCopy safari_stringForKey:@"author"];
  v13 = [contentCopy safari_stringForKey:@"publishedDate"];
  v14 = [contentCopy safari_stringForKey:@"title"];

  v15 = [(_SFReaderExtractedData *)self _initWithAuthor:v12 body:v11 publishedDate:v13 title:v14 mainImageURL:v9 url:urlCopy];
  return v15;
}

- (id)_initWithAuthor:(id)author body:(id)body publishedDate:(id)date title:(id)title mainImageURL:(id)l url:(id)url
{
  authorCopy = author;
  bodyCopy = body;
  dateCopy = date;
  titleCopy = title;
  lCopy = l;
  urlCopy = url;
  v29.receiver = self;
  v29.super_class = _SFReaderExtractedData;
  v20 = [(_SFReaderExtractedData *)&v29 init];
  if (v20)
  {
    v21 = [authorCopy copy];
    author = v20->_author;
    v20->_author = v21;

    objc_storeStrong(&v20->_body, body);
    v23 = [dateCopy copy];
    publishedDate = v20->_publishedDate;
    v20->_publishedDate = v23;

    v25 = [titleCopy copy];
    title = v20->_title;
    v20->_title = v25;

    objc_storeStrong(&v20->_mainImageURL, l);
    objc_storeStrong(&v20->_url, url);
    v27 = v20;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  publishedDate = self->_publishedDate;
  body = self->_body;
  title = self->_title;
  author = self->_author;
  mainImageURL = self->_mainImageURL;
  url = self->_url;

  return [v4 _initWithAuthor:author body:body publishedDate:publishedDate title:title mainImageURL:mainImageURL url:url];
}

- (void)encodeWithCoder:(id)coder
{
  author = self->_author;
  coderCopy = coder;
  [coderCopy encodeObject:author forKey:@"author"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeObject:self->_publishedDate forKey:@"publishedDate"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_mainImageURL forKey:@"imageURL"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
}

- (_SFReaderExtractedData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"author"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publishedDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  v11 = [(_SFReaderExtractedData *)self _initWithAuthor:v5 body:v8 publishedDate:v6 title:v7 mainImageURL:v9 url:v10];
  return v11;
}

@end