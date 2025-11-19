@interface ATXComplicationSet
- (ATXComplicationSet)initWithCoder:(id)a3;
- (ATXComplicationSet)initWithComplications:(id)a3 localizedTitle:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXComplicationSet

- (ATXComplicationSet)initWithComplications:(id)a3 localizedTitle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXComplicationSet;
  v9 = [(ATXComplicationSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_complications, a3);
    objc_storeStrong(&v10->_localizedTitle, a4);
  }

  return v10;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ATXComplicationSet *)self complications];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) description];
        [v3 appendString:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (ATXComplicationSet)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"complicationsSet"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"title"];

  v10 = [(ATXComplicationSet *)self initWithComplications:v8 localizedTitle:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXComplicationSet *)self complications];
  [v4 encodeObject:v5 forKey:@"complicationsSet"];

  v6 = [(ATXComplicationSet *)self localizedTitle];
  [v4 encodeObject:v6 forKey:@"title"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [ATXComplicationSet allocWithZone:?];
  v6 = [(ATXComplicationSet *)self complications];
  v7 = [v6 copyWithZone:a3];
  v8 = [(ATXComplicationSet *)self localizedTitle];
  v9 = [v8 copyWithZone:a3];
  v10 = [(ATXComplicationSet *)v5 initWithComplications:v7 localizedTitle:v9];

  return v10;
}

@end