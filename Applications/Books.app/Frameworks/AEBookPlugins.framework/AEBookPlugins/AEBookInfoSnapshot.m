@interface AEBookInfoSnapshot
+ (id)aeBookInfoSnapshotFromBookInfo:(id)a3 ordinal:(unint64_t)a4;
- (CGSize)fixedLayoutSize;
@end

@implementation AEBookInfoSnapshot

+ (id)aeBookInfoSnapshotFromBookInfo:(id)a3 ordinal:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 cacheItem];
  [v6 setCacheItem:v7];

  [v6 setBkPageProgressionDirection:{objc_msgSend(v5, "bkPageProgressionDirection")}];
  [v6 setIsFixedLayout:{objc_msgSend(v5, "isFixedLayout")}];
  [v6 setObeyPageBreaks:{objc_msgSend(v5, "obeyPageBreaks")}];
  [v6 setShouldAllowRemoteInspection:{objc_msgSend(v5, "shouldAllowRemoteInspection")}];
  v8 = [v5 respectImageSizeClass];
  [v6 setRespectImageSizeClass:v8];

  [v6 setRespectImageSizeClassIsPrefix:{objc_msgSend(v5, "respectImageSizeClassIsPrefix")}];
  [v6 setHasBuiltInFonts:{objc_msgSend(v5, "hasBuiltInFonts")}];
  [v6 setShouldDisableOptimizeSpeed:{objc_msgSend(v5, "shouldDisableOptimizeSpeed")}];
  v9 = [v5 bookLanguage];
  [v6 setBookLanguage:v9];

  v10 = [v5 assetID];
  [v6 setAssetID:v10];

  v11 = [v5 spineIndexInPackage];
  [v6 setSpineIndexInPackage:v11];

  v12 = [v5 documentWithOrdinal:a4];
  if (!v12)
  {
    v12 = [v5 documentWithOrdinal:0];
  }

  v13 = [v12 manifestId];
  [v6 setManifestId:v13];

  v14 = [v5 urlForDocument:v12];
  [v6 setUrl:v14];

  v15 = [v12 fixedLayoutWidth];
  [v6 setFixedLayoutWidth:v15];

  v16 = [v12 fixedLayoutHeight];
  [v6 setFixedLayoutHeight:v16];

  return v6;
}

- (CGSize)fixedLayoutSize
{
  v3 = [(AEBookInfoSnapshot *)self fixedLayoutWidth];
  [v3 doubleValue];
  v5 = v4;
  v6 = [(AEBookInfoSnapshot *)self fixedLayoutHeight];
  [v6 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end