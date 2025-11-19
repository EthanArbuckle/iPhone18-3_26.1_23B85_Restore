@interface GKComponent
- (GKComponent)init;
- (GKComponent)initWithCoder:(id)a3;
- (GKComponent)initWithName:(id)a3;
- (NSString)componentName;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setUsesPerComponentUpdate:(BOOL)a3;
@end

@implementation GKComponent

- (GKComponent)init
{
  v7.receiver = self;
  v7.super_class = GKComponent;
  v2 = [(GKComponent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_entity = 0;
    v2->_usesPerComponentUpdateCount = 0;
    componentSystem = v2->_componentSystem;
    v2->_componentSystem = 0;

    componentName = v3->_componentName;
    v3->_componentName = 0;
  }

  return v3;
}

- (GKComponent)initWithCoder:(id)a3
{
  v36[10] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKComponent *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v36[2] = objc_opt_class();
    v36[3] = objc_opt_class();
    v36[4] = objc_opt_class();
    v36[5] = objc_opt_class();
    v36[6] = objc_opt_class();
    v36[7] = objc_opt_class();
    v36[8] = objc_opt_class();
    v36[9] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:10];
    [v6 addObjectsFromArray:v7];

    v8 = [v4 allowedClasses];
    [v6 unionSet:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_componentName"];
    componentName = v5->_componentName;
    v5->_componentName = v9;

    v11 = [v4 decodeObjectOfClasses:v6 forKey:@"_propertyNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v11;
      v28 = v6;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v11;
      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
        v29 = *v32;
        do
        {
          v15 = 0;
          do
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v31 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v4 decodeObjectForKey:v16];
              if (v17)
              {
                v18 = v4;
                v19 = MEMORY[0x277CCACA8];
                [v16 substringToIndex:1];
                v21 = v20 = v5;
                v22 = [v21 capitalizedString];
                v23 = [v16 substringFromIndex:1];
                v24 = [v19 stringWithFormat:@"set%@%@:", v22, v23];

                v5 = v20;
                NSSelectorFromString(v24);
                if (objc_opt_respondsToSelector())
                {
                  [(GKComponent *)v20 setValue:v17 forKey:v16];
                }

                else
                {
                  NSLog(&cfstr_CannotSetIniti.isa, v20->_componentName, v16);
                }

                v4 = v18;
                v14 = v29;
              }
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v13);
      }

      v11 = v27;
      v6 = v28;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  componentName = self->_componentName;
  if (componentName)
  {
    [a3 encodeObject:componentName forKey:@"_componentName"];
  }
}

- (id)copy
{
  v3 = MEMORY[0x23EE6C350](self, a2);

  return [(GKComponent *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (GKComponent)initWithName:(id)a3
{
  v5 = a3;
  v6 = [(GKComponent *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_componentName, a3);
  }

  return v7;
}

- (void)setUsesPerComponentUpdate:(BOOL)a3
{
  usesPerComponentUpdateCount = self->_usesPerComponentUpdateCount;
  if (a3)
  {
    v4 = usesPerComponentUpdateCount + 1;
  }

  else
  {
    v4 = usesPerComponentUpdateCount - 1;
  }

  self->_usesPerComponentUpdateCount = v4;
}

- (NSString)componentName
{
  componentName = self->_componentName;
  if (componentName)
  {
    v3 = componentName;
  }

  else
  {
    v5 = objc_opt_class();
    v3 = NSStringFromClass(v5);
  }

  return v3;
}

@end