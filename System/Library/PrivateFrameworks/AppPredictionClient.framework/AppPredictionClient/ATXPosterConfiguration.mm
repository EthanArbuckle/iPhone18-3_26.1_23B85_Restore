@interface ATXPosterConfiguration
- (ATXPosterConfiguration)initWithCoder:(id)coder;
- (ATXPosterConfiguration)initWithExtensionBundleIdentifier:(id)identifier active:(BOOL)active selected:(BOOL)selected inlineComplication:(id)complication complications:(id)complications landscapeComplications:(id)landscapeComplications modeUUID:(id)d font:(id)self0 color:(id)self1 numberingSystem:(id)self2 posterUUID:(id)self3 galleryItem:(id)self4;
- (ATXPosterConfiguration)initWithExtensionBundleIdentifier:(id)identifier active:(BOOL)active selected:(BOOL)selected inlineComplication:(id)complication complications:(id)complications modeUUID:(id)d font:(id)font color:(id)self0 numberingSystem:(id)self1 posterUUID:(id)self2 galleryItem:(id)self3;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPosterConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXPosterConfiguration

- (ATXPosterConfiguration)initWithExtensionBundleIdentifier:(id)identifier active:(BOOL)active selected:(BOOL)selected inlineComplication:(id)complication complications:(id)complications modeUUID:(id)d font:(id)font color:(id)self0 numberingSystem:(id)self1 posterUUID:(id)self2 galleryItem:(id)self3
{
  activeCopy = active;
  selectedCopy = selected;
  v17 = MEMORY[0x1E696AFB0];
  systemCopy = system;
  colorCopy = color;
  fontCopy = font;
  dCopy = d;
  complicationsCopy = complications;
  complicationCopy = complication;
  identifierCopy = identifier;
  uUID = [v17 UUID];
  uUIDString = [uUID UUIDString];
  v27 = [(ATXPosterConfiguration *)self initWithExtensionBundleIdentifier:identifierCopy active:activeCopy selected:selectedCopy inlineComplication:complicationCopy complications:complicationsCopy landscapeComplications:MEMORY[0x1E695E0F0] modeUUID:dCopy font:fontCopy color:colorCopy numberingSystem:systemCopy posterUUID:uUIDString galleryItem:0];

  return v27;
}

- (ATXPosterConfiguration)initWithExtensionBundleIdentifier:(id)identifier active:(BOOL)active selected:(BOOL)selected inlineComplication:(id)complication complications:(id)complications landscapeComplications:(id)landscapeComplications modeUUID:(id)d font:(id)self0 color:(id)self1 numberingSystem:(id)self2 posterUUID:(id)self3 galleryItem:(id)self4
{
  identifierCopy = identifier;
  obj = complication;
  complicationCopy = complication;
  complicationsCopy = complications;
  landscapeComplicationsCopy = landscapeComplications;
  dCopy = d;
  v20 = complicationsCopy;
  fontCopy = font;
  colorCopy = color;
  systemCopy = system;
  iDCopy = iD;
  v25 = landscapeComplicationsCopy;
  itemCopy = item;
  v51.receiver = self;
  v51.super_class = ATXPosterConfiguration;
  v27 = [(ATXPosterConfiguration *)&v51 init];
  if (v27)
  {
    v28 = [identifierCopy copy];
    extensionBundleIdentifier = v27->_extensionBundleIdentifier;
    v27->_extensionBundleIdentifier = v28;

    v27->_active = active;
    v27->_selected = selected;
    objc_storeStrong(&v27->_inlineComplication, obj);
    v30 = [v20 copy];
    complications = v27->_complications;
    v27->_complications = v30;

    v32 = [v25 copy];
    landscapeComplications = v27->_landscapeComplications;
    v27->_landscapeComplications = v32;

    objc_storeStrong(&v27->_modeUUID, d);
    v34 = [fontCopy copy];
    font = v27->_font;
    v27->_font = v34;

    v36 = [colorCopy copy];
    color = v27->_color;
    v27->_color = v36;

    v38 = [systemCopy copy];
    numberingSystem = v27->_numberingSystem;
    v27->_numberingSystem = v38;

    v40 = [iDCopy copy];
    posterUUID = v27->_posterUUID;
    v27->_posterUUID = v40;

    v42 = [itemCopy copy];
    galleryItem = v27->_galleryItem;
    v27->_galleryItem = v42;
  }

  return v27;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@; ", v5];

  extensionBundleIdentifier = [(ATXPosterConfiguration *)self extensionBundleIdentifier];
  [v3 appendFormat:@"extensionBundleIdentifier: %@; ", extensionBundleIdentifier];

  if ([(ATXPosterConfiguration *)self isActive])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"active: %@; ", v7];
  if ([(ATXPosterConfiguration *)self isSelected])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"selected: %@; ", v8];
  inlineComplication = [(ATXPosterConfiguration *)self inlineComplication];
  [v3 appendFormat:@"inlineComplication: %@; ", inlineComplication];

  complications = [(ATXPosterConfiguration *)self complications];
  [v3 appendFormat:@"complications: %@; ", complications];

  landscapeComplications = [(ATXPosterConfiguration *)self landscapeComplications];
  [v3 appendFormat:@"landscapeComplications: %@; ", landscapeComplications];

  modeUUID = [(ATXPosterConfiguration *)self modeUUID];
  uUIDString = [modeUUID UUIDString];
  [v3 appendFormat:@"modeUUID: %@; ", uUIDString];

  font = [(ATXPosterConfiguration *)self font];
  [v3 appendFormat:@"font: %@; ", font];

  color = [(ATXPosterConfiguration *)self color];
  [v3 appendFormat:@"color: %@; ", color];

  numberingSystem = [(ATXPosterConfiguration *)self numberingSystem];
  [v3 appendFormat:@"numberingSystem: %@; ", numberingSystem];

  posterUUID = [(ATXPosterConfiguration *)self posterUUID];
  [v3 appendFormat:@"posterUUID: %@; ", posterUUID];

  galleryItem = [(ATXPosterConfiguration *)self galleryItem];
  [v3 appendFormat:@"galleryItem: %@; ", galleryItem];

  return v3;
}

