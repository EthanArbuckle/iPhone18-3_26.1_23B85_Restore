@interface AFUISiriViewBuilder
+ (BOOL)_carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:(int64_t)a3;
+ (id)buildSiriViewForFrame:(CGRect)a3 configuration:(id)a4 dataSource:(id)a5 delegate:(id)a6 siriContentDelegate:(id)a7 edgeLightViewProvider:(id)a8 instrumentationHandler:(id)a9;
@end

@implementation AFUISiriViewBuilder

+ (id)buildSiriViewForFrame:(CGRect)a3 configuration:(id)a4 dataSource:(id)a5 delegate:(id)a6 siriContentDelegate:(id)a7 edgeLightViewProvider:(id)a8 instrumentationHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  if ([v19 siriViewMode] == 5)
  {
    v25 = [[AFUISiriCarPlayView alloc] initWithFrame:v21 viewDelegate:v24 instrumentationHandler:x, y, width, height];
  }

  else
  {
    if (![v19 allowResizingBetweenModes])
    {
      v31 = [[AFUISiriView alloc] initWithFrame:v19 configuration:x, y, width, height];
      [(AFUISiriView *)v31 setDelegate:v21];
      [(AFUISiriView *)v31 setDataSource:v20];
      goto LABEL_13;
    }

    if ([v19 siriViewMode] == 4 || objc_msgSend(v19, "siriViewMode") == 8)
    {
      v26 = [a1 _carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:{objc_msgSend(v19, "siriViewMode")}];
      v27 = [AFUISiriCompactView alloc];
      v28 = [v19 showsSensitiveUI];
      if (v26)
      {
        v29 = v23;
        v30 = 1;
      }

      else
      {
        v30 = 0;
        v29 = v23;
      }

      v25 = [(AFUISiriCompactView *)v27 initWithFrame:v30 eyesFreeMode:v29 edgeLightViewProvider:v28 showsSensitiveUI:x, y, width, height];
    }

    else
    {
      v25 = -[AFUISiriCompactView initWithFrame:compactViewDelegate:edgeLightViewProvider:showsSensitiveUI:]([AFUISiriCompactView alloc], "initWithFrame:compactViewDelegate:edgeLightViewProvider:showsSensitiveUI:", v21, v23, [v19 showsSensitiveUI], x, y, width, height);
    }
  }

  v31 = v25;
LABEL_13:
  if (objc_opt_respondsToSelector())
  {
    [(AFUISiriView *)v31 setSiriContentDelegate:v22];
  }

  return v31;
}

+ (BOOL)_carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:(int64_t)a3
{
  v4 = [MEMORY[0x277D551B0] sharedSystemState];
  LOBYTE(a3) = [v4 carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:a3 == 8];

  return a3;
}

@end