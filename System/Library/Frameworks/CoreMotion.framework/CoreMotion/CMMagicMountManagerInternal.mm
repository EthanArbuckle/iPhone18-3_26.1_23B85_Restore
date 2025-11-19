@interface CMMagicMountManagerInternal
- (CMMagicMountManagerInternal)init;
- (id).cxx_construct;
- (void)connect;
- (void)dealloc;
- (void)sendAPWakesRequestPrivate;
- (void)sendServiceRequestPrivate;
- (void)teardownPrivate;
@end

@implementation CMMagicMountManagerInternal

- (CMMagicMountManagerInternal)init
{
  v3.receiver = self;
  v3.super_class = CMMagicMountManagerInternal;
  result = [(CMMagicMountManagerInternal *)&v3 init];
  if (result)
  {
    *&result->_serviceEnabled = 256;
    result->_magicMountStateQueue = 0;
    result->_magicMountStateDispatcher = 0;
    result->_magicMountStateHandler = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMMagicMountManagerInternal;
  [(CMMagicMountManagerInternal *)&v2 dealloc];
}

- (void)teardownPrivate
{
  connection = self->_connection;
  if (connection)
  {
    v4 = MEMORY[0x19EAE71C0](connection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
    self->_connection = 0;
  }

  self->_connectionQueue = 0;
}

- (void)connect
{
  if (!self->_connection)
  {
    self->_connectionQueue = dispatch_queue_create("com.apple.CoreMotion.CMMagicMountManager", 0);
    operator new();
  }
}

- (void)sendServiceRequestPrivate
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  objc_msgSend_connect(self, v3, v4);
  serviceEnabled = self->_serviceEnabled;
  v8 = @"CMMagicMountServiceEnable";
  v9[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v6, serviceEnabled);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v9, &v8, 1);
  sub_19B6AD504();
}

- (void)sendAPWakesRequestPrivate
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  objc_msgSend_connect(self, v3, v4);
  apWakesAllowed = self->_apWakesAllowed;
  v8 = @"CMMagicMountAPWakesAllowed";
  v9[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v6, apWakesAllowed);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v9, &v8, 1);
  sub_19B6AD504();
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end