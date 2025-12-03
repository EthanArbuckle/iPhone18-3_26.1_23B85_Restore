@interface PKMultipartElement
- (PKMultipartElement)initWithHeaders:(id)headers path:(id)path boundary:(id)boundary;
- (PKMultipartElement)initWithHeaders:(id)headers string:(id)string boundary:(id)boundary;
- (PKMultipartElement)initWithName:(id)name boundary:(id)boundary data:(id)data contentType:(id)type;
- (PKMultipartElement)initWithName:(id)name boundary:(id)boundary data:(id)data contentType:(id)type filename:(id)filename;
- (PKMultipartElement)initWithName:(id)name boundary:(id)boundary string:(id)string;
- (PKMultipartElement)initWithName:(id)name filename:(id)filename boundary:(id)boundary path:(id)path;
- (PKMultipartElement)initWithName:(id)name filename:(id)filename boundary:(id)boundary path:(id)path contentType:(id)type;
- (PKMultipartElement)initWithName:(id)name filename:(id)filename boundary:(id)boundary stream:(id)stream streamLength:(unint64_t)length;
- (id)makeHeadersDataFromHeadersDict:(id)dict boundary:(id)boundary;
- (unint64_t)read:(char *)read maxLength:(unint64_t)length;
- (void)updateLength;
@end

@implementation PKMultipartElement

- (unint64_t)read:(char *)read maxLength:(unint64_t)length
{
  delivered = [(PKMultipartElement *)self delivered];
  if (delivered >= [(PKMultipartElement *)self length])
  {
    return 0;
  }

  delivered2 = [(PKMultipartElement *)self delivered];
  headersLength = [(PKMultipartElement *)self headersLength];
  lengthCopy = 0;
  if (!length || delivered2 >= headersLength)
  {
    goto LABEL_10;
  }

  headersLength2 = [(PKMultipartElement *)self headersLength];
  delivered3 = [(PKMultipartElement *)self delivered];
  if (headersLength2 - delivered3 >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = headersLength2 - delivered3;
  }

  headers = [(PKMultipartElement *)self headers];
  [headers getBytes:read range:{-[PKMultipartElement delivered](self, "delivered"), lengthCopy}];

  for (i = [(PKMultipartElement *)self delivered]+ lengthCopy; ; i = [(PKMultipartElement *)self delivered]+ lengthCopy)
  {
    [(PKMultipartElement *)self setDelivered:i];
LABEL_10:
    delivered4 = [(PKMultipartElement *)self delivered];
    if (delivered4 < [(PKMultipartElement *)self headersLength])
    {
      break;
    }

    delivered5 = [(PKMultipartElement *)self delivered];
    if (delivered5 >= [(PKMultipartElement *)self length]- 2 || length <= lengthCopy)
    {
      break;
    }

    body = [(PKMultipartElement *)self body];
    lengthCopy = [body read:&read[lengthCopy] maxLength:length - lengthCopy];

    if (!lengthCopy)
    {
      break;
    }

    lengthCopy += lengthCopy;
  }

  delivered6 = [(PKMultipartElement *)self delivered];
  if (delivered6 >= [(PKMultipartElement *)self length]- 2 && lengthCopy < length)
  {
    delivered7 = [(PKMultipartElement *)self delivered];
    if (delivered7 == [(PKMultipartElement *)self length]- 2)
    {
      read[lengthCopy++] = 13;
      [(PKMultipartElement *)self setDelivered:[(PKMultipartElement *)self delivered]+ 1];
    }

    read[lengthCopy++] = 10;
    [(PKMultipartElement *)self setDelivered:[(PKMultipartElement *)self delivered]+ 1];
  }

  return lengthCopy;
}

