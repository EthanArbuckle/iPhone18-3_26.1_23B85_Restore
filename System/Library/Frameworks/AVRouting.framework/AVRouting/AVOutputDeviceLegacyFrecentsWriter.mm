@interface AVOutputDeviceLegacyFrecentsWriter
+ (id)defaultFrecentsWriter;
- (AVOutputDeviceLegacyFrecentsWriter)init;
- (BOOL)persistToDiskReturningError:(id *)error;
- (void)dealloc;
- (void)removeFrecencyInfoForDeviceID:(id)d;
@end

@implementation AVOutputDeviceLegacyFrecentsWriter

+ (id)defaultFrecentsWriter
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceLegacyFrecentsWriter;
  [(AVOutputDeviceLegacyFrecentsWriter *)&v3 dealloc];
}

- (void)removeFrecencyInfoForDeviceID:(id)d
{
  [(NSMutableDictionary *)self->_updatedFrecentsList removeObjectForKey:?];
  keysToRemove = self->_keysToRemove;

  [(NSMutableArray *)keysToRemove addObject:d];
}

- (BOOL)persistToDiskReturningError:(id *)error
{
  CFPreferencesSetMultiple(self->_updatedFrecentsList, self->_keysToRemove, @"com.apple.avfoundation.frecents", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = CFPreferencesAppSynchronize(@"com.apple.avfoundation.frecents");
  [(NSMutableDictionary *)self->_updatedFrecentsList removeAllObjects];
  [(NSMutableArray *)self->_keysToRemove removeAllObjects];
  return v4 != 0;
}

- (AVOutputDeviceLegacyFrecentsWriter)init
{
  v5.receiver = self;
  v5.super_class = AVOutputDeviceLegacyFrecentsWriter;
  v2 = [(AVOutputDeviceLegacyFrecentsWriter *)&v5 init];
  if (v2)
  {
    v2->_updatedFrecentsList = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_keysToRemove = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end