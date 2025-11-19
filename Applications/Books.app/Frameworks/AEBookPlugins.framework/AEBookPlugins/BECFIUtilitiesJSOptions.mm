@interface BECFIUtilitiesJSOptions
+ (id)cfiUtilitiesJSOptionsForBookInfoSnapshot:(id)a3 ordinal:(unint64_t)a4;
@end

@implementation BECFIUtilitiesJSOptions

+ (id)cfiUtilitiesJSOptionsForBookInfoSnapshot:(id)a3 ordinal:(unint64_t)a4
{
  v5 = a3;
  v6 = [BECFIUtilitiesJSOptions alloc];
  v7 = [v5 manifestId];
  v8 = [v5 assetID];
  v9 = [v5 spineIndexInPackage];

  v10 = [v6 initWithManifestId:v7 assetId:v8 chapterIndex:a4 spineIndex:{objc_msgSend(v9, "unsignedIntegerValue")}];

  return v10;
}

@end