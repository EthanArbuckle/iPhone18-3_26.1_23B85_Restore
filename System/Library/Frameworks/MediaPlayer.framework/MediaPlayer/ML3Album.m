@interface ML3Album
@end

@implementation ML3Album

void __63__ML3Album_MPMediaAdditions__propertyForMPMediaEntityProperty___block_invoke()
{
  v14[15] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B2CD8];
  v13[0] = @"albumPersistentID";
  v13[1] = @"albumName";
  v1 = *MEMORY[0x1E69B29E0];
  v14[0] = v0;
  v14[1] = v1;
  v2 = *MEMORY[0x1E69B29E8];
  v13[2] = @"albumSortName";
  v13[3] = @"albumAlbumArtistPersistentID";
  v3 = *MEMORY[0x1E69B29B8];
  v14[2] = v2;
  v14[3] = v3;
  v4 = *MEMORY[0x1E69B29B0];
  v13[4] = @"albumAlbumArtist";
  v13[5] = @"albumRepresentativeItemPersistentID";
  v5 = *MEMORY[0x1E69B2A70];
  v14[4] = v4;
  v14[5] = v5;
  v6 = *MEMORY[0x1E69B2A68];
  v13[6] = @"albumCloudStatus";
  v13[7] = @"albumAlbumYear";
  v7 = *MEMORY[0x1E69B29A0];
  v14[6] = v6;
  v14[7] = v7;
  v8 = *MEMORY[0x1E69B29D0];
  v13[8] = @"albumLikedState";
  v13[9] = @"albumStoreID";
  v9 = *MEMORY[0x1E69B29F0];
  v14[8] = v8;
  v14[9] = v9;
  v13[10] = @"albumLikedStateChangedDate";
  v13[11] = @"albumDatePlayedLocal";
  v10 = *MEMORY[0x1E69B29C8];
  v14[10] = *MEMORY[0x1E69B29D8];
  v14[11] = v10;
  v13[12] = @"albumCloudLibraryID";
  v13[13] = @"_albumLikedState";
  v14[12] = *MEMORY[0x1E69B29C0];
  v14[13] = v8;
  v13[14] = @"albumCanonicalID";
  v14[14] = *MEMORY[0x1E69B29F8];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:15];
  v12 = propertyForMPMediaEntityProperty__ML3ForMP_8;
  propertyForMPMediaEntityProperty__ML3ForMP_8 = v11;
}

@end