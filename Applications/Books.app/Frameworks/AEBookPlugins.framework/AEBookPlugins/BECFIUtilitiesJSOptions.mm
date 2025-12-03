@interface BECFIUtilitiesJSOptions
+ (id)cfiUtilitiesJSOptionsForBookInfoSnapshot:(id)snapshot ordinal:(unint64_t)ordinal;
@end

@implementation BECFIUtilitiesJSOptions

+ (id)cfiUtilitiesJSOptionsForBookInfoSnapshot:(id)snapshot ordinal:(unint64_t)ordinal
{
  snapshotCopy = snapshot;
  v6 = [BECFIUtilitiesJSOptions alloc];
  manifestId = [snapshotCopy manifestId];
  assetID = [snapshotCopy assetID];
  spineIndexInPackage = [snapshotCopy spineIndexInPackage];

  v10 = [v6 initWithManifestId:manifestId assetId:assetID chapterIndex:ordinal spineIndex:{objc_msgSend(spineIndexInPackage, "unsignedIntegerValue")}];

  return v10;
}

@end