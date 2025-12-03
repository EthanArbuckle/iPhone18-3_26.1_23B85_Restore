@interface PDFTextRange
+ (id)textRangeFromSelection:(id)selection;
- (BOOL)isEmpty;
- (id)description;
- (id)initFromPos:(id)pos toPos:(id)toPos;
@end

@implementation PDFTextRange

- (BOOL)isEmpty
{
  page = [(PDFTextPosition *)self->_end page];
  document = [page document];

  page2 = [(PDFTextPosition *)self->_end page];
  v6 = [document indexForPage:page2];

  page3 = [(PDFTextPosition *)self->_start page];
  v8 = [document indexForPage:page3];

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

+ (id)textRangeFromSelection:(id)selection
{
  selectionCopy = selection;
  pages = [selectionCopy pages];
  firstObject = [pages firstObject];

  v6 = -[PDFTextPosition initWithOffset:onPage:]([PDFTextPosition alloc], "initWithOffset:onPage:", [selectionCopy rangeAtIndex:0 onPage:firstObject], firstObject);
  pages2 = [selectionCopy pages];
  lastObject = [pages2 lastObject];

  v9 = [selectionCopy rangeAtIndex:objc_msgSend(selectionCopy onPage:{"numberOfTextRangesOnPage:", lastObject) - 1, lastObject}];
  v11 = v10;

  v12 = [[PDFTextPosition alloc] initWithOffset:v9 + v11 onPage:lastObject];
  v13 = [[PDFTextRange alloc] initFromPos:v6 toPos:v12];

  return v13;
}

- (id)initFromPos:(id)pos toPos:(id)toPos
{
  posCopy = pos;
  toPosCopy = toPos;
  v18.receiver = self;
  v18.super_class = PDFTextRange;
  v8 = [(PDFTextRange *)&v18 init];
  if (v8)
  {
    page = [posCopy page];
    document = [page document];
    v11 = [document indexForPage:page];

    page2 = [toPosCopy page];
    document2 = [page2 document];
    v14 = [document2 indexForPage:page2];

    if (v14 < v11 || v14 == v11 && (v16 = [toPosCopy offset], v16 < objc_msgSend(posCopy, "offset")))
    {
      v15 = posCopy;
    }

    else
    {
      v15 = toPosCopy;
      toPosCopy = posCopy;
    }

    posCopy = toPosCopy;
    objc_storeStrong(&v8->_start, toPosCopy);
    objc_storeStrong(&v8->_end, v15);

    toPosCopy = v15;
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