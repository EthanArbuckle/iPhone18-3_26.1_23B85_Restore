@interface AAUIWalletCardListItem
- (AAUIWalletCardListItem)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon uniqueIdentifier:(id)identifier;
- (NSString)subtitle;
- (NSString)title;
- (NSString)uniqueIdentifier;
- (UIImage)icon;
- (void)setIcon:(id)icon;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUniqueIdentifier:(id)identifier;
@end

@implementation AAUIWalletCardListItem

- (NSString)uniqueIdentifier
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  AAUIWalletCardListItem.uniqueIdentifier.getter();
  v8 = v3;
  MEMORY[0x1E69E5920](self);
  if (v8)
  {
    v5 = sub_1C5596554();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUniqueIdentifier:(id)identifier
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](identifier);
  MEMORY[0x1E69E5928](self);
  if (identifier)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](identifier);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  AAUIWalletCardListItem.uniqueIdentifier.setter(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (UIImage)icon
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = AAUIWalletCardListItem.icon.getter();
  MEMORY[0x1E69E5920](self);

  return v5;
}

- (void)setIcon:(id)icon
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](icon);
  MEMORY[0x1E69E5928](self);
  AAUIWalletCardListItem.icon.setter(icon);
  MEMORY[0x1E69E5920](self);
}

- (NSString)title
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  AAUIWalletCardListItem.title.getter();
  v8 = v3;
  MEMORY[0x1E69E5920](self);
  if (v8)
  {
    v5 = sub_1C5596554();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTitle:(id)title
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](self);
  if (title)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](title);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  AAUIWalletCardListItem.title.setter(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)subtitle
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  AAUIWalletCardListItem.subtitle.getter();
  v8 = v3;
  MEMORY[0x1E69E5920](self);
  if (v8)
  {
    v5 = sub_1C5596554();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setSubtitle:(id)subtitle
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](subtitle);
  MEMORY[0x1E69E5928](self);
  if (subtitle)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](subtitle);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  AAUIWalletCardListItem.subtitle.setter(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (AAUIWalletCardListItem)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon uniqueIdentifier:(id)identifier
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](subtitle);
  MEMORY[0x1E69E5928](icon);
  MEMORY[0x1E69E5928](identifier);
  if (title)
  {
    v18 = sub_1C5596574();
    v19 = v6;
    MEMORY[0x1E69E5920](title);
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (subtitle)
  {
    v14 = sub_1C5596574();
    v15 = v7;
    MEMORY[0x1E69E5920](subtitle);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (identifier)
  {
    v10 = sub_1C5596574();
    v11 = v8;
    MEMORY[0x1E69E5920](identifier);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  return AAUIWalletCardListItem.init(title:subtitle:icon:uniqueIdentifier:)(v20, v21, v16, v17, icon, v12, v13);
}

@end