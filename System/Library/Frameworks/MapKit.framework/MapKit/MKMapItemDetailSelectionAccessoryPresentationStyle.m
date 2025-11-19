@interface MKMapItemDetailSelectionAccessoryPresentationStyle
+ (MKMapItemDetailSelectionAccessoryPresentationStyle)callout;
+ (MKMapItemDetailSelectionAccessoryPresentationStyle)openInMaps;
+ (id)automaticWithPresentationViewController:(id)a3;
+ (id)calloutWithCalloutStyle:(int64_t)a3;
+ (id)sheetPresentedFromViewController:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMapItemDetailSelectionAccessoryPresentationStyle:(id)a3;
- (MKMapItemDetailSelectionAccessoryPresentationStyle)initWithStyle:(int64_t)a3 calloutStyle:(int64_t)a4 presentationViewController:(id)a5;
- (UIViewController)_presentationViewController;
@end

@implementation MKMapItemDetailSelectionAccessoryPresentationStyle

- (UIViewController)_presentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationViewController);

  return WeakRetained;
}

- (BOOL)isEqualToMapItemDetailSelectionAccessoryPresentationStyle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (v4 == self)
  {
    v10 = 1;
    goto LABEL_11;
  }

  v6 = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)self _style];
  if (v6 == [(MKMapItemDetailSelectionAccessoryPresentationStyle *)v5 _style]&& (v7 = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)self _calloutStyle], v7 == [(MKMapItemDetailSelectionAccessoryPresentationStyle *)v5 _calloutStyle]))
  {
    v8 = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)self _presentationViewController];
    v9 = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)v5 _presentationViewController];
    if (v8 | v9)
    {
      v10 = [v8 isEqual:v9];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKMapItemDetailSelectionAccessoryPresentationStyle *)self isEqualToMapItemDetailSelectionAccessoryPresentationStyle:v5];
  }

  return v6;
}

- (MKMapItemDetailSelectionAccessoryPresentationStyle)initWithStyle:(int64_t)a3 calloutStyle:(int64_t)a4 presentationViewController:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = MKMapItemDetailSelectionAccessoryPresentationStyle;
  v9 = [(MKMapItemDetailSelectionAccessoryPresentationStyle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_style = a3;
    v9->_calloutStyle = a4;
    objc_storeWeak(&v9->_presentationViewController, v8);
  }

  return v10;
}

+ (MKMapItemDetailSelectionAccessoryPresentationStyle)openInMaps
{
  v2 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:3 calloutStyle:0 presentationViewController:0];

  return v2;
}

+ (id)sheetPresentedFromViewController:(id)a3
{
  v3 = a3;
  v4 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:2 calloutStyle:0 presentationViewController:v3];

  return v4;
}

+ (id)calloutWithCalloutStyle:(int64_t)a3
{
  v3 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:1 calloutStyle:a3 presentationViewController:0];

  return v3;
}

+ (MKMapItemDetailSelectionAccessoryPresentationStyle)callout
{
  v2 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:1 calloutStyle:0 presentationViewController:0];

  return v2;
}

+ (id)automaticWithPresentationViewController:(id)a3
{
  v3 = a3;
  v4 = [[MKMapItemDetailSelectionAccessoryPresentationStyle alloc] initWithStyle:0 calloutStyle:0 presentationViewController:v3];

  return v4;
}

@end