@interface PDFTextRange
+ (id)textRangeFromSelection:(id)a3;
- (BOOL)isEmpty;
- (id)description;
- (id)initFromPos:(id)a3 toPos:(id)a4;
@end

@implementation PDFTextRange

- (BOOL)isEmpty
{
  v3 = [(PDFTextPosition *)self->_end page];
  v4 = [v3 document];

  v5 = [(PDFTextPosition *)self->_end page];
  v6 = [v4 indexForPage:v5];

  v7 = [(PDFTextPosition *)self->_start page];
  v8 = [v4 indexForPage:v7];

  v11 = 1;
  if (self->_start)
  {
    end = self->_end;
    if (end && v6 >= v8)
    {
      if (v6 != v8 || (v12 = [(PDFTextPosition *)end offset], v12 > [(PDFTextPosition *)self->_start offset]))
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

+ (id)textRangeFromSelection:(id)a3
{
  v3 = a3;
  v4 = [v3 pages];
  v5 = [v4 firstObject];

  v6 = -[PDFTextPosition initWithOffset:onPage:]([PDFTextPosition alloc], "initWithOffset:onPage:", [v3 rangeAtIndex:0 onPage:v5], v5);
  v7 = [v3 pages];
  v8 = [v7 lastObject];

  v9 = [v3 rangeAtIndex:objc_msgSend(v3 onPage:{"numberOfTextRangesOnPage:", v8) - 1, v8}];
  v11 = v10;

  v12 = [[PDFTextPosition alloc] initWithOffset:v9 + v11 onPage:v8];
  v13 = [[PDFTextRange alloc] initFromPos:v6 toPos:v12];

  return v13;
}

- (id)initFromPos:(id)a3 toPos:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PDFTextRange;
  v8 = [(PDFTextRange *)&v18 init];
  if (v8)
  {
    v9 = [v6 page];
    v10 = [v9 document];
    v11 = [v10 indexForPage:v9];

    v12 = [v7 page];
    v13 = [v12 document];
    v14 = [v13 indexForPage:v12];

    if (v14 < v11 || v14 == v11 && (v16 = [v7 offset], v16 < objc_msgSend(v6, "offset")))
    {
      v15 = v6;
    }

    else
    {
      v15 = v7;
      v7 = v6;
    }

    v6 = v7;
    objc_storeStrong(&v8->_start, v7);
    objc_storeStrong(&v8->_end, v15);

    v7 = v15;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PDFTextPosition *)self->_start description];
  v5 = [(PDFTextPosition *)self->_end description];
  v6 = [v3 stringWithFormat:@"Start: %@, End: %@", v4, v5];

  return v6;
}

@end