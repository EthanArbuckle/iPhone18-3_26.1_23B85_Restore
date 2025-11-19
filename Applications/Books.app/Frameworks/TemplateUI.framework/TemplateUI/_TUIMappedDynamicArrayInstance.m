@interface _TUIMappedDynamicArrayInstance
- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5;
- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5;
@end

@implementation _TUIMappedDynamicArrayInstance

- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5
{
  length = a3.length;
  location = a3.location;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_71C74;
  v10[3] = &unk_25EAF0;
  v11 = self;
  v12 = a5;
  v9.receiver = v11;
  v9.super_class = _TUIMappedDynamicArrayInstance;
  v8 = v12;
  [(_TUIDynamicArrayInstance *)&v9 fetchDataForRange:location generation:length block:a4, v10];
}

- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_71DA4;
  v9[3] = &unk_25EAF0;
  v10 = self;
  v11 = a5;
  v8.receiver = v10;
  v8.super_class = _TUIMappedDynamicArrayInstance;
  v7 = v11;
  [(_TUIDynamicArrayInstance *)&v8 fetchDataForIndexes:a3 generation:a4 block:v9];
}

@end