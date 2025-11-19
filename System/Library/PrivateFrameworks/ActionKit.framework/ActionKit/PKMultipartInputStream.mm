@interface PKMultipartInputStream
- (PKMultipartInputStream)init;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (unint64_t)streamStatus;
- (void)addPartWithHeaders:(id)a3 path:(id)a4;
- (void)addPartWithHeaders:(id)a3 string:(id)a4;
- (void)addPartWithName:(id)a3 data:(id)a4;
- (void)addPartWithName:(id)a3 data:(id)a4 contentType:(id)a5;
- (void)addPartWithName:(id)a3 filename:(id)a4 data:(id)a5 contentType:(id)a6;
- (void)addPartWithName:(id)a3 filename:(id)a4 path:(id)a5;
- (void)addPartWithName:(id)a3 filename:(id)a4 path:(id)a5 contentType:(id)a6;
- (void)addPartWithName:(id)a3 filename:(id)a4 stream:(id)a5 streamLength:(unint64_t)a6;
- (void)addPartWithName:(id)a3 path:(id)a4;
- (void)addPartWithName:(id)a3 string:(id)a4;
- (void)updateLength;
@end

@implementation PKMultipartInputStream

- (unint64_t)streamStatus
{
  if ([(PKMultipartInputStream *)self status]!= 6)
  {
    v3 = [(PKMultipartInputStream *)self delivered];
    if (v3 >= [(PKMultipartInputStream *)self length])
    {
      [(PKMultipartInputStream *)self setStatus:5];
    }
  }

  return [(PKMultipartInputStream *)self status];
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  [(PKMultipartInputStream *)self setStatus:3];
  v7 = [(PKMultipartInputStream *)self delivered];
  v8 = 0;
  v9 = a4 != 0;
  if (v7 < [(PKMultipartInputStream *)self length]&& a4)
  {
    v8 = 0;
    while (1)
    {
      v10 = [(PKMultipartInputStream *)self currentPart];
      v11 = [(PKMultipartInputStream *)self parts];
      v12 = [v11 count];

      if (v10 >= v12)
      {
        break;
      }

      v13 = [(PKMultipartInputStream *)self parts];
      v14 = [v13 objectAtIndex:{-[PKMultipartInputStream currentPart](self, "currentPart")}];
      v15 = [v14 read:&a3[v8] maxLength:a4 - v8];

      if (v15)
      {
        v8 += v15;
        [(PKMultipartInputStream *)self setDelivered:[(PKMultipartInputStream *)self delivered]+ v15];
        v17 = [(PKMultipartInputStream *)self delivered];
        v9 = v8 < a4;
        if (v17 >= [(PKMultipartInputStream *)self length]|| v8 >= a4)
        {
          goto LABEL_12;
        }
      }

      else
      {
        [(PKMultipartInputStream *)self setCurrentPart:[(PKMultipartInputStream *)self currentPart]+ 1];
        v16 = [(PKMultipartInputStream *)self delivered];
        if (v16 >= [(PKMultipartInputStream *)self length])
        {
          break;
        }
      }
    }

    v9 = 1;
  }

LABEL_12:
  v18 = [(PKMultipartInputStream *)self delivered];
  v19 = [(PKMultipartInputStream *)self length];
  v20 = [(PKMultipartInputStream *)self footer];
  v21 = v19 - [v20 length];

  if (v18 >= v21 && v9)
  {
    v22 = [(PKMultipartInputStream *)self footer];
    v23 = [v22 length];
    v24 = [(PKMultipartInputStream *)self delivered];
    v25 = [(PKMultipartInputStream *)self length];
    v26 = [(PKMultipartInputStream *)self footer];
    v27 = v23 + v25 - (v24 + [v26 length]);

    if (v27 >= a4 - v8)
    {
      v28 = a4 - v8;
    }

    else
    {
      v28 = v27;
    }

    v29 = [(PKMultipartInputStream *)self footer];
    v30 = [(PKMultipartInputStream *)self delivered];
    v31 = [(PKMultipartInputStream *)self length];
    v32 = [(PKMultipartInputStream *)self footer];
    [v29 getBytes:&a3[v8] range:{v30 - v31 + objc_msgSend(v32, "length"), v28}];

    v8 += v28;
    [(PKMultipartInputStream *)self setDelivered:[(PKMultipartInputStream *)self delivered]+ v28];
  }

  return v8;
}

