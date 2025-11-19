@interface AXBaseSettings
- (BOOL)BOOLValueForPreferenceKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)forceNewSettingsUsage;
- (BOOL)hasExistingValueForPreferenceWithSelector:(SEL)a3;
- (double)doubleValueForPreferenceKey:(id)a3 defaultValue:(double)a4;
- (float)floatValueForPreferenceKey:(id)a3 defaultValue:(float)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)notificationNameForPreferenceKey:(id)a3;
- (id)objectValueForPreferenceKey:(id)a3 ofClass:(Class)a4 defaultValue:(id)a5;
- (id)valueForPreferenceKey:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)integerValueForPreferenceKey:(id)a3 defaultValue:(int64_t)a4;
- (void)clearExistingValueForPreferenceWithSelector:(SEL)a3;
- (void)postNotificationForPreferenceKey:(id)a3;
- (void)registerUpdateBlock:(id)a3 forPreferenceKey:(id)a4 withListener:(id)a5;
- (void)registerUpdateBlock:(id)a3 forRetrieveSelector:(SEL)a4 withListener:(id)a5;
- (void)setForceNewSettingsUsage:(BOOL)a3;
- (void)unregisterUpdateBlockForPreferenceKey:(id)a3 withListenerID:(id)a4;
- (void)unregisterUpdateBlockForRetrieveSelector:(SEL)a3 withListenerID:(id)a4;
@end

@implementation AXBaseSettings

