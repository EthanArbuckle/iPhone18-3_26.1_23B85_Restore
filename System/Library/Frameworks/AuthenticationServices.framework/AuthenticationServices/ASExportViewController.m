@interface ASExportViewController
- (ASExportViewController)initWithExportedCredentialData:(id)a3 exporterBundleID:(id)a4;
- (ASExportViewControllerDelegate)delegate;
@end

@implementation ASExportViewController

- (ASExportViewController)initWithExportedCredentialData:(id)a3 exporterBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ASExportViewController;
  v8 = [(ASExportViewController *)&v15 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [v6 copy];
    exportedCredentialData = v8->_exportedCredentialData;
    v8->_exportedCredentialData = v9;

    v11 = [v7 copy];
    exporterBundleID = v8->_exporterBundleID;
    v8->_exporterBundleID = v11;

    v13 = v8;
  }

  return v8;
}

- (ASExportViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end