@interface PKToolPickerInkingItem
+ (PKToolPickerInkingItem)_defaultInkingItemForType:(uint64_t)a1;
- (BOOL)allowsColorSelection;
- (PKInkingTool)inkingTool;
- (PKToolPickerInkingItem)initWithInkType:(id)a3;
- (PKToolPickerInkingItem)initWithInkType:(id)a3 color:(id)a4;
- (PKToolPickerInkingItem)initWithInkType:(id)a3 color:(id)a4 width:(double)a5 azimuth:(double)a6 identifier:(id)a7;
- (PKToolPickerInkingItem)initWithInkType:(id)a3 color:(id)a4 width:(double)a5 identifier:(id)a6;
- (PKToolPickerInkingItem)initWithInkType:(id)a3 width:(double)a4;
- (double)width;
- (id)_dictionaryRepresentation;
- (id)_toolCopyWithColor:(id)a3;
- (id)_toolCopyWithWidth:(double)a3;
- (void)setAllowsColorSelection:(BOOL)a3;
@end

@implementation PKToolPickerInkingItem

- (PKInkingTool)inkingTool
{
  v3 = objc_opt_class();
  v4 = [(PKToolPickerItem *)self _tool];
  v5 = PKDynamicCast(v3, v4);

  return v5;
}

- (id)_dictionaryRepresentation
{
  v3 = [(PKToolPickerInkingItem *)self inkingTool];
  v4 = [v3 ink];
  v5 = [v4 dictionaryRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [(PKToolPickerItem *)self identifier];
  [v6 setObject:v7 forKeyedSubscript:@"identifier"];

  return v6;
}

- (PKToolPickerInkingItem)initWithInkType:(id)a3
{
  v4 = a3;
  v5 = [PKToolConfiguration defaultColorForInkingToolWithIdentifier:v4];
  [PKInkingTool defaultWidthForInkType:v4];
  v6 = [(PKToolPickerInkingItem *)self initWithInkType:v4 color:v5 width:0 identifier:?];

  return v6;
}

- (PKToolPickerInkingItem)initWithInkType:(id)a3 color:(id)a4
{
  v6 = a4;
  v7 = a3;
  [PKInkingTool defaultWidthForInkType:v7];
  v8 = [(PKToolPickerInkingItem *)self initWithInkType:v7 color:v6 width:0 identifier:?];

  return v8;
}

- (PKToolPickerInkingItem)initWithInkType:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [PKToolConfiguration defaultColorForInkingToolWithIdentifier:v6];
  v8 = [(PKToolPickerInkingItem *)self initWithInkType:v6 color:v7 width:0 identifier:a4];

  return v8;
}

- (PKToolPickerInkingItem)initWithInkType:(id)a3 color:(id)a4 width:(double)a5 identifier:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[PKInkingTool alloc] initWithInkType:v12 color:v11 width:a5];

  v16.receiver = self;
  v16.super_class = PKToolPickerInkingItem;
  v14 = [(PKToolPickerItem *)&v16 initWithTool:v13 identifier:v10];

  return v14;
}

- (PKToolPickerInkingItem)initWithInkType:(id)a3 color:(id)a4 width:(double)a5 azimuth:(double)a6 identifier:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [[PKInkingTool alloc] initWithInkType:v14 color:v13 width:a5 azimuth:a6];

  v18.receiver = self;
  v18.super_class = PKToolPickerInkingItem;
  v16 = [(PKToolPickerItem *)&v18 initWithTool:v15 identifier:v12];

  return v16;
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
  v5 = [(PKToolPickerItem *)self _tool];
  v6 = [v5 _configuration];
  v14 = [v6 copy];

  v7 = [v14 defaultColor];
  [v14 setSupportsColor:v3 andOpacity:v3 defaultColor:v7];

  v8 = [PKInkingTool alloc];
  v9 = [(PKToolPickerInkingItem *)self inkingTool];
  v10 = [v9 ink];
  v11 = [(PKTool *)v8 _initWithInk:v10 configuration:v14];

  v12 = [(PKToolPickerItem *)self _tool];
  v13 = [v12 _toolPickerItemIdentifier];
  [v11 _setToolPickerItemIdentifier:v13];

  [(PKToolPickerItem *)self _updateTool:v11 shouldCallObserver:1];
}

- (double)width
{
  v2 = [(PKToolPickerInkingItem *)self inkingTool];
  [v2 width];
  v4 = v3;

  return v4;
}

+ (PKToolPickerInkingItem)_defaultInkingItemForType:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [PKToolConfiguration defaultColorForInkingToolWithIdentifier:v2];
  [PKInkingTool defaultWidthForInkType:v2];
  v5 = [[PKToolPickerInkingItem alloc] initWithInkType:v2 color:v3 width:v4];

  return v5;
}

- (id)_toolCopyWithWidth:(double)a3
{
  v5 = [(PKToolPickerInkingItem *)self inkingTool];
  v6 = [v5 ink];
  v7 = [v6 inkType];
  [PKInkingTool _weightForWidth:v7 type:a3];
  v9 = v8;

  v10 = [v6 inkType];
  v11 = [v6 color];
  [v6 _azimuth];
  v13 = [PKInk inkWithType:v10 color:v11 weight:v9 azimuth:v12];

  v14 = [PKInkingTool alloc];
  v15 = [v5 _configuration];
  v16 = [(PKTool *)v14 _initWithInk:v13 configuration:v15];

  v17 = [(PKToolPickerItem *)self _tool];
  v18 = [v17 _toolPickerItemIdentifier];
  [v16 _setToolPickerItemIdentifier:v18];

  return v16;
}

- (id)_toolCopyWithColor:(id)a3
{
  v4 = a3;
  v5 = [(PKToolPickerInkingItem *)self inkingTool];
  v6 = [v5 ink];
  v7 = [v6 inkType];
  [v6 weight];
  v9 = v8;
  [v6 _azimuth];
  v11 = [PKInk inkWithType:v7 color:v4 weight:v9 azimuth:v10];

  v12 = [PKInkingTool alloc];
  v13 = [v5 _configuration];
  v14 = [(PKTool *)v12 _initWithInk:v11 configuration:v13];

  v15 = [(PKToolPickerItem *)self _tool];
  v16 = [v15 _toolPickerItemIdentifier];
  [v14 _setToolPickerItemIdentifier:v16];

  return v14;
}

@end