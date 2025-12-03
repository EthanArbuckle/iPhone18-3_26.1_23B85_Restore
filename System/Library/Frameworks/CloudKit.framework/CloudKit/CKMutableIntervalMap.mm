@interface CKMutableIntervalMap
- (void)addIndexes:(id)indexes withObject:(id)object;
@end

@implementation CKMutableIntervalMap

- (void)addIndexes:(id)indexes withObject:(id)object
{
  objectCopy = object;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1886B5C90;
  v13 = &unk_1E70BD200;
  selfCopy = self;
  v7 = objectCopy;
  v15 = v7;
  objc_msgSend_enumerateRangesUsingBlock_(indexes, v8, &v10);
  objc_msgSend_setDirty_(self, v9, 1, v10, v11, v12, v13, selfCopy);
}

@end