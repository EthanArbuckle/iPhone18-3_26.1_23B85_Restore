@interface ML3Composer(MPMediaAdditions)
+ (id)propertyForMPMediaEntityProperty:()MPMediaAdditions;
@end

@implementation ML3Composer(MPMediaAdditions)

+ (id)propertyForMPMediaEntityProperty:()MPMediaAdditions
{
  v4 = a3;
  if (propertyForMPMediaEntityProperty__once_24 != -1)
  {
    dispatch_once(&propertyForMPMediaEntityProperty__once_24, &__block_literal_global_26);
  }

  v5 = [propertyForMPMediaEntityProperty__ML3ForMP_23 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &off_1F1595168;
    v7 = objc_msgSendSuper2(&v10, sel_propertyForMPMediaEntityProperty_, v4);
  }

  v8 = v7;

  return v8;
}

@end