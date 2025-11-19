@interface USKHelper
+ (id)node:(id)a3 propertyWithName:(id)a4 type:(id)a5 role:(id)a6;
+ (id)scene:(id)a3 nodeAtPath:(id)a4 type:(id)a5;
@end

@implementation USKHelper

+ (id)scene:(id)a3 nodeAtPath:(id)a4 type:(id)a5
{
  v5 = [a3 newNodeAtPath:a4 type:a5];

  return v5;
}

+ (id)node:(id)a3 propertyWithName:(id)a4 type:(id)a5 role:(id)a6
{
  v6 = [a3 newPropertyWithName:a4 type:a5 role:a6];

  return v6;
}

@end