- (ATXPosterConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  if (v5)
  {
    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
    v39 = [coderCopy decodeBoolForKey:@"selected"];
    v38 = [coderCopy decodeBoolForKey:@"active"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inlineComplication"];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"complications"];
    v11 = v10;
    v12 = MEMORY[0x1E695E0F0];
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v37 = v13;

    v14 = objc_autoreleasePoolPush();
    v15 = objc_alloc(MEMORY[0x1E695DFD8]);
    v16 = objc_opt_class();
    v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v14);
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"landscapeComplications"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v12;
    }

    v36 = v20;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"font"];
    if (!v21)
    {
      v22 = [coderCopy decodeBoolForKey:@"isCustomFont"];
      v23 = @"isDefault";
      if (v22)
      {
        v23 = @"isCustom";
      }

      v21 = v23;
    }

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    if (!v24)
    {
      v25 = [coderCopy decodeBoolForKey:@"isCustomColor"];
      v26 = @"isDefault";
      if (v25)
      {
        v26 = @"isCustom";
      }

      v24 = v26;
    }

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberingSystem"];
    if (!v27)
    {
      v28 = [coderCopy decodeBoolForKey:@"isCustomNumberingSystem"];
      v29 = @"isDefault";
      if (v28)
      {
        v29 = @"isCustom";
      }

      v27 = v29;
    }

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"posterUUID"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"galleryItem"];
    v32 = [(ATXPosterConfiguration *)self initWithExtensionBundleIdentifier:v5 active:v38 selected:v39 inlineComplication:v40 complications:v37 landscapeComplications:v36 modeUUID:v41 font:v21 color:v24 numberingSystem:v27 posterUUID:v30 galleryItem:v31];

    self = v32;
    selfCopy = self;
  }

  else
  {
    v34 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ATXPosterConfiguration initWithCoder:v34];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extensionBundleIdentifier = [(ATXPosterConfiguration *)self extensionBundleIdentifier];
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];

  [coderCopy encodeBool:-[ATXPosterConfiguration isSelected](self forKey:{"isSelected"), @"selected"}];
  inlineComplication = [(ATXPosterConfiguration *)self inlineComplication];
  [coderCopy encodeObject:inlineComplication forKey:@"inlineComplication"];

  complications = [(ATXPosterConfiguration *)self complications];
  [coderCopy encodeObject:complications forKey:@"complications"];

  landscapeComplications = [(ATXPosterConfiguration *)self landscapeComplications];
  [coderCopy encodeObject:landscapeComplications forKey:@"landscapeComplications"];

  modeUUID = [(ATXPosterConfiguration *)self modeUUID];
  [coderCopy encodeObject:modeUUID forKey:@"modeUUID"];

  [coderCopy encodeBool:-[ATXPosterConfiguration isActive](self forKey:{"isActive"), @"active"}];
  font = [(ATXPosterConfiguration *)self font];
  [coderCopy encodeObject:font forKey:@"font"];

  color = [(ATXPosterConfiguration *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  numberingSystem = [(ATXPosterConfiguration *)self numberingSystem];
  [coderCopy encodeObject:numberingSystem forKey:@"numberingSystem"];

  posterUUID = [(ATXPosterConfiguration *)self posterUUID];
  [coderCopy encodeObject:posterUUID forKey:@"posterUUID"];

  galleryItem = [(ATXPosterConfiguration *)self galleryItem];
  [coderCopy encodeObject:galleryItem forKey:@"galleryItem"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  extensionBundleIdentifier = [(ATXPosterConfiguration *)selfCopy extensionBundleIdentifier];
  isActive = [(ATXPosterConfiguration *)selfCopy isActive];
  isSelected = [(ATXPosterConfiguration *)selfCopy isSelected];
  inlineComplication = [(ATXPosterConfiguration *)selfCopy inlineComplication];
  complications = [(ATXPosterConfiguration *)selfCopy complications];
  landscapeComplications = [(ATXPosterConfiguration *)selfCopy landscapeComplications];
  modeUUID = [(ATXPosterConfiguration *)selfCopy modeUUID];
  font = [(ATXPosterConfiguration *)selfCopy font];
  color = [(ATXPosterConfiguration *)selfCopy color];
  numberingSystem = [(ATXPosterConfiguration *)selfCopy numberingSystem];
  posterUUID = [(ATXPosterConfiguration *)selfCopy posterUUID];
  galleryItem = [(ATXPosterConfiguration *)selfCopy galleryItem];
  v17 = [(ATXPosterConfiguration *)selfCopy initWithExtensionBundleIdentifier:extensionBundleIdentifier active:isActive selected:isSelected inlineComplication:inlineComplication complications:complications landscapeComplications:landscapeComplications modeUUID:modeUUID font:font color:color numberingSystem:numberingSystem posterUUID:posterUUID galleryItem:galleryItem];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPosterConfiguration *)self isEqualToATXPosterConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = self->_extensionBundleIdentifier;
  v6 = v5;
  if (v5 == configurationCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  selected = self->_selected;
  if (selected != [configurationCopy isSelected])
  {
    goto LABEL_37;
  }

  v9 = self->_inlineComplication;
  v10 = v9;
  if (v9 == configurationCopy[3])
  {
  }

  else
  {
    v11 = [(ATXComplication *)v9 isEqual:?];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  v12 = self->_complications;
  v13 = v12;
  if (v12 == configurationCopy[4])
  {
  }

  else
  {
    v14 = [(NSArray *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v15 = self->_landscapeComplications;
  v16 = v15;
  if (v15 == configurationCopy[5])
  {
  }

  else
  {
    v17 = [(NSArray *)v15 isEqual:?];

    if ((v17 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v18 = self->_modeUUID;
  v19 = v18;
  if (v18 == configurationCopy[6])
  {
  }

  else
  {
    v20 = [(NSUUID *)v18 isEqual:?];

    if ((v20 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  active = self->_active;
  if (active != [configurationCopy isActive])
  {
LABEL_37:
    v34 = 0;
    goto LABEL_38;
  }

  v22 = self->_font;
  v23 = v22;
  if (v22 == configurationCopy[7])
  {
  }

  else
  {
    v24 = [(NSString *)v22 isEqual:?];

    if ((v24 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v25 = self->_color;
  v26 = v25;
  if (v25 == configurationCopy[8])
  {
  }

  else
  {
    v27 = [(NSString *)v25 isEqual:?];

    if ((v27 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v28 = self->_numberingSystem;
  v29 = v28;
  if (v28 == configurationCopy[9])
  {
  }

  else
  {
    v30 = [(NSString *)v28 isEqual:?];

    if ((v30 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v31 = self->_posterUUID;
  v32 = v31;
  if (v31 == configurationCopy[10])
  {
  }

  else
  {
    v33 = [(NSString *)v31 isEqual:?];

    if ((v33 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v36 = self->_galleryItem;
  v37 = v36;
  if (v36 == configurationCopy[11])
  {
    v34 = 1;
  }

  else
  {
    v34 = [(ATXFaceGalleryItem *)v36 isEqual:?];
  }

LABEL_38:
  return v34;
}

- (unint64_t)hash
{
  extensionBundleIdentifier = [(ATXPosterConfiguration *)self extensionBundleIdentifier];
  v4 = [extensionBundleIdentifier hash];

  v5 = 31 * v4 + [(ATXPosterConfiguration *)self isSelected];
  inlineComplication = [(ATXPosterConfiguration *)self inlineComplication];
  v7 = [inlineComplication hash] - v5 + 32 * v5;

  complications = [(ATXPosterConfiguration *)self complications];
  v9 = [complications hash] - v7 + 32 * v7;

  landscapeComplications = [(ATXPosterConfiguration *)self landscapeComplications];
  v11 = [landscapeComplications hash] - v9 + 32 * v9;

  modeUUID = [(ATXPosterConfiguration *)self modeUUID];
  v13 = [modeUUID hash] - v11 + 32 * v11;

  v14 = 31 * v13 + [(ATXPosterConfiguration *)self isActive];
  font = [(ATXPosterConfiguration *)self font];
  v16 = [font hash] - v14 + 32 * v14;

  color = [(ATXPosterConfiguration *)self color];
  v18 = [color hash] - v16 + 32 * v16;

  numberingSystem = [(ATXPosterConfiguration *)self numberingSystem];
  v20 = [numberingSystem hash] - v18 + 32 * v18;

  posterUUID = [(ATXPosterConfiguration *)self posterUUID];
  v22 = [posterUUID hash] - v20 + 32 * v20;

  galleryItem = [(ATXPosterConfiguration *)self galleryItem];
  v24 = [galleryItem hash] - v22 + 32 * v22;

  return v24;
}

- (void)initWithCoder:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXPosterConfiguration initWithCoder:]";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: error decoding extensionBundleIdentifier", &v1, 0xCu);
}

@end