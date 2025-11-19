@interface ML3Genre
@end

@implementation ML3Genre

void __63__ML3Genre_MPMediaAdditions__propertyForMPMediaEntityProperty___block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B2CD8];
  v6[0] = @"genrePersistentID";
  v6[1] = @"genreName";
  v1 = *MEMORY[0x1E69B2CE8];
  v7[0] = v0;
  v7[1] = v1;
  v2 = *MEMORY[0x1E69B2A70];
  v6[2] = @"genreRepresentativeItemPersistentID";
  v6[3] = @"genreCloudStatus";
  v3 = *MEMORY[0x1E69B2A68];
  v7[2] = v2;
  v7[3] = v3;
  v6[4] = @"genreStoreID";
  v7[4] = *MEMORY[0x1E69B2CF0];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];
  v5 = propertyForMPMediaEntityProperty__ML3ForMP_28;
  propertyForMPMediaEntityProperty__ML3ForMP_28 = v4;
}

@end