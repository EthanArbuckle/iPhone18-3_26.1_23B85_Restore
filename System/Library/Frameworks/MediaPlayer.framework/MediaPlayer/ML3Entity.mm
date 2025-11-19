@interface ML3Entity
@end

@implementation ML3Entity

void __73__ML3Entity_MPMediaAdditions__spotlightPropertyForMPMediaEntityProperty___block_invoke()
{
  v7[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B31E8];
  v6[0] = @"title";
  v6[1] = @"albumTitle";
  v1 = *MEMORY[0x1E69B31D0];
  v6[2] = @"albumArtist";
  v6[3] = @"artist";
  v2 = *MEMORY[0x1E69B31D8];
  v7[2] = v1;
  v7[3] = v2;
  v3 = *MEMORY[0x1E69B31C8];
  v6[4] = @"composer";
  v6[5] = @"podcastTitle";
  v7[0] = v0;
  v7[1] = v3;
  v7[4] = *MEMORY[0x1E69B31E0];
  v7[5] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v5 = spotlightPropertyForMPMediaEntityProperty__ML3ForMP;
  spotlightPropertyForMPMediaEntityProperty__ML3ForMP = v4;
}

void __64__ML3Entity_MPMediaAdditions__propertyForMPMediaEntityProperty___block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B2CD8];
  v6[0] = @"persistentID";
  v6[1] = @"keepLocal";
  v1 = *MEMORY[0x1E69B2CB8];
  v7[0] = v0;
  v7[1] = v1;
  v2 = *MEMORY[0x1E69B2CC8];
  v6[2] = @"keepLocalStatus";
  v6[3] = @"keepLocalStatusReason";
  v3 = *MEMORY[0x1E69B2CD0];
  v7[2] = v2;
  v7[3] = v3;
  v6[4] = @"keepLocalConstraints";
  v7[4] = *MEMORY[0x1E69B2CC0];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];
  v5 = propertyForMPMediaEntityProperty__ML3ForMP;
  propertyForMPMediaEntityProperty__ML3ForMP = v4;
}

@end