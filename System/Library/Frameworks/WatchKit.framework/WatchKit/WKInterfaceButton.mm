@interface WKInterfaceButton
- (void)setAttributedTitle:(id)title;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundImageData:(id)data;
- (void)setBackgroundImageNamed:(id)named;
- (void)setTitle:(id)title;
@end

@implementation WKInterfaceButton

- (void)setTitle:(id)title
{
  v4 = [title copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"title"];
}

- (void)setAttributedTitle:(id)title
{
  v4 = _WKValidatedAttributedString(title);
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"title"];
}

- (void)setBackgroundColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

- (void)setBackgroundImageData:(id)data
{
  v4 = [data copy];
  [(WKInterfaceObject *)self _setImageData:v4 forProperty:@"image"];
}

- (void)setBackgroundImageNamed:(id)named
{
  v4 = [named copy];
  [(WKInterfaceObject *)self _setImageNamed:v4 forProperty:@"image"];
}

@end