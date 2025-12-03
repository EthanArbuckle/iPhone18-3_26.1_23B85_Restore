@interface PKMultipartInputStream
- (PKMultipartInputStream)init;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (unint64_t)streamStatus;
- (void)addPartWithHeaders:(id)headers path:(id)path;
- (void)addPartWithHeaders:(id)headers string:(id)string;
- (void)addPartWithName:(id)name data:(id)data;
- (void)addPartWithName:(id)name data:(id)data contentType:(id)type;
- (void)addPartWithName:(id)name filename:(id)filename data:(id)data contentType:(id)type;
- (void)addPartWithName:(id)name filename:(id)filename path:(id)path;
- (void)addPartWithName:(id)name filename:(id)filename path:(id)path contentType:(id)type;
- (void)addPartWithName:(id)name filename:(id)filename stream:(id)stream streamLength:(unint64_t)length;
- (void)addPartWithName:(id)name path:(id)path;
- (void)addPartWithName:(id)name string:(id)string;
- (void)updateLength;
@end

@implementation PKMultipartInputStream

- (unint64_t)streamStatus
{
  if ([(PKMultipartInputStream *)self status]!= 6)
  {
    delivered = [(PKMultipartInputStream *)self delivered];
    if (delivered >= [(PKMultipartInputStream *)self length])
    {
      [(PKMultipartInputStream *)self setStatus:5];
    }
  }

  return [(PKMultipartInputStream *)self status];
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  [(PKMultipartInputStream *)self setStatus:3];
  delivered = [(PKMultipartInputStream *)self delivered];
  v8 = 0;
  v9 = length != 0;
  if (delivered < [(PKMultipartInputStream *)self length]&& length)
  {
    v8 = 0;
    while (1)
    {
      currentPart = [(PKMultipartInputStream *)self currentPart];
      parts = [(PKMultipartInputStream *)self parts];
      v12 = [parts count];

      if (currentPart >= v12)
      {
        break;
      }

      parts2 = [(PKMultipartInputStream *)self parts];
      v14 = [parts2 objectAtIndex:{-[PKMultipartInputStream currentPart](self, "currentPart")}];
      v15 = [v14 read:&read[v8] maxLength:length - v8];

      if (v15)
      {
        v8 += v15;
        [(PKMultipartInputStream *)self setDelivered:[(PKMultipartInputStream *)self delivered]+ v15];
        delivered2 = [(PKMultipartInputStream *)self delivered];
        v9 = v8 < length;
        if (delivered2 >= [(PKMultipartInputStream *)self length]|| v8 >= length)
        {
          goto LABEL_12;
        }
      }

      else
      {
        [(PKMultipartInputStream *)self setCurrentPart:[(PKMultipartInputStream *)self currentPart]+ 1];
        delivered3 = [(PKMultipartInputStream *)self delivered];
        if (delivered3 >= [(PKMultipartInputStream *)self length])
        {
          break;
        }
      }
    }

    v9 = 1;
  }

LABEL_12:
  delivered4 = [(PKMultipartInputStream *)self delivered];
  v19 = [(PKMultipartInputStream *)self length];
  footer = [(PKMultipartInputStream *)self footer];
  v21 = v19 - [footer length];

  if (delivered4 >= v21 && v9)
  {
    footer2 = [(PKMultipartInputStream *)self footer];
    v23 = [footer2 length];
    delivered5 = [(PKMultipartInputStream *)self delivered];
    v25 = [(PKMultipartInputStream *)self length];
    footer3 = [(PKMultipartInputStream *)self footer];
    v27 = v23 + v25 - (delivered5 + [footer3 length]);

    if (v27 >= length - v8)
    {
      v28 = length - v8;
    }

    else
    {
      v28 = v27;
    }

    footer4 = [(PKMultipartInputStream *)self footer];
    delivered6 = [(PKMultipartInputStream *)self delivered];
    v31 = [(PKMultipartInputStream *)self length];
    footer5 = [(PKMultipartInputStream *)self footer];
    [footer4 getBytes:&read[v8] range:{delivered6 - v31 + objc_msgSend(footer5, "length"), v28}];

    v8 += v28;
    [(PKMultipartInputStream *)self setDelivered:[(PKMultipartInputStream *)self delivered]+ v28];
  }

  return v8;
}

