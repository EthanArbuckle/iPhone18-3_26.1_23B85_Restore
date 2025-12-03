@interface PKToolPickerCustomItem
- (BOOL)allowsColorSelection;
- (PKToolPickerCustomItem)initWithConfiguration:(id)configuration;
- (id)_dictionaryRepresentation;
- (id)_toolCopyWithColor:(id)color;
- (id)_toolCopyWithWidth:(double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAllowsColorSelection:(BOOL)selection;
@end

@implementation PKToolPickerCustomItem

- (PKToolPickerCustomItem)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  defaultColor = [configurationCopy defaultColor];
  [configurationCopy defaultWidth];
  v7 = v6;
  v8 = configurationCopy;
  v9 = defaultColor;
  if (self)
  {
    v10 = [v8 copy];
    v11 = [(PKToolPickerCustomItemConfiguration *)v10 _toolConfigurationWithCustomToolItem:?];
    if ([v11 supportsColor])
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    if (![v11 supportsStrokeWeight])
    {
      v7 = 0.0;
    }

    v14 = [PKCustomTool alloc];
    identifier = [v10 identifier];
    v16 = [(PKCustomTool *)v14 initWithCustomIdentifier:identifier configuration:v11 color:v13 weight:v7];

    v27.receiver = self;
    v27.super_class = PKToolPickerCustomItem;
    v17 = [(PKToolPickerItem *)&v27 initWithTool:v16];
    p_isa = &v17->super.super.isa;
    if (v17)
    {
      objc_storeStrong(&v17->_configuration, v10);
      imageProvider = [p_isa[3] imageProvider];

      if (imageProvider)
      {
        objc_initWeak(&location, p_isa);
        v24 = MEMORY[0x1E69E9820];
        objc_copyWeak(&v25, &location);
        v20 = [(PKTool *)v16 _configuration:v24];
        v22 = v20;
        if (v20)
        {
          objc_setProperty_nonatomic_copy(v20, v21, &v24, 184);
        }

        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }
    }

    self = p_isa;
  }

  return self;
}

id __60__PKToolPickerCustomItem_initWithConfiguration_color_width___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained copy];
    v7 = [v3 colorForUIAllowHDR:1];
    [v6 _setColor:v7 shouldCallObserver:0];
    [v3 weight];
    v9 = v8;
    v10 = 0.0;
    if (v9 >= 0.0)
    {
      [v3 weight];
    }

    [v6 _setWidth:0 shouldCallObserver:v10];
    v11 = [v5 configuration];
    v12 = [v11 imageProvider];
    v13 = (v12)[2](v12, v6);
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  }

  return v13;
}

- (BOOL)allowsColorSelection
{
  _tool = [(PKToolPickerItem *)self _tool];
  _configuration = [_tool _configuration];
  supportsColor = [_configuration supportsColor];

  return supportsColor;
}

- (void)setAllowsColorSelection:(BOOL)selection
{
  selectionCopy = selection;
  if ([(PKToolPickerCustomItem *)self allowsColorSelection]!= selection)
  {
    _tool = [(PKToolPickerItem *)self _tool];
    _configuration = [_tool _configuration];
    v15 = [_configuration copy];

    defaultColor = [v15 defaultColor];
    [v15 setSupportsColor:selectionCopy andOpacity:selectionCopy defaultColor:defaultColor];

    if ([v15 supportsColor])
    {
      color = [(PKToolPickerItem *)self color];
    }

    else
    {
      color = 0;
    }

    v9 = 0.0;
    if ([v15 supportsStrokeWeight])
    {
      [(PKToolPickerItem *)self width];
      v9 = v10;
    }

    v11 = [PKCustomTool alloc];
    configuration = [(PKToolPickerCustomItem *)self configuration];
    identifier = [configuration identifier];
    v14 = [(PKCustomTool *)v11 initWithCustomIdentifier:identifier configuration:v15 color:color weight:v9];

    [(PKToolPickerItem *)self _updateTool:v14 shouldCallObserver:1];
  }
}

- (id)_dictionaryRepresentation
{
  _tool = [(PKToolPickerItem *)self _tool];
  v4 = [_tool ink];
  dictionaryRepresentation = [v4 dictionaryRepresentation];
  v6 = [dictionaryRepresentation mutableCopy];

  identifier = [(PKToolPickerItem *)self identifier];
  [v6 setObject:identifier forKeyedSubscript:@"identifier"];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  _tool = [(PKToolPickerItem *)self _tool];
  v6 = [v4 initWithTool:_tool];

  if (v6)
  {
    v7 = [(PKToolPickerCustomItemConfiguration *)self->_configuration copy];
    v8 = v6[3];
    v6[3] = v7;
  }

  return v6;
}

- (id)_toolCopyWithColor:(id)color
{
  colorCopy = color;
  _tool = [(PKToolPickerItem *)self _tool];
  _configuration = [_tool _configuration];
  v7 = 0.0;
  if ([_configuration supportsStrokeWeight])
  {
    [(PKToolPickerItem *)self width];
    v7 = v8;
  }

  v9 = [PKCustomTool alloc];
  configuration = [(PKToolPickerCustomItem *)self configuration];
  identifier = [configuration identifier];
  _tool2 = [(PKToolPickerItem *)self _tool];
  _configuration2 = [_tool2 _configuration];
  v14 = [(PKCustomTool *)v9 initWithCustomIdentifier:identifier configuration:_configuration2 color:colorCopy weight:v7];

  return v14;
}

- (id)_toolCopyWithWidth:(double)width
{
  _tool = [(PKToolPickerItem *)self _tool];
  _configuration = [_tool _configuration];
  if ([_configuration supportsColor])
  {
    color = [(PKToolPickerItem *)self color];
  }

  else
  {
    color = 0;
  }

  v8 = [PKCustomTool alloc];
  configuration = [(PKToolPickerCustomItem *)self configuration];
  identifier = [configuration identifier];
  _tool2 = [(PKToolPickerItem *)self _tool];
  _configuration2 = [_tool2 _configuration];
  v13 = [(PKCustomTool *)v8 initWithCustomIdentifier:identifier configuration:_configuration2 color:color weight:width];

  return v13;
}

@end