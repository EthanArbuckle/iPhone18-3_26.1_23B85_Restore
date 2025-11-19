@interface _TUIAugmentedDynamicArrayInstance
- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5;
- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5;
@end

@implementation _TUIAugmentedDynamicArrayInstance

- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_C7EFC;
  v9[3] = &unk_2613E0;
  v13 = a3;
  v10 = self;
  v11 = a4;
  v12 = a5;
  v8.receiver = v10;
  v8.super_class = _TUIAugmentedDynamicArrayInstance;
  v6 = v12;
  v7 = v11;
  [(_TUIDynamicArrayInstance *)&v8 fetchDataForRange:v13.location generation:v13.length block:v7, v9];
}

- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C8020;
  v11[3] = &unk_261408;
  v12 = self;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v10.receiver = v12;
  v10.super_class = _TUIAugmentedDynamicArrayInstance;
  v7 = v15;
  v8 = v14;
  v9 = v13;
  [(_TUIDynamicArrayInstance *)&v10 fetchDataForIndexes:v9 generation:v8 block:v11];
}

@end