@interface n4cyKQis9m01XZsR
- (id)toDictionary;
- (n4cyKQis9m01XZsR)initWithDictionary:(id)dictionary;
@end

@implementation n4cyKQis9m01XZsR

- (n4cyKQis9m01XZsR)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"_classType"];
  v6 = [v5 isEqualToString:@"name"];

  if (v6)
  {
    v13.receiver = self;
    v13.super_class = n4cyKQis9m01XZsR;
    v7 = [(n4cyKQis9m01XZsR *)&v13 init];
    if (v7)
    {
      v8 = [dictionaryCopy objectForKey:@"firstName"];
      [(n4cyKQis9m01XZsR *)v7 setFirstName:v8];

      v9 = [dictionaryCopy objectForKey:@"lastName"];
      [(n4cyKQis9m01XZsR *)v7 setLastName:v9];

      v10 = [dictionaryCopy objectForKey:@"fullName"];
      [(n4cyKQis9m01XZsR *)v7 setFullName:v10];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)toDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:@"name" forKeyedSubscript:@"_classType"];
  firstName = self->_firstName;
  if (firstName)
  {
    [v3 setObject:firstName forKeyedSubscript:@"firstName"];
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v3 setObject:lastName forKeyedSubscript:@"lastName"];
  }

  fullName = self->_fullName;
  if (fullName)
  {
    [v3 setObject:fullName forKeyedSubscript:@"fullName"];
  }

  return v3;
}

@end