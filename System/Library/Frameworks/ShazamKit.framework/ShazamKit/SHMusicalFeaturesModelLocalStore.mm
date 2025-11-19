@interface SHMusicalFeaturesModelLocalStore
- (id)debugDescription;
- (id)defaultModelURLWithName:(id)a3;
@end

@implementation SHMusicalFeaturesModelLocalStore

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(SHMusicalFeaturesModelLocalStore *)self defaultCremaModelURL];
  v5 = [(SHMusicalFeaturesModelLocalStore *)self defaultCrepeModelURL];
  v6 = [(SHMusicalFeaturesModelLocalStore *)self cremaModelURL];
  v7 = [(SHMusicalFeaturesModelLocalStore *)self crepeModelURL];
  v8 = [NSString stringWithFormat:@"<%@: %p>\n\tDefault CREMA URL: %@\n\tDefault CREPE URL: %@\n\tCREMA URL: %@\n\tCREPE URL: %@", v3, self, v4, v5, v6, v7];

  return v8;
}

- (id)defaultModelURLWithName:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle sh_ShazamKitBundle];
  v5 = [v4 URLForResource:v3 withExtension:@"mlmodelc"];

  return v5;
}

@end