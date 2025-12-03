@interface MKMapItemDetailSelectionAccessoryPresentationStyle
+ (MKMapItemDetailSelectionAccessoryPresentationStyle)callout;
+ (MKMapItemDetailSelectionAccessoryPresentationStyle)openInMaps;
+ (id)automaticWithPresentationViewController:(id)controller;
+ (id)calloutWithCalloutStyle:(int64_t)style;
+ (id)sheetPresentedFromViewController:(id)controller;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMapItemDetailSelectionAccessoryPresentationStyle:(id)style;
- (MKMapItemDetailSelectionAccessoryPresentationStyle)initWithStyle:(int64_t)style calloutStyle:(int64_t)calloutStyle presentationViewController:(id)controller;
- (UIViewController)_presentationViewController;
@end

@implementation MKMapItemDetailSelectionAccessoryPresentationStyle

- (UIViewController)_presentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationViewController);

  return WeakRetained;
}

- (BOOL)isEqualToMapItemDetailSelectionAccessoryPresentationStyle:(id)style
{
  styleCopy = style;
  v5 = styleCopy;
  if (!styleCopy)
  {
    goto LABEL_7;
  }

  if (styleCopy == self)
  {
    v10 = 1;
    goto LABEL_11;
  }

  _style = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)self _style];
  if (_style == [(MKMapItemDetailSelectionAccessoryPresentationStyle *)v5 _style]&& (v7 = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)self _calloutStyle], v7 == [(MKMapItemDetailSelectionAccessoryPresentationStyle *)v5 _calloutStyle]))
  {
    _presentationViewController = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)self _presentationViewController];
    _presentationViewController2 = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)v5 _presentationViewController];
    if (_presentationViewController | _presentationViewController2)
    {
      v10 = [_presentationViewController isEqual:_presentationViewController2];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKMapItemDetailSelectionAccessoryPresentationStyle *)self isEqualToMapItemDetailSelectionAccessoryPresentationStyle:v5];
  }

  return v6;
}

- (MKMapItemDetailSelectionAccessoryPresentationStyle)initWithStyle:(int64_t)style calloutStyle:(int64_t)calloutStyle presentationViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = MKMapItemDetailSelectionAccessoryPresentationStyle;
  v9 = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_style = style;
    v9->_calloutStyle = calloutStyle;
    objc_storeWeak(&v9->_presentationViewController, controllerCopy);
  }

  return v10;
}

+ (MKMapItemDetailSelectionAccessoryPresentationStyle)openInMaps
{
  v2 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:3 calloutStyle:0 presentationViewController:0];

  return v2;
}

+ (id)sheetPresentedFromViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:2 calloutStyle:0 presentationViewController:controllerCopy];

  return v4;
}

+ (id)calloutWithCalloutStyle:(int64_t)style
{
  v3 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:1 calloutStyle:style presentationViewController:0];

  return v3;
}

+ (MKMapItemDetailSelectionAccessoryPresentationStyle)callout
{
  v2 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:1 calloutStyle:0 presentationViewController:0];

  return v2;
}

+ (id)automaticWithPresentationViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:0 calloutStyle:0 presentationViewController:controllerCopy];

  return v4;
}

@end