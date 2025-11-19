@interface CPContact
- (BOOL)isEqual:(id)a3;
- (CPContact)initWithCoder:(id)a3;
- (CPContact)initWithName:(NSString *)name image:(UIImage *)image;
- (CPTemplate)associatedTemplate;
- (NSArray)actions;
- (NSString)informativeText;
- (NSString)name;
- (NSString)subtitle;
- (UIImage)image;
- (void)_associateControlsToTemplate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setActions:(NSArray *)actions;
- (void)setAssociatedTemplate:(id)a3;
- (void)setImage:(UIImage *)image;
- (void)setInformativeText:(NSString *)informativeText;
- (void)setName:(NSString *)name;
- (void)setSubtitle:(NSString *)subtitle;
@end

@implementation CPContact

- (CPContact)initWithName:(NSString *)name image:(UIImage *)image
{
  v6 = name;
  v7 = image;
  v13.receiver = self;
  v13.super_class = CPContact;
  v8 = [(CPContact *)&v13 init];
  if (v8)
  {
    v9 = [[CPImageSet alloc] initWithImage:v7];
    v10 = [[CPContactEntity alloc] initWithName:v6 imageSet:v9];
    contactEntity = v8->_contactEntity;
    v8->_contactEntity = v10;
  }

  return v8;
}

- (CPContact)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPContact;
  v5 = [(CPContact *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPContactEntity"];
    contactEntity = v5->_contactEntity;
    v5->_contactEntity = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CPContact *)self contactEntity];
      v6 = [(CPContact *)v4 contactEntity];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPContact *)self contactEntity];
  [v4 encodeObject:v5 forKey:@"kCPContactEntity"];
}

- (void)setName:(NSString *)name
{
  v9 = name;
  v4 = [(CPContact *)self contactEntity];
  v5 = [v4 name];
  v6 = [v5 isEqual:v9];

  if ((v6 & 1) == 0)
  {
    v7 = [(CPContact *)self contactEntity];
    [v7 setName:v9];

    v8 = [(CPContact *)self associatedTemplate];
    [v8 setNeedsUpdate];
  }
}

- (NSString)name
{
  v2 = [(CPContact *)self contactEntity];
  v3 = [v2 name];

  return v3;
}

- (void)setImage:(UIImage *)image
{
  v4 = image;
  v7 = [[CPImageSet alloc] initWithImage:v4];

  v5 = [(CPContact *)self contactEntity];
  [v5 setImageSet:v7];

  v6 = [(CPContact *)self associatedTemplate];
  [v6 setNeedsUpdate];
}

- (UIImage)image
{
  v2 = [(CPContact *)self contactEntity];
  v3 = [v2 imageSet];
  v4 = [v3 image];

  return v4;
}

- (void)setActions:(NSArray *)actions
{
  v4 = actions;
  v5 = [(CPContact *)self associatedTemplate];
  [(CPContact *)self _associateControlsToTemplate:v5];

  v6 = [(CPContact *)self contactEntity];
  [v6 setActionButtons:v4];

  v7 = [(CPContact *)self associatedTemplate];
  [v7 setNeedsUpdate];
}

- (NSArray)actions
{
  v2 = [(CPContact *)self contactEntity];
  v3 = [v2 actionButtons];

  return v3;
}

- (void)setSubtitle:(NSString *)subtitle
{
  v9 = subtitle;
  v4 = [(CPContact *)self contactEntity];
  v5 = [v4 subtitle];
  v6 = [v5 isEqual:v9];

  if ((v6 & 1) == 0)
  {
    v7 = [(CPContact *)self contactEntity];
    [v7 setSubtitle:v9];

    v8 = [(CPContact *)self associatedTemplate];
    [v8 setNeedsUpdate];
  }
}

- (NSString)subtitle
{
  v2 = [(CPContact *)self contactEntity];
  v3 = [v2 subtitle];

  return v3;
}

- (void)setInformativeText:(NSString *)informativeText
{
  v9 = informativeText;
  v4 = [(CPContact *)self contactEntity];
  v5 = [v4 informativeText];
  v6 = [v5 isEqual:v9];

  if ((v6 & 1) == 0)
  {
    v7 = [(CPContact *)self contactEntity];
    [v7 setInformativeText:v9];

    v8 = [(CPContact *)self associatedTemplate];
    [v8 setNeedsUpdate];
  }
}

- (NSString)informativeText
{
  v2 = [(CPContact *)self contactEntity];
  v3 = [v2 informativeText];

  return v3;
}

- (void)setAssociatedTemplate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_associatedTemplate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_associatedTemplate, obj);
    [(CPContact *)self _associateControlsToTemplate:obj];
  }
}

- (void)_associateControlsToTemplate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CPContact *)self actions];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 setAssociatedTemplate:v4];
        [v10 setDelegate:v4];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (CPTemplate)associatedTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedTemplate);

  return WeakRetained;
}

@end