- (id)objectValueForPreferenceKey:(id)a3 ofClass:(Class)a4 defaultValue:(id)a5
{
  v7 = sub_19166B748();
  v9 = v8;
  if (a5)
  {
    v10 = self;
    swift_unknownObjectRetain();
    sub_19166BFC8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    v11 = self;
  }

  swift_getObjCClassMetadata();
  AXBaseSettings.objectValue(forPreferenceKey:of:defaultValue:)(v7, v9, v20, v21);

  sub_19159E780(v20, &unk_1EADB0270, &unk_191672C20);
  v12 = v22;
  if (v22)
  {
    v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = *(v12 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13, v13);
    v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17);
    v18 = sub_19166C5D8();
    (*(v14 + 8))(v17, v12);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)forceNewSettingsUsage
{
  v3 = OBJC_IVAR___AXBaseSettings_forceNewSettingsUsage;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (id)valueForPreferenceKey:(id)a3
{
  v4 = sub_19166B748();
  v6 = v5;
  v7 = self;
  AXBaseSettings.value(forPreferenceKey:)(v4, v6, v16);

  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9, v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_19166C5D8();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v4 = self;
  AXBaseSettings.forwardingTarget(for:)(a3, v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x1EEE9AC00](v6, v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_19166C5D8();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)BOOLValueForPreferenceKey:(id)a3 defaultValue:(BOOL)a4
{
  v6 = sub_19166B748();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11 = AXBaseSettings.BOOLValue(forPreferenceKey:defaultValue:)(v10, a4);

  return v11;
}

uint64_t __79__AXBaseSettings_Legacy__unregisterUpdateBlockForPreferenceKey_withListenerID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __76__AXBaseSettings_Legacy__registerUpdateBlock_forPreferenceKey_withListener___block_invoke()
{
  _registerUpdateBlock_forPreferenceKey_withListener__FakeListener = objc_alloc_init(MEMORY[0x1E69E58C0]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47__AXBaseSettings_Legacy_valueForPreferenceKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForPreferenceKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __70__AXBaseSettings_Legacy__handlePreferenceChangedWithNotificationName___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:1];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void __57__AXBaseSettings_Legacy__userDefaultsStoreForDomainName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _domainNameToDefaultsStoreMap;
  _domainNameToDefaultsStoreMap = v0;

  _defaultsStoreCacheLock = 0;
}

uint64_t __50__AXBaseSettings_Legacy__registerForNotification___block_invoke()
{
  _registerForNotification__RegistrationQueue = dispatch_queue_create("AXBaseSettings-Registration", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __50__AXBaseSettings_Legacy__registerForNotification___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) registeredPreferenceKeys];
  if (([v2 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [v2 addObject:*(a1 + 40)];
    v3 = [*(a1 + 32) notificationNameForPreferenceKey:*(a1 + 40)];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _axSettingsHandlePreferenceChanged, v3, 0, 1028);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, *(a1 + 32), _axSettingsHandlePreferenceChanged, v3, 0, 1028);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [*(a1 + 32) allDomainNamesForPreferenceKey:{*(a1 + 40), 0}];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(a1 + 32) _userDefaultsStoreForDomainName:*(*(&v13 + 1) + 8 * v10)];
          [v11 addObserver:*(a1 + 32) forKeyPath:*(a1 + 40) options:3 context:0];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setForceNewSettingsUsage:(BOOL)a3
{
  v5 = OBJC_IVAR___AXBaseSettings_forceNewSettingsUsage;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (int64_t)integerValueForPreferenceKey:(id)a3 defaultValue:(int64_t)a4
{
  v6 = sub_19166B748();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11 = AXBaseSettings.integerValue(forPreferenceKey:defaultValue:)(v10, a4);

  return v11;
}

- (double)doubleValueForPreferenceKey:(id)a3 defaultValue:(double)a4
{
  v6 = sub_19166B748();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11 = AXBaseSettings.doubleValue(forPreferenceKey:defaultValue:)(v10, a4);

  return v11;
}

- (float)floatValueForPreferenceKey:(id)a3 defaultValue:(float)a4
{
  v6 = sub_19166B748();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11 = AXBaseSettings.floatValue(forPreferenceKey:defaultValue:)(v10, a4);

  return v11;
}

- (BOOL)hasExistingValueForPreferenceWithSelector:(SEL)a3
{
  v4 = self;
  LOBYTE(a3) = AXBaseSettings.hasExistingValueForPreference(with:)(a3);

  return a3 & 1;
}

- (void)clearExistingValueForPreferenceWithSelector:(SEL)a3
{
  v4 = self;
  AXBaseSettings.clearExistingValueForPreference(with:)(a3);
}

- (id)notificationNameForPreferenceKey:(id)a3
{
  v3 = sub_19166B748();
  MEMORY[0x193AFC710](v3);

  v4 = sub_19166B718();

  return v4;
}

- (void)registerUpdateBlock:(id)a3 forPreferenceKey:(id)a4 withListener:(id)a5
{
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = sub_19166B748();
  v11 = v10;
  if (a5)
  {
    v12 = self;
    swift_unknownObjectRetain();
    sub_19166BFC8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v13 = self;
  }

  AXBaseSettings.registerUpdate(_:forPreferenceKey:withListener:)(sub_19165E188, v8, v9, v11, v14);

  sub_19159E780(v14, &unk_1EADB0270, &unk_191672C20);
}

- (void)unregisterUpdateBlockForPreferenceKey:(id)a3 withListenerID:(id)a4
{
  v6 = sub_19166B748();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  AXBaseSettings.unregisterUpdateBlock(forPreferenceKey:withListenerID:)(v11, v9);
}

- (void)registerUpdateBlock:(id)a3 forRetrieveSelector:(SEL)a4 withListener:(id)a5
{
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  if (a5)
  {
    v10 = self;
    swift_unknownObjectRetain();
    sub_19166BFC8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v11 = self;
  }

  AXBaseSettings.registerUpdate(_:forRetrieveSelector:withListener:)(sub_19165DF28, v9, a4, v12);

  sub_19159E780(v12, &unk_1EADB0270, &unk_191672C20);
}

- (void)unregisterUpdateBlockForRetrieveSelector:(SEL)a3 withListenerID:(id)a4
{
  v6 = a4;
  v7 = self;
  AXBaseSettings.unregisterUpdateBlock(forRetrieveSelector:withListenerID:)(a3, v6);
}

- (void)postNotificationForPreferenceKey:(id)a3
{
  v3 = sub_19166B748();
  MEMORY[0x193AFC710](v3);

  v4 = sub_19166B7D8();

  notify_post((v4 + 32));
}

- (id)valueForUndefinedKey:(id)a3
{
  v5 = sub_19166B748();
  v7 = v6;
  v8 = a3;
  v9 = self;
  v10 = AXBaseSettings.target(forKVOKey:)(v5, v7);

  v11 = [v10 valueForKey_];

  swift_unknownObjectRelease();
  if (v11)
  {
    sub_19166BFC8();
    swift_unknownObjectRelease();
  }

  else
  {

    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  v12 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v13 = __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    v14 = *(*(&v21 + 1) - 8);
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13, v13);
    v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17);
    v18 = sub_19166C5D8();
    (*(v14 + 8))(v17, v12);
    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end