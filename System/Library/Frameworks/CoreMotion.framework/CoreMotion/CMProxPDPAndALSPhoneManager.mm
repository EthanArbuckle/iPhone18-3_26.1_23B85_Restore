@interface CMProxPDPAndALSPhoneManager
- (CMProxPDPAndALSPhoneManager)init;
- (void)dealloc;
- (void)startALSPhoneUpdatesWithHandler:(id)handler;
- (void)startPDPUpdatesWithHandler:(id)handler;
@end

@implementation CMProxPDPAndALSPhoneManager

- (void)startPDPUpdatesWithHandler:(id)handler
{
  if (!handler)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CMProxPDPAndALSPhoneManager.mm", 156, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v5 = objc_msgSend__internal(self, a2, handler);

  MEMORY[0x1EEE66B58](v5, sel__startPDPUpdatesWithHandler_, handler);
}

- (void)startALSPhoneUpdatesWithHandler:(id)handler
{
  if (!handler)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CMProxPDPAndALSPhoneManager.mm", 162, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v5 = objc_msgSend__internal(self, a2, handler);

  MEMORY[0x1EEE66B58](v5, sel__startALSPhoneUpdatesWithHandler_, handler);
}

- (CMProxPDPAndALSPhoneManager)init
{
  v4.receiver = self;
  v4.super_class = CMProxPDPAndALSPhoneManager;
  v2 = [(CMProxPDPAndALSPhoneManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMProxPDPAndALSPhoneManagerInternal);
  }

  return v2;
}

- (void)dealloc
{
  self->_internal = 0;
  v3.receiver = self;
  v3.super_class = CMProxPDPAndALSPhoneManager;
  [(CMProxPDPAndALSPhoneManager *)&v3 dealloc];
}

@end