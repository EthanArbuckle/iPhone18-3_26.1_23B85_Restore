@interface UNNotificationContent
+ (id)mt_imageAttachmentForCacheKey:(id)key imageURL:(id)l;
- (id)mt_attachedImageForCacheKey:(id)key;
- (id)mt_notificationEpisodes;
- (id)mt_podcastUuid;
@end

@implementation UNNotificationContent

- (id)mt_podcastUuid
{
  userInfo = [(UNNotificationContent *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"podcastUuid"];

  return v3;
}

- (id)mt_notificationEpisodes
{
  userInfo = [(UNNotificationContent *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"notificationEpisodeDictionaryRepresentations"];

  v4 = [v3 mt_compactMap:&stru_10002CEA8];

  return v4;
}

+ (id)mt_imageAttachmentForCacheKey:(id)key imageURL:(id)l
{
  lCopy = l;
  v6 = [NSString stringWithFormat:@"imageFor-%@", key];
  v7 = [UNNotificationAttachment attachmentWithIdentifier:v6 URL:lCopy options:0 error:0];

  return v7;
}

- (id)mt_attachedImageForCacheKey:(id)key
{
  keyCopy = key;
  attachments = [(UNNotificationContent *)self attachments];
  keyCopy = [NSString stringWithFormat:@"imageFor-%@", keyCopy];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100010F30;
  v15[3] = &unk_10002CED0;
  v7 = keyCopy;
  v16 = v7;
  v8 = [attachments indexOfObjectPassingTest:v15];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [attachments objectAtIndexedSubscript:v8];
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