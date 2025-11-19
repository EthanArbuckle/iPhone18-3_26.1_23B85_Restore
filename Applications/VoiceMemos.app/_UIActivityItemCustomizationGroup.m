@interface _UIActivityItemCustomizationGroup
+ (id)createWithGroupName:(id)a3 identifier:(id)a4 customizations:(id)a5;
@end

@implementation _UIActivityItemCustomizationGroup

+ (id)createWithGroupName:(id)a3 identifier:(id)a4 customizations:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initGroupWithName:v10 identifier:v9 customizations:v8];

  return v11;
}

@end