- (void)addPartWithHeaders:(id)a3 path:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  v10 = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithHeaders:v7 path:v6 boundary:v10];

  [v8 addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithHeaders:(id)a3 string:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  v10 = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithHeaders:v7 string:v6 boundary:v10];

  [v8 addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)a3 filename:(id)a4 stream:(id)a5 streamLength:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(PKMultipartInputStream *)self parts];
  v14 = [PKMultipartElement alloc];
  v15 = [(PKMultipartInputStream *)self boundary];
  v16 = [(PKMultipartElement *)v14 initWithName:v12 filename:v11 boundary:v15 stream:v10 streamLength:a6];

  [v13 addObject:v16];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)a3 filename:(id)a4 path:(id)a5 contentType:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PKMultipartInputStream *)self parts];
  v15 = [PKMultipartElement alloc];
  v16 = [(PKMultipartInputStream *)self boundary];
  v17 = [(PKMultipartElement *)v15 initWithName:v13 filename:v12 boundary:v16 path:v11 contentType:v10];

  [v14 addObject:v17];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)a3 filename:(id)a4 path:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKMultipartInputStream *)self parts];
  v12 = [PKMultipartElement alloc];
  v13 = [(PKMultipartInputStream *)self boundary];
  v14 = [(PKMultipartElement *)v12 initWithName:v10 filename:v9 boundary:v13 path:v8];

  [v11 addObject:v14];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)a3 path:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  v10 = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithName:v7 filename:0 boundary:v10 path:v6];

  [v8 addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)a3 filename:(id)a4 data:(id)a5 contentType:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PKMultipartInputStream *)self parts];
  v15 = [PKMultipartElement alloc];
  v16 = [(PKMultipartInputStream *)self boundary];
  v17 = [(PKMultipartElement *)v15 initWithName:v13 boundary:v16 data:v11 contentType:v10 filename:v12];

  [v14 addObject:v17];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)a3 data:(id)a4 contentType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKMultipartInputStream *)self parts];
  v12 = [PKMultipartElement alloc];
  v13 = [(PKMultipartInputStream *)self boundary];
  v14 = [(PKMultipartElement *)v12 initWithName:v10 boundary:v13 data:v9 contentType:v8];

  [v11 addObject:v14];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  v10 = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithName:v7 boundary:v10 data:v6 contentType:@"application/octet-stream"];

  [v8 addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (void)addPartWithName:(id)a3 string:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKMultipartInputStream *)self parts];
  v9 = [PKMultipartElement alloc];
  v10 = [(PKMultipartInputStream *)self boundary];
  v11 = [(PKMultipartElement *)v9 initWithName:v7 boundary:v10 string:v6];

  [v8 addObject:v11];

  [(PKMultipartInputStream *)self updateLength];
}

- (PKMultipartInputStream)init
{
  v11.receiver = self;
  v11.super_class = PKMultipartInputStream;
  v2 = [(PKMultipartInputStream *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    [(PKMultipartInputStream *)v2 setParts:v3];

    v4 = [MEMORY[0x277CCAC38] processInfo];
    v5 = [v4 globallyUniqueString];
    [(PKMultipartInputStream *)v2 setBoundary:v5];

    v6 = MEMORY[0x277CCACA8];
    v7 = [(PKMultipartInputStream *)v2 boundary];
    v8 = [v6 stringWithFormat:@"--%@--\r\n", v7];
    v9 = [v8 dataUsingEncoding:4];
    [(PKMultipartInputStream *)v2 setFooter:v9];

    [(PKMultipartInputStream *)v2 updateLength];
  }

  return v2;
}

- (void)updateLength
{
  v6 = [(PKMultipartInputStream *)self footer];
  v3 = [v6 length];
  v4 = [(PKMultipartInputStream *)self parts];
  v5 = [v4 valueForKeyPath:@"@sum.length"];
  -[PKMultipartInputStream setLength:](self, "setLength:", [v5 unsignedIntegerValue] + v3);
}

@end