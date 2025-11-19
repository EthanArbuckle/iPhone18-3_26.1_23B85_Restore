@interface ActivityDigitalSeparationSource
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)stopAllSharingWithCompletion:(id)a3;
@end

@implementation ActivityDigitalSeparationSource

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_6C40(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  v5 = (*(*(sub_2084(&qword_11500, &qword_A588) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_8E64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_725C;
  v11[6] = v9;
  v12 = self;
  sub_3BAC(0, 0, v7, &unk_A598, v11);
}

@end