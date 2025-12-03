@interface PKToolPickerEraserItem
- (PKToolPickerEraserItem)initWithEraserType:(int64_t)type width:(double)width;
- (double)width;
- (id)_dictionaryRepresentation;
- (id)_toolCopyWithWidth:(double)width;
@end

@implementation PKToolPickerEraserItem

- (id)_dictionaryRepresentation
{
  eraserTool = [(PKToolPickerEraserItem *)self eraserTool];
  v3 = [eraserTool ink];
  dictionaryRepresentation = [v3 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (PKToolPickerEraserItem)initWithEraserType:(int64_t)type width:(double)width
{
  v7 = [PKEraserTool alloc];
  if (width > 0.0)
  {
    v8 = [(PKEraserTool *)v7 initWithEraserType:type width:width];
  }

  else
  {
    v8 = [(PKEraserTool *)v7 initWithEraserType:type];
  }

  v9 = v8;
  v12.receiver = self;
  v12.super_class = PKToolPickerEraserItem;
  v10 = [(PKToolPickerItem *)&v12 initWithTool:v8];

  return v10;
}

- (double)width
{
  eraserTool = [(PKToolPickerEraserItem *)self eraserTool];
  [eraserTool width];
  v4 = v3;

  return v4;
}

- (id)_toolCopyWithWidth:(double)width
{
  v5 = [PKEraserTool alloc];
  eraserTool = [(PKToolPickerEraserItem *)self eraserTool];
  v7 = -[PKEraserTool initWithEraserType:width:](v5, "initWithEraserType:width:", [eraserTool eraserType], width);

  return v7;
}

@end