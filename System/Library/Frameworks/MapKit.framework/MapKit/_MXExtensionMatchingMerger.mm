@interface _MXExtensionMatchingMerger
- (_MXExtensionMatchingMerger)init;
- (id)receiveExtensions:(id)extensions withIndex:(unint64_t)index;
- (void)clearExtensions;
@end

@implementation _MXExtensionMatchingMerger

- (_MXExtensionMatchingMerger)init
{
  v7.receiver = self;
  v7.super_class = _MXExtensionMatchingMerger;
  v2 = [(_MXExtensionMatchingMerger *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.maps.ThreeLegsMerger", v3);
    lock = v2->_lock;
    v2->_lock = v4;
  }

  return v2;
}

- (void)clearExtensions
{
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___MXExtensionMatchingMerger_clearExtensions__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_sync(lock, block);
}

- (id)receiveExtensions:(id)extensions withIndex:(unint64_t)index
{
  extensionsCopy = extensions;
  array = [MEMORY[0x1E695DF70] array];
  lock = self->_lock;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __58___MXExtensionMatchingMerger_receiveExtensions_withIndex___block_invoke;
  v16 = &unk_1E76C8CE8;
  selfCopy = self;
  v18 = extensionsCopy;
  v19 = array;
  indexCopy = index;
  v9 = array;
  v10 = extensionsCopy;
  dispatch_sync(lock, &v13);
  v11 = [v9 copy];

  return v11;
}

@end