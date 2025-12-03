@interface PFXCommon
+ (id)absolutePathWithUrl:(id)url relativeToFile:(id)file;
+ (id)cfiPathToNodeWithDepth:(int64_t)depth nodeArray:(void *)array idArray:(void *)idArray;
+ (id)dataWithContentsOfURL:(id)l;
+ (id)dataWithContentsOfURLString:(id)string sourceUrl:(id)url;
+ (id)relativePathFromFile:(id)file toPath:(id)path;
+ (id)stringWithContentsOfPercentEscapedURLString:(id)string sourceUrl:(id)url;
+ (id)urlWithRelativeString:(id)string sourceUrl:(id)url;
+ (void)writeString:(id)string toStream:(id)stream atEntry:(id)entry isCompressed:(BOOL)compressed;
@end

@implementation PFXCommon

+ (void)writeString:(id)string toStream:(id)stream atEntry:(id)entry isCompressed:(BOOL)compressed
{
  compressedCopy = compressed;
  v9 = [string dataUsingEncoding:4];
  [stream beginEntryWithName:entry isCompressed:compressedCopy uncompressedSize:{objc_msgSend(v9, "length")}];
  bytes = [v9 bytes];
  v11 = [v9 length];

  [stream writeBuffer:bytes size:v11];
}

+ (id)relativePathFromFile:(id)file toPath:(id)path
{
  stringByDeletingLastPathComponent = [file stringByDeletingLastPathComponent];

  return [path tsu_stringWithPathRelativeTo:stringByDeletingLastPathComponent allowBacktracking:1];
}

+ (id)absolutePathWithUrl:(id)url relativeToFile:(id)file
{
  fileCopy = file;
  if (([file hasPrefix:@"/"] & 1) == 0)
  {
    fileCopy = [@"/" stringByAppendingString:fileCopy];
  }

  v6 = -[NSURL path](+[NSURL URLWithString:relativeToURL:](NSURL, "URLWithString:relativeToURL:", [url stringByAddingPercentEncodingWithAllowedCharacters:{+[NSCharacterSet URLPathAllowedCharacterSet](NSCharacterSet, "URLPathAllowedCharacterSet")}], +[NSURL fileURLWithPath:isDirectory:](NSURL, "fileURLWithPath:isDirectory:", fileCopy, 0)), "path");

  return [(NSString *)v6 substringFromIndex:1];
}

+ (id)dataWithContentsOfURL:(id)l
{
  if ([l isFileURL])
  {
    v4 = [objc_msgSend(l "path")];

    return [NSData dataWithContentsOfFile:v4];
  }

  else
  {

    return [NSData dataWithContentsOfURL:l];
  }
}

+ (id)urlWithRelativeString:(id)string sourceUrl:(id)url
{
  stringCopy = string;
  if ([string rangeOfString:@"%"] == 0x7FFFFFFFFFFFFFFFLL || v6 == 0)
  {
    stringCopy = [stringCopy stringByAddingPercentEncodingWithAllowedCharacters:{+[NSCharacterSet URLPathAllowedCharacterSet](NSCharacterSet, "URLPathAllowedCharacterSet")}];
  }

  return [NSURL URLWithString:stringCopy relativeToURL:url];
}

+ (id)dataWithContentsOfURLString:(id)string sourceUrl:(id)url
{
  v4 = [self urlWithRelativeString:string sourceUrl:url];

  return [PFXCommon dataWithContentsOfURL:v4];
}

+ (id)stringWithContentsOfPercentEscapedURLString:(id)string sourceUrl:(id)url
{
  v4 = [[NSString alloc] initWithData:objc_msgSend(self encoding:{"dataWithContentsOfURLString:sourceUrl:", string, url), 4}];

  return v4;
}

+ (id)cfiPathToNodeWithDepth:(int64_t)depth nodeArray:(void *)array idArray:(void *)idArray
{
  v8 = +[NSMutableString string];
  if (depth >= 1)
  {
    v9 = 0;
    do
    {
      [v8 appendFormat:@"%lu", *(*array + 8 * v9)];
      if (idArray && *(*idArray + 8 * v9))
      {
        [v8 appendFormat:@"[%s]", *(*idArray + 8 * v9)];
      }

      if (v9 < depth - 1)
      {
        [v8 appendFormat:@"/"];
      }

      ++v9;
    }

    while (depth != v9);
  }

  return v8;
}

@end