- (id)makeHeadersDataFromHeadersDict:(id)dict boundary:(id)boundary
{
  v26 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  boundaryCopy = boundary;
  boundaryCopy = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"--%@", boundaryCopy];
  [(PKMultipartElement *)self appendNewLine:boundaryCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [dictCopy allKeys];
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        v14 = [dictCopy objectForKeyedSubscript:v12];
        v15 = [v13 initWithFormat:@"%@: %@", v12, v14];
        [boundaryCopy appendString:v15];

        [(PKMultipartElement *)self appendNewLine:boundaryCopy];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [(PKMultipartElement *)self appendNewLine:boundaryCopy];
  v16 = [boundaryCopy dataUsingEncoding:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (PKMultipartElement)initWithHeaders:(id)headers path:(id)path boundary:(id)boundary
{
  headersCopy = headers;
  pathCopy = path;
  boundaryCopy = boundary;
  v21.receiver = self;
  v21.super_class = PKMultipartElement;
  v11 = [(PKMultipartElement *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(PKMultipartElement *)v11 makeHeadersDataFromHeadersDict:headersCopy boundary:boundaryCopy];
    headers = v12->_headers;
    v12->_headers = v13;

    v12->_headersLength = [(NSData *)v12->_headers length];
    v15 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:pathCopy];
    body = v12->_body;
    v12->_body = v15;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [defaultManager attributesOfItemAtPath:pathCopy error:0];
    v19 = [v18 objectForKey:*MEMORY[0x277CCA1C0]];
    v12->_bodyLength = [v19 unsignedIntegerValue];

    [(PKMultipartElement *)v12 updateLength];
  }

  return v12;
}

- (PKMultipartElement)initWithHeaders:(id)headers string:(id)string boundary:(id)boundary
{
  headersCopy = headers;
  stringCopy = string;
  boundaryCopy = boundary;
  v19.receiver = self;
  v19.super_class = PKMultipartElement;
  v11 = [(PKMultipartElement *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(PKMultipartElement *)v11 makeHeadersDataFromHeadersDict:headersCopy boundary:boundaryCopy];
    headers = v12->_headers;
    v12->_headers = v13;

    v12->_headersLength = [(NSData *)v12->_headers length];
    v15 = [stringCopy dataUsingEncoding:4];
    v16 = [MEMORY[0x277CBEAE0] inputStreamWithData:v15];
    body = v12->_body;
    v12->_body = v16;

    v12->_bodyLength = [v15 length];
    [(PKMultipartElement *)v12 updateLength];
  }

  return v12;
}

- (PKMultipartElement)initWithName:(id)name filename:(id)filename boundary:(id)boundary stream:(id)stream streamLength:(unint64_t)length
{
  nameCopy = name;
  filenameCopy = filename;
  boundaryCopy = boundary;
  streamCopy = stream;
  v24.receiver = self;
  v24.super_class = PKMultipartElement;
  v16 = [(PKMultipartElement *)&v24 init];
  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    pathExtension = [filenameCopy pathExtension];
    v19 = MIMETypeForExtension(pathExtension);
    v20 = [v17 stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@; filename=%@\r\nContent-Type: %@\r\n\r\n", boundaryCopy, nameCopy, filenameCopy, v19];;
    v21 = [v20 dataUsingEncoding:4];
    [(PKMultipartElement *)v16 setHeaders:v21];

    headers = [(PKMultipartElement *)v16 headers];
    -[PKMultipartElement setHeadersLength:](v16, "setHeadersLength:", [headers length]);

    [(PKMultipartElement *)v16 setBody:streamCopy];
    [(PKMultipartElement *)v16 setBodyLength:length];
    [(PKMultipartElement *)v16 updateLength];
  }

  return v16;
}

- (PKMultipartElement)initWithName:(id)name filename:(id)filename boundary:(id)boundary path:(id)path contentType:(id)type
{
  nameCopy = name;
  filenameCopy = filename;
  boundaryCopy = boundary;
  pathCopy = path;
  typeCopy = type;
  v26.receiver = self;
  v26.super_class = PKMultipartElement;
  v17 = [(PKMultipartElement *)&v26 init];
  if (v17)
  {
    if (!filenameCopy)
    {
      filenameCopy = [pathCopy lastPathComponent];
    }

    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@; filename=%@\r\nContent-Type: %@\r\n\r\n", boundaryCopy, nameCopy, filenameCopy, typeCopy];;
    v19 = [typeCopy dataUsingEncoding:4];
    [(PKMultipartElement *)v17 setHeaders:v19];

    headers = [(PKMultipartElement *)v17 headers];
    -[PKMultipartElement setHeadersLength:](v17, "setHeadersLength:", [headers length]);

    v21 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:pathCopy];
    [(PKMultipartElement *)v17 setBody:v21];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v23 = [defaultManager attributesOfItemAtPath:pathCopy error:0];
    v24 = [v23 objectForKey:*MEMORY[0x277CCA1C0]];
    -[PKMultipartElement setBodyLength:](v17, "setBodyLength:", [v24 unsignedIntegerValue]);

    [(PKMultipartElement *)v17 updateLength];
  }

  return v17;
}

