@interface ML3Container(MPMediaAdditions)
+ (id)propertyForMPMediaEntityProperty:()MPMediaAdditions;
@end

@implementation ML3Container(MPMediaAdditions)

+ (id)propertyForMPMediaEntityProperty:()MPMediaAdditions
{
  v4 = a3;
  if (propertyForMPMediaEntityProperty__once_34 != -1)
  {
    dispatch_once(&propertyForMPMediaEntityProperty__once_34, &__block_literal_global_36);
  }

  v5 = [propertyForMPMediaEntityProperty__ML3ForMP_33 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &off_1F15953A8;
    v7 = objc_msgSendSuper2(&v10, sel_propertyForMPMediaEntityProperty_, v4);
  }

  v8 = v7;

  return v8;
}

@end