@interface AFDataStore(AFUIDataStoring)
- (_AFUIDataStoringShim)afui_dataStoringShim;
- (id)imageForKey:()AFUIDataStoring;
- (void)setImage:()AFUIDataStoring forKey:;
@end

@implementation AFDataStore(AFUIDataStoring)

- (void)setImage:()AFUIDataStoring forKey:
{
  if (a3)
  {
    v6 = MEMORY[0x277CEF2C0];
    v7 = a4;
    v8 = a3;
    v12 = objc_alloc_init(v6);
    v9 = UIImagePNGRepresentation(v8);
    [v12 setImageData:v9];

    [(UIImage *)v8 scale];
    v11 = v10;

    [v12 setScale:v11];
    [a1 setImageData:v12 forKey:v7];
  }
}

- (id)imageForKey:()AFUIDataStoring
{
  v1 = [a1 imageDataForKey:?];
  v2 = objc_alloc(MEMORY[0x277D755B8]);
  v3 = [v1 imageData];
  [v1 scale];
  v4 = [v2 initWithData:v3 scale:?];

  return v4;
}

- (_AFUIDataStoringShim)afui_dataStoringShim
{
  v2 = [_AFUIDataStoringShim alloc];
  v3 = [a1 propertyListRepresentation];
  v4 = [(_AFUIDataStoringShim *)v2 initWithPropertyListRepresentation:v3];

  return v4;
}

@end