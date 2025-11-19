@interface PKToolPickerEraserItem
- (PKToolPickerEraserItem)initWithEraserType:(int64_t)a3 width:(double)a4;
- (double)width;
- (id)_dictionaryRepresentation;
- (id)_toolCopyWithWidth:(double)a3;
@end

@implementation PKToolPickerEraserItem

- (id)_dictionaryRepresentation
{
  v2 = [(PKToolPickerEraserItem *)self eraserTool];
  v3 = [v2 ink];
  v4 = [v3 dictionaryRepresentation];

  return v4;
}

- (PKToolPickerEraserItem)initWithEraserType:(int64_t)a3 width:(double)a4
{
  v7 = [PKEraserTool alloc];
  if (a4 > 0.0)
  {
    v8 = [(PKEraserTool *)v7 initWithEraserType:a3 width:a4];
  }

  else
  {
    v8 = [(PKEraserTool *)v7 initWithEraserType:a3];
  }

  v9 = v8;
  v12.receiver = self;
  v12.super_class = PKToolPickerEraserItem;
  v10 = [(PKToolPickerItem *)&v12 initWithTool:v8];

  return v10;
}

- (double)width
{
  v2 = [(PKToolPickerEraserItem *)self eraserTool];
  [v2 width];
  v4 = v3;

  return v4;
}

- (id)_toolCopyWithWidth:(double)a3
{
  v5 = [PKEraserTool alloc];
  v6 = [(PKToolPickerEraserItem *)self eraserTool];
  v7 = -[PKEraserTool initWithEraserType:width:](v5, "initWithEraserType:width:", [v6 eraserType], a3);

  return v7;
}

@end