@interface PKHandwritingSynthesisLogger
+ (id)sharedHandwritingSynthesisLogger;
- (PKHandwritingSynthesisLogger)init;
- (id)entries;
- (void)addLogEntry:(void *)entry;
- (void)clearAllEntries;
@end

@implementation PKHandwritingSynthesisLogger

- (PKHandwritingSynthesisLogger)init
{
  v6.receiver = self;
  v6.super_class = PKHandwritingSynthesisLogger;
  v2 = [(PKHandwritingSynthesisLogger *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    entryLog = v2->_entryLog;
    v2->_entryLog = array;
  }

  return v2;
}

- (void)addLogEntry:(void *)entry
{
  v5 = a2;
  if (entry)
  {
    entryCopy = entry;
    objc_sync_enter(entryCopy);
    [objc_getProperty(entryCopy v4];
    objc_sync_exit(entryCopy);
  }
}

- (void)clearAllEntries
{
  if (self)
  {
    self = self;
    objc_sync_enter(self);
    [objc_getProperty(self v1];
    objc_sync_exit(self);
  }
}

- (id)entries
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v3 = objc_getProperty(selfCopy, v2, 8, 1);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)sharedHandwritingSynthesisLogger
{
  objc_opt_self();
  if (_MergedGlobals_155 != -1)
  {
    dispatch_once(&_MergedGlobals_155, &__block_literal_global_64);
  }

  v0 = qword_1ED6A5290;

  return v0;
}

void __64__PKHandwritingSynthesisLogger_sharedHandwritingSynthesisLogger__block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = objc_alloc_init(PKHandwritingSynthesisLogger);
    v1 = qword_1ED6A5290;
    qword_1ED6A5290 = v0;
  }
}

@end