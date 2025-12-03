@interface BKDirectoryContent
- (BKDirectoryContentDelegate)directoryDelegate;
- (id)locationForPageNumber:(int64_t)number;
- (id)pageTitleForPageNumber:(int64_t)number;
- (int64_t)pageNumberForLocation:(id)location;
- (void)didSelectBookmarkForLocation:(id)location annotationUUID:(id)d;
- (void)didSelectHighlightForLocation:(id)location annotationUUID:(id)d;
- (void)didSelectLocation:(id)location;
- (void)setDirectoryDelegate:(id)delegate;
@end

@implementation BKDirectoryContent

- (void)setDirectoryDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_directoryDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_directoryDelegate, obj);
    *&self->_directoryContentFlags = *&self->_directoryContentFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)didSelectLocation:(id)location
{
  locationCopy = location;
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  [directoryDelegate directoryContent:self didSelectLocation:locationCopy];
}

- (void)didSelectBookmarkForLocation:(id)location annotationUUID:(id)d
{
  locationCopy = location;
  dCopy = d;
  objc_opt_class();
  v7 = BUDynamicCast();
  if (v7)
  {
    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    [directoryDelegate directoryContent:self didSelectBookmarkForLocation:v7 annotationUUID:dCopy];
  }

  else
  {
    [(BKDirectoryContent *)self didSelectLocation:locationCopy];
  }
}

- (void)didSelectHighlightForLocation:(id)location annotationUUID:(id)d
{
  locationCopy = location;
  dCopy = d;
  objc_opt_class();
  v7 = BUDynamicCast();
  if (v7)
  {
    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    [directoryDelegate directoryContent:self didSelectHighlightForLocation:v7 annotationUUID:dCopy];
  }

  else
  {
    [(BKDirectoryContent *)self didSelectLocation:locationCopy];
  }
}

- (int64_t)pageNumberForLocation:(id)location
{
  locationCopy = location;
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  v6 = [directoryDelegate directoryContent:self pageNumberForLocation:locationCopy];

  return v6;
}

- (id)pageTitleForPageNumber:(int64_t)number
{
  if ((number - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    number = 0;
  }

  else if ((*&self->_directoryContentFlags & 1) == 0 || (-[BKDirectoryContent directoryDelegate](self, "directoryDelegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 directoryContent:self pageTitleForPageNumber:number], number = objc_claimAutoreleasedReturnValue(), v5, !number))
  {
    number = [NSString stringWithFormat:@"%lu", number];
  }

  return number;
}

- (id)locationForPageNumber:(int64_t)number
{
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  v6 = [directoryDelegate directoryContent:self locationForPageNumber:number];

  return v6;
}

- (BKDirectoryContentDelegate)directoryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_directoryDelegate);

  return WeakRetained;
}

@end