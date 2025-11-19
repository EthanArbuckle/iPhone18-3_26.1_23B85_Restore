@interface PKToolPickerCustomItem
- (BOOL)allowsColorSelection;
- (PKToolPickerCustomItem)initWithConfiguration:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_toolCopyWithColor:(id)a3;
- (id)_toolCopyWithWidth:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAllowsColorSelection:(BOOL)a3;
@end

@implementation PKToolPickerCustomItem

- (PKToolPickerCustomItem)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 defaultColor];
  [v4 defaultWidth];
  v7 = v6;
  v8 = v4;
  v9 = v5;
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
    v15 = [v10 identifier];
    v16 = [(PKCustomTool *)v14 initWithCustomIdentifier:v15 configuration:v11 color:v13 weight:v7];

    v27.receiver = self;
    v27.super_class = PKToolPickerCustomItem;
    v17 = [(PKToolPickerItem *)&v27 initWithTool:v16];
    p_isa = &v17->super.super.isa;
    if (v17)
    {
      objc_storeStrong(&v17->_configuration, v10);
      v19 = [p_isa[3] imageProvider];

      if (v19)
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
  v2 = [(PKToolPickerItem *)self _tool];
  v3 = [v2 _configuration];
  v4 = [v3 supportsColor];

  return v4;
}

- (void)setAllowsColorSelection:(BOOL)a3
{
  v3 = a3;
  if ([(PKToolPickerCustomItem *)self allowsColorSelection]!= a3)
  {
    v5 = [(PKToolPickerItem *)self _tool];
    v6 = [v5 _configuration];
    v15 = [v6 copy];

    v7 = [v15 defaultColor];
    [v15 setSupportsColor:v3 andOpacity:v3 defaultColor:v7];

    if ([v15 supportsColor])
    {
      v8 = [(PKToolPickerItem *)self color];
    }

    else
    {
      v8 = 0;
    }

    v9 = 0.0;
    if ([v15 supportsStrokeWeight])
    {
      [(PKToolPickerItem *)self width];
      v9 = v10;
    }

    v11 = [PKCustomTool alloc];
    v12 = [(PKToolPickerCustomItem *)self configuration];
    v13 = [v12 identifier];
    v14 = [(PKCustomTool *)v11 initWithCustomIdentifier:v13 configuration:v15 color:v8 weight:v9];

    [(PKToolPickerItem *)self _updateTool:v14 shouldCallObserver:1];
  }
}

- (id)_dictionaryRepresentation
{
  v3 = [(PKToolPickerItem *)self _tool];
  v4 = [v3 ink];
  v5 = [v4 dictionaryRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [(PKToolPickerItem *)self identifier];
  [v6 setObject:v7 forKeyedSubscript:@"identifier"];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PKToolPickerItem *)self _tool];
  v6 = [v4 initWithTool:v5];

  if (v6)
  {
    v7 = [(PKToolPickerCustomItemConfiguration *)self->_configuration copy];
    v8 = v6[3];
    v6[3] = v7;
  }

  return v6;
}

- (id)_toolCopyWithColor:(id)a3
{
  v4 = a3;
  v5 = [(PKToolPickerItem *)self _tool];
  v6 = [v5 _configuration];
  v7 = 0.0;
  if ([v6 supportsStrokeWeight])
  {
    [(PKToolPickerItem *)self width];
    v7 = v8;
  }

  v9 = [PKCustomTool alloc];
  v10 = [(PKToolPickerCustomItem *)self configuration];
  v11 = [v10 identifier];
  v12 = [(PKToolPickerItem *)self _tool];
  v13 = [v12 _configuration];
  v14 = [(PKCustomTool *)v9 initWithCustomIdentifier:v11 configuration:v13 color:v4 weight:v7];

  return v14;
}

- (id)_toolCopyWithWidth:(double)a3
{
  v5 = [(PKToolPickerItem *)self _tool];
  v6 = [v5 _configuration];
  if ([v6 supportsColor])
  {
    v7 = [(PKToolPickerItem *)self color];
  }

  else
  {
    v7 = 0;
  }

  v8 = [PKCustomTool alloc];
  v9 = [(PKToolPickerCustomItem *)self configuration];
  v10 = [v9 identifier];
  v11 = [(PKToolPickerItem *)self _tool];
  v12 = [v11 _configuration];
  v13 = [(PKCustomTool *)v8 initWithCustomIdentifier:v10 configuration:v12 color:v7 weight:a3];

  return v13;
}

@end