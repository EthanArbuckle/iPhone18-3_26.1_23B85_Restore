@interface NSPortMessage
- (NSArray)components;
- (NSPort)receivePort;
- (NSPort)sendPort;
- (NSPortMessage)initWithSendPort:(NSPort *)sendPort receivePort:(NSPort *)replyPort components:(NSArray *)components;
- (void)dealloc;
@end

@implementation NSPortMessage

- (NSPortMessage)initWithSendPort:(NSPort *)sendPort receivePort:(NSPort *)replyPort components:(NSArray *)components
{
  self->localPort = replyPort;
  self->remotePort = sendPort;
  self->components = components;
  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSPortMessage;
  [(NSPortMessage *)&v3 dealloc];
}

- (NSPort)sendPort
{
  v2 = self->remotePort;

  return v2;
}

- (NSPort)receivePort
{
  v2 = self->localPort;

  return v2;
}

- (NSArray)components
{
  v2 = self->components;

  return v2;
}

@end