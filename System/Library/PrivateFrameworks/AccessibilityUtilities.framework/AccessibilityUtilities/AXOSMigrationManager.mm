@interface AXOSMigrationManager
- (AXOSMigrationManager)init;
- (BOOL)_colorProbablyEqual:(id)equal :(id)a4;
- (BOOL)applyPackage:(id)package;
- (CGColor)convertColor:(int64_t)color;
- (id)_convertTextEdgeStyle:(id)style;
- (id)_createCaptionStyles;
- (id)generatePackage;
- (int64_t)_convertCaptionColor:(CGColor *)color;
- (int64_t)convertEdgeStyle:(int64_t)style;
@end

@implementation AXOSMigrationManager

- (BOOL)applyPackage:(id)package
{
  packageCopy = package;
  selfCopy = self;
  sub_18B29F0E4(packageCopy);

  return 1;
}

- (int64_t)convertEdgeStyle:(int64_t)style
{
  if ((style - 1) > 3)
  {
    return 1;
  }

  else
  {
    return qword_18B2FAFC8[style - 1];
  }
}

- (CGColor)convertColor:(int64_t)color
{
  v3 = sub_18B2A2494(color);

  return v3;
}

- (id)generatePackage
{
  selfCopy = self;
  v3 = sub_18B2A0EF4();

  return v3;
}

- (BOOL)_colorProbablyEqual:(id)equal :(id)a4
{
  v5 = sub_18B2C99F4();
  v6 = sub_18B2C99F4();
  selfCopy = self;
  v8 = sub_18B2A1600(v5, v6);

  return v8 & 1;
}

- (int64_t)_convertCaptionColor:(CGColor *)color
{
  colorCopy = color;
  selfCopy = self;
  v6 = sub_18B2A1748();

  return v6;
}

- (id)_createCaptionStyles
{
  selfCopy = self;
  sub_18B2A1AD4();

  sub_18B2862C0(0, &qword_1EA9B73C8);
  v3 = sub_18B2C99D4();

  return v3;
}

- (id)_convertTextEdgeStyle:(id)style
{
  styleCopy = style;
  [styleCopy integerValue];
  sub_18B2862C0(0, &qword_1ED653B98);
  v4 = sub_18B2C9BE4();

  return v4;
}

- (AXOSMigrationManager)init
{
  v3.receiver = self;
  v3.super_class = AXOSMigrationManager;
  return [(AXOSMigrationManager *)&v3 init];
}

@end