@interface RouteStepShieldDescriptor
- (BOOL)isEqualToShieldDescriptor:(id)a3;
- (RouteStepShieldDescriptor)initWithDataId:(unsigned int)a3 text:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 vkIconModifierText:(id)a7 accessibilityLabel:(id)a8;
- (RouteStepShieldDescriptor)initWithName:(id)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 vkIconModifierText:(id)a6 accessibilityLabel:(id)a7;
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

- (BOOL)isEqualToShieldDescriptor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v16 = 1;
  }

  else if (self->_dataId == v4->_dataId && ((name = v4->_name, v7 = self->_name, v8 = name, !(v7 | v8)) || (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, v10)) && ((text = v5->_text, v12 = self->_text, v13 = text, !(v12 | v13)) || (v14 = v13, v15 = objc_msgSend(v12, "isEqual:", v13), v14, v12, v15)) && vabds_f32(self->_contentScale, v5->_contentScale) < 1.0e-10 && self->_sizeGroup == v5->_sizeGroup && -[NSString isEqualToString:](self->_vkIconModifierText, "isEqualToString:", v5->_vkIconModifierText))
  {
    v16 = [(NSString *)self->_accessibilityLabel isEqualToString:v5->_accessibilityLabel];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (RouteStepShieldDescriptor)initWithName:(id)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 vkIconModifierText:(id)a6 accessibilityLabel:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = RouteStepShieldDescriptor;
  v16 = [(RouteStepShieldDescriptor *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_dataId = 0;
    objc_storeStrong(&v16->_name, a3);
    text = v17->_text;
    v17->_text = 0;

    v17->_contentScale = a4;
    v17->_sizeGroup = a5;
    objc_storeStrong(&v17->_vkIconModifierText, a6);
    objc_storeStrong(&v17->_accessibilityLabel, a7);
  }

  return v17;
}

- (RouteStepShieldDescriptor)initWithDataId:(unsigned int)a3 text:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 vkIconModifierText:(id)a7 accessibilityLabel:(id)a8
{
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = RouteStepShieldDescriptor;
  v18 = [(RouteStepShieldDescriptor *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_dataId = a3;
    name = v18->_name;
    v18->_name = 0;

    objc_storeStrong(&v19->_text, a4);
    v19->_contentScale = a5;
    v19->_sizeGroup = a6;
    objc_storeStrong(&v19->_vkIconModifierText, a7);
    objc_storeStrong(&v19->_accessibilityLabel, a8);
  }

  return v19;
}

@end