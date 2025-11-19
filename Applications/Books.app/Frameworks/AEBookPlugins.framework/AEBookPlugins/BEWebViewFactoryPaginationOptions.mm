@interface BEWebViewFactoryPaginationOptions
+ (id)paginationOptionsForBookInfoSnapshot:(id)a3 withConfiguration:(id)a4 contentLayoutSize:(CGSize)a5;
@end

@implementation BEWebViewFactoryPaginationOptions

+ (id)paginationOptionsForBookInfoSnapshot:(id)a3 withConfiguration:(id)a4 contentLayoutSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = a4;
  if ([v8 isFixedLayout])
  {
    v10 = [BEWebViewFactoryPaginationOptions alloc];
    [v8 fixedLayoutSize];
    v11 = [v10 initWithFixedSize:?];
  }

  else
  {
    if ([v9 isScroll])
    {
      v12 = 0;
    }

    else if ([v8 bkPageProgressionDirection] == 1)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v13 = [BEWebViewFactoryPaginationOptions alloc];
    v14 = [v9 usePaginationLineGrid];
    v15 = [v8 obeyPageBreaks];
    v16 = [v9 layout] == &dword_0 + 3;
    [v9 gutterWidth];
    v18 = v17;
    [v9 fontSize];
    v11 = [v13 initWithMode:v12 usePaginationLineGrid:v14 respectPageBreaks:v15 isHorizontalScroll:v16 contentLayoutSize:objc_msgSend(v8 gapBetweenPages:"shouldAllowRemoteInspection") viewportWidth:width fixedLayoutSize:height pageLength:v18 fontSize:width developerExtrasEnabled:{CGSizeZero.width, CGSizeZero.height, width, v19}];
  }

  v20 = v11;

  return v20;
}

@end