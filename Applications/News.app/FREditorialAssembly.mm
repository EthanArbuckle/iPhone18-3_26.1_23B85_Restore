@interface FREditorialAssembly
- (FREditorialAssembly)initWithFeldsparContext:(id)a3 dataProviderFactory:(id)a4;
- (void)loadInRegistry:(id)a3;
@end

@implementation FREditorialAssembly

- (FREditorialAssembly)initWithFeldsparContext:(id)a3 dataProviderFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FREditorialAssembly;
  v9 = [(FREditorialAssembly *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feldsparContext, a3);
    objc_storeStrong(&v10->_dataProviderFactory, a4);
  }

  return v10;
}

- (void)loadInRegistry:(id)a3
{
  v4 = a3;
  v5 = [v4 publicContainer];
  v6 = [v5 registerProtocol:&OBJC_PROTOCOL___FRToCEditorialManager factory:&stru_1000C6170];

  v7 = [v4 publicContainer];
  v8 = [v7 registerProtocol:&OBJC_PROTOCOL___TSEditorialItemProvider factory:&stru_1000C61B0];

  v9 = [v4 publicContainer];
  v10 = [v9 registerProtocol:&OBJC_PROTOCOL___NUFontRegistration factory:&stru_1000C61F0];
  v11 = [v10 inScope:2];

  v12 = [v4 privateContainer];
  v13 = [v12 registerProtocol:&OBJC_PROTOCOL___FREditorialItemDownloader name:@"editorialTagDownloader" factory:&stru_1000C6230];
  v14 = [v13 inScope:2];

  v15 = [v4 privateContainer];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100063160;
  v42[3] = &unk_1000C6258;
  v42[4] = self;
  v16 = [v15 registerProtocol:&OBJC_PROTOCOL___FREditorialItemDownloader name:@"editorialArticleDownloader" factory:v42];
  v17 = [v16 inScope:2];

  v18 = [v4 privateContainer];
  v19 = [v18 registerProtocol:&OBJC_PROTOCOL___FRArticleEditorialItemProvider factory:&stru_1000C6298];
  v20 = [v19 inScope:2];

  v21 = [v4 privateContainer];
  v22 = [v21 registerProtocol:&OBJC_PROTOCOL___FREditorialItemEntryManager factory:&stru_1000C62D8];
  v23 = [v22 withConfiguration:&stru_1000C6318];
  v24 = [v23 inScope:2];

  v25 = [v4 privateContainer];
  v26 = [v25 registerProtocol:&OBJC_PROTOCOL___FREditorialItemCreator factory:&stru_1000C6358];
  v27 = [v26 inScope:2];

  v28 = [v4 privateContainer];
  v29 = [v28 registerProtocol:&OBJC_PROTOCOL___FREditorialItemThumbnailCreator factory:&stru_1000C6398];
  v30 = [v29 inScope:2];

  v31 = [v4 privateContainer];
  v32 = [v31 registerProtocol:&OBJC_PROTOCOL___FREditorialConfigurationProvider factory:&stru_1000C63D8];
  v33 = [v32 inScope:2];

  v34 = [v4 privateContainer];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100063544;
  v41[3] = &unk_1000C6400;
  v41[4] = self;
  v35 = [v34 registerClass:objc_opt_class() name:@"editorialLocalStore" factory:v41];
  v36 = [v35 inScope:2];

  v37 = [v4 privateContainer];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000635E8;
  v40[3] = &unk_1000C6428;
  v40[4] = self;
  v38 = [v37 registerClass:objc_opt_class() factory:v40];
  v39 = [v38 inScope:2];
}

@end