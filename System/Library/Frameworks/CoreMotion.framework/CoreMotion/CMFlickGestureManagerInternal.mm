@interface CMFlickGestureManagerInternal
- (CMFlickGestureManagerInternal)init;
- (void)dealloc;
- (void)teardownPrivate;
@end

@implementation CMFlickGestureManagerInternal

- (CMFlickGestureManagerInternal)init
{
  v3.receiver = self;
  v3.super_class = CMFlickGestureManagerInternal;
  result = [(CMFlickGestureManagerInternal *)&v3 init];
  if (result)
  {
    result->fServiceEnabled = 0;
    *&result->fConnection = 0u;
    *&result->fEventHandler = 0u;
    result->fEventType = 0;
    result->fFlickGestureStateDispatcher = 0;
    result->fTimestamp = 0.0;
    result->fRegisteredForNotifications = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMFlickGestureManagerInternal;
  [(CMFlickGestureManagerInternal *)&v2 dealloc];
}

- (void)teardownPrivate
{
  fConnection = self->fConnection;
  if (fConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fConnection = 0;

  self->fConnectionQueue = 0;
}

@end