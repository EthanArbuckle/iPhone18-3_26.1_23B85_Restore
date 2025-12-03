@interface AVRoutingContextCommandOutputDeviceConfigurationModification
+ (void)initialize;
- (AVRoutingContextCommandOutputDeviceConfigurationModification)init;
- (void)addPeerToHomeGroup:(id)group;
- (void)dealloc;
- (void)removePeerWithIDFromHomeGroup:(id)group;
- (void)startAutomaticallyAllowingConnectionsFromPeersInHomeGroupAndRejectOtherConnections:(BOOL)connections;
@end

@implementation AVRoutingContextCommandOutputDeviceConfigurationModification

+ (void)initialize
{
  if (objc_opt_class() == self)
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
  v4.super_class = AVRoutingContextCommandOutputDeviceConfigurationModification;
  [(AVRoutingContextCommandOutputDeviceConfigurationModification *)&v4 dealloc];
}

- (void)startAutomaticallyAllowingConnectionsFromPeersInHomeGroupAndRejectOtherConnections:(BOOL)connections
{
  v4 = *MEMORY[0x1E695E480];
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(self->_payload, *MEMORY[0x1E69617B8], *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(self->_payload, *MEMORY[0x1E69617C0], UInt64);
  if (UInt64)
  {

    CFRelease(UInt64);
  }
}

- (void)addPeerToHomeGroup:(id)group
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
  [group hasAdministratorPrivileges];
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961780], [group peerID]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961790], [group publicKey]);
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

- (void)removePeerWithIDFromHomeGroup:(id)group
{
  values = group;
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

- (AVRoutingContextCommandOutputDeviceConfigurationModification)init
{
  v5.receiver = self;
  v5.super_class = AVRoutingContextCommandOutputDeviceConfigurationModification;
  v2 = [(AVRoutingContextCommandOutputDeviceConfigurationModification *)&v5 init];
  if (v2)
  {
    v2->_payload = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end