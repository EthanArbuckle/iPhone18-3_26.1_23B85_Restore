@interface AVFigRoutingContextCommandOutputDeviceConfigurationModification
+ (void)initialize;
- (void)addPeerToHomeGroup:(id)a3;
- (void)dealloc;
- (void)removePeerWithIDFromHomeGroup:(id)a3;
- (void)startAutomaticallyAllowingConnectionsFromPeersInHomeGroupAndRejectOtherConnections:(BOOL)a3;
@end

@implementation AVFigRoutingContextCommandOutputDeviceConfigurationModification

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)dealloc
{
  payload = self->_payload;
  if (payload)
  {
    CFRelease(payload);
  }

  v4.receiver = self;
  v4.super_class = AVFigRoutingContextCommandOutputDeviceConfigurationModification;
  [(AVFigRoutingContextCommandOutputDeviceConfigurationModification *)&v4 dealloc];
}

- (void)startAutomaticallyAllowingConnectionsFromPeersInHomeGroupAndRejectOtherConnections:(BOOL)a3
{
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(self->_payload, *MEMORY[0x1E69617B8], *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(self->_payload, *MEMORY[0x1E69617C0], UInt64);
  if (UInt64)
  {

    CFRelease(UInt64);
  }
}

- (void)addPeerToHomeGroup:(id)a3
{
  v5 = *MEMORY[0x1E6961798];
  Value = CFDictionaryGetValue(self->_payload, *MEMORY[0x1E6961798]);
  if (Value)
  {
    v7 = CFRetain(Value);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  [a3 hasAdministratorPrivileges];
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961780], [a3 peerID]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961790], [a3 publicKey]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961788], UInt64);
  if (UInt64)
  {
    CFRelease(UInt64);
  }

  if (v7)
  {
    CFArrayAppendValue(v7, Mutable);
  }

  else
  {
    v7 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(self->_payload, v5, v7);
    CFArrayAppendValue(v7, Mutable);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  CFRelease(v7);
LABEL_10:
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

- (void)removePeerWithIDFromHomeGroup:(id)a3
{
  values = a3;
  v4 = *MEMORY[0x1E69617A0];
  Value = CFDictionaryGetValue(self->_payload, *MEMORY[0x1E69617A0]);
  if (!Value)
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961780], &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
LABEL_5:
    Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(self->_payload, v4, Mutable);
    CFArrayAppendValue(Mutable, v8);
    if (!Mutable)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  Mutable = CFRetain(Value);
  v7 = *MEMORY[0x1E695E480];
  v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961780], &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_5;
  }

  CFArrayAppendValue(Mutable, v8);
LABEL_6:
  CFRelease(Mutable);
LABEL_7:
  if (v8)
  {
    CFRelease(v8);
  }
}

@end