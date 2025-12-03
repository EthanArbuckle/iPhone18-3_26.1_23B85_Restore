@interface _UITextFormattingActionClientToHost
+ (id)actionForChangeValue:(id)value textAttributesData:(id)data;
+ (id)actionForDidFinish;
+ (id)actionForPresentColorPickerWithRect:(CGRect)rect selectedColor:(id)color;
+ (id)actionForPresentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts;
+ (id)actionForPresentTypographySettingsForFont:(id)font;
- (void)performActionForSceneController:(id)controller;
@end

@implementation _UITextFormattingActionClientToHost

+ (id)actionForChangeValue:(id)value textAttributesData:(id)data
{
  dataCopy = data;
  v7 = [NSData bs_secureDataFromObject:value];
  v8 = objc_alloc_init(BSMutableSettings);
  [v8 setObject:&off_100099470 forSetting:0];
  [v8 setObject:dataCopy forSetting:6];

  [v8 setObject:v7 forSetting:1];
  v9 = [[self alloc] initWithInfo:v8 responder:0];

  return v9;
}

+ (id)actionForPresentColorPickerWithRect:(CGRect)rect selectedColor:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [NSData bs_secureDataFromObject:color];
  v10 = objc_alloc_init(BSMutableSettings);
  [v10 setObject:&off_100099488 forSetting:0];
  [v10 setObject:v9 forSetting:3];
  *v14 = x;
  *&v14[1] = y;
  *&v14[2] = width;
  *&v14[3] = height;
  v11 = [NSValue valueWithBytes:v14 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v10 setObject:v11 forSetting:2];

  v12 = [[self alloc] initWithInfo:v10 responder:0];

  return v12;
}

+ (id)actionForPresentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts
{
  configurationCopy = configuration;
  v7 = [NSData bs_secureDataFromObject:fonts];
  v8 = objc_alloc_init(BSMutableSettings);
  [v8 setObject:&off_1000994A0 forSetting:0];
  [v8 setObject:configurationCopy forSetting:4];

  [v8 setObject:v7 forSetting:5];
  v9 = [[self alloc] initWithInfo:v8 responder:0];

  return v9;
}

+ (id)actionForPresentTypographySettingsForFont:(id)font
{
  v4 = [NSData bs_secureDataFromObject:font];
  v5 = objc_alloc_init(BSMutableSettings);
  [v5 setObject:&off_1000994B8 forSetting:0];
  [v5 setObject:v4 forSetting:5];
  v6 = [[self alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForDidFinish
{
  v3 = objc_alloc_init(BSMutableSettings);
  [v3 setObject:&off_1000994D0 forSetting:0];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)controller
{
  delegate = [controller delegate];
  if (([delegate conformsToProtocol:&OBJC_PROTOCOL____UITextFormattingRemoteViewControllerHost] & 1) == 0)
  {
    v32 = +[NSAssertionHandler currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"_UITextFormattingActionClientToHost.m" lineNumber:95 description:{@"Scene controller's delegate (%@) does not conform to _UITextFormattingRemoteViewControllerHost", objc_opt_class()}];
  }

  v33 = delegate;
  info = [(_UITextFormattingActionClientToHost *)self info];
  v7 = [info objectForSetting:0];
  integerValue = [v7 integerValue];

  if (integerValue > 1)
  {
    switch(integerValue)
    {
      case 2:
        info2 = [(_UITextFormattingActionClientToHost *)self info];
        v14 = [info2 objectForSetting:3];
        v9 = [UIColor bs_secureDecodedFromData:v14];

        info3 = [(_UITextFormattingActionClientToHost *)self info];
        v16 = [info3 objectForSetting:2];
        [v16 CGRectValue];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        [v33 _presentColorPicker:v9 selectedColor:{v18, v20, v22, v24}];
LABEL_15:

        goto LABEL_16;
      case 3:
        info4 = [(_UITextFormattingActionClientToHost *)self info];
        v9 = [info4 objectForSetting:4];

        v12 = [NSSet setWithObject:objc_opt_class()];
        info5 = [(_UITextFormattingActionClientToHost *)self info];
        v27 = [info5 objectForSetting:5];
        v28 = [NSArray bs_secureDecodedFromData:v27 withAdditionalClasses:v12];

        [v33 _presentFontPickerWithConfiguration:v9 selectedFonts:v28];
        break;
      case 4:
        v9 = [NSSet setWithObject:objc_opt_class()];
        info6 = [(_UITextFormattingActionClientToHost *)self info];
        v11 = [info6 objectForSetting:5];
        v12 = [UIFont bs_secureDecodedFromData:v11 withAdditionalClasses:v9];

        [v33 _presentTypographySettingsForFont:v12];
        break;
      default:
        goto LABEL_16;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!integerValue)
  {
    info7 = [(_UITextFormattingActionClientToHost *)self info];
    v30 = [info7 objectForSetting:1];
    v9 = [UITextFormattingViewControllerChangeValue bs_secureDecodedFromData:v30];

    info8 = [(_UITextFormattingActionClientToHost *)self info];
    v12 = [info8 objectForSetting:6];

    [v33 _textFormattingDidChangeValue:v9 textAttributesData:v12];
    goto LABEL_14;
  }

  if (integerValue == 1)
  {
    [v33 _textFormattingDidFinish];
  }

LABEL_16:
}

@end