- (void)addPartWithHeaders:(id)headers path:(id)path
{
  pathCopy = path;
  headersCopy = headers;
  parts = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithHeaders:headersCopy path:pathCopy boundary:boundary];

  [parts addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithHeaders:(id)headers string:(id)string
{
  stringCopy = string;
  headersCopy = headers;
  parts = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithHeaders:headersCopy string:stringCopy boundary:boundary];

  [parts addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)name filename:(id)filename stream:(id)stream streamLength:(unint64_t)length
{
  streamCopy = stream;
  filenameCopy = filename;
  nameCopy = name;
  parts = [(PKMultipartInputStream *)self parts];
  v14 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v16 = [(PKMultipartElement *)v14 initWithName:nameCopy filename:filenameCopy boundary:boundary stream:streamCopy streamLength:length];

  [parts addObject:v16];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)name filename:(id)filename path:(id)path contentType:(id)type
{
  typeCopy = type;
  pathCopy = path;
  filenameCopy = filename;
  nameCopy = name;
  parts = [(PKMultipartInputStream *)self parts];
  v15 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v17 = [(PKMultipartElement *)v15 initWithName:nameCopy filename:filenameCopy boundary:boundary path:pathCopy contentType:typeCopy];

  [parts addObject:v17];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)name filename:(id)filename path:(id)path
{
  pathCopy = path;
  filenameCopy = filename;
  nameCopy = name;
  parts = [(PKMultipartInputStream *)self parts];
  v12 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v14 = [(PKMultipartElement *)v12 initWithName:nameCopy filename:filenameCopy boundary:boundary path:pathCopy];

  [parts addObject:v14];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)name path:(id)path
{
  pathCopy = path;
  nameCopy = name;
  parts = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithName:nameCopy filename:0 boundary:boundary path:pathCopy];

  [parts addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)name filename:(id)filename data:(id)data contentType:(id)type
{
  typeCopy = type;
  dataCopy = data;
  filenameCopy = filename;
  nameCopy = name;
  parts = [(PKMultipartInputStream *)self parts];
  v15 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v17 = [(PKMultipartElement *)v15 initWithName:nameCopy boundary:boundary data:dataCopy contentType:typeCopy filename:filenameCopy];

  [parts addObject:v17];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)name data:(id)data contentType:(id)type
{
  typeCopy = type;
  dataCopy = data;
  nameCopy = name;
  parts = [(PKMultipartInputStream *)self parts];
  v12 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v14 = [(PKMultipartElement *)v12 initWithName:nameCopy boundary:boundary data:dataCopy contentType:typeCopy];

  [parts addObject:v14];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)name data:(id)data
{
  dataCopy = data;
  nameCopy = name;
  parts = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithName:nameCopy boundary:boundary data:dataCopy contentType:@"application/octet-stream"];

  [parts addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)name string:(id)string
{
  stringCopy = string;
  nameCopy = name;
  parts = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  boundary = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithName:nameCopy boundary:boundary string:stringCopy];

  [parts addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (PKMultipartInputStream)init
{
  v11.receiver = self;
  v11.super_class = PKMultipartInputStream;
  v2 = [(PKMultipartInputStream *)&v11 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(PKMultipartInputStream *)v2 setParts:array];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    globallyUniqueString = [processInfo globallyUniqueString];
    [(PKMultipartInputStream *)v2 setBoundary:globallyUniqueString];

    v6 = MEMORY[0x277CCACA8];
    boundary = [(PKMultipartInputStream *)v2 boundary];
    v8 = [v6 stringWithFormat:@"--%@--\r\n", boundary];
    v9 = [v8 dataUsingEncoding:4];
    [(PKMultipartInputStream *)v2 setFooter:v9];

    [(PKMultipartInputStream *)v2 updateLength];
  }

  return v2;
}

- (void)updateLength
{
  footer = [(PKMultipartInputStream *)self footer];
  v3 = [footer length];
  parts = [(PKMultipartInputStream *)self parts];
  v5 = [parts valueForKeyPath:@"@sum.length"];
  -[PKMultipartInputStream setLength:](self, "setLength:", [v5 unsignedIntegerValue] + v3);
}

@end