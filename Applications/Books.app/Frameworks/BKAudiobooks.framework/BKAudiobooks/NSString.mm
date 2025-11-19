@interface NSString
- (BOOL)bk_isAudioFileExtension;
- (BOOL)bk_isPlaylistExtension;
- (id)bk_titleByStrippingAudiobookTitle:(id)a3;
@end

@implementation NSString

- (BOOL)bk_isPlaylistExtension
{
  v2 = [(NSString *)self lowercaseString];
  v3 = [v2 isEqualToString:@"m3u8"];

  return v3;
}

- (BOOL)bk_isAudioFileExtension
{
  v2 = [(NSString *)self lowercaseString];
  if ([v2 isEqualToString:@"aac"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"ts") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"mp4") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"m4b"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"m4s"];
  }

  return v3;
}

- (id)bk_titleByStrippingAudiobookTitle:(id)a3
{
  v4 = a3;
  if (qword_47A48 != -1)
  {
    sub_2190C();
  }

  v5 = self;
  if ([v4 length] && -[NSString hasPrefix:](v5, "hasPrefix:", v4))
  {
    v6 = -[NSString substringFromIndex:](v5, "substringFromIndex:", [v4 length]);
    v7 = [v6 stringByTrimmingCharactersInSet:qword_47A40];

    if ([v7 length])
    {
      v8 = v7;

      v5 = v8;
    }
  }

  return v5;
}

@end