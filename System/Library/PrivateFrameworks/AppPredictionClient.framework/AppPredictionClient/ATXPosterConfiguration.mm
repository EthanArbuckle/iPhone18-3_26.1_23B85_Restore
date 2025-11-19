@interface ATXPosterConfiguration
- (ATXPosterConfiguration)initWithCoder:(id)a3;
- (ATXPosterConfiguration)initWithExtensionBundleIdentifier:(id)a3 active:(BOOL)a4 selected:(BOOL)a5 inlineComplication:(id)a6 complications:(id)a7 landscapeComplications:(id)a8 modeUUID:(id)a9 font:(id)a10 color:(id)a11 numberingSystem:(id)a12 posterUUID:(id)a13 galleryItem:(id)a14;
- (ATXPosterConfiguration)initWithExtensionBundleIdentifier:(id)a3 active:(BOOL)a4 selected:(BOOL)a5 inlineComplication:(id)a6 complications:(id)a7 modeUUID:(id)a8 font:(id)a9 color:(id)a10 numberingSystem:(id)a11 posterUUID:(id)a12 galleryItem:(id)a13;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPosterConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXPosterConfiguration

- (ATXPosterConfiguration)initWithExtensionBundleIdentifier:(id)a3 active:(BOOL)a4 selected:(BOOL)a5 inlineComplication:(id)a6 complications:(id)a7 modeUUID:(id)a8 font:(id)a9 color:(id)a10 numberingSystem:(id)a11 posterUUID:(id)a12 galleryItem:(id)a13
{
  v30 = a4;
  v31 = a5;
  v17 = MEMORY[0x1E696AFB0];
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a3;
  v25 = [v17 UUID];
  v26 = [v25 UUIDString];
  v27 = [(ATXPosterConfiguration *)self initWithExtensionBundleIdentifier:v24 active:v30 selected:v31 inlineComplication:v23 complications:v22 landscapeComplications:MEMORY[0x1E695E0F0] modeUUID:v21 font:v20 color:v19 numberingSystem:v18 posterUUID:v26 galleryItem:0];

  return v27;
}

