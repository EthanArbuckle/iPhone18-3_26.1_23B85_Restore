@interface PrettyPropertyDescription
+ (id)describingPropertyNamed:(id)named withClassName:(id)name andValue:(id)value andRecursiveDepth:(unint64_t)depth;
+ (id)describingPropertyNamed:(id)named withClassType:(Class)type andValue:(id)value andRecursiveDepth:(unint64_t)depth;
- (PrettyPropertyDescription)initWithClassName:(id)name propertyName:(id)propertyName andPropertyValue:(id)value andRecursiveDepth:(unint64_t)depth;
@end

@implementation PrettyPropertyDescription

- (PrettyPropertyDescription)initWithClassName:(id)name propertyName:(id)propertyName andPropertyValue:(id)value andRecursiveDepth:(unint64_t)depth
{
  nameCopy = name;
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = PrettyPropertyDescription;
  propertyNameCopy = propertyName;
  v12 = [(PrettyPropertyDescription *)&v18 init];
  className = v12->_className;
  v12->_className = nameCopy;
  v14 = nameCopy;

  if (propertyNameCopy)
  {
    v15 = propertyNameCopy;
  }

  else
  {
    v15 = &stru_100318448;
  }

  objc_storeStrong(&v12->_propertyName, v15);
  propertyValue = v12->_propertyValue;
  v12->_propertyValue = valueCopy;

  return v12;
}

+ (id)describingPropertyNamed:(id)named withClassName:(id)name andValue:(id)value andRecursiveDepth:(unint64_t)depth
{
  valueCopy = value;
  nameCopy = name;
  namedCopy = named;
  v12 = [[PrettyPropertyDescription alloc] initWithClassName:nameCopy propertyName:namedCopy andPropertyValue:valueCopy andRecursiveDepth:depth];

  return v12;
}

+ (id)describingPropertyNamed:(id)named withClassType:(Class)type andValue:(id)value andRecursiveDepth:(unint64_t)depth
{
  valueCopy = value;
  namedCopy = named;
  v11 = NSStringFromClass(type);
  v12 = [PrettyPropertyDescription describingPropertyNamed:namedCopy withClassName:v11 andValue:valueCopy andRecursiveDepth:depth];

  return v12;
}

@end