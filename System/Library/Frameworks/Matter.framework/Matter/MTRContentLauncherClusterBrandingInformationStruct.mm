@interface MTRContentLauncherClusterBrandingInformationStruct
- (MTRContentLauncherClusterBrandingInformationStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentLauncherClusterBrandingInformationStruct

- (MTRContentLauncherClusterBrandingInformationStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRContentLauncherClusterBrandingInformationStruct;
  v2 = [(MTRContentLauncherClusterBrandingInformationStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    providerName = v2->_providerName;
    v2->_providerName = &stru_284BD0DD8;

    background = v3->_background;
    v3->_background = 0;

    logo = v3->_logo;
    v3->_logo = 0;

    progressBar = v3->_progressBar;
    v3->_progressBar = 0;

    splash = v3->_splash;
    v3->_splash = 0;

    waterMark = v3->_waterMark;
    v3->_waterMark = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentLauncherClusterBrandingInformationStruct);
  providerName = [(MTRContentLauncherClusterBrandingInformationStruct *)self providerName];
  [(MTRContentLauncherClusterBrandingInformationStruct *)v4 setProviderName:providerName];

  background = [(MTRContentLauncherClusterBrandingInformationStruct *)self background];
  [(MTRContentLauncherClusterBrandingInformationStruct *)v4 setBackground:background];

  logo = [(MTRContentLauncherClusterBrandingInformationStruct *)self logo];
  [(MTRContentLauncherClusterBrandingInformationStruct *)v4 setLogo:logo];

  progressBar = [(MTRContentLauncherClusterBrandingInformationStruct *)self progressBar];
  [(MTRContentLauncherClusterBrandingInformationStruct *)v4 setProgressBar:progressBar];

  splash = [(MTRContentLauncherClusterBrandingInformationStruct *)self splash];
  [(MTRContentLauncherClusterBrandingInformationStruct *)v4 setSplash:splash];

  waterMark = [(MTRContentLauncherClusterBrandingInformationStruct *)self waterMark];
  [(MTRContentLauncherClusterBrandingInformationStruct *)v4 setWaterMark:waterMark];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: providerName:%@ background:%@; logo:%@; progressBar:%@; splash:%@; waterMark:%@; >", v5, self->_providerName, self->_background, self->_logo, self->_progressBar, self->_splash, self->_waterMark];;

  return v6;
}

@end