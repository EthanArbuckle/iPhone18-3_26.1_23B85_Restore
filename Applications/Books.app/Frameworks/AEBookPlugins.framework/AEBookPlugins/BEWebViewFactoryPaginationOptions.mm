@interface BEWebViewFactoryPaginationOptions
+ (id)paginationOptionsForBookInfoSnapshot:(id)snapshot withConfiguration:(id)configuration contentLayoutSize:(CGSize)size;
@end

@implementation BEWebViewFactoryPaginationOptions

+ (id)paginationOptionsForBookInfoSnapshot:(id)snapshot withConfiguration:(id)configuration contentLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  snapshotCopy = snapshot;
  configurationCopy = configuration;
  if ([snapshotCopy isFixedLayout])
  {
    v10 = [BEWebViewFactoryPaginationOptions alloc];
    [snapshotCopy fixedLayoutSize];
    v11 = [v10 initWithFixedSize:?];
  }

  else
  {
    if ([configurationCopy isScroll])
    {
      v12 = 0;
    }

    else if ([snapshotCopy bkPageProgressionDirection] == 1)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v13 = [BEWebViewFactoryPaginationOptions alloc];
    usePaginationLineGrid = [configurationCopy usePaginationLineGrid];
    obeyPageBreaks = [snapshotCopy obeyPageBreaks];
    v16 = [configurationCopy layout] == &dword_0 + 3;
    [configurationCopy gutterWidth];
    v18 = v17;
    [configurationCopy fontSize];
    v11 = [v13 initWithMode:v12 usePaginationLineGrid:usePaginationLineGrid respectPageBreaks:obeyPageBreaks isHorizontalScroll:v16 contentLayoutSize:objc_msgSend(snapshotCopy gapBetweenPages:"shouldAllowRemoteInspection") viewportWidth:width fixedLayoutSize:height pageLength:v18 fontSize:width developerExtrasEnabled:{CGSizeZero.width, CGSizeZero.height, width, v19}];
  }

  v20 = v11;

  return v20;
}

@end