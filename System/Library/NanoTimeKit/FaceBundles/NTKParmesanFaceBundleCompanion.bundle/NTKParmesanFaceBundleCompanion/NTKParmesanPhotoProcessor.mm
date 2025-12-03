@interface NTKParmesanPhotoProcessor
+ (void)fetchAssetsInGalleryShuffle:(_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID *)shuffle completion:(id)completion;
+ (void)fetchGalleryShufflesWithCompletion:(id)completion;
+ (void)fullSizeMaskDataForAssetIdentifier:(NSString *)identifier completion:(id)completion;
+ (void)processAssetsWithIdentifiers:(NSArray *)identifiers dstDir:(NSString *)dir completion:(id)completion;
+ (void)streamAssetsInAlbum:(id)album updateBlock:(id)block completionBlock:(id)completionBlock;
+ (void)streamAssetsInDaily:(id)daily updateBlock:(id)block completionBlock:(id)completionBlock;
+ (void)streamAssetsInShuffle:(id)shuffle updateBlock:(id)block completionBlock:(id)completionBlock;
- (NTKParmesanPhotoProcessor)init;
@end

@implementation NTKParmesanPhotoProcessor

+ (void)processAssetsWithIdentifiers:(NSArray *)identifiers dstDir:(NSString *)dir completion:(id)completion
{
  v9 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifiers;
  v13[3] = dir;
  v13[4] = v12;
  v13[5] = self;
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
  identifiersCopy = identifiers;
  dirCopy = dir;
  sub_23BFCDE3C(0, 0, v11, &unk_23C008A50, v16);
}

+ (void)fullSizeMaskDataForAssetIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
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
  identifierCopy = identifier;
  sub_23BFCDE3C(0, 0, v9, &unk_23C008A28, v14);
}

+ (void)streamAssetsInAlbum:(id)album updateBlock:(id)block completionBlock:(id)completionBlock
{
  v7 = _Block_copy(block);
  v8 = _Block_copy(completionBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  swift_getObjCClassMetadata();
  albumCopy = album;
  sub_23BFC8EF0(albumCopy, sub_23BFD4768, v9, sub_23BFD476C, v10);
}

+ (void)streamAssetsInShuffle:(id)shuffle updateBlock:(id)block completionBlock:(id)completionBlock
{
  v7 = _Block_copy(block);
  v8 = _Block_copy(completionBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  swift_getObjCClassMetadata();
  shuffleCopy = shuffle;
  sub_23BFCA3BC(shuffleCopy, sub_23BFD4768, v9, sub_23BFD476C, v10);
}

+ (void)fetchGalleryShufflesWithCompletion:(id)completion
{
  v5 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
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

+ (void)fetchAssetsInGalleryShuffle:(_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID *)shuffle completion:(id)completion
{
  v7 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = shuffle;
  v11[3] = v10;
  v11[4] = self;
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
  shuffleCopy = shuffle;
  sub_23BFCDE3C(0, 0, v9, &unk_23C0089B0, v14);
}

+ (void)streamAssetsInDaily:(id)daily updateBlock:(id)block completionBlock:(id)completionBlock
{
  v7 = _Block_copy(block);
  v8 = _Block_copy(completionBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  swift_getObjCClassMetadata();
  dailyCopy = daily;
  sub_23BFCC67C(dailyCopy, sub_23BFD391C, v9, sub_23BFD3924, v10);
}

- (NTKParmesanPhotoProcessor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParmesanPhotoProcessor();
  return [(NTKParmesanPhotoProcessor *)&v3 init];
}

@end