- (ATXPosterConfiguration)initWithExtensionBundleIdentifier:(id)a3 active:(BOOL)a4 selected:(BOOL)a5 inlineComplication:(id)a6 complications:(id)a7 landscapeComplications:(id)a8 modeUUID:(id)a9 font:(id)a10 color:(id)a11 numberingSystem:(id)a12 posterUUID:(id)a13 galleryItem:(id)a14
{
  v17 = a3;
  obj = a6;
  v50 = a6;
  v18 = a7;
  v19 = a8;
  v49 = a9;
  v20 = v18;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = v19;
  v26 = a14;
  v51.receiver = self;
  v51.super_class = ATXPosterConfiguration;
  v27 = [(ATXPosterConfiguration *)&v51 init];
  if (v27)
  {
    v28 = [v17 copy];
    extensionBundleIdentifier = v27->_extensionBundleIdentifier;
    v27->_extensionBundleIdentifier = v28;

    v27->_active = a4;
    v27->_selected = a5;
    objc_storeStrong(&v27->_inlineComplication, obj);
    v30 = [v20 copy];
    complications = v27->_complications;
    v27->_complications = v30;

    v32 = [v25 copy];
    landscapeComplications = v27->_landscapeComplications;
    v27->_landscapeComplications = v32;

    objc_storeStrong(&v27->_modeUUID, a9);
    v34 = [v21 copy];
    font = v27->_font;
    v27->_font = v34;

    v36 = [v22 copy];
    color = v27->_color;
    v27->_color = v36;

    v38 = [v23 copy];
    numberingSystem = v27->_numberingSystem;
    v27->_numberingSystem = v38;

    v40 = [v24 copy];
    posterUUID = v27->_posterUUID;
    v27->_posterUUID = v40;

    v42 = [v26 copy];
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

  v6 = [(ATXPosterConfiguration *)self extensionBundleIdentifier];
  [v3 appendFormat:@"extensionBundleIdentifier: %@; ", v6];

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
  v9 = [(ATXPosterConfiguration *)self inlineComplication];
  [v3 appendFormat:@"inlineComplication: %@; ", v9];

  v10 = [(ATXPosterConfiguration *)self complications];
  [v3 appendFormat:@"complications: %@; ", v10];

  v11 = [(ATXPosterConfiguration *)self landscapeComplications];
  [v3 appendFormat:@"landscapeComplications: %@; ", v11];

  v12 = [(ATXPosterConfiguration *)self modeUUID];
  v13 = [v12 UUIDString];
  [v3 appendFormat:@"modeUUID: %@; ", v13];

  v14 = [(ATXPosterConfiguration *)self font];
  [v3 appendFormat:@"font: %@; ", v14];

  v15 = [(ATXPosterConfiguration *)self color];
  [v3 appendFormat:@"color: %@; ", v15];

  v16 = [(ATXPosterConfiguration *)self numberingSystem];
  [v3 appendFormat:@"numberingSystem: %@; ", v16];

  v17 = [(ATXPosterConfiguration *)self posterUUID];
  [v3 appendFormat:@"posterUUID: %@; ", v17];

  v18 = [(ATXPosterConfiguration *)self galleryItem];
  [v3 appendFormat:@"galleryItem: %@; ", v18];

  return v3;
}

- (ATXPosterConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  if (v5)
  {
    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
    v39 = [v4 decodeBoolForKey:@"selected"];
    v38 = [v4 decodeBoolForKey:@"active"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inlineComplication"];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"complications"];
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
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"landscapeComplications"];
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

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"font"];
    if (!v21)
    {
      v22 = [v4 decodeBoolForKey:@"isCustomFont"];
      v23 = @"isDefault";
      if (v22)
      {
        v23 = @"isCustom";
      }

      v21 = v23;
    }

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    if (!v24)
    {
      v25 = [v4 decodeBoolForKey:@"isCustomColor"];
      v26 = @"isDefault";
      if (v25)
      {
        v26 = @"isCustom";
      }

      v24 = v26;
    }

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberingSystem"];
    if (!v27)
    {
      v28 = [v4 decodeBoolForKey:@"isCustomNumberingSystem"];
      v29 = @"isDefault";
      if (v28)
      {
        v29 = @"isCustom";
      }

      v27 = v29;
    }

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"posterUUID"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"galleryItem"];
    v32 = [(ATXPosterConfiguration *)self initWithExtensionBundleIdentifier:v5 active:v38 selected:v39 inlineComplication:v40 complications:v37 landscapeComplications:v36 modeUUID:v41 font:v21 color:v24 numberingSystem:v27 posterUUID:v30 galleryItem:v31];

    self = v32;
    v33 = self;
  }

  else
  {
    v34 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ATXPosterConfiguration initWithCoder:v34];
    }

    v33 = 0;
  }

  return v33;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXPosterConfiguration *)self extensionBundleIdentifier];
  [v4 encodeObject:v5 forKey:@"extensionBundleIdentifier"];

  [v4 encodeBool:-[ATXPosterConfiguration isSelected](self forKey:{"isSelected"), @"selected"}];
  v6 = [(ATXPosterConfiguration *)self inlineComplication];
  [v4 encodeObject:v6 forKey:@"inlineComplication"];

  v7 = [(ATXPosterConfiguration *)self complications];
  [v4 encodeObject:v7 forKey:@"complications"];

  v8 = [(ATXPosterConfiguration *)self landscapeComplications];
  [v4 encodeObject:v8 forKey:@"landscapeComplications"];

  v9 = [(ATXPosterConfiguration *)self modeUUID];
  [v4 encodeObject:v9 forKey:@"modeUUID"];

  [v4 encodeBool:-[ATXPosterConfiguration isActive](self forKey:{"isActive"), @"active"}];
  v10 = [(ATXPosterConfiguration *)self font];
  [v4 encodeObject:v10 forKey:@"font"];

  v11 = [(ATXPosterConfiguration *)self color];
  [v4 encodeObject:v11 forKey:@"color"];

  v12 = [(ATXPosterConfiguration *)self numberingSystem];
  [v4 encodeObject:v12 forKey:@"numberingSystem"];

  v13 = [(ATXPosterConfiguration *)self posterUUID];
  [v4 encodeObject:v13 forKey:@"posterUUID"];

  v14 = [(ATXPosterConfiguration *)self galleryItem];
  [v4 encodeObject:v14 forKey:@"galleryItem"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = [(ATXPosterConfiguration *)v3 extensionBundleIdentifier];
  v16 = [(ATXPosterConfiguration *)v3 isActive];
  v15 = [(ATXPosterConfiguration *)v3 isSelected];
  v5 = [(ATXPosterConfiguration *)v3 inlineComplication];
  v6 = [(ATXPosterConfiguration *)v3 complications];
  v14 = [(ATXPosterConfiguration *)v3 landscapeComplications];
  v7 = [(ATXPosterConfiguration *)v3 modeUUID];
  v8 = [(ATXPosterConfiguration *)v3 font];
  v9 = [(ATXPosterConfiguration *)v3 color];
  v10 = [(ATXPosterConfiguration *)v3 numberingSystem];
  v11 = [(ATXPosterConfiguration *)v3 posterUUID];
  v12 = [(ATXPosterConfiguration *)v3 galleryItem];
  v17 = [(ATXPosterConfiguration *)v3 initWithExtensionBundleIdentifier:v4 active:v16 selected:v15 inlineComplication:v5 complications:v6 landscapeComplications:v14 modeUUID:v7 font:v8 color:v9 numberingSystem:v10 posterUUID:v11 galleryItem:v12];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPosterConfiguration *)self isEqualToATXPosterConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPosterConfiguration:(id)a3
{
  v4 = a3;
  v5 = self->_extensionBundleIdentifier;
  v6 = v5;
  if (v5 == v4[2])
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
  if (selected != [v4 isSelected])
  {
    goto LABEL_37;
  }

  v9 = self->_inlineComplication;
  v10 = v9;
  if (v9 == v4[3])
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
  if (v12 == v4[4])
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
  if (v15 == v4[5])
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
  if (v18 == v4[6])
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
  if (active != [v4 isActive])
  {
LABEL_37:
    v34 = 0;
    goto LABEL_38;
  }

  v22 = self->_font;
  v23 = v22;
  if (v22 == v4[7])
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
  if (v25 == v4[8])
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
  if (v28 == v4[9])
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
  if (v31 == v4[10])
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
  if (v36 == v4[11])
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
  v3 = [(ATXPosterConfiguration *)self extensionBundleIdentifier];
  v4 = [v3 hash];

  v5 = 31 * v4 + [(ATXPosterConfiguration *)self isSelected];
  v6 = [(ATXPosterConfiguration *)self inlineComplication];
  v7 = [v6 hash] - v5 + 32 * v5;

  v8 = [(ATXPosterConfiguration *)self complications];
  v9 = [v8 hash] - v7 + 32 * v7;

  v10 = [(ATXPosterConfiguration *)self landscapeComplications];
  v11 = [v10 hash] - v9 + 32 * v9;

  v12 = [(ATXPosterConfiguration *)self modeUUID];
  v13 = [v12 hash] - v11 + 32 * v11;

  v14 = 31 * v13 + [(ATXPosterConfiguration *)self isActive];
  v15 = [(ATXPosterConfiguration *)self font];
  v16 = [v15 hash] - v14 + 32 * v14;

  v17 = [(ATXPosterConfiguration *)self color];
  v18 = [v17 hash] - v16 + 32 * v16;

  v19 = [(ATXPosterConfiguration *)self numberingSystem];
  v20 = [v19 hash] - v18 + 32 * v18;

  v21 = [(ATXPosterConfiguration *)self posterUUID];
  v22 = [v21 hash] - v20 + 32 * v20;

  v23 = [(ATXPosterConfiguration *)self galleryItem];
  v24 = [v23 hash] - v22 + 32 * v22;

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