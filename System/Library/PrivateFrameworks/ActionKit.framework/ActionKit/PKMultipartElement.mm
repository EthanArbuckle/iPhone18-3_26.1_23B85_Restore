@interface PKMultipartElement
- (PKMultipartElement)initWithHeaders:(id)a3 path:(id)a4 boundary:(id)a5;
- (PKMultipartElement)initWithHeaders:(id)a3 string:(id)a4 boundary:(id)a5;
- (PKMultipartElement)initWithName:(id)a3 boundary:(id)a4 data:(id)a5 contentType:(id)a6;
- (PKMultipartElement)initWithName:(id)a3 boundary:(id)a4 data:(id)a5 contentType:(id)a6 filename:(id)a7;
- (PKMultipartElement)initWithName:(id)a3 boundary:(id)a4 string:(id)a5;
- (PKMultipartElement)initWithName:(id)a3 filename:(id)a4 boundary:(id)a5 path:(id)a6;
- (PKMultipartElement)initWithName:(id)a3 filename:(id)a4 boundary:(id)a5 path:(id)a6 contentType:(id)a7;
- (PKMultipartElement)initWithName:(id)a3 filename:(id)a4 boundary:(id)a5 stream:(id)a6 streamLength:(unint64_t)a7;
- (id)makeHeadersDataFromHeadersDict:(id)a3 boundary:(id)a4;
- (unint64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (void)updateLength;
@end

@implementation PKMultipartElement

- (unint64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  v7 = [(PKMultipartElement *)self delivered];
  if (v7 >= [(PKMultipartElement *)self length])
  {
    return 0;
  }

  v8 = [(PKMultipartElement *)self delivered];
  v9 = [(PKMultipartElement *)self headersLength];
  v10 = 0;
  if (!a4 || v8 >= v9)
  {
    goto LABEL_10;
  }

  v11 = [(PKMultipartElement *)self headersLength];
  v12 = [(PKMultipartElement *)self delivered];
  if (v11 - v12 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v11 - v12;
  }

  v13 = [(PKMultipartElement *)self headers];
  [v13 getBytes:a3 range:{-[PKMultipartElement delivered](self, "delivered"), v10}];

  for (i = [(PKMultipartElement *)self delivered]+ v10; ; i = [(PKMultipartElement *)self delivered]+ v19)
  {
    [(PKMultipartElement *)self setDelivered:i];
LABEL_10:
    v15 = [(PKMultipartElement *)self delivered];
    if (v15 < [(PKMultipartElement *)self headersLength])
    {
      break;
    }

    v16 = [(PKMultipartElement *)self delivered];
    if (v16 >= [(PKMultipartElement *)self length]- 2 || a4 <= v10)
    {
      break;
    }

    v18 = [(PKMultipartElement *)self body];
    v19 = [v18 read:&a3[v10] maxLength:a4 - v10];

    if (!v19)
    {
      break;
    }

    v10 += v19;
  }

  v20 = [(PKMultipartElement *)self delivered];
  if (v20 >= [(PKMultipartElement *)self length]- 2 && v10 < a4)
  {
    v21 = [(PKMultipartElement *)self delivered];
    if (v21 == [(PKMultipartElement *)self length]- 2)
    {
      a3[v10++] = 13;
      [(PKMultipartElement *)self setDelivered:[(PKMultipartElement *)self delivered]+ 1];
    }

    a3[v10++] = 10;
    [(PKMultipartElement *)self setDelivered:[(PKMultipartElement *)self delivered]+ 1];
  }

  return v10;
}

- (id)makeHeadersDataFromHeadersDict:(id)a3 boundary:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"--%@", v19];
  [(PKMultipartElement *)self appendNewLine:v7];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v6 allKeys];
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
        v14 = [v6 objectForKeyedSubscript:v12];
        v15 = [v13 initWithFormat:@"%@: %@", v12, v14];
        [v7 appendString:v15];

        [(PKMultipartElement *)self appendNewLine:v7];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [(PKMultipartElement *)self appendNewLine:v7];
  v16 = [v7 dataUsingEncoding:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (PKMultipartElement)initWithHeaders:(id)a3 path:(id)a4 boundary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = PKMultipartElement;
  v11 = [(PKMultipartElement *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(PKMultipartElement *)v11 makeHeadersDataFromHeadersDict:v8 boundary:v10];
    headers = v12->_headers;
    v12->_headers = v13;

    v12->_headersLength = [(NSData *)v12->_headers length];
    v15 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v9];
    body = v12->_body;
    v12->_body = v15;

    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [v17 attributesOfItemAtPath:v9 error:0];
    v19 = [v18 objectForKey:*MEMORY[0x277CCA1C0]];
    v12->_bodyLength = [v19 unsignedIntegerValue];

    [(PKMultipartElement *)v12 updateLength];
  }

  return v12;
}

- (PKMultipartElement)initWithHeaders:(id)a3 string:(id)a4 boundary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PKMultipartElement;
  v11 = [(PKMultipartElement *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(PKMultipartElement *)v11 makeHeadersDataFromHeadersDict:v8 boundary:v10];
    headers = v12->_headers;
    v12->_headers = v13;

    v12->_headersLength = [(NSData *)v12->_headers length];
    v15 = [v9 dataUsingEncoding:4];
    v16 = [MEMORY[0x277CBEAE0] inputStreamWithData:v15];
    body = v12->_body;
    v12->_body = v16;

    v12->_bodyLength = [v15 length];
    [(PKMultipartElement *)v12 updateLength];
  }

  return v12;
}

