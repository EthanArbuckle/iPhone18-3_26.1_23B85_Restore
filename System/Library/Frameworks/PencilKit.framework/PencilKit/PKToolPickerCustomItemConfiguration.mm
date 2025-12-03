@interface PKToolPickerCustomItemConfiguration
- (PKToolConfiguration)_toolConfigurationWithCustomToolItem:(uint64_t)item;
- (PKToolPickerCustomItemConfiguration)initWithIdentifier:(id)identifier name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PKToolPickerCustomItemConfiguration

- (PKToolPickerCustomItemConfiguration)initWithIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = PKToolPickerCustomItemConfiguration;
  v8 = [(PKToolPickerCustomItemConfiguration *)&v18 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v11;

    v8->_defaultWidth = 0.0;
    v13 = objc_alloc_init(MEMORY[0x1E695DF20]);
    widthVariants = v8->_widthVariants;
    v8->_widthVariants = v13;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    defaultColor = v8->_defaultColor;
    v8->_defaultColor = blackColor;

    *&v8->_allowsColorSelection = 0;
    v8->_toolAttributeControls = 3;
  }

  return v8;
}

- (PKToolConfiguration)_toolConfigurationWithCustomToolItem:(uint64_t)item
{
  v3 = a2;
  if (item)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    v5 = objc_alloc_init(MEMORY[0x1E69DC728]);
    v6 = [[PKToolConfiguration alloc] initWithLocalizedName:*(item + 24) baseImage:v4 shadowPath:v5];
    v7 = [*(item + 56) count];
    if (v7 >= 2)
    {
      [(PKToolConfiguration *)v6 setStrokeWeightsToButtonImages:*(item + 56)];
    }

    if (*(item + 8) == 1)
    {
      v8 = *(item + 64);
      v9 = v6;
      v10 = 1;
      v11 = 1;
    }

    else
    {
      v9 = v6;
      v10 = 0;
      v11 = 0;
      v8 = 0;
    }

    [(PKToolConfiguration *)v9 setSupportsColor:v10 andOpacity:v11 defaultColor:v8];
    if (v6)
    {
      v12 = *(item + 72);
      v6->_wantsStrokeWeightControl = v12 & 1;
      v6->_wantsTopLevelOpacityControl = (v12 & 2) != 0;
      v6->_supportsLassoToolEditingView = *(item + 9);
    }

    objc_initWeak(&location, item);
    objc_initWeak(&from, v3);
    imageProvider = [item imageProvider];

    if (imageProvider)
    {
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __76__PKToolPickerCustomItemConfiguration__toolConfigurationWithCustomToolItem___block_invoke;
      newValue[3] = &unk_1E82D8240;
      objc_copyWeak(&v21, &location);
      objc_copyWeak(&v22, &from);
      v23 = v7 > 1;
      if (v6)
      {
        objc_setProperty_nonatomic_copy(v6, v14, newValue, 184);
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&v21);
    }

    viewControllerProvider = [item viewControllerProvider];

    if (viewControllerProvider)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __76__PKToolPickerCustomItemConfiguration__toolConfigurationWithCustomToolItem___block_invoke_2;
      v17[3] = &unk_1E82D8268;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      [(PKToolConfiguration *)v6 setViewControllerProvider:v17];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
    }

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __76__PKToolPickerCustomItemConfiguration__toolConfigurationWithCustomToolItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    if (*(a1 + 48) == 1)
    {
      [v3 weight];
      [v6 setWidth:?];
    }

    if (WeakRetained[8] == 1)
    {
      v7 = [v3 color];
      [v6 setColor:v7];
    }

    v8 = [WeakRetained imageProvider];
    v9 = (v8)[2](v8, v6);
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  }

  return v9;
}

id __76__PKToolPickerCustomItemConfiguration__toolConfigurationWithCustomToolItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = [WeakRetained viewControllerProvider];
    v6 = (v5)[2](v5, v4);
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD258]);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithIdentifier:name:", self->_identifier, self->_name}];
  v5 = [self->_imageProvider copy];
  [v4 setImageProvider:v5];

  v6 = [self->_viewControllerProvider copy];
  [v4 setViewControllerProvider:v6];

  [v4 setDefaultWidth:self->_defaultWidth];
  v7 = [(NSDictionary *)self->_widthVariants copy];
  [v4 setWidthVariants:v7];

  [v4 setDefaultColor:self->_defaultColor];
  [v4 setAllowsColorSelection:self->_allowsColorSelection];
  [v4 setToolAttributeControls:self->_toolAttributeControls];
  [v4 _setSupportsLassoToolEditingView:self->_supportsLassoToolEditingView];
  return v4;
}

- (unint64_t)hash
{
  identifier = [(PKToolPickerCustomItemConfiguration *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end