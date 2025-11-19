@interface GameController_Bridge
+ (id)gcController_persistentIdentifier:(id)a3;
+ (id)gcsController_initWithController:(id)a3;
+ (id)gcsElement_initWithControllerEmenet:(id)a3;
@end

@implementation GameController_Bridge

+ (id)gcController_persistentIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)gcsController_initWithController:(id)a3
{
  v3 = a3;
  v4 = [[GCSController alloc] initWithController:v3];

  return v4;
}

+ (id)gcsElement_initWithControllerEmenet:(id)a3
{
  v3 = a3;
  v4 = [[GCSElement alloc] initWithElement:v3];

  return v4;
}

@end