@interface AEBookInfoSnapshot
+ (id)aeBookInfoSnapshotFromBookInfo:(id)info ordinal:(unint64_t)ordinal;
- (CGSize)fixedLayoutSize;
@end

@implementation AEBookInfoSnapshot

+ (id)aeBookInfoSnapshotFromBookInfo:(id)info ordinal:(unint64_t)ordinal
{
  infoCopy = info;
  v6 = objc_opt_new();
  cacheItem = [infoCopy cacheItem];
  [v6 setCacheItem:cacheItem];

  [v6 setBkPageProgressionDirection:{objc_msgSend(infoCopy, "bkPageProgressionDirection")}];
  [v6 setIsFixedLayout:{objc_msgSend(infoCopy, "isFixedLayout")}];
  [v6 setObeyPageBreaks:{objc_msgSend(infoCopy, "obeyPageBreaks")}];
  [v6 setShouldAllowRemoteInspection:{objc_msgSend(infoCopy, "shouldAllowRemoteInspection")}];
  respectImageSizeClass = [infoCopy respectImageSizeClass];
  [v6 setRespectImageSizeClass:respectImageSizeClass];

  [v6 setRespectImageSizeClassIsPrefix:{objc_msgSend(infoCopy, "respectImageSizeClassIsPrefix")}];
  [v6 setHasBuiltInFonts:{objc_msgSend(infoCopy, "hasBuiltInFonts")}];
  [v6 setShouldDisableOptimizeSpeed:{objc_msgSend(infoCopy, "shouldDisableOptimizeSpeed")}];
  bookLanguage = [infoCopy bookLanguage];
  [v6 setBookLanguage:bookLanguage];

  assetID = [infoCopy assetID];
  [v6 setAssetID:assetID];

  spineIndexInPackage = [infoCopy spineIndexInPackage];
  [v6 setSpineIndexInPackage:spineIndexInPackage];

  v12 = [infoCopy documentWithOrdinal:ordinal];
  if (!v12)
  {
    v12 = [infoCopy documentWithOrdinal:0];
  }

  manifestId = [v12 manifestId];
  [v6 setManifestId:manifestId];

  v14 = [infoCopy urlForDocument:v12];
  [v6 setUrl:v14];

  fixedLayoutWidth = [v12 fixedLayoutWidth];
  [v6 setFixedLayoutWidth:fixedLayoutWidth];

  fixedLayoutHeight = [v12 fixedLayoutHeight];
  [v6 setFixedLayoutHeight:fixedLayoutHeight];

  return v6;
}

- (CGSize)fixedLayoutSize
{
  fixedLayoutWidth = [(AEBookInfoSnapshot *)self fixedLayoutWidth];
  [fixedLayoutWidth doubleValue];
  v5 = v4;
  fixedLayoutHeight = [(AEBookInfoSnapshot *)self fixedLayoutHeight];
  [fixedLayoutHeight doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end