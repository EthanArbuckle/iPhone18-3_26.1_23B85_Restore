@interface GPGenerationRecipeData
- (GPGenerationRecipeData)init;
- (GPGenerationRecipeData)initWithCoder:(id)coder;
- (GPGenerationRecipeData)initWithUnderlyingData:(id)data;
- (NSData)underlyingData;
- (id)getDrawOnImageRecipe;
- (id)getRecipeInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GPGenerationRecipeData

- (GPGenerationRecipeData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"underlyingData"];

  v6 = [(GPGenerationRecipeData *)self initWithUnderlyingData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  underlyingData = [(GPGenerationRecipeData *)self underlyingData];
  [coderCopy encodeObject:underlyingData forKey:@"underlyingData"];
}

- (NSData)underlyingData
{
  v2 = *(self + OBJC_IVAR___GPGenerationRecipeData_underlyingData);
  v3 = *(self + OBJC_IVAR___GPGenerationRecipeData_underlyingData + 8);
  sub_1D2A479B4(v2, v3);
  v4 = sub_1D2AC5F14();
  sub_1D2A47944(v2, v3);

  return v4;
}

- (GPGenerationRecipeData)initWithUnderlyingData:(id)data
{
  dataCopy = data;
  v5 = sub_1D2AC5F24();
  v7 = v6;

  v8 = (self + OBJC_IVAR___GPGenerationRecipeData_underlyingData);
  *v8 = v5;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = GPGenerationRecipeData;
  return [(GPGenerationRecipeData *)&v10 init];
}

- (id)getRecipeInfo
{
  selfCopy = self;
  v3 = GPGenerationRecipeData.getRecipeInfo()();

  if (v3)
  {
    v4 = sub_1D2AC6B94();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getDrawOnImageRecipe
{
  selfCopy = self;
  GPGenerationRecipeData.getDrawOnImageRecipe()(v3);
  v5 = v4;

  return v5;
}

- (GPGenerationRecipeData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end