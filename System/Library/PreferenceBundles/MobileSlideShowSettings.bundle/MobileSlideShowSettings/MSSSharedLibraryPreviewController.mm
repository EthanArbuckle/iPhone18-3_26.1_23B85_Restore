@interface MSSSharedLibraryPreviewController
- (MSSSharedLibraryPreviewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)deepLinkURL;
- (id)pathComponentsLocalizedResource;
- (id)specifiers;
- (void)exitSetup:(id)setup;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setParentController:(id)controller;
- (void)startSetup:(id)setup;
@end

@implementation MSSSharedLibraryPreviewController

- (id)pathComponentsLocalizedResource
{
  v3 = +[MSSSettingsUtilities photosMainPaneLocalizedResource];
  v7[0] = v3;
  paneTitleLocalizedResource = [(MSSSharedLibraryPreviewController *)self paneTitleLocalizedResource];
  v7[1] = paneTitleLocalizedResource;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (id)deepLinkURL
{
  v2 = [NSString stringWithFormat:@"%@/%@/%@", @"settings-navigation://com.apple.Settings.Apps", @"com.apple.mobileslideshow", @"SharedStreamsTitleGroup"];
  v3 = [NSURL URLWithString:v2];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [PSSpecifier preferenceSpecifierNamed:&stru_2D398 target:self set:0 get:0 detail:0 cell:0 edit:0];
    v6 = PXLocalizedSharedLibraryString();
    [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

    v7 = PXLocalizedSharedLibraryString();
    v8 = PXLocalizedSharedLibraryString();
    v9 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v9 setButtonAction:"startSetup:"];
    v10 = PSAllowMultilineTitleKey;
    [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    v11 = [PSSpecifier deleteButtonSpecifierWithName:v8 target:self action:"exitSetup:"];
    [v11 setObject:&off_2FB10 forKeyedSubscript:PSAlignmentKey];
    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:v10];
    v15[0] = v5;
    v15[1] = v9;
    v15[2] = v11;
    v12 = [NSArray arrayWithObjects:v15 count:3];
    v13 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v12;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (off_33368 != context)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MSSSharedLibraryPreviewController.m" lineNumber:83 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v15 = observableCopy;
    statusProvider = [(MSSSharedLibraryPreviewController *)self statusProvider];
    hasPreview = [statusProvider hasPreview];

    observableCopy = v15;
    if ((hasPreview & 1) == 0)
    {
      navigationController = [(MSSSharedLibraryPreviewController *)self navigationController];
      v13 = [navigationController popToRootViewControllerAnimated:1];

      observableCopy = v15;
    }
  }
}

- (void)exitSetup:(id)setup
{
  navigationController = [(MSSSharedLibraryPreviewController *)self navigationController];
  v5 = [PXViewControllerPresenter defaultPresenterWithViewController:navigationController];

  statusProvider = [(MSSSharedLibraryPreviewController *)self statusProvider];
  PXSharedLibraryExitSharedLibraryOrPreview();
}

- (void)startSetup:(id)setup
{
  navigationController = [(MSSSharedLibraryPreviewController *)self navigationController];
  v6 = [PXViewControllerPresenter defaultPresenterWithViewController:navigationController];

  statusProvider = [(MSSSharedLibraryPreviewController *)self statusProvider];
  PXSharedLibrarySetupSharedLibraryOrPreview();
}

- (void)setParentController:(id)controller
{
  controllerCopy = controller;
  v6 = OBJC_IVAR___PSViewController__parentController;
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);

  if (WeakRetained != controllerCopy)
  {
    v8 = objc_loadWeakRetained(&self->PSListController_opaque[v6]);

    if (v8)
    {
      [(PXSharedLibraryStatusProvider *)self->_statusProvider unregisterChangeObserver:self context:off_33368];
      statusProvider = self->_statusProvider;
      self->_statusProvider = 0;
    }

    v20.receiver = self;
    v20.super_class = MSSSharedLibraryPreviewController;
    [(MSSSharedLibraryPreviewController *)&v20 setParentController:controllerCopy];
    v10 = objc_loadWeakRetained(&self->PSListController_opaque[v6]);

    if (v10)
    {
      v11 = controllerCopy;
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_7:
          systemPhotoLibrary = [v11 systemPhotoLibrary];
          v13 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:systemPhotoLibrary];
          v14 = self->_statusProvider;
          self->_statusProvider = v13;

          [(PXSharedLibraryStatusProvider *)self->_statusProvider registerChangeObserver:self context:off_33368];
          goto LABEL_8;
        }

        v15 = +[NSAssertionHandler currentHandler];
        v18 = objc_opt_class();
        v17 = NSStringFromClass(v18);
        px_descriptionForAssertionMessage = [v11 px_descriptionForAssertionMessage];
        [v15 handleFailureInMethod:a2 object:self file:@"MSSSharedLibraryPreviewController.m" lineNumber:51 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"parentController", v17, px_descriptionForAssertionMessage}];
      }

      else
      {
        v15 = +[NSAssertionHandler currentHandler];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        [v15 handleFailureInMethod:a2 object:self file:@"MSSSharedLibraryPreviewController.m" lineNumber:51 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"parentController", v17}];
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (MSSSharedLibraryPreviewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = MSSSharedLibraryPreviewController;
  v4 = [(MSSSharedLibraryPreviewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = PXLocalizedSharedLibraryString();
    [(MSSSharedLibraryPreviewController *)v4 setTitle:v5];
  }

  return v4;
}

@end