@interface GCSProfile(GameController)
- (id)directionPadMappingForPhysicalPress:()GameController;
- (id)elementMappingForPhysicalPress:()GameController;
- (id)logicalButtonForPhysicalPressOf:()GameController onPhysicalInputProfile:;
- (id)logicalDirectionPadForPhysicalPressOf:()GameController onPhysicalInputProfile:;
- (id)logicalElementForPhysicalPressOf:()GameController onPhysicalInputProfile:;
@end

@implementation GCSProfile(GameController)

- (id)logicalElementForPhysicalPressOf:()GameController onPhysicalInputProfile:
{
  v6 = a4;
  v7 = a3;
  elementMappings = [self elementMappings];
  primaryAlias = [v7 primaryAlias];

  v10 = [elementMappings objectForKeyedSubscript:primaryAlias];

  if (v10)
  {
    elements = [v6 elements];
    mappingKey = [v10 mappingKey];
    v13 = [elements objectForKeyedSubscript:mappingKey];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)logicalButtonForPhysicalPressOf:()GameController onPhysicalInputProfile:
{
  v1 = [self logicalElementForPhysicalPressOf:? onPhysicalInputProfile:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)logicalDirectionPadForPhysicalPressOf:()GameController onPhysicalInputProfile:
{
  v1 = [self logicalElementForPhysicalPressOf:? onPhysicalInputProfile:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)elementMappingForPhysicalPress:()GameController
{
  v4 = a3;
  elementMappings = [self elementMappings];
  primaryAlias = [v4 primaryAlias];

  v7 = [elementMappings objectForKeyedSubscript:primaryAlias];

  return v7;
}

- (id)directionPadMappingForPhysicalPress:()GameController
{
  v4 = a3;
  elementMappings = [self elementMappings];
  primaryAlias = [v4 primaryAlias];

  v7 = [elementMappings objectForKeyedSubscript:primaryAlias];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end