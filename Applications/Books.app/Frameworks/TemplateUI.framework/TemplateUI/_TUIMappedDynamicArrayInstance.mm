@interface _TUIMappedDynamicArrayInstance
- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block;
- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block;
@end

@implementation _TUIMappedDynamicArrayInstance

- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block
{
  length = range.length;
  location = range.location;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_71C74;
  v10[3] = &unk_25EAF0;
  selfCopy = self;
  blockCopy = block;
  v9.receiver = selfCopy;
  v9.super_class = _TUIMappedDynamicArrayInstance;
  v8 = blockCopy;
  [(_TUIDynamicArrayInstance *)&v9 fetchDataForRange:location generation:length block:generation, v10];
}

- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_71DA4;
  v9[3] = &unk_25EAF0;
  selfCopy = self;
  blockCopy = block;
  v8.receiver = selfCopy;
  v8.super_class = _TUIMappedDynamicArrayInstance;
  v7 = blockCopy;
  [(_TUIDynamicArrayInstance *)&v8 fetchDataForIndexes:indexes generation:generation block:v9];
}

@end