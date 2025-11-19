@interface AAUIWalletCardListItem
- (AAUIWalletCardListItem)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5 uniqueIdentifier:(id)a6;
- (NSString)subtitle;
- (NSString)title;
- (NSString)uniqueIdentifier;
- (UIImage)icon;
- (void)setIcon:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUniqueIdentifier:(id)a3;
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

- (void)setUniqueIdentifier:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
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

- (void)setIcon:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  AAUIWalletCardListItem.icon.setter(a3);
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

- (void)setTitle:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
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

- (void)setSubtitle:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
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

- (AAUIWalletCardListItem)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5 uniqueIdentifier:(id)a6
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  MEMORY[0x1E69E5928](a6);
  if (a3)
  {
    v18 = sub_1C5596574();
    v19 = v6;
    MEMORY[0x1E69E5920](a3);
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (a4)
  {
    v14 = sub_1C5596574();
    v15 = v7;
    MEMORY[0x1E69E5920](a4);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (a6)
  {
    v10 = sub_1C5596574();
    v11 = v8;
    MEMORY[0x1E69E5920](a6);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  return AAUIWalletCardListItem.init(title:subtitle:icon:uniqueIdentifier:)(v20, v21, v16, v17, a5, v12, v13);
}

@end