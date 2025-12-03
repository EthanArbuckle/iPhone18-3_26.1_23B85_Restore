@interface KNAnimParameterSavedGroup
- (KNAnimParameterSavedGroup)init;
- (KNAnimParameterSavedGroup)initWithCoder:(id)coder;
- (id)parameterForName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KNAnimParameterSavedGroup

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(KNAnimParameterSavedGroup *)self name];
  [coderCopy encodeObject:name forKey:@"nm"];

  version = [(KNAnimParameterSavedGroup *)self version];
  [coderCopy encodeObject:version forKey:@"vers"];

  parameters = [(KNAnimParameterSavedGroup *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"params"];
}

- (KNAnimParameterSavedGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = KNAnimParameterSavedGroup;
  v5 = [(KNAnimParameterSavedGroup *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nm"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vers"];
    v10 = [v9 copy];
    version = v5->_version;
    v5->_version = v10;

    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v12, v13, objc_opt_class(), 0];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"params"];
    parameters = v5->_parameters;
    v5->_parameters = v15;

    if (!v5->_parameters)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      v18 = v5->_parameters;
      v5->_parameters = v17;
    }
  }

  return v5;
}

- (KNAnimParameterSavedGroup)init
{
  v6.receiver = self;
  v6.super_class = KNAnimParameterSavedGroup;
  v2 = [(KNAnimParameterSavedGroup *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    parameters = v2->_parameters;
    v2->_parameters = v3;
  }

  return v2;
}

- (id)parameterForName:(id)name
{
  nameCopy = name;
  parameters = [(KNAnimParameterSavedGroup *)self parameters];
  v6 = [parameters objectForKeyedSubscript:nameCopy];

  return v6;
}

@end