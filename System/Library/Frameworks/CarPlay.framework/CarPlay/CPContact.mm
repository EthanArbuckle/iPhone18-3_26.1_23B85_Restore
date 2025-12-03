@interface CPContact
- (BOOL)isEqual:(id)equal;
- (CPContact)initWithCoder:(id)coder;
- (CPContact)initWithName:(NSString *)name image:(UIImage *)image;
- (CPTemplate)associatedTemplate;
- (NSArray)actions;
- (NSString)informativeText;
- (NSString)name;
- (NSString)subtitle;
- (UIImage)image;
- (void)_associateControlsToTemplate:(id)template;
- (void)encodeWithCoder:(id)coder;
- (void)setActions:(NSArray *)actions;
- (void)setAssociatedTemplate:(id)template;
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

- (CPContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPContact;
  v5 = [(CPContact *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPContactEntity"];
    contactEntity = v5->_contactEntity;
    v5->_contactEntity = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contactEntity = [(CPContact *)self contactEntity];
      contactEntity2 = [(CPContact *)equalCopy contactEntity];
      v7 = [contactEntity isEqual:contactEntity2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contactEntity = [(CPContact *)self contactEntity];
  [coderCopy encodeObject:contactEntity forKey:@"kCPContactEntity"];
}

- (void)setName:(NSString *)name
{
  v9 = name;
  contactEntity = [(CPContact *)self contactEntity];
  name = [contactEntity name];
  v6 = [name isEqual:v9];

  if ((v6 & 1) == 0)
  {
    contactEntity2 = [(CPContact *)self contactEntity];
    [contactEntity2 setName:v9];

    associatedTemplate = [(CPContact *)self associatedTemplate];
    [associatedTemplate setNeedsUpdate];
  }
}

- (NSString)name
{
  contactEntity = [(CPContact *)self contactEntity];
  name = [contactEntity name];

  return name;
}

- (void)setImage:(UIImage *)image
{
  v4 = image;
  v7 = [[CPImageSet alloc] initWithImage:v4];

  contactEntity = [(CPContact *)self contactEntity];
  [contactEntity setImageSet:v7];

  associatedTemplate = [(CPContact *)self associatedTemplate];
  [associatedTemplate setNeedsUpdate];
}

- (UIImage)image
{
  contactEntity = [(CPContact *)self contactEntity];
  imageSet = [contactEntity imageSet];
  image = [imageSet image];

  return image;
}

- (void)setActions:(NSArray *)actions
{
  v4 = actions;
  associatedTemplate = [(CPContact *)self associatedTemplate];
  [(CPContact *)self _associateControlsToTemplate:associatedTemplate];

  contactEntity = [(CPContact *)self contactEntity];
  [contactEntity setActionButtons:v4];

  associatedTemplate2 = [(CPContact *)self associatedTemplate];
  [associatedTemplate2 setNeedsUpdate];
}

- (NSArray)actions
{
  contactEntity = [(CPContact *)self contactEntity];
  actionButtons = [contactEntity actionButtons];

  return actionButtons;
}

- (void)setSubtitle:(NSString *)subtitle
{
  v9 = subtitle;
  contactEntity = [(CPContact *)self contactEntity];
  subtitle = [contactEntity subtitle];
  v6 = [subtitle isEqual:v9];

  if ((v6 & 1) == 0)
  {
    contactEntity2 = [(CPContact *)self contactEntity];
    [contactEntity2 setSubtitle:v9];

    associatedTemplate = [(CPContact *)self associatedTemplate];
    [associatedTemplate setNeedsUpdate];
  }
}

- (NSString)subtitle
{
  contactEntity = [(CPContact *)self contactEntity];
  subtitle = [contactEntity subtitle];

  return subtitle;
}

- (void)setInformativeText:(NSString *)informativeText
{
  v9 = informativeText;
  contactEntity = [(CPContact *)self contactEntity];
  informativeText = [contactEntity informativeText];
  v6 = [informativeText isEqual:v9];

  if ((v6 & 1) == 0)
  {
    contactEntity2 = [(CPContact *)self contactEntity];
    [contactEntity2 setInformativeText:v9];

    associatedTemplate = [(CPContact *)self associatedTemplate];
    [associatedTemplate setNeedsUpdate];
  }
}

- (NSString)informativeText
{
  contactEntity = [(CPContact *)self contactEntity];
  informativeText = [contactEntity informativeText];

  return informativeText;
}

- (void)setAssociatedTemplate:(id)template
{
  obj = template;
  WeakRetained = objc_loadWeakRetained(&self->_associatedTemplate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_associatedTemplate, obj);
    [(CPContact *)self _associateControlsToTemplate:obj];
  }
}

- (void)_associateControlsToTemplate:(id)template
{
  v17 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  actions = [(CPContact *)self actions];
  v6 = [actions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(actions);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 setAssociatedTemplate:templateCopy];
        [v10 setDelegate:templateCopy];
      }

      v7 = [actions countByEnumeratingWithState:&v12 objects:v16 count:16];
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