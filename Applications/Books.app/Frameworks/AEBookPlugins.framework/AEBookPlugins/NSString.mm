@interface NSString
+ (id)ae_searchResultDetailTextWithCount:(unint64_t)count;
+ (id)fastHashStringFromPath:(id)path;
+ (id)md5StringWithContentsOfFile:(id)file;
+ (id)pathRelativeToContentBase:(id)base forRelativePath:(id)path startingFromAbsoluteFolderPath:(id)folderPath;
@end

@implementation NSString

+ (id)md5StringWithContentsOfFile:(id)file
{
  Md5String = ITFileUtil::createMd5String(file, a2);

  return Md5String;
}

+ (id)fastHashStringFromPath:(id)path
{
  FastFileHash = ITFileUtil::createFastFileHash(path, a2);

  return FastFileHash;
}

+ (id)pathRelativeToContentBase:(id)base forRelativePath:(id)path startingFromAbsoluteFolderPath:(id)folderPath
{
  baseCopy = base;
  pathCopy = path;
  folderPathCopy = folderPath;
  v10 = pathCopy;
  v11 = v10;
  if (([folderPathCopy isEqualToString:baseCopy] & 1) == 0)
  {
    v12 = [folderPathCopy stringByAppendingPathComponent:v10];
    stringByStandardizingPath = [v12 stringByStandardizingPath];
    stringByStandardizingPath2 = [baseCopy stringByStandardizingPath];
    v11 = v10;
    if ([stringByStandardizingPath hasPrefix:stringByStandardizingPath2])
    {
      v11 = [stringByStandardizingPath substringFromIndex:{objc_msgSend(stringByStandardizingPath2, "length")}];

      if ([v11 length] >= 2 && objc_msgSend(v11, "characterAtIndex:", 0) == 47)
      {
        v15 = [v11 substringFromIndex:1];

        v11 = v15;
      }
    }
  }

  return v11;
}

+ (id)ae_searchResultDetailTextWithCount:(unint64_t)count
{
  _sSo8NSStringC13AEBookPluginsE22searchResultDetailText5countSSSu_tFZ_0(count);
  v3 = sub_139990();

  return v3;
}

@end