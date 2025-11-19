@interface CameraSettingsBaseController
+ (CAMCaptureCapabilities)capabilities;
+ (NSNumberFormatter)integerFormatter;
+ (void)allowMultilineTitlesForSpecifiers:(id)a3;
- (id)groupSpecifierWithTitle:(id)a3 footer:(id)a4 identifier:(id)a5;
- (void)reloadSpecifiers;
- (void)viewDidLoad;
@end

@implementation CameraSettingsBaseController

+ (CAMCaptureCapabilities)capabilities
{
  if (qword_36A90 != -1)
  {
    sub_1B7B0();
  }

  if (byte_36A98 == 1)
  {
    if (qword_36AA0 != -1)
    {
      sub_1B7D8();
    }

    v2 = &qword_36AA8;
  }

  else
  {
    if (qword_36AB0 != -1)
    {
      sub_1B7C4();
    }

    v2 = &qword_36AB8;
  }

  v3 = *v2;

  return v3;
}

- (void)reloadSpecifiers
{
  byte_36A98 = +[CAMCaptureCapabilities isCameraAppInstalled];
  v3.receiver = self;
  v3.super_class = CameraSettingsBaseController;
  [(CameraSettingsBaseController *)&v3 reloadSpecifiers];
}

- (void)viewDidLoad
{
  byte_36A98 = +[CAMCaptureCapabilities isCameraAppInstalled];
  v3.receiver = self;
  v3.super_class = CameraSettingsBaseController;
  [(CameraSettingsBaseController *)&v3 viewDidLoad];
}

+ (void)allowMultilineTitlesForSpecifiers:(id)a3
{
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    v7 = PSAllowMultilineTitleKey;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v8) setProperty:&__kCFBooleanTrue forKey:v7];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (NSNumberFormatter)integerFormatter
{
  if (qword_36AC0 != -1)
  {
    sub_1B7EC();
  }

  v3 = qword_36AC8;

  return v3;
}

- (id)groupSpecifierWithTitle:(id)a3 footer:(id)a4 identifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [PSSpecifier groupSpecifierWithID:a5];
  if (v7)
  {
    v10 = sub_3A24(v7);
    [v9 setName:v10];
  }

  if (v8)
  {
    v11 = sub_3A24(v8);
    [v9 setObject:v11 forKeyedSubscript:PSFooterTextGroupKey];
  }

  return v9;
}

@end