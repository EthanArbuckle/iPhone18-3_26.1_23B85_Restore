@interface PHPersistentChangeEnumerationContext
- (PHPersistentChangeEnumerationContext)init;
@end

@implementation PHPersistentChangeEnumerationContext

- (PHPersistentChangeEnumerationContext)init
{
  v8.receiver = self;
  v8.super_class = PHPersistentChangeEnumerationContext;
  v2 = [(PHPersistentChangeEnumerationContext *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    untrashedIdentifiersAsInserts = v2->_untrashedIdentifiersAsInserts;
    v2->_untrashedIdentifiersAsInserts = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    trashedIdentifiersAsDeletes = v2->_trashedIdentifiersAsDeletes;
    v2->_trashedIdentifiersAsDeletes = v5;
  }

  return v2;
}

@end