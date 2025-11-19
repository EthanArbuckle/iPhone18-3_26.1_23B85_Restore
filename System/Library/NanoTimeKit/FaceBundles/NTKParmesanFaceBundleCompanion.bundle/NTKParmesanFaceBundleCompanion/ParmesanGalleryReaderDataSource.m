@interface ParmesanGalleryReaderDataSource
- (NSString)description;
- (void)readerDidChange:(id)a3;
@end

@implementation ParmesanGalleryReaderDataSource

- (void)readerDidChange:(id)a3
{
  v3 = self;
  sub_23BFDBA84();
}

- (NSString)description
{
  v2 = self;
  sub_23BFDC458();

  v3 = sub_23BFFA2C0();

  return v3;
}

@end