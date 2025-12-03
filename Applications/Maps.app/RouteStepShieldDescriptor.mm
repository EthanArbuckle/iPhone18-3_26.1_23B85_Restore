@interface RouteStepShieldDescriptor
- (BOOL)isEqualToShieldDescriptor:(id)descriptor;
- (RouteStepShieldDescriptor)initWithDataId:(unsigned int)id text:(id)text contentScale:(float)scale sizeGroup:(int64_t)group vkIconModifierText:(id)modifierText accessibilityLabel:(id)label;
- (RouteStepShieldDescriptor)initWithName:(id)name contentScale:(float)scale sizeGroup:(int64_t)group vkIconModifierText:(id)text accessibilityLabel:(id)label;
- (id)vkImage;
@end

@implementation RouteStepShieldDescriptor

- (id)vkImage
{
  v3 = objc_alloc_init(VKIconModifiers);
  [v3 setText:self->_vkIconModifierText];
  v4 = [(NSString *)self->_name length];
  v5 = +[VKIconManager sharedManager];
  v6 = v5;
  *&v7 = self->_contentScale;
  if (v4)
  {
    [v5 imageForName:self->_name contentScale:self->_sizeGroup sizeGroup:v3 modifiers:v7];
  }

  else
  {
    [v5 imageForDataID:self->_dataId text:self->_text contentScale:self->_sizeGroup sizeGroup:v3 modifiers:v7];
  }
  v8 = ;

  return v8;
}

- (BOOL)isEqualToShieldDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  if (descriptorCopy == self)
  {
    v16 = 1;
  }

  else if (self->_dataId == descriptorCopy->_dataId && ((name = descriptorCopy->_name, v7 = self->_name, v8 = name, !(v7 | v8)) || (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, v10)) && ((text = v5->_text, v12 = self->_text, v13 = text, !(v12 | v13)) || (v14 = v13, v15 = objc_msgSend(v12, "isEqual:", v13), v14, v12, v15)) && vabds_f32(self->_contentScale, v5->_contentScale) < 1.0e-10 && self->_sizeGroup == v5->_sizeGroup && -[NSString isEqualToString:](self->_vkIconModifierText, "isEqualToString:", v5->_vkIconModifierText))
  {
    v16 = [(NSString *)self->_accessibilityLabel isEqualToString:v5->_accessibilityLabel];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (RouteStepShieldDescriptor)initWithName:(id)name contentScale:(float)scale sizeGroup:(int64_t)group vkIconModifierText:(id)text accessibilityLabel:(id)label
{
  nameCopy = name;
  textCopy = text;
  labelCopy = label;
  v20.receiver = self;
  v20.super_class = RouteStepShieldDescriptor;
  v16 = [(RouteStepShieldDescriptor *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_dataId = 0;
    objc_storeStrong(&v16->_name, name);
    text = v17->_text;
    v17->_text = 0;

    v17->_contentScale = scale;
    v17->_sizeGroup = group;
    objc_storeStrong(&v17->_vkIconModifierText, text);
    objc_storeStrong(&v17->_accessibilityLabel, label);
  }

  return v17;
}

- (RouteStepShieldDescriptor)initWithDataId:(unsigned int)id text:(id)text contentScale:(float)scale sizeGroup:(int64_t)group vkIconModifierText:(id)modifierText accessibilityLabel:(id)label
{
  textCopy = text;
  modifierTextCopy = modifierText;
  labelCopy = label;
  v22.receiver = self;
  v22.super_class = RouteStepShieldDescriptor;
  v18 = [(RouteStepShieldDescriptor *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_dataId = id;
    name = v18->_name;
    v18->_name = 0;

    objc_storeStrong(&v19->_text, text);
    v19->_contentScale = scale;
    v19->_sizeGroup = group;
    objc_storeStrong(&v19->_vkIconModifierText, modifierText);
    objc_storeStrong(&v19->_accessibilityLabel, label);
  }

  return v19;
}

@end