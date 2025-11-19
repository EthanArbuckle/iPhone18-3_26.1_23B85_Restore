@interface NTKParmesanPhotoProcessor
+ (void)fetchAssetsInGalleryShuffle:(_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID *)a3 completion:(id)a4;
+ (void)fetchGalleryShufflesWithCompletion:(id)a3;
+ (void)fullSizeMaskDataForAssetIdentifier:(NSString *)a3 completion:(id)a4;
+ (void)processAssetsWithIdentifiers:(NSArray *)a3 dstDir:(NSString *)a4 completion:(id)a5;
+ (void)streamAssetsInAlbum:(id)a3 updateBlock:(id)a4 completionBlock:(id)a5;
+ (void)streamAssetsInDaily:(id)a3 updateBlock:(id)a4 completionBlock:(id)a5;
+ (void)streamAssetsInShuffle:(id)a3 updateBlock:(id)a4 completionBlock:(id)a5;
- (NTKParmesanPhotoProcessor)init;
@end

@implementation NTKParmesanPhotoProcessor

+ (void)processAssetsWithIdentifiers:(NSArray *)a3 dstDir:(NSString *)a4 completion:(id)a5
{
  v9 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = sub_23BFFA540();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C008A40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23C008A48;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  sub_23BFCDE3C(0, 0, v11, &unk_23C008A50, v16);
}

+ (void)fullSizeMaskDataForAssetIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_23BFFA540();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23C008A18;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23C008A20;
  v14[5] = v13;
  v15 = a3;
  sub_23BFCDE3C(0, 0, v9, &unk_23C008A28, v14);
}

+ (void)streamAssetsInAlbum:(id)a3 updateBlock:(id)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  swift_getObjCClassMetadata();
  v11 = a3;
  sub_23BFC8EF0(v11, sub_23BFD4768, v9, sub_23BFD476C, v10);
}

+ (void)streamAssetsInShuffle:(id)a3 updateBlock:(id)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  swift_getObjCClassMetadata();
  v11 = a3;
  sub_23BFCA3BC(v11, sub_23BFD4768, v9, sub_23BFD476C, v10);
}

+ (void)fetchGalleryShufflesWithCompletion:(id)a3
{
  v5 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_23BFFA540();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23C0089F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23C0089F8;
  v12[5] = v11;
  sub_23BFCDE3C(0, 0, v7, &unk_23C008A00, v12);
}

+ (void)fetchAssetsInGalleryShuffle:(_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID *)a3 completion:(id)a4
{
  v7 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_23BFFA540();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23C008990;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23C0089A0;
  v14[5] = v13;
  v15 = a3;
  sub_23BFCDE3C(0, 0, v9, &unk_23C0089B0, v14);
}

+ (void)streamAssetsInDaily:(id)a3 updateBlock:(id)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  swift_getObjCClassMetadata();
  v11 = a3;
  sub_23BFCC67C(v11, sub_23BFD391C, v9, sub_23BFD3924, v10);
}

- (NTKParmesanPhotoProcessor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParmesanPhotoProcessor();
  return [(NTKParmesanPhotoProcessor *)&v3 init];
}

@end