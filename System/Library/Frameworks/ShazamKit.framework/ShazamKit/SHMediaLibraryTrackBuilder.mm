@interface SHMediaLibraryTrackBuilder
- (SHMediaLibraryTrackBuilder)initWithCreationDate:(id)a3;
@end

@implementation SHMediaLibraryTrackBuilder

- (SHMediaLibraryTrackBuilder)initWithCreationDate:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SHMediaLibraryTrackBuilder;
  v6 = [(SHMediaLibraryTrackBuilder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_creationDate, a3);
    v8 = [MEMORY[0x277CBEB98] set];
    labels = v7->_labels;
    v7->_labels = v8;
  }

  return v7;
}

@end