- (PKMultipartElement)initWithName:(id)a3 filename:(id)a4 boundary:(id)a5 stream:(id)a6 streamLength:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24.receiver = self;
  v24.super_class = PKMultipartElement;
  v16 = [(PKMultipartElement *)&v24 init];
  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [v13 pathExtension];
    v19 = MIMETypeForExtension(v18);
    v20 = [v17 stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@; filename=%@\r\nContent-Type: %@\r\n\r\n", v14, v12, v13, v19];;
    v21 = [v20 dataUsingEncoding:4];
    [(PKMultipartElement *)v16 setHeaders:v21];

    v22 = [(PKMultipartElement *)v16 headers];
    -[PKMultipartElement setHeadersLength:](v16, "setHeadersLength:", [v22 length]);

    [(PKMultipartElement *)v16 setBody:v15];
    [(PKMultipartElement *)v16 setBodyLength:a7];
    [(PKMultipartElement *)v16 updateLength];
  }

  return v16;
}

- (PKMultipartElement)initWithName:(id)a3 filename:(id)a4 boundary:(id)a5 path:(id)a6 contentType:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = PKMultipartElement;
  v17 = [(PKMultipartElement *)&v26 init];
  if (v17)
  {
    if (!v13)
    {
      v13 = [v15 lastPathComponent];
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@; filename=%@\r\nContent-Type: %@\r\n\r\n", v14, v12, v13, v16];;
    v19 = [v18 dataUsingEncoding:4];
    [(PKMultipartElement *)v17 setHeaders:v19];

    v20 = [(PKMultipartElement *)v17 headers];
    -[PKMultipartElement setHeadersLength:](v17, "setHeadersLength:", [v20 length]);

    v21 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v15];
    [(PKMultipartElement *)v17 setBody:v21];

    v22 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = [v22 attributesOfItemAtPath:v15 error:0];
    v24 = [v23 objectForKey:*MEMORY[0x277CCA1C0]];
    -[PKMultipartElement setBodyLength:](v17, "setBodyLength:", [v24 unsignedIntegerValue]);

    [(PKMultipartElement *)v17 updateLength];
  }

  return v17;
}

- (PKMultipartElement)initWithName:(id)a3 filename:(id)a4 boundary:(id)a5 path:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 pathExtension];
  v15 = MIMETypeForExtension(v14);
  v16 = [(PKMultipartElement *)self initWithName:v13 filename:v12 boundary:v11 path:v10 contentType:v15];

  return v16;
}

- (PKMultipartElement)initWithName:(id)a3 boundary:(id)a4 data:(id)a5 contentType:(id)a6 filename:(id)a7
{
  v23.receiver = self;
  v23.super_class = PKMultipartElement;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(PKMultipartElement *)&v23 init];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@; filename=%@\r\nContent-Type: %@\r\n\r\n", v14, v15, v11, v12, v23.receiver, v23.super_class];;

  v18 = [v17 dataUsingEncoding:4];
  [(PKMultipartElement *)v16 setHeaders:v18];

  v19 = [(PKMultipartElement *)v16 headers];
  -[PKMultipartElement setHeadersLength:](v16, "setHeadersLength:", [v19 length]);

  v20 = [MEMORY[0x277CBEAE0] inputStreamWithData:v13];
  [(PKMultipartElement *)v16 setBody:v20];

  v21 = [v13 length];
  [(PKMultipartElement *)v16 setBodyLength:v21];
  [(PKMultipartElement *)v16 updateLength];
  return v16;
}

- (PKMultipartElement)initWithName:(id)a3 boundary:(id)a4 data:(id)a5 contentType:(id)a6
{
  v20.receiver = self;
  v20.super_class = PKMultipartElement;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(PKMultipartElement *)&v20 init];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@\r\nContent-Type: %@\r\n\r\n", v11, v12, v9];;

  v15 = [v14 dataUsingEncoding:4];
  [(PKMultipartElement *)v13 setHeaders:v15];

  v16 = [(PKMultipartElement *)v13 headers];
  -[PKMultipartElement setHeadersLength:](v13, "setHeadersLength:", [v16 length]);

  v17 = [MEMORY[0x277CBEAE0] inputStreamWithData:v10];
  [(PKMultipartElement *)v13 setBody:v17];

  v18 = [v10 length];
  [(PKMultipartElement *)v13 setBodyLength:v18];
  [(PKMultipartElement *)v13 updateLength];
  return v13;
}

- (PKMultipartElement)initWithName:(id)a3 boundary:(id)a4 string:(id)a5
{
  v17.receiver = self;
  v17.super_class = PKMultipartElement;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(PKMultipartElement *)&v17 init];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@\r\n\r\n", v8, v9, v17.receiver, v17.super_class];;

  v12 = [v11 dataUsingEncoding:4];
  [(PKMultipartElement *)v10 setHeaders:v12];

  v13 = [(PKMultipartElement *)v10 headers];
  -[PKMultipartElement setHeadersLength:](v10, "setHeadersLength:", [v13 length]);

  v14 = [v7 dataUsingEncoding:4];

  v15 = [MEMORY[0x277CBEAE0] inputStreamWithData:v14];
  [(PKMultipartElement *)v10 setBody:v15];

  -[PKMultipartElement setBodyLength:](v10, "setBodyLength:", [v14 length]);
  [(PKMultipartElement *)v10 updateLength];

  return v10;
}

- (void)updateLength
{
  [(PKMultipartElement *)self setLength:[(PKMultipartElement *)self headersLength]+ [(PKMultipartElement *)self bodyLength]+ 2];
  v3 = [(PKMultipartElement *)self body];
  [v3 open];
}

@end