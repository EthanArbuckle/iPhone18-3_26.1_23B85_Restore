@interface PrettyPropertyDescription
+ (id)describingPropertyNamed:(id)a3 withClassName:(id)a4 andValue:(id)a5 andRecursiveDepth:(unint64_t)a6;
+ (id)describingPropertyNamed:(id)a3 withClassType:(Class)a4 andValue:(id)a5 andRecursiveDepth:(unint64_t)a6;
- (PrettyPropertyDescription)initWithClassName:(id)a3 propertyName:(id)a4 andPropertyValue:(id)a5 andRecursiveDepth:(unint64_t)a6;
@end

@implementation PrettyPropertyDescription

- (PrettyPropertyDescription)initWithClassName:(id)a3 propertyName:(id)a4 andPropertyValue:(id)a5 andRecursiveDepth:(unint64_t)a6
{
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = PrettyPropertyDescription;
  v11 = a4;
  v12 = [(PrettyPropertyDescription *)&v18 init];
  className = v12->_className;
  v12->_className = v9;
  v14 = v9;

  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = &stru_100318448;
  }

  objc_storeStrong(&v12->_propertyName, v15);
  propertyValue = v12->_propertyValue;
  v12->_propertyValue = v10;

  return v12;
}

+ (id)describingPropertyNamed:(id)a3 withClassName:(id)a4 andValue:(id)a5 andRecursiveDepth:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[PrettyPropertyDescription alloc] initWithClassName:v10 propertyName:v11 andPropertyValue:v9 andRecursiveDepth:a6];

  return v12;
}

+ (id)describingPropertyNamed:(id)a3 withClassType:(Class)a4 andValue:(id)a5 andRecursiveDepth:(unint64_t)a6
{
  v9 = a5;
  v10 = a3;
  v11 = NSStringFromClass(a4);
  v12 = [PrettyPropertyDescription describingPropertyNamed:v10 withClassName:v11 andValue:v9 andRecursiveDepth:a6];

  return v12;
}

@end