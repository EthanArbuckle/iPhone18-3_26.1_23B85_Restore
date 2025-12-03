@interface FREditorialAssembly
- (FREditorialAssembly)initWithFeldsparContext:(id)context dataProviderFactory:(id)factory;
- (void)loadInRegistry:(id)registry;
@end

@implementation FREditorialAssembly

- (FREditorialAssembly)initWithFeldsparContext:(id)context dataProviderFactory:(id)factory
{
  contextCopy = context;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = FREditorialAssembly;
  v9 = [(FREditorialAssembly *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feldsparContext, context);
    objc_storeStrong(&v10->_dataProviderFactory, factory);
  }

  return v10;
}

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v6 = [publicContainer registerProtocol:&OBJC_PROTOCOL___FRToCEditorialManager factory:&stru_1000C6170];

  publicContainer2 = [registryCopy publicContainer];
  v8 = [publicContainer2 registerProtocol:&OBJC_PROTOCOL___TSEditorialItemProvider factory:&stru_1000C61B0];

  publicContainer3 = [registryCopy publicContainer];
  v10 = [publicContainer3 registerProtocol:&OBJC_PROTOCOL___NUFontRegistration factory:&stru_1000C61F0];
  v11 = [v10 inScope:2];

  privateContainer = [registryCopy privateContainer];
  v13 = [privateContainer registerProtocol:&OBJC_PROTOCOL___FREditorialItemDownloader name:@"editorialTagDownloader" factory:&stru_1000C6230];
  v14 = [v13 inScope:2];

  privateContainer2 = [registryCopy privateContainer];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100063160;
  v42[3] = &unk_1000C6258;
  v42[4] = self;
  v16 = [privateContainer2 registerProtocol:&OBJC_PROTOCOL___FREditorialItemDownloader name:@"editorialArticleDownloader" factory:v42];
  v17 = [v16 inScope:2];

  privateContainer3 = [registryCopy privateContainer];
  v19 = [privateContainer3 registerProtocol:&OBJC_PROTOCOL___FRArticleEditorialItemProvider factory:&stru_1000C6298];
  v20 = [v19 inScope:2];

  privateContainer4 = [registryCopy privateContainer];
  v22 = [privateContainer4 registerProtocol:&OBJC_PROTOCOL___FREditorialItemEntryManager factory:&stru_1000C62D8];
  v23 = [v22 withConfiguration:&stru_1000C6318];
  v24 = [v23 inScope:2];

  privateContainer5 = [registryCopy privateContainer];
  v26 = [privateContainer5 registerProtocol:&OBJC_PROTOCOL___FREditorialItemCreator factory:&stru_1000C6358];
  v27 = [v26 inScope:2];

  privateContainer6 = [registryCopy privateContainer];
  v29 = [privateContainer6 registerProtocol:&OBJC_PROTOCOL___FREditorialItemThumbnailCreator factory:&stru_1000C6398];
  v30 = [v29 inScope:2];

  privateContainer7 = [registryCopy privateContainer];
  v32 = [privateContainer7 registerProtocol:&OBJC_PROTOCOL___FREditorialConfigurationProvider factory:&stru_1000C63D8];
  v33 = [v32 inScope:2];

  privateContainer8 = [registryCopy privateContainer];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100063544;
  v41[3] = &unk_1000C6400;
  v41[4] = self;
  v35 = [privateContainer8 registerClass:objc_opt_class() name:@"editorialLocalStore" factory:v41];
  v36 = [v35 inScope:2];

  privateContainer9 = [registryCopy privateContainer];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000635E8;
  v40[3] = &unk_1000C6428;
  v40[4] = self;
  v38 = [privateContainer9 registerClass:objc_opt_class() factory:v40];
  v39 = [v38 inScope:2];
}

@end