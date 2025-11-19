@interface NSDictionary
- (id)_tcr_associatedReader;
- (void)lib_enumerateKeysAndObjectsUsingAsyncBlock:(id)a3 completionHandler:;
@end

@implementation NSDictionary

- (void)lib_enumerateKeysAndObjectsUsingAsyncBlock:(id)a3 completionHandler:
{
  v4 = v3;
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a3);
  v11 = _Block_copy(v4);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100438850;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1004366D0;
  v15[5] = v14;
  v16 = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004344E0, v15);
}

- (id)_tcr_associatedReader
{
  v8.receiver = self;
  v8.super_class = NSDictionary;
  v3 = [(NSDictionary *)&v8 _tcr_associatedReader];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [TypeCheckedDictionaryReader alloc];
    v5 = self;
    if (v4)
    {
      v9.receiver = v4;
      v9.super_class = TypeCheckedDictionaryReader;
      v6 = [(NSDictionary *)&v9 init];
      v4 = v6;
      if (v6)
      {
        objc_storeWeak(&v6[1].super.isa, v5);
      }
    }

    [(NSDictionary *)v5 _tcr_associateWithReader:v4];
    v3 = v4;
  }

  return v3;
}

@end