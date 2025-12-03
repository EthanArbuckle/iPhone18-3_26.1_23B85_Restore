@interface SHMediaLibraryTrackBuilder
- (SHMediaLibraryTrackBuilder)initWithCreationDate:(id)date;
@end

@implementation SHMediaLibraryTrackBuilder

- (SHMediaLibraryTrackBuilder)initWithCreationDate:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = SHMediaLibraryTrackBuilder;
  v6 = [(SHMediaLibraryTrackBuilder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_creationDate, date);
    v8 = [MEMORY[0x277CBEB98] set];
    labels = v7->_labels;
    v7->_labels = v8;
  }

  return v7;
}

@end