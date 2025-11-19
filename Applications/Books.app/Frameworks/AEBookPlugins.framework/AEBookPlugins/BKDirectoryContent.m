@interface BKDirectoryContent
- (BKDirectoryContentDelegate)directoryDelegate;
- (id)locationForPageNumber:(int64_t)a3;
- (id)pageTitleForPageNumber:(int64_t)a3;
- (int64_t)pageNumberForLocation:(id)a3;
- (void)didSelectBookmarkForLocation:(id)a3 annotationUUID:(id)a4;
- (void)didSelectHighlightForLocation:(id)a3 annotationUUID:(id)a4;
- (void)didSelectLocation:(id)a3;
- (void)setDirectoryDelegate:(id)a3;
@end

@implementation BKDirectoryContent

- (void)setDirectoryDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_directoryDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_directoryDelegate, obj);
    *&self->_directoryContentFlags = *&self->_directoryContentFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)didSelectLocation:(id)a3
{
  v4 = a3;
  v5 = [(BKDirectoryContent *)self directoryDelegate];
  [v5 directoryContent:self didSelectLocation:v4];
}

- (void)didSelectBookmarkForLocation:(id)a3 annotationUUID:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = BUDynamicCast();
  if (v7)
  {
    v8 = [(BKDirectoryContent *)self directoryDelegate];
    [v8 directoryContent:self didSelectBookmarkForLocation:v7 annotationUUID:v6];
  }

  else
  {
    [(BKDirectoryContent *)self didSelectLocation:v9];
  }
}

- (void)didSelectHighlightForLocation:(id)a3 annotationUUID:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = BUDynamicCast();
  if (v7)
  {
    v8 = [(BKDirectoryContent *)self directoryDelegate];
    [v8 directoryContent:self didSelectHighlightForLocation:v7 annotationUUID:v6];
  }

  else
  {
    [(BKDirectoryContent *)self didSelectLocation:v9];
  }
}

- (int64_t)pageNumberForLocation:(id)a3
{
  v4 = a3;
  v5 = [(BKDirectoryContent *)self directoryDelegate];
  v6 = [v5 directoryContent:self pageNumberForLocation:v4];

  return v6;
}

- (id)pageTitleForPageNumber:(int64_t)a3
{
  if ((a3 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v6 = 0;
  }

  else if ((*&self->_directoryContentFlags & 1) == 0 || (-[BKDirectoryContent directoryDelegate](self, "directoryDelegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 directoryContent:self pageTitleForPageNumber:a3], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [NSString stringWithFormat:@"%lu", a3];
  }

  return v6;
}

- (id)locationForPageNumber:(int64_t)a3
{
  v5 = [(BKDirectoryContent *)self directoryDelegate];
  v6 = [v5 directoryContent:self locationForPageNumber:a3];

  return v6;
}

- (BKDirectoryContentDelegate)directoryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_directoryDelegate);

  return WeakRetained;
}

@end