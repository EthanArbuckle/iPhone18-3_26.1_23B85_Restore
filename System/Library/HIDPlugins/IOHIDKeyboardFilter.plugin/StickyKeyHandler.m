@interface StickyKeyHandler
- (StickyKeyHandler)initWithFilter:(void *)a3 service:(__IOHIDService *)a4;
- (void)StickyKeyNotification:(id)a3;
- (void)removeObserver;
@end

@implementation StickyKeyHandler

- (StickyKeyHandler)initWithFilter:(void *)a3 service:(__IOHIDService *)a4
{
  v11.receiver = self;
  v11.super_class = StickyKeyHandler;
  v6 = [(StickyKeyHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_filter = a3;
    v6->_service = a4;
    v8 = [MEMORY[0x29EDBA068] defaultCenter];
    [v8 addObserver:v7 selector:sel_StickyKeyNotification_ name:@"HIDResetStickyKeyNotification" object:0];

    v9 = v7;
  }

  return v7;
}

- (void)StickyKeyNotification:(id)a3
{
  v4 = [a3 object];
  service = self->_service;

  if (v4 != service)
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
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:@"HIDResetStickyKeyNotification" object:0];
}

@end