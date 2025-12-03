@interface GCSProfile
- (GCSProfile)initWithName:(id)name sfSymbolsName:(id)symbolsName customizable:(BOOL)customizable uuid:(id)uuid;
- (id)directionPadMappingForPhysicalPress:(id)press;
- (id)elementMappingForPhysicalPress:(id)press;
- (id)logicalButtonForPhysicalPressOf:(id)of onPhysicalInputProfile:(id)profile;
- (id)logicalDirectionPadForPhysicalPressOf:(id)of onPhysicalInputProfile:(id)profile;
- (id)logicalElementForPhysicalPressOf:(id)of onPhysicalInputProfile:(id)profile;
@end

@implementation GCSProfile

- (id)logicalElementForPhysicalPressOf:(id)of onPhysicalInputProfile:(id)profile
{
  profileCopy = profile;
  ofCopy = of;
  elementMappings = [(GCSProfile *)self elementMappings];
  primaryAlias = [ofCopy primaryAlias];

  v10 = [elementMappings objectForKeyedSubscript:primaryAlias];

  if (v10)
  {
    elements = [profileCopy elements];
    mappingKey = [v10 mappingKey];
    v13 = [elements objectForKeyedSubscript:mappingKey];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)logicalButtonForPhysicalPressOf:(id)of onPhysicalInputProfile:(id)profile
{
  v4 = [(GCSProfile *)self logicalElementForPhysicalPressOf:of onPhysicalInputProfile:profile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)logicalDirectionPadForPhysicalPressOf:(id)of onPhysicalInputProfile:(id)profile
{
  v4 = [(GCSProfile *)self logicalElementForPhysicalPressOf:of onPhysicalInputProfile:profile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)elementMappingForPhysicalPress:(id)press
{
  pressCopy = press;
  elementMappings = [(GCSProfile *)self elementMappings];
  primaryAlias = [pressCopy primaryAlias];

  v7 = [elementMappings objectForKeyedSubscript:primaryAlias];

  return v7;
}

- (id)directionPadMappingForPhysicalPress:(id)press
{
  pressCopy = press;
  elementMappings = [(GCSProfile *)self elementMappings];
  primaryAlias = [pressCopy primaryAlias];

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

- (GCSProfile)initWithName:(id)name sfSymbolsName:(id)symbolsName customizable:(BOOL)customizable uuid:(id)uuid
{
  customizableCopy = customizable;
  v8 = sub_DC40(&qword_117558);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_D7C18();
  v13 = v12;
  v14 = sub_D7C18();
  v16 = v15;
  if (uuid)
  {
    sub_D6978();
    v17 = sub_D6998();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  }

  else
  {
    v18 = sub_D6998();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  }

  return sub_D2554(v11, v13, v14, v16, customizableCopy, v10);
}

@end