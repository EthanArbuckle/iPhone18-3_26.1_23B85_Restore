@interface VCAudioSessionClient
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation VCAudioSessionClient

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_notificationClient, 0);

  v3.receiver = self;
  v3.super_class = VCAudioSessionClient;
  [(VCAudioSessionClient *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setMediaProperties:self->_mediaProperties];
  [v4 setNotificationClient:{-[VCAudioSessionClient notificationClient](self, "notificationClient")}];
  return v4;
}

@end