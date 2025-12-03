@interface PKToolPickerInkingItem
+ (PKToolPickerInkingItem)_defaultInkingItemForType:(uint64_t)type;
- (BOOL)allowsColorSelection;
- (PKInkingTool)inkingTool;
- (PKToolPickerInkingItem)initWithInkType:(id)type;
- (PKToolPickerInkingItem)initWithInkType:(id)type color:(id)color;
- (PKToolPickerInkingItem)initWithInkType:(id)type color:(id)color width:(double)width azimuth:(double)azimuth identifier:(id)identifier;
- (PKToolPickerInkingItem)initWithInkType:(id)type color:(id)color width:(double)width identifier:(id)identifier;
- (PKToolPickerInkingItem)initWithInkType:(id)type width:(double)width;
- (double)width;
- (id)_dictionaryRepresentation;
- (id)_toolCopyWithColor:(id)color;
- (id)_toolCopyWithWidth:(double)width;
- (void)setAllowsColorSelection:(BOOL)selection;
@end

@implementation PKToolPickerInkingItem

- (PKInkingTool)inkingTool
{
  v3 = objc_opt_class();
  _tool = [(PKToolPickerItem *)self _tool];
  v5 = PKDynamicCast(v3, _tool);

  return v5;
}

- (id)_dictionaryRepresentation
{
  inkingTool = [(PKToolPickerInkingItem *)self inkingTool];
  v4 = [inkingTool ink];
  dictionaryRepresentation = [v4 dictionaryRepresentation];
  v6 = [dictionaryRepresentation mutableCopy];

  identifier = [(PKToolPickerItem *)self identifier];
  [v6 setObject:identifier forKeyedSubscript:@"identifier"];

  return v6;
}

- (PKToolPickerInkingItem)initWithInkType:(id)type
{
  typeCopy = type;
  v5 = [PKToolConfiguration defaultColorForInkingToolWithIdentifier:typeCopy];
  [PKInkingTool defaultWidthForInkType:typeCopy];
  v6 = [(PKToolPickerInkingItem *)self initWithInkType:typeCopy color:v5 width:0 identifier:?];

  return v6;
}

- (PKToolPickerInkingItem)initWithInkType:(id)type color:(id)color
{
  colorCopy = color;
  typeCopy = type;
  [PKInkingTool defaultWidthForInkType:typeCopy];
  v8 = [(PKToolPickerInkingItem *)self initWithInkType:typeCopy color:colorCopy width:0 identifier:?];

  return v8;
}

- (PKToolPickerInkingItem)initWithInkType:(id)type width:(double)width
{
  typeCopy = type;
  v7 = [PKToolConfiguration defaultColorForInkingToolWithIdentifier:typeCopy];
  v8 = [(PKToolPickerInkingItem *)self initWithInkType:typeCopy color:v7 width:0 identifier:width];

  return v8;
}

- (PKToolPickerInkingItem)initWithInkType:(id)type color:(id)color width:(double)width identifier:(id)identifier
{
  identifierCopy = identifier;
  colorCopy = color;
  typeCopy = type;
  v13 = [[PKInkingTool alloc] initWithInkType:typeCopy color:colorCopy width:width];

  v16.receiver = self;
  v16.super_class = PKToolPickerInkingItem;
  v14 = [(PKToolPickerItem *)&v16 initWithTool:v13 identifier:identifierCopy];

  return v14;
}

- (PKToolPickerInkingItem)initWithInkType:(id)type color:(id)color width:(double)width azimuth:(double)azimuth identifier:(id)identifier
{
  identifierCopy = identifier;
  colorCopy = color;
  typeCopy = type;
  v15 = [[PKInkingTool alloc] initWithInkType:typeCopy color:colorCopy width:width azimuth:azimuth];

  v18.receiver = self;
  v18.super_class = PKToolPickerInkingItem;
  v16 = [(PKToolPickerItem *)&v18 initWithTool:v15 identifier:identifierCopy];

  return v16;
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
  _tool = [(PKToolPickerItem *)self _tool];
  _configuration = [_tool _configuration];
  v14 = [_configuration copy];

  defaultColor = [v14 defaultColor];
  [v14 setSupportsColor:selectionCopy andOpacity:selectionCopy defaultColor:defaultColor];

  v8 = [PKInkingTool alloc];
  inkingTool = [(PKToolPickerInkingItem *)self inkingTool];
  v10 = [inkingTool ink];
  v11 = [(PKTool *)v8 _initWithInk:v10 configuration:v14];

  _tool2 = [(PKToolPickerItem *)self _tool];
  _toolPickerItemIdentifier = [_tool2 _toolPickerItemIdentifier];
  [v11 _setToolPickerItemIdentifier:_toolPickerItemIdentifier];

  [(PKToolPickerItem *)self _updateTool:v11 shouldCallObserver:1];
}

- (double)width
{
  inkingTool = [(PKToolPickerInkingItem *)self inkingTool];
  [inkingTool width];
  v4 = v3;

  return v4;
}

+ (PKToolPickerInkingItem)_defaultInkingItemForType:(uint64_t)type
{
  v2 = a2;
  objc_opt_self();
  v3 = [PKToolConfiguration defaultColorForInkingToolWithIdentifier:v2];
  [PKInkingTool defaultWidthForInkType:v2];
  v5 = [[PKToolPickerInkingItem alloc] initWithInkType:v2 color:v3 width:v4];

  return v5;
}

- (id)_toolCopyWithWidth:(double)width
{
  inkingTool = [(PKToolPickerInkingItem *)self inkingTool];
  v6 = [inkingTool ink];
  inkType = [v6 inkType];
  [PKInkingTool _weightForWidth:inkType type:width];
  v9 = v8;

  inkType2 = [v6 inkType];
  color = [v6 color];
  [v6 _azimuth];
  v13 = [PKInk inkWithType:inkType2 color:color weight:v9 azimuth:v12];

  v14 = [PKInkingTool alloc];
  _configuration = [inkingTool _configuration];
  v16 = [(PKTool *)v14 _initWithInk:v13 configuration:_configuration];

  _tool = [(PKToolPickerItem *)self _tool];
  _toolPickerItemIdentifier = [_tool _toolPickerItemIdentifier];
  [v16 _setToolPickerItemIdentifier:_toolPickerItemIdentifier];

  return v16;
}

- (id)_toolCopyWithColor:(id)color
{
  colorCopy = color;
  inkingTool = [(PKToolPickerInkingItem *)self inkingTool];
  v6 = [inkingTool ink];
  inkType = [v6 inkType];
  [v6 weight];
  v9 = v8;
  [v6 _azimuth];
  v11 = [PKInk inkWithType:inkType color:colorCopy weight:v9 azimuth:v10];

  v12 = [PKInkingTool alloc];
  _configuration = [inkingTool _configuration];
  v14 = [(PKTool *)v12 _initWithInk:v11 configuration:_configuration];

  _tool = [(PKToolPickerItem *)self _tool];
  _toolPickerItemIdentifier = [_tool _toolPickerItemIdentifier];
  [v14 _setToolPickerItemIdentifier:_toolPickerItemIdentifier];

  return v14;
}

@end