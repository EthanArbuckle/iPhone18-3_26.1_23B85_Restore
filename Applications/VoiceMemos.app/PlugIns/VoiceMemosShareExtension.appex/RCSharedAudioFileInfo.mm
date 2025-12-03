@interface RCSharedAudioFileInfo
- (RCSharedAudioFileInfo)initWithURL:(id)l fileName:(id)name creationDate:(id)date;
@end

@implementation RCSharedAudioFileInfo

- (RCSharedAudioFileInfo)initWithURL:(id)l fileName:(id)name creationDate:(id)date
{
  lCopy = l;
  nameCopy = name;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = RCSharedAudioFileInfo;
  v12 = [(RCSharedAudioFileInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, l);
    objc_storeStrong(&v13->_fileName, name);
    objc_storeStrong(&v13->_creationDate, date);
  }

  return v13;
}

@end