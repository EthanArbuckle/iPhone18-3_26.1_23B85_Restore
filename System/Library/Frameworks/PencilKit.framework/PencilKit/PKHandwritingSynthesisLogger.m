@interface PKHandwritingSynthesisLogger
+ (id)sharedHandwritingSynthesisLogger;
- (PKHandwritingSynthesisLogger)init;
- (id)entries;
- (void)addLogEntry:(void *)a1;
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
    v3 = [MEMORY[0x1E695DF70] array];
    entryLog = v2->_entryLog;
    v2->_entryLog = v3;
  }

  return v2;
}

- (void)addLogEntry:(void *)a1
{
  v5 = a2;
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    [objc_getProperty(v3 v4];
    objc_sync_exit(v3);
  }
}

- (void)clearAllEntries
{
  if (a1)
  {
    self = a1;
    objc_sync_enter(self);
    [objc_getProperty(self v1];
    objc_sync_exit(self);
  }
}

- (id)entries
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v3 = objc_getProperty(v1, v2, 8, 1);
    objc_sync_exit(v1);
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