- (PKMultipartElement)initWithName:(id)name filename:(id)filename boundary:(id)boundary path:(id)path
{
  pathCopy = path;
  boundaryCopy = boundary;
  filenameCopy = filename;
  nameCopy = name;
  pathExtension = [pathCopy pathExtension];
  v15 = MIMETypeForExtension(pathExtension);
  v16 = [(PKMultipartElement *)self initWithName:nameCopy filename:filenameCopy boundary:boundaryCopy path:pathCopy contentType:v15];

  return v16;
}

- (PKMultipartElement)initWithName:(id)name boundary:(id)boundary data:(id)data contentType:(id)type filename:(id)filename
{
  v23.receiver = self;
  v23.super_class = PKMultipartElement;
  filenameCopy = filename;
  typeCopy = type;
  dataCopy = data;
  boundaryCopy = boundary;
  nameCopy = name;
  v16 = [(PKMultipartElement *)&v23 init];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@; filename=%@\r\nContent-Type: %@\r\n\r\n", boundaryCopy, nameCopy, filenameCopy, typeCopy, v23.receiver, v23.super_class];;

  v18 = [v17 dataUsingEncoding:4];
  [(PKMultipartElement *)v16 setHeaders:v18];

  headers = [(PKMultipartElement *)v16 headers];
  -[PKMultipartElement setHeadersLength:](v16, "setHeadersLength:", [headers length]);

  v20 = [MEMORY[0x277CBEAE0] inputStreamWithData:dataCopy];
  [(PKMultipartElement *)v16 setBody:v20];

  v21 = [dataCopy length];
  [(PKMultipartElement *)v16 setBodyLength:v21];
  [(PKMultipartElement *)v16 updateLength];
  return v16;
}

- (PKMultipartElement)initWithName:(id)name boundary:(id)boundary data:(id)data contentType:(id)type
{
  v20.receiver = self;
  v20.super_class = PKMultipartElement;
  typeCopy = type;
  dataCopy = data;
  boundaryCopy = boundary;
  nameCopy = name;
  v13 = [(PKMultipartElement *)&v20 init];
  typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@\r\nContent-Type: %@\r\n\r\n", boundaryCopy, nameCopy, typeCopy];;

  v15 = [typeCopy dataUsingEncoding:4];
  [(PKMultipartElement *)v13 setHeaders:v15];

  headers = [(PKMultipartElement *)v13 headers];
  -[PKMultipartElement setHeadersLength:](v13, "setHeadersLength:", [headers length]);

  v17 = [MEMORY[0x277CBEAE0] inputStreamWithData:dataCopy];
  [(PKMultipartElement *)v13 setBody:v17];

  v18 = [dataCopy length];
  [(PKMultipartElement *)v13 setBodyLength:v18];
  [(PKMultipartElement *)v13 updateLength];
  return v13;
}

- (PKMultipartElement)initWithName:(id)name boundary:(id)boundary string:(id)string
{
  v17.receiver = self;
  v17.super_class = PKMultipartElement;
  stringCopy = string;
  boundaryCopy = boundary;
  nameCopy = name;
  v10 = [(PKMultipartElement *)&v17 init];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@\r\n\r\n", boundaryCopy, nameCopy, v17.receiver, v17.super_class];;

  v12 = [v11 dataUsingEncoding:4];
  [(PKMultipartElement *)v10 setHeaders:v12];

  headers = [(PKMultipartElement *)v10 headers];
  -[PKMultipartElement setHeadersLength:](v10, "setHeadersLength:", [headers length]);

  v14 = [stringCopy dataUsingEncoding:4];

  v15 = [MEMORY[0x277CBEAE0] inputStreamWithData:v14];
  [(PKMultipartElement *)v10 setBody:v15];

  -[PKMultipartElement setBodyLength:](v10, "setBodyLength:", [v14 length]);
  [(PKMultipartElement *)v10 updateLength];

  return v10;
}

- (void)updateLength
{
  [(PKMultipartElement *)self setLength:[(PKMultipartElement *)self headersLength]+ [(PKMultipartElement *)self bodyLength]+ 2];
  body = [(PKMultipartElement *)self body];
  [body open];
}

@end