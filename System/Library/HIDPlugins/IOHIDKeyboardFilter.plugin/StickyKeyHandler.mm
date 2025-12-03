@interface StickyKeyHandler
- (StickyKeyHandler)initWithFilter:(void *)filter service:(__IOHIDService *)service;
- (void)StickyKeyNotification:(id)notification;
- (void)removeObserver;
@end

@implementation StickyKeyHandler

- (StickyKeyHandler)initWithFilter:(void *)filter service:(__IOHIDService *)service
{
  v11.receiver = self;
  v11.super_class = StickyKeyHandler;
  v6 = [(StickyKeyHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_filter = filter;
    v6->_service = service;
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_StickyKeyNotification_ name:@"HIDResetStickyKeyNotification" object:0];

    v9 = v7;
  }

  return v7;
}

- (void)StickyKeyNotification:(id)notification
{
  object = [notification object];
  service = self->_service;

  if (object != service)
  {
    filter = self->_filter;
    v7 = *(filter + 62);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_29D430FEC;
    block[3] = &unk_29F34F180;
    block[4] = filter;
    dispatch_async(v7, block);
  }
}

- (void)removeObserver
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:@"HIDResetStickyKeyNotification" object:0];
}

@end