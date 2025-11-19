@interface GCStylus
+ (BOOL)isKindOfClass:(Class)a3;
+ (BOOL)isSubclassOfClass:(Class)a3;
+ (NSArray)styli;
- (BOOL)conformsToDeviceType:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (id)debugDescription;
- (id)description;
@end

@implementation GCStylus

- (BOOL)conformsToDeviceType:(id)a3
{
  v4 = a3;
  info = self->super.super._info;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(GCControllerProductInfo *)self->super.super._info uniformTypeIdentifier], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [GCDeviceType deviceTypeWithIdentifier:v6];
    v9 = [v8 conformsToDeviceType:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isSubclassOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___GCStylus;
  return objc_msgSendSuper2(&v6, sel_isSubclassOfClass_, a3);
}

+ (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___GCStylus;
  return objc_msgSendSuper2(&v6, sel_isKindOfClass_, a3);
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = GCStylus;
  return [(GCSpatialAccessory *)&v6 isKindOfClass:a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCController *)self vendorName];
  v5 = [v3 stringWithFormat:@"<GCStylus %p '%@'>", self, v4];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCController *)self vendorName];
  v5 = [(GCController *)self components];
  v6 = [v3 stringWithFormat:@"<GCStylus %p '%@'> %@", self, v4, v5];

  return v6;
}

+ (NSArray)styli
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  v3 = [v2 styluses];
  v4 = [(GCDeviceCollection *)v3 orderedCollection];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

@end