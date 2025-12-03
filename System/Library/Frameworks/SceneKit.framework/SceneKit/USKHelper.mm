@interface USKHelper
+ (id)node:(id)node propertyWithName:(id)name type:(id)type role:(id)role;
+ (id)scene:(id)scene nodeAtPath:(id)path type:(id)type;
@end

@implementation USKHelper

+ (id)scene:(id)scene nodeAtPath:(id)path type:(id)type
{
  v5 = [scene newNodeAtPath:path type:type];

  return v5;
}

+ (id)node:(id)node propertyWithName:(id)name type:(id)type role:(id)role
{
  v6 = [node newPropertyWithName:name type:type role:role];

  return v6;
}

@end