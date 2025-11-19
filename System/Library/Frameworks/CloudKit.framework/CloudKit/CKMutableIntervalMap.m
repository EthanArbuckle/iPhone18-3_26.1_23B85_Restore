@interface CKMutableIntervalMap
- (void)addIndexes:(id)a3 withObject:(id)a4;
@end

@implementation CKMutableIntervalMap

- (void)addIndexes:(id)a3 withObject:(id)a4
{
  v6 = a4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1886B5C90;
  v13 = &unk_1E70BD200;
  v14 = self;
  v7 = v6;
  v15 = v7;
  objc_msgSend_enumerateRangesUsingBlock_(a3, v8, &v10);
  objc_msgSend_setDirty_(self, v9, 1, v10, v11, v12, v13, v14);
}

@end