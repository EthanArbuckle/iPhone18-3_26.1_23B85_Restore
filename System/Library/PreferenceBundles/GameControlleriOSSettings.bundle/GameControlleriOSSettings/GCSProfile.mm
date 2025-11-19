@interface GCSProfile
- (GCSProfile)initWithName:(id)a3 sfSymbolsName:(id)a4 customizable:(BOOL)a5 uuid:(id)a6;
- (id)directionPadMappingForPhysicalPress:(id)a3;
- (id)elementMappingForPhysicalPress:(id)a3;
- (id)logicalButtonForPhysicalPressOf:(id)a3 onPhysicalInputProfile:(id)a4;
- (id)logicalDirectionPadForPhysicalPressOf:(id)a3 onPhysicalInputProfile:(id)a4;
- (id)logicalElementForPhysicalPressOf:(id)a3 onPhysicalInputProfile:(id)a4;
@end

@implementation GCSProfile

- (id)logicalElementForPhysicalPressOf:(id)a3 onPhysicalInputProfile:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GCSProfile *)self elementMappings];
  v9 = [v7 primaryAlias];

  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v6 elements];
    v12 = [v10 mappingKey];
    v13 = [v11 objectForKeyedSubscript:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)logicalButtonForPhysicalPressOf:(id)a3 onPhysicalInputProfile:(id)a4
{
  v4 = [(GCSProfile *)self logicalElementForPhysicalPressOf:a3 onPhysicalInputProfile:a4];
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

- (id)logicalDirectionPadForPhysicalPressOf:(id)a3 onPhysicalInputProfile:(id)a4
{
  v4 = [(GCSProfile *)self logicalElementForPhysicalPressOf:a3 onPhysicalInputProfile:a4];
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

- (id)elementMappingForPhysicalPress:(id)a3
{
  v4 = a3;
  v5 = [(GCSProfile *)self elementMappings];
  v6 = [v4 primaryAlias];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (id)directionPadMappingForPhysicalPress:(id)a3
{
  v4 = a3;
  v5 = [(GCSProfile *)self elementMappings];
  v6 = [v4 primaryAlias];

  v7 = [v5 objectForKeyedSubscript:v6];

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

- (GCSProfile)initWithName:(id)a3 sfSymbolsName:(id)a4 customizable:(BOOL)a5 uuid:(id)a6
{
  v7 = a5;
  v8 = sub_DC40(&qword_117558);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_D7C18();
  v13 = v12;
  v14 = sub_D7C18();
  v16 = v15;
  if (a6)
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

  return sub_D2554(v11, v13, v14, v16, v7, v10);
}

@end