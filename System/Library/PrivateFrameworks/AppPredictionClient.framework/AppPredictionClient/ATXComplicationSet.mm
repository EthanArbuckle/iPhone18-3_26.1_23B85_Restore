@interface ATXComplicationSet
- (ATXComplicationSet)initWithCoder:(id)coder;
- (ATXComplicationSet)initWithComplications:(id)complications localizedTitle:(id)title;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXComplicationSet

- (ATXComplicationSet)initWithComplications:(id)complications localizedTitle:(id)title
{
  complicationsCopy = complications;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = ATXComplicationSet;
  v9 = [(ATXComplicationSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_complications, complications);
    objc_storeStrong(&v10->_localizedTitle, title);
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
  complications = [(ATXComplicationSet *)self complications];
  v5 = [complications countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(complications);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) description];
        [v3 appendString:v9];
      }

      v6 = [complications countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (ATXComplicationSet)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"complicationsSet"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];

  v10 = [(ATXComplicationSet *)self initWithComplications:v8 localizedTitle:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  complications = [(ATXComplicationSet *)self complications];
  [coderCopy encodeObject:complications forKey:@"complicationsSet"];

  localizedTitle = [(ATXComplicationSet *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"title"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ATXComplicationSet allocWithZone:?];
  complications = [(ATXComplicationSet *)self complications];
  v7 = [complications copyWithZone:zone];
  localizedTitle = [(ATXComplicationSet *)self localizedTitle];
  v9 = [localizedTitle copyWithZone:zone];
  v10 = [(ATXComplicationSet *)v5 initWithComplications:v7 localizedTitle:v9];

  return v10;
}

@end