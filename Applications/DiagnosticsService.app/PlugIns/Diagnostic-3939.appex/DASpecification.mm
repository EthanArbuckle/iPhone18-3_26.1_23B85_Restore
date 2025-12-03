@interface DASpecification
+ (id)specificationFromArray:(id)array;
- (DASpecification)initWithDictionary:(id)dictionary;
@end

@implementation DASpecification

- (DASpecification)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = DASpecification;
  v5 = [(DASpecification *)&v8 init];
  if (v5 && ![dictionaryCopy count])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

+ (id)specificationFromArray:(id)array
{
  arrayCopy = array;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [arrayCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [self alloc];
        v13 = [v12 initWithDictionary:{v11, v16}];
        if (!v13)
        {

          v5 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

@end