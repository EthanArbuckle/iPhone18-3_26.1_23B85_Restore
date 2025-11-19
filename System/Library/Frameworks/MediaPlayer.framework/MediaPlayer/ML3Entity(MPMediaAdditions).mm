@interface ML3Entity(MPMediaAdditions)
+ (id)propertyForMPMediaEntityProperty:()MPMediaAdditions;
+ (id)spotlightPropertyForMPMediaEntityProperty:()MPMediaAdditions;
@end

@implementation ML3Entity(MPMediaAdditions)

+ (id)spotlightPropertyForMPMediaEntityProperty:()MPMediaAdditions
{
  v3 = spotlightPropertyForMPMediaEntityProperty__once;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&spotlightPropertyForMPMediaEntityProperty__once, &__block_literal_global_2);
  }

  v5 = [spotlightPropertyForMPMediaEntityProperty__ML3ForMP objectForKeyedSubscript:v4];

  return v5;
}

+ (id)propertyForMPMediaEntityProperty:()MPMediaAdditions
{
  v3 = propertyForMPMediaEntityProperty__once;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&propertyForMPMediaEntityProperty__once, &__block_literal_global_9439);
  }

  v5 = [propertyForMPMediaEntityProperty__ML3ForMP objectForKeyedSubscript:v4];

  return v5;
}

@end