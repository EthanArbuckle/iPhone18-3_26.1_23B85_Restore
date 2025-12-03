@interface _UIActivityItemCustomizationGroup
+ (id)createWithGroupName:(id)name identifier:(id)identifier customizations:(id)customizations;
@end

@implementation _UIActivityItemCustomizationGroup

+ (id)createWithGroupName:(id)name identifier:(id)identifier customizations:(id)customizations
{
  customizationsCopy = customizations;
  identifierCopy = identifier;
  nameCopy = name;
  v11 = [[self alloc] _initGroupWithName:nameCopy identifier:identifierCopy customizations:customizationsCopy];

  return v11;
}

@end