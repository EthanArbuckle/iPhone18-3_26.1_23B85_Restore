@interface ML3Artist
@end

@implementation ML3Artist

void __64__ML3Artist_MPMediaAdditions__propertyForMPMediaEntityProperty___block_invoke()
{
  v9[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B2CD8];
  v8[0] = @"artistPersistentID";
  v8[1] = @"artistName";
  v1 = *MEMORY[0x1E69B2A10];
  v9[0] = v0;
  v9[1] = v1;
  v2 = *MEMORY[0x1E69B2A18];
  v8[2] = @"artistSortName";
  v8[3] = @"artistRepresentativeItemPersistentID";
  v3 = *MEMORY[0x1E69B2A70];
  v9[2] = v2;
  v9[3] = v3;
  v4 = *MEMORY[0x1E69B2A68];
  v8[4] = @"artistCloudStatus";
  v8[5] = @"artistStoreID";
  v5 = *MEMORY[0x1E69B2A28];
  v9[4] = v4;
  v9[5] = v5;
  v8[6] = @"artistCanonicalID";
  v9[6] = *MEMORY[0x1E69B2A20];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:7];
  v7 = propertyForMPMediaEntityProperty__ML3ForMP_13;
  propertyForMPMediaEntityProperty__ML3ForMP_13 = v6;
}

@end