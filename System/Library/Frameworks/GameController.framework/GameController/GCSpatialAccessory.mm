@interface GCSpatialAccessory
+ (BOOL)isKindOfClass:(Class)class;
+ (BOOL)isSubclassOfClass:(Class)class;
+ (NSSet)accessories;
- (BOOL)conformsToDeviceType:(id)type;
- (BOOL)isKindOfClass:(Class)class;
@end

@implementation GCSpatialAccessory

- (BOOL)conformsToDeviceType:(id)type
{
  typeCopy = type;
  info = self->super._info;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(GCControllerProductInfo *)self->super._info uniformTypeIdentifier], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [GCDeviceType deviceTypeWithIdentifier:v6];
    v9 = [v8 conformsToDeviceType:typeCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isSubclassOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___GCSpatialAccessory;
  return objc_msgSendSuper2(&v6, sel_isSubclassOfClass_, class);
}

+ (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___GCSpatialAccessory;
  return objc_msgSendSuper2(&v6, sel_isKindOfClass_, class);
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = GCSpatialAccessory;
  return [(GCSpatialAccessory *)&v6 isKindOfClass:class];
}

+ (NSSet)accessories
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  spatialAccessories = [v2 spatialAccessories];
  orderedCollection = [(GCDeviceCollection *)spatialAccessories orderedCollection];
  v5 = orderedCollection;
  if (orderedCollection)
  {
    v6 = orderedCollection;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

@end