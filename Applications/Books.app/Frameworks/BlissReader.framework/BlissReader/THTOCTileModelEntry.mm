@interface THTOCTileModelEntry
- (NSString)displayPageNumber;
- (THTOCTileModelEntry)init;
- (id)description;
- (id)displayPageNumberForPageIndex:(unint64_t)index;
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

- (id)displayPageNumberForPageIndex:(unint64_t)index
{
  if (self->mDisplayPageNumberValue == 0x7FFFFFFFFFFFFFFFLL || (self->mDisplayPageNumberValue + index - [(THTOCTileModelEntry *)self pageIndex]) < 1)
  {
    return 0;
  }

  return [NSString stringForValue:"stringForValue:withListNumberFormat:includeFormatting:" withListNumberFormat:? includeFormatting:?];
}

- (NSString)displayPageNumber
{
  pageIndex = [(THTOCTileModelEntry *)self pageIndex];

  return [(THTOCTileModelEntry *)self displayPageNumberForPageIndex:pageIndex];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  title = [(THTOCTileModelEntry *)self title];
  sectionIdentifier = [(THTOCTileModelEntry *)self sectionIdentifier];
  v7 = [NSNumber numberWithUnsignedInteger:[(THTOCTileModelEntry *)self pageIndex]];
  v8 = [NSNumber numberWithUnsignedInteger:[(THTOCTileModelEntry *)self pageCount]];
  displayPageNumber = [(THTOCTileModelEntry *)self displayPageNumber];
  displayPageNumberFormat = [(THTOCTileModelEntry *)self displayPageNumberFormat];
  if ([(THTOCTileModelEntry *)self includeInTOC])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  return [NSString stringWithFormat:@"<%@(%p) title=%@ section=%@ pageIndex=%@ pageCount=%@ displayPageNumber=%@ displayPageNumberFormat=%lu includeInToc=%@ modelLink=%@", v4, self, title, sectionIdentifier, v7, v8, displayPageNumber, displayPageNumberFormat, v11, [(THTOCTileModelEntry *)self modelLink]];
}

@end