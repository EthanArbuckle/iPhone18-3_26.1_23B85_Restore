@interface ML3AlbumArtist
@end

@implementation ML3AlbumArtist

void __69__ML3AlbumArtist_MPMediaAdditions__propertyForMPMediaEntityProperty___block_invoke()
{
  v11[10] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B2CD8];
  v10[0] = @"albumArtistPersistentID";
  v10[1] = @"albumArtistName";
  v1 = *MEMORY[0x1E69B2988];
  v11[0] = v0;
  v11[1] = v1;
  v2 = *MEMORY[0x1E69B2990];
  v10[2] = @"albumArtistSortName";
  v10[3] = @"albumArtistRepresentativeItemPersistentID";
  v3 = *MEMORY[0x1E69B2A70];
  v11[2] = v2;
  v11[3] = v3;
  v4 = *MEMORY[0x1E69B2A68];
  v10[4] = @"albumArtistCloudStatus";
  v10[5] = @"albumArtistStoreID";
  v5 = *MEMORY[0x1E69B2998];
  v11[4] = v4;
  v11[5] = v5;
  v6 = *MEMORY[0x1E69B2970];
  v10[6] = @"albumArtistCloudUniversalLibraryID";
  v10[7] = @"albumArtistFavoriteState";
  v7 = *MEMORY[0x1E69B2978];
  v10[8] = @"albumArtistDateFavorited";
  v10[9] = @"_albumArtistLikedState";
  v11[6] = v6;
  v11[7] = v7;
  v11[8] = *MEMORY[0x1E69B2980];
  v11[9] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:10];
  v9 = propertyForMPMediaEntityProperty__ML3ForMP_18;
  propertyForMPMediaEntityProperty__ML3ForMP_18 = v8;
}

@end