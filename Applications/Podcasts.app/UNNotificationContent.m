@interface UNNotificationContent
+ (id)mt_imageAttachmentForCacheKey:(id)a3 imageURL:(id)a4;
- (id)mt_attachedImageForCacheKey:(id)a3;
- (id)mt_notificationEpisodes;
- (id)mt_podcastUuid;
@end

@implementation UNNotificationContent

- (id)mt_podcastUuid
{
  v2 = [(UNNotificationContent *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"podcastUuid"];

  return v3;
}

- (id)mt_notificationEpisodes
{
  v2 = [(UNNotificationContent *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"notificationEpisodeDictionaryRepresentations"];

  v4 = [v3 mt_compactMap:&stru_1004DB2A8];

  return v4;
}

+ (id)mt_imageAttachmentForCacheKey:(id)a3 imageURL:(id)a4
{
  v5 = a4;
  v6 = [NSString stringWithFormat:@"imageFor-%@", a3];
  v7 = [UNNotificationAttachment attachmentWithIdentifier:v6 URL:v5 options:0 error:0];

  return v7;
}

- (id)mt_attachedImageForCacheKey:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationContent *)self attachments];
  v6 = [NSString stringWithFormat:@"imageFor-%@", v4];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B5EA0;
  v15[3] = &unk_1004DB2D0;
  v7 = v6;
  v16 = v7;
  v8 = [v5 indexOfObjectPassingTest:v15];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v5 objectAtIndexedSubscript:v8];
    v9 = v10;
    if (v10)
    {
      v11 = [v10 URL];
      [v11 startAccessingSecurityScopedResource];
      v12 = [NSData dataWithContentsOfURL:v11];
      v13 = [UIImage imageWithData:v12];
      [v11 stopAccessingSecurityScopedResource];

      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_6:

  return v13;
}

@end