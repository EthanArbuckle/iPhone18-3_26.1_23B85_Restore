@interface AFUISiriViewBuilder
+ (BOOL)_carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:(int64_t)presentation;
+ (id)buildSiriViewForFrame:(CGRect)frame configuration:(id)configuration dataSource:(id)source delegate:(id)delegate siriContentDelegate:(id)contentDelegate edgeLightViewProvider:(id)provider instrumentationHandler:(id)handler;
@end

@implementation AFUISiriViewBuilder

+ (id)buildSiriViewForFrame:(CGRect)frame configuration:(id)configuration dataSource:(id)source delegate:(id)delegate siriContentDelegate:(id)contentDelegate edgeLightViewProvider:(id)provider instrumentationHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  sourceCopy = source;
  delegateCopy = delegate;
  contentDelegateCopy = contentDelegate;
  providerCopy = provider;
  handlerCopy = handler;
  if ([configurationCopy siriViewMode] == 5)
  {
    height = [[AFUISiriCarPlayView alloc] initWithFrame:delegateCopy viewDelegate:handlerCopy instrumentationHandler:x, y, width, height];
  }

  else
  {
    if (![configurationCopy allowResizingBetweenModes])
    {
      height2 = [[AFUISiriView alloc] initWithFrame:configurationCopy configuration:x, y, width, height];
      [(AFUISiriView *)height2 setDelegate:delegateCopy];
      [(AFUISiriView *)height2 setDataSource:sourceCopy];
      goto LABEL_13;
    }

    if ([configurationCopy siriViewMode] == 4 || objc_msgSend(configurationCopy, "siriViewMode") == 8)
    {
      v26 = [self _carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:{objc_msgSend(configurationCopy, "siriViewMode")}];
      v27 = [AFUISiriCompactView alloc];
      showsSensitiveUI = [configurationCopy showsSensitiveUI];
      if (v26)
      {
        v29 = providerCopy;
        v30 = 1;
      }

      else
      {
        v30 = 0;
        v29 = providerCopy;
      }

      height = [(AFUISiriCompactView *)v27 initWithFrame:v30 eyesFreeMode:v29 edgeLightViewProvider:showsSensitiveUI showsSensitiveUI:x, y, width, height];
    }

    else
    {
      height = -[AFUISiriCompactView initWithFrame:compactViewDelegate:edgeLightViewProvider:showsSensitiveUI:]([AFUISiriCompactView alloc], "initWithFrame:compactViewDelegate:edgeLightViewProvider:showsSensitiveUI:", delegateCopy, providerCopy, [configurationCopy showsSensitiveUI], x, y, width, height);
    }
  }

  height2 = height;
LABEL_13:
  if (objc_opt_respondsToSelector())
  {
    [(AFUISiriView *)height2 setSiriContentDelegate:contentDelegateCopy];
  }

  return height2;
}

+ (BOOL)_carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:(int64_t)presentation
{
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  LOBYTE(presentation) = [mEMORY[0x277D551B0] carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:presentation == 8];

  return presentation;
}

@end