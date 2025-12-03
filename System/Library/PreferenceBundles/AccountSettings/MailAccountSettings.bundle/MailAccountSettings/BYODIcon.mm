@interface BYODIcon
+ (id)customEmailDomainIcon;
- (BYODIcon)initWithSymbolName:(id)name;
- (BYODIcon)initWithUIImage:(id)image;
- (NSString)symbolName;
- (UIImage)image;
@end

@implementation BYODIcon

+ (id)customEmailDomainIcon
{
  if (MUISolariumFeatureEnabled())
  {
    v2 = [[BYODIcon alloc] initWithSymbolName:@"envelope.badge.person.crop.fill"];
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [UIImage imageNamed:@"CustomDomainIcon.png" inBundle:v3 withConfiguration:0];

    v2 = [[BYODIcon alloc] initWithUIImage:v4];
  }

  return v2;
}

- (BYODIcon)initWithSymbolName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = BYODIcon;
  v5 = [(BYODIcon *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    symbolName = v5->_symbolName;
    v5->_symbolName = v6;

    v5->_iconType = 0;
  }

  return v5;
}

- (BYODIcon)initWithUIImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = BYODIcon;
  v5 = [(BYODIcon *)&v9 init];
  if (v5)
  {
    v6 = [imageCopy copy];
    image = v5->_image;
    v5->_image = v6;

    v5->_iconType = 1;
  }

  return v5;
}

- (UIImage)image
{
  if (self->_iconType != 1)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"BYODIcon.m" lineNumber:47 description:@"BYODIconType should be image"];
  }

  image = self->_image;

  return image;
}

- (NSString)symbolName
{
  if (self->_iconType)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"BYODIcon.m" lineNumber:52 description:@"BYODIconType should be symbolName"];
  }

  symbolName = self->_symbolName;

  return symbolName;
}

@end