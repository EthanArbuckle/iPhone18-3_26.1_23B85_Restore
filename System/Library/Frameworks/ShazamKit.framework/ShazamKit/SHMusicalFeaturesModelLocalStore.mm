@interface SHMusicalFeaturesModelLocalStore
- (id)debugDescription;
- (id)defaultModelURLWithName:(id)name;
@end

@implementation SHMusicalFeaturesModelLocalStore

- (id)debugDescription
{
  v3 = objc_opt_class();
  defaultCremaModelURL = [(SHMusicalFeaturesModelLocalStore *)self defaultCremaModelURL];
  defaultCrepeModelURL = [(SHMusicalFeaturesModelLocalStore *)self defaultCrepeModelURL];
  cremaModelURL = [(SHMusicalFeaturesModelLocalStore *)self cremaModelURL];
  crepeModelURL = [(SHMusicalFeaturesModelLocalStore *)self crepeModelURL];
  v8 = [NSString stringWithFormat:@"<%@: %p>\n\tDefault CREMA URL: %@\n\tDefault CREPE URL: %@\n\tCREMA URL: %@\n\tCREPE URL: %@", v3, self, defaultCremaModelURL, defaultCrepeModelURL, cremaModelURL, crepeModelURL];

  return v8;
}

- (id)defaultModelURLWithName:(id)name
{
  nameCopy = name;
  v4 = +[NSBundle sh_ShazamKitBundle];
  v5 = [v4 URLForResource:nameCopy withExtension:@"mlmodelc"];

  return v5;
}

@end