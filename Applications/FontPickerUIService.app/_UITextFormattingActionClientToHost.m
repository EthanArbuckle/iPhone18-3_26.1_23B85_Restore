@interface _UITextFormattingActionClientToHost
+ (id)actionForChangeValue:(id)a3 textAttributesData:(id)a4;
+ (id)actionForDidFinish;
+ (id)actionForPresentColorPickerWithRect:(CGRect)a3 selectedColor:(id)a4;
+ (id)actionForPresentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4;
+ (id)actionForPresentTypographySettingsForFont:(id)a3;
- (void)performActionForSceneController:(id)a3;
@end

@implementation _UITextFormattingActionClientToHost

+ (id)actionForChangeValue:(id)a3 textAttributesData:(id)a4
{
  v6 = a4;
  v7 = [NSData bs_secureDataFromObject:a3];
  v8 = objc_alloc_init(BSMutableSettings);
  [v8 setObject:&off_100099470 forSetting:0];
  [v8 setObject:v6 forSetting:6];

  [v8 setObject:v7 forSetting:1];
  v9 = [[a1 alloc] initWithInfo:v8 responder:0];

  return v9;
}

+ (id)actionForPresentColorPickerWithRect:(CGRect)a3 selectedColor:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [NSData bs_secureDataFromObject:a4];
  v10 = objc_alloc_init(BSMutableSettings);
  [v10 setObject:&off_100099488 forSetting:0];
  [v10 setObject:v9 forSetting:3];
  *v14 = x;
  *&v14[1] = y;
  *&v14[2] = width;
  *&v14[3] = height;
  v11 = [NSValue valueWithBytes:v14 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v10 setObject:v11 forSetting:2];

  v12 = [[a1 alloc] initWithInfo:v10 responder:0];

  return v12;
}

+ (id)actionForPresentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4
{
  v6 = a3;
  v7 = [NSData bs_secureDataFromObject:a4];
  v8 = objc_alloc_init(BSMutableSettings);
  [v8 setObject:&off_1000994A0 forSetting:0];
  [v8 setObject:v6 forSetting:4];

  [v8 setObject:v7 forSetting:5];
  v9 = [[a1 alloc] initWithInfo:v8 responder:0];

  return v9;
}

+ (id)actionForPresentTypographySettingsForFont:(id)a3
{
  v4 = [NSData bs_secureDataFromObject:a3];
  v5 = objc_alloc_init(BSMutableSettings);
  [v5 setObject:&off_1000994B8 forSetting:0];
  [v5 setObject:v4 forSetting:5];
  v6 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForDidFinish
{
  v3 = objc_alloc_init(BSMutableSettings);
  [v3 setObject:&off_1000994D0 forSetting:0];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)a3
{
  v5 = [a3 delegate];
  if (([v5 conformsToProtocol:&OBJC_PROTOCOL____UITextFormattingRemoteViewControllerHost] & 1) == 0)
  {
    v32 = +[NSAssertionHandler currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"_UITextFormattingActionClientToHost.m" lineNumber:95 description:{@"Scene controller's delegate (%@) does not conform to _UITextFormattingRemoteViewControllerHost", objc_opt_class()}];
  }

  v33 = v5;
  v6 = [(_UITextFormattingActionClientToHost *)self info];
  v7 = [v6 objectForSetting:0];
  v8 = [v7 integerValue];

  if (v8 > 1)
  {
    switch(v8)
    {
      case 2:
        v13 = [(_UITextFormattingActionClientToHost *)self info];
        v14 = [v13 objectForSetting:3];
        v9 = [UIColor bs_secureDecodedFromData:v14];

        v15 = [(_UITextFormattingActionClientToHost *)self info];
        v16 = [v15 objectForSetting:2];
        [v16 CGRectValue];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        [v33 _presentColorPicker:v9 selectedColor:{v18, v20, v22, v24}];
LABEL_15:

        goto LABEL_16;
      case 3:
        v25 = [(_UITextFormattingActionClientToHost *)self info];
        v9 = [v25 objectForSetting:4];

        v12 = [NSSet setWithObject:objc_opt_class()];
        v26 = [(_UITextFormattingActionClientToHost *)self info];
        v27 = [v26 objectForSetting:5];
        v28 = [NSArray bs_secureDecodedFromData:v27 withAdditionalClasses:v12];

        [v33 _presentFontPickerWithConfiguration:v9 selectedFonts:v28];
        break;
      case 4:
        v9 = [NSSet setWithObject:objc_opt_class()];
        v10 = [(_UITextFormattingActionClientToHost *)self info];
        v11 = [v10 objectForSetting:5];
        v12 = [UIFont bs_secureDecodedFromData:v11 withAdditionalClasses:v9];

        [v33 _presentTypographySettingsForFont:v12];
        break;
      default:
        goto LABEL_16;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!v8)
  {
    v29 = [(_UITextFormattingActionClientToHost *)self info];
    v30 = [v29 objectForSetting:1];
    v9 = [UITextFormattingViewControllerChangeValue bs_secureDecodedFromData:v30];

    v31 = [(_UITextFormattingActionClientToHost *)self info];
    v12 = [v31 objectForSetting:6];

    [v33 _textFormattingDidChangeValue:v9 textAttributesData:v12];
    goto LABEL_14;
  }

  if (v8 == 1)
  {
    [v33 _textFormattingDidFinish];
  }

LABEL_16:
}

@end