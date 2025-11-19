@interface MPModelLibraryRequest
- (id)playbackIntentFor:(id)a3 itemKind:(id)a4 itemProperties:(id)a5;
- (id)requestForDetailFor:(id)a3 kind:(id)a4 requestedProperties:(id)a5;
- (void)updateAlbumLibraryDataIfNeededWithModelAlbum:(id)a3 containerDetailViewModel:(id)a4;
@end

@implementation MPModelLibraryRequest

- (id)requestForDetailFor:(id)a3 kind:(id)a4 requestedProperties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_20FFB0(v8, v9, v10);

  return v12;
}

- (void)updateAlbumLibraryDataIfNeededWithModelAlbum:(id)a3 containerDetailViewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2101B8(v6, v7);
}

- (id)playbackIntentFor:(id)a3 itemKind:(id)a4 itemProperties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_210AB4(v8, v9, v10);

  return v12;
}

@end