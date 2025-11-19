@interface THTOCTileModelEntry
- (NSString)displayPageNumber;
- (THTOCTileModelEntry)init;
- (id)description;
- (id)displayPageNumberForPageIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation THTOCTileModelEntry

- (THTOCTileModelEntry)init
{
  v3.receiver = self;
  v3.super_class = THTOCTileModelEntry;
  result = [(THTOCTileModelEntry *)&v3 init];
  if (result)
  {
    result->mPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    result->mDisplayPageNumberValue = 0x7FFFFFFFFFFFFFFFLL;
    result->mDisplayPageNumberFormat = 0;
  }

  return result;
}

- (void)dealloc
{
  [(THTOCTileModelEntry *)self setSectionIdentifier:0];
  [(THTOCTileModelEntry *)self setTitle:0];
  [(THTOCTileModelEntry *)self setNodeGUID:0];
  [(THTOCTileModelEntry *)self setModelLink:0];
  v3.receiver = self;
  v3.super_class = THTOCTileModelEntry;
  [(THTOCTileModelEntry *)&v3 dealloc];
}

- (id)displayPageNumberForPageIndex:(unint64_t)a3
{
  if (self->mDisplayPageNumberValue == 0x7FFFFFFFFFFFFFFFLL || (self->mDisplayPageNumberValue + a3 - [(THTOCTileModelEntry *)self pageIndex]) < 1)
  {
    return 0;
  }

  return [NSString stringForValue:"stringForValue:withListNumberFormat:includeFormatting:" withListNumberFormat:? includeFormatting:?];
}

- (NSString)displayPageNumber
{
  v3 = [(THTOCTileModelEntry *)self pageIndex];

  return [(THTOCTileModelEntry *)self displayPageNumberForPageIndex:v3];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(THTOCTileModelEntry *)self title];
  v6 = [(THTOCTileModelEntry *)self sectionIdentifier];
  v7 = [NSNumber numberWithUnsignedInteger:[(THTOCTileModelEntry *)self pageIndex]];
  v8 = [NSNumber numberWithUnsignedInteger:[(THTOCTileModelEntry *)self pageCount]];
  v9 = [(THTOCTileModelEntry *)self displayPageNumber];
  v10 = [(THTOCTileModelEntry *)self displayPageNumberFormat];
  if ([(THTOCTileModelEntry *)self includeInTOC])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  return [NSString stringWithFormat:@"<%@(%p) title=%@ section=%@ pageIndex=%@ pageCount=%@ displayPageNumber=%@ displayPageNumberFormat=%lu includeInToc=%@ modelLink=%@", v4, self, v5, v6, v7, v8, v9, v10, v11, [(THTOCTileModelEntry *)self modelLink]];
}

@end