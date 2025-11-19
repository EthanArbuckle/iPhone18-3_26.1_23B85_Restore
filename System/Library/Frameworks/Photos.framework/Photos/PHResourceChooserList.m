@interface PHResourceChooserList
- (PHResourceChooserList)init;
@end

@implementation PHResourceChooserList

- (PHResourceChooserList)init
{
  v7.receiver = self;
  v7.super_class = PHResourceChooserList;
  v2 = [(PHResourceChooserList *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    visitedKeys = v2->_visitedKeys;
    v2->_visitedKeys = v3;

    sortDescriptor = v2->_sortDescriptor;
    v2->_sortDescriptor = 0;

    PHChooserListMoveFirst(v2);
  }

  return v2;
}

@end