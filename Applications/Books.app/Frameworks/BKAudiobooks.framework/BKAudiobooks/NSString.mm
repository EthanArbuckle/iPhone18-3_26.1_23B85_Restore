@interface NSString
- (BOOL)bk_isAudioFileExtension;
- (BOOL)bk_isPlaylistExtension;
- (id)bk_titleByStrippingAudiobookTitle:(id)title;
@end

@implementation NSString

- (BOOL)bk_isPlaylistExtension
{
  lowercaseString = [(NSString *)self lowercaseString];
  v3 = [lowercaseString isEqualToString:@"m3u8"];

  return v3;
}

- (BOOL)bk_isAudioFileExtension
{
  lowercaseString = [(NSString *)self lowercaseString];
  if ([lowercaseString isEqualToString:@"aac"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"ts") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"mp4") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"m4b"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [lowercaseString isEqualToString:@"m4s"];
  }

  return v3;
}

- (id)bk_titleByStrippingAudiobookTitle:(id)title
{
  titleCopy = title;
  if (qword_47A48 != -1)
  {
    sub_2190C();
  }

  selfCopy = self;
  if ([titleCopy length] && -[NSString hasPrefix:](selfCopy, "hasPrefix:", titleCopy))
  {
    v6 = -[NSString substringFromIndex:](selfCopy, "substringFromIndex:", [titleCopy length]);
    v7 = [v6 stringByTrimmingCharactersInSet:qword_47A40];

    if ([v7 length])
    {
      v8 = v7;

      selfCopy = v8;
    }
  }

  return selfCopy;
}

@end