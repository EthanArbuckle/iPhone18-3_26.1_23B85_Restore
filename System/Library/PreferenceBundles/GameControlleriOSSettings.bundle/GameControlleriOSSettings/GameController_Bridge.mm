@interface GameController_Bridge
+ (id)gcController_persistentIdentifier:(id)identifier;
+ (id)gcsController_initWithController:(id)controller;
+ (id)gcsElement_initWithControllerEmenet:(id)emenet;
@end

@implementation GameController_Bridge

+ (id)gcController_persistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = [identifierCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    identifier2 = [identifierCopy identifier];
  }

  else
  {
    identifier2 = 0;
  }

  return identifier2;
}

+ (id)gcsController_initWithController:(id)controller
{
  controllerCopy = controller;
  v4 = [[GCSController alloc] initWithController:controllerCopy];

  return v4;
}

+ (id)gcsElement_initWithControllerEmenet:(id)emenet
{
  emenetCopy = emenet;
  v4 = [[GCSElement alloc] initWithElement:emenetCopy];

  return v4;
}

@end