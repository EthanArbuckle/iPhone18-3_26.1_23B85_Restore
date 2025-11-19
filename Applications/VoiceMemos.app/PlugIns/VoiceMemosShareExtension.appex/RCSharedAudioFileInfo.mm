@interface RCSharedAudioFileInfo
- (RCSharedAudioFileInfo)initWithURL:(id)a3 fileName:(id)a4 creationDate:(id)a5;
@end

@implementation RCSharedAudioFileInfo

- (RCSharedAudioFileInfo)initWithURL:(id)a3 fileName:(id)a4 creationDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RCSharedAudioFileInfo;
  v12 = [(RCSharedAudioFileInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, a3);
    objc_storeStrong(&v13->_fileName, a4);
    objc_storeStrong(&v13->_creationDate, a5);
  }

  return v13;
}

@end