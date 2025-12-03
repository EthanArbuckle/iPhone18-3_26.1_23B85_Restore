@interface _TUIAugmentedDynamicArrayInstance
- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block;
- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block;
@end

@implementation _TUIAugmentedDynamicArrayInstance

- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_C7EFC;
  v9[3] = &unk_2613E0;
  rangeCopy = range;
  selfCopy = self;
  generationCopy = generation;
  blockCopy = block;
  v8.receiver = selfCopy;
  v8.super_class = _TUIAugmentedDynamicArrayInstance;
  v6 = blockCopy;
  v7 = generationCopy;
  [(_TUIDynamicArrayInstance *)&v8 fetchDataForRange:rangeCopy.location generation:rangeCopy.length block:v7, v9];
}

- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C8020;
  v11[3] = &unk_261408;
  selfCopy = self;
  indexesCopy = indexes;
  generationCopy = generation;
  blockCopy = block;
  v10.receiver = selfCopy;
  v10.super_class = _TUIAugmentedDynamicArrayInstance;
  v7 = blockCopy;
  v8 = generationCopy;
  v9 = indexesCopy;
  [(_TUIDynamicArrayInstance *)&v10 fetchDataForIndexes:v9 generation:v8 block:v11];
}

@end