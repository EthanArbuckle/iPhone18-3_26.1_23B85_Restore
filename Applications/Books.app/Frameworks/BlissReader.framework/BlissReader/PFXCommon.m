@interface PFXCommon
+ (id)absolutePathWithUrl:(id)a3 relativeToFile:(id)a4;
+ (id)cfiPathToNodeWithDepth:(int64_t)a3 nodeArray:(void *)a4 idArray:(void *)a5;
+ (id)dataWithContentsOfURL:(id)a3;
+ (id)dataWithContentsOfURLString:(id)a3 sourceUrl:(id)a4;
+ (id)relativePathFromFile:(id)a3 toPath:(id)a4;
+ (id)stringWithContentsOfPercentEscapedURLString:(id)a3 sourceUrl:(id)a4;
+ (id)urlWithRelativeString:(id)a3 sourceUrl:(id)a4;
+ (void)writeString:(id)a3 toStream:(id)a4 atEntry:(id)a5 isCompressed:(BOOL)a6;
@end

@implementation PFXCommon

+ (void)writeString:(id)a3 toStream:(id)a4 atEntry:(id)a5 isCompressed:(BOOL)a6
{
  v6 = a6;
  v9 = [a3 dataUsingEncoding:4];
  [a4 beginEntryWithName:a5 isCompressed:v6 uncompressedSize:{objc_msgSend(v9, "length")}];
  v10 = [v9 bytes];
  v11 = [v9 length];

  [a4 writeBuffer:v10 size:v11];
}

+ (id)relativePathFromFile:(id)a3 toPath:(id)a4
{
  v5 = [a3 stringByDeletingLastPathComponent];

  return [a4 tsu_stringWithPathRelativeTo:v5 allowBacktracking:1];
}

+ (id)absolutePathWithUrl:(id)a3 relativeToFile:(id)a4
{
  v4 = a4;
  if (([a4 hasPrefix:@"/"] & 1) == 0)
  {
    v4 = [@"/" stringByAppendingString:v4];
  }

  v6 = -[NSURL path](+[NSURL URLWithString:relativeToURL:](NSURL, "URLWithString:relativeToURL:", [a3 stringByAddingPercentEncodingWithAllowedCharacters:{+[NSCharacterSet URLPathAllowedCharacterSet](NSCharacterSet, "URLPathAllowedCharacterSet")}], +[NSURL fileURLWithPath:isDirectory:](NSURL, "fileURLWithPath:isDirectory:", v4, 0)), "path");

  return [(NSString *)v6 substringFromIndex:1];
}

+ (id)dataWithContentsOfURL:(id)a3
{
  if ([a3 isFileURL])
  {
    v4 = [objc_msgSend(a3 "path")];

    return [NSData dataWithContentsOfFile:v4];
  }

  else
  {

    return [NSData dataWithContentsOfURL:a3];
  }
}

+ (id)urlWithRelativeString:(id)a3 sourceUrl:(id)a4
{
  v5 = a3;
  if ([a3 rangeOfString:@"%"] == 0x7FFFFFFFFFFFFFFFLL || v6 == 0)
  {
    v5 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:{+[NSCharacterSet URLPathAllowedCharacterSet](NSCharacterSet, "URLPathAllowedCharacterSet")}];
  }

  return [NSURL URLWithString:v5 relativeToURL:a4];
}

+ (id)dataWithContentsOfURLString:(id)a3 sourceUrl:(id)a4
{
  v4 = [a1 urlWithRelativeString:a3 sourceUrl:a4];

  return [PFXCommon dataWithContentsOfURL:v4];
}

+ (id)stringWithContentsOfPercentEscapedURLString:(id)a3 sourceUrl:(id)a4
{
  v4 = [[NSString alloc] initWithData:objc_msgSend(a1 encoding:{"dataWithContentsOfURLString:sourceUrl:", a3, a4), 4}];

  return v4;
}

+ (id)cfiPathToNodeWithDepth:(int64_t)a3 nodeArray:(void *)a4 idArray:(void *)a5
{
  v8 = +[NSMutableString string];
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      [v8 appendFormat:@"%lu", *(*a4 + 8 * v9)];
      if (a5 && *(*a5 + 8 * v9))
      {
        [v8 appendFormat:@"[%s]", *(*a5 + 8 * v9)];
      }

      if (v9 < a3 - 1)
      {
        [v8 appendFormat:@"/"];
      }

      ++v9;
    }

    while (a3 != v9);
  }

  return v8;
}

@end