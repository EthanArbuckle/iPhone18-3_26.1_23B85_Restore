@interface ML3ContainerItem
@end

@implementation ML3ContainerItem

void __71__ML3ContainerItem_MPMediaAdditions__propertyForMPMediaEntityProperty___block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B2AB0];
  v4[0] = @"entryUniversalIdentifier";
  v4[1] = @"entryPositionUniversalIdentifier";
  v1 = *MEMORY[0x1E69B2AA8];
  v5[0] = v0;
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = propertyForMPMediaEntityProperty__ML3ForMP_38;
  propertyForMPMediaEntityProperty__ML3ForMP_38 = v2;
}

@end