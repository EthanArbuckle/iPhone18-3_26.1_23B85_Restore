@interface CASDFEffect
+ (id)allEffectsClasses;
+ (id)defaultValueForKey:(id)a3;
+ (void)CAMLParserStartElement:(id)a3;
- (CASDFEffect)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)valueForKey:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation CASDFEffect

- (CASDFEffect)init
{
  v15 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CASDFEffect;
  v2 = [(CASDFEffect *)&v9 init];
  if (v2)
  {
    v3 = [objc_opt_class() defaultValues];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          -[CASDFEffect setValue:forKey:](v2, "setValue:forKey:", [v3 objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)], *(*(&v11 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v5);
    }
  }

  return v2;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v7 = +[CASDFEffect superclass];

  CAObject_setValueForKey(self, v7, a3, a4);
}

- (id)valueForKey:(id)a3
{
  v5 = +[CASDFEffect superclass];

  return CAObject_valueForKey(self, v5, a3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

+ (void)CAMLParserStartElement:(id)a3
{
  v4 = objc_alloc_init(a1);
  [a3 setElementValue:v4];
}

+ (id)defaultValueForKey:(id)a3
{
  v4 = [a1 defaultValues];

  return [v4 objectForKeyedSubscript:a3];
}

+ (id)allEffectsClasses
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:9];
}

@end