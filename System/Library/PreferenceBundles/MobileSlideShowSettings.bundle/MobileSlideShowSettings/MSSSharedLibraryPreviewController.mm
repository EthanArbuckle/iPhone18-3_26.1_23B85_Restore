@interface MSSSharedLibraryPreviewController
- (MSSSharedLibraryPreviewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)deepLinkURL;
- (id)pathComponentsLocalizedResource;
- (id)specifiers;
- (void)exitSetup:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setParentController:(id)a3;
- (void)startSetup:(id)a3;
@end

@implementation MSSSharedLibraryPreviewController

- (id)pathComponentsLocalizedResource
{
  v3 = +[MSSSettingsUtilities photosMainPaneLocalizedResource];
  v7[0] = v3;
  v4 = [(MSSSharedLibraryPreviewController *)self paneTitleLocalizedResource];
  v7[1] = v4;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (off_33368 != a5)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MSSSharedLibraryPreviewController.m" lineNumber:83 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v15 = v9;
    v10 = [(MSSSharedLibraryPreviewController *)self statusProvider];
    v11 = [v10 hasPreview];

    v9 = v15;
    if ((v11 & 1) == 0)
    {
      v12 = [(MSSSharedLibraryPreviewController *)self navigationController];
      v13 = [v12 popToRootViewControllerAnimated:1];

      v9 = v15;
    }
  }
}

- (void)exitSetup:(id)a3
{
  v4 = [(MSSSharedLibraryPreviewController *)self navigationController];
  v5 = [PXViewControllerPresenter defaultPresenterWithViewController:v4];

  v6 = [(MSSSharedLibraryPreviewController *)self statusProvider];
  PXSharedLibraryExitSharedLibraryOrPreview();
}

- (void)startSetup:(id)a3
{
  v4 = [(MSSSharedLibraryPreviewController *)self navigationController];
  v6 = [PXViewControllerPresenter defaultPresenterWithViewController:v4];

  v5 = [(MSSSharedLibraryPreviewController *)self statusProvider];
  PXSharedLibrarySetupSharedLibraryOrPreview();
}

- (void)setParentController:(id)a3
{
  v5 = a3;
  v6 = OBJC_IVAR___PSViewController__parentController;
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);

  if (WeakRetained != v5)
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
    [(MSSSharedLibraryPreviewController *)&v20 setParentController:v5];
    v10 = objc_loadWeakRetained(&self->PSListController_opaque[v6]);

    if (v10)
    {
      v11 = v5;
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_7:
          v12 = [v11 systemPhotoLibrary];
          v13 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v12];
          v14 = self->_statusProvider;
          self->_statusProvider = v13;

          [(PXSharedLibraryStatusProvider *)self->_statusProvider registerChangeObserver:self context:off_33368];
          goto LABEL_8;
        }

        v15 = +[NSAssertionHandler currentHandler];
        v18 = objc_opt_class();
        v17 = NSStringFromClass(v18);
        v19 = [v11 px_descriptionForAssertionMessage];
        [v15 handleFailureInMethod:a2 object:self file:@"MSSSharedLibraryPreviewController.m" lineNumber:51 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"parentController", v17, v19}];
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

- (MSSSharedLibraryPreviewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = MSSSharedLibraryPreviewController;
  v4 = [(MSSSharedLibraryPreviewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = PXLocalizedSharedLibraryString();
    [(MSSSharedLibraryPreviewController *)v4 setTitle:v5];
  }

  return v4;
}

@end