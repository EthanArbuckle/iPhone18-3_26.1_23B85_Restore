@interface NSString
+ (id)ae_searchResultDetailTextWithCount:(unint64_t)a3;
+ (id)fastHashStringFromPath:(id)a3;
+ (id)md5StringWithContentsOfFile:(id)a3;
+ (id)pathRelativeToContentBase:(id)a3 forRelativePath:(id)a4 startingFromAbsoluteFolderPath:(id)a5;
@end

@implementation NSString

+ (id)md5StringWithContentsOfFile:(id)a3
{
  Md5String = ITFileUtil::createMd5String(a3, a2);

  return Md5String;
}

+ (id)fastHashStringFromPath:(id)a3
{
  FastFileHash = ITFileUtil::createFastFileHash(a3, a2);

  return FastFileHash;
}

+ (id)pathRelativeToContentBase:(id)a3 forRelativePath:(id)a4 startingFromAbsoluteFolderPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
  v11 = v10;
  if (([v9 isEqualToString:v7] & 1) == 0)
  {
    v12 = [v9 stringByAppendingPathComponent:v10];
    v13 = [v12 stringByStandardizingPath];
    v14 = [v7 stringByStandardizingPath];
    v11 = v10;
    if ([v13 hasPrefix:v14])
    {
      v11 = [v13 substringFromIndex:{objc_msgSend(v14, "length")}];

      if ([v11 length] >= 2 && objc_msgSend(v11, "characterAtIndex:", 0) == 47)
      {
        v15 = [v11 substringFromIndex:1];

        v11 = v15;
      }
    }
  }

  return v11;
}

+ (id)ae_searchResultDetailTextWithCount:(unint64_t)a3
{
  _sSo8NSStringC13AEBookPluginsE22searchResultDetailText5countSSSu_tFZ_0(a3);
  v3 = sub_139990();

  return